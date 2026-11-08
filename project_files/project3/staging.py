#!/usr/bin/env python3
"""
Stages the project 3 submission folder from the working directories (q1, q2, ..., Demo).

Run from the top-level project directory (the one containing q1/, q2/, ..., dft_32_precomputed/):

    python3 stage_submission.py                    # builds ./submission
    python3 stage_submission.py --zip              # ... and ./submission.zip
    python3 stage_submission.py --force            # rebuild over an existing ./submission
    python3 stage_submission.py --q4-source q4_cyclic_8 --q5-source q5_8

Layout produced:

    Q1/ Q2/ Q3/   coefficients32_2D.h dft.h dft.cpp dft_test.cpp Makefile __hls_config__.ini out.gold.dat
                  Reports/<name>.rpt                       (baseline / table_lookup / interface_change)
    Q4/ Q5/       same files as above, taken from the best variant (see below)
                  Reports/array_partition_<type>_<n>.rpt   /   Reports/loop_unrolling_<n>.rpt   (one per run)
    Q6b/ Q7/ Q8/ Q9/
                  coefficients1024.h dft.h dft.cpp dft_test.cpp Makefile __hls_config__.ini out.gold.dat
                  dft_csynth.rpt
    Demo/         DFT.ipynb dft.bit dft.hwh
"""
import argparse
import re
import shutil
import sys
from pathlib import Path

HLS_INI = "__hls_config__.ini"
GOLD = "out.gold.dat"

RENAME = {}

COMMON = ["dft.h", "dft.cpp", "dft_test.cpp", "Makefile", HLS_INI, GOLD]
SMALL_FILES = ["coefficients32_2D.h"] + COMMON                      # Q1-Q5 (32-point)
BIG_FILES = ["coefficients1024.h"] + COMMON + ["dft_csynth.rpt"]    # Q6b-Q9 (1024-point)

GOLD_DIR_32 = "dft_32_precomputed"
GOLD_DIR_1024 = "dft_1024_precomputed"

# (destination folder, source folder, required files, gold-file folder)
BIG_FOLDERS = [
    ("Q6b", "q6b", BIG_FILES, GOLD_DIR_1024),
    ("Q7",  "q7",  BIG_FILES, GOLD_DIR_1024),
    ("Q8",  "q8",  BIG_FILES, GOLD_DIR_1024),
    ("Q9",  "q9",  BIG_FILES, GOLD_DIR_1024),
]
# Q1-Q3: one run each. (destination, source folder, report name)
SINGLE_RUN = [
    ("Q1", "q1", "baseline"),
    ("Q2", "q2", "table_lookup"),
    ("Q3", "q3", "interface_change"),
]
# Where the Demo bitstream comes from, in order of preference
BITSTREAM_DIRS = ["q9/output_dft", "dft_1024_precomputed/output_dft"]
# ---------------------------------------------------------------------------

missing = []   # required files that could not be found
notes = []     # things the user should know about


def note(msg):
    print(f"  NOTE: {msg}")
    notes.append(msg)


def miss(msg):
    print(f"  MISSING: {msg}")
    missing.append(msg)


def copy(src, dst):
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)


def included_coeff_headers(dft_cpp):
    """coefficients*.h headers that dft.cpp actually #includes (commented-out includes are ignored)."""
    if not dft_cpp.exists():
        return []
    found = []
    for line in dft_cpp.read_text(errors="replace").splitlines():
        m = re.match(r'\s*#\s*include\s*"(coefficients[^"]*\.h)"', line)
        if m:
            found.append(m.group(1))
    return found


def stage_files(root, src_dir, dest_dir, required, gold_dir):
    """Copy the required files, plus any coefficient header dft.cpp includes, into dest_dir."""
    files = list(required)
    for h in included_coeff_headers(src_dir / "dft.cpp"):
        if h not in files:
            files.append(h)
            note(f"{dest_dir.name}: dft.cpp includes {h}, which is not on the required list. "
                 f"Copying it too so the design still compiles.")
    for name in files:
        src = src_dir / name
        if not src.exists() and name == GOLD:
            alt = root / gold_dir / GOLD
            if alt.exists():
                src = alt
        if not src.exists():
            miss(f"{dest_dir.name}: {name} (looked in {src_dir})")
            continue
        copy(src, dest_dir / RENAME.get(name, name))


# picking a representative variant for Q4 / Q5
def parse_latency(rpt):
    """Worst-case latency in cycles from the first row of the report's latency summary, or None."""
    if not rpt.exists():
        return None
    in_latency = False
    for line in rpt.read_text(errors="replace").splitlines():
        if "+ Latency" in line:
            in_latency = True
            continue
        if in_latency:
            if "+ Detail" in line:
                return None
            m = re.match(r"\s*\|\s*(\d+)\s*\|\s*(\d+)\s*\|", line)
            if m:
                return int(m.group(2))
    return None


def test_passed(log):
    if not log.exists():
        return False
    text = log.read_text(errors="replace")
    return bool(re.search(r"\bPASS\b", text)) and not re.search(r"\bFAIL\b", text)


def variants(root, prefix):
    """Run folders like q4_block_8 / q5_16 that have a synthesis report, in a stable order."""
    def key(d):
        rest = d.name[len(prefix):]
        digits = re.search(r"\d+", rest)
        return (re.sub(r"[_\d]+", "", rest), int(digits.group()) if digits else 0)
    dirs = [d for d in root.glob(prefix + "*") if d.is_dir() and (d / "dft_csynth.rpt").exists()]
    return sorted(dirs, key=key)


def pick_source(dirs, override, root):
    rows = [(d, parse_latency(d / "dft_csynth.rpt"), test_passed(d / "dft_test.log")) for d in dirs]
    if override:
        chosen = root / override
        if not any(chosen.samefile(d) for d in dirs):
            sys.exit(f"--source {override!r} is not one of: {', '.join(d.name for d in dirs)}")
        reason = "chosen with the --source option"
    else:
        passing = [r for r in rows if r[2] and r[1] is not None]
        pool = passing or [r for r in rows if r[1] is not None]
        if not pool:
            chosen, reason = dirs[0], "no latency could be read from any report, using the first variant"
            note(f"could not read latencies for {dirs[0].name[:2]}; using {chosen.name}. Use --source to pick one.")
        else:
            chosen = min(pool, key=lambda r: r[1])[0]
            reason = "lowest latency among variants whose testbench passed" if passing else \
                     "lowest latency (no variant printed PASS)"
            if not passing:
                note(f"no {dirs[0].name[:2]} variant printed PASS in dft_test.log; picked the lowest latency anyway.")
    print(f"  {'variant':<20}{'latency (cycles)':>18}  testbench")
    for d, lat, ok in rows:
        mark = "  <== source files" if d.name == chosen.name else ""
        print(f"  {d.name:<20}{(str(lat) if lat is not None else '?'):>18}  {'PASS' if ok else 'not PASS'}{mark}")
    print(f"  source files from {chosen.name} ({reason})")
    return chosen


def stage_sweep(root, out, dest, prefix, report_prefix, override):
    print(f"\n[{dest}]")
    dirs = variants(root, prefix)
    if not dirs:
        miss(f"{dest}: no {prefix}* folders with dft_csynth.rpt found")
        return
    dest_dir = out / dest
    chosen = pick_source(dirs, override, root)
    stage_files(root, chosen, dest_dir, SMALL_FILES, GOLD_DIR_32)
    for d in dirs:
        rest = d.name[len(prefix):]
        copy(d / "dft_csynth.rpt", dest_dir / "Reports" / f"{report_prefix}_{rest}.rpt")
    print(f"  {len(dirs)} reports -> {dest}/Reports/")


def stage_single(root, out, dest, src_name, report_name):
    print(f"\n[{dest}]")
    src_dir = root / src_name
    if not src_dir.is_dir():
        miss(f"{dest}: folder {src_name}/ not found")
        return
    dest_dir = out / dest
    stage_files(root, src_dir, dest_dir, SMALL_FILES, GOLD_DIR_32)
    rpt = src_dir / "dft_csynth.rpt"
    if rpt.exists():
        copy(rpt, dest_dir / "Reports" / f"{report_name}.rpt")
    else:
        miss(f"{dest}: dft_csynth.rpt (looked in {src_dir})")


def stage_big(root, out, dest, src_name, required, gold_dir):
    print(f"\n[{dest}]")
    src_dir = root / src_name
    if not src_dir.is_dir():
        miss(f"{dest}: folder {src_name}/ not found")
        return
    stage_files(root, src_dir, out / dest, required, gold_dir)


def stage_demo(root, out):
    print("\n[Demo]")
    dest = out / "Demo"
    nb = root / "Demo" / "DFT.ipynb"
    if nb.exists():
        copy(nb, dest / "DFT.ipynb")
    else:
        miss(f"Demo: {nb}")
    for i, d in enumerate(BITSTREAM_DIRS):
        bit, hwh = root / d / "dft.bit", root / d / "dft.hwh"
        if bit.exists() and hwh.exists():
            copy(bit, dest / "dft.bit")
            copy(hwh, dest / "dft.hwh")
            if i > 0:
                note(f"Demo: {BITSTREAM_DIRS[0]}/ has no dft.bit and dft.hwh, so they came from {d}/ instead. "
                     f"Make sure that bitstream is the streaming (Q9) design.")
            else:
                print(f"  dft.bit and dft.hwh from {d}/")
            return
    miss(f"Demo: dft.bit / dft.hwh (looked in {', '.join(BITSTREAM_DIRS)})")


def main():
    ap = argparse.ArgumentParser(description="Stage the project 3 submission folder.")
    ap.add_argument("--root", default=".", help="project directory (default: current directory)")
    ap.add_argument("--out", default=None, help="output directory (default: <root>/submission)")
    ap.add_argument("--force", action="store_true", help="delete the output directory first if it exists")
    ap.add_argument("--zip", action="store_true", help="also create <out>.zip")
    ap.add_argument("--q4-source", default=None, metavar="DIR", help="Q4 variant to take dft.cpp from, e.g. q4_cyclic_8")
    ap.add_argument("--q5-source", default=None, metavar="DIR", help="Q5 variant to take dft.cpp from, e.g. q5_8")
    args = ap.parse_args()

    root = Path(args.root).resolve()
    out = Path(args.out).resolve() if args.out else root / "submission"
    if out.exists():
        if not args.force:
            sys.exit(f"{out} already exists. Use --force to rebuild it.")
        shutil.rmtree(out)
    out.mkdir(parents=True)

    for dest, src_name, report_name in SINGLE_RUN:
        stage_single(root, out, dest, src_name, report_name)
    stage_sweep(root, out, "Q4", "q4_", "array_partition", args.q4_source)
    stage_sweep(root, out, "Q5", "q5_", "loop_unrolling", args.q5_source)
    for dest, src_name, required, gold_dir in BIG_FOLDERS:
        stage_big(root, out, dest, src_name, required, gold_dir)
    stage_demo(root, out)

    print(f"\n==== staged in {out} ====")
    for p in sorted(out.rglob("*")):
        if p.is_file():
            print(f"  {p.relative_to(out)}  ({p.stat().st_size:,} bytes)")

    if args.zip:
        zip_path = shutil.make_archive(str(out), "zip", root_dir=out.parent, base_dir=out.name)
        print(f"\nwrote {zip_path}")

    if notes:
        print(f"\n{len(notes)} note(s) above worth a look.")
    if missing:
        print(f"\n{len(missing)} required file(s) MISSING:")
        for m in missing:
            print(f"  - {m}")
        sys.exit(1)
    print("\nAll required files found.")


if __name__ == "__main__":
    main()