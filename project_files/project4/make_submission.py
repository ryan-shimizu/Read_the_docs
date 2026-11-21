#!/usr/bin/env python3
"""
Stage a project submission folder.

    python3 make_submission.py [-o OUTDIR] [-z] [-n]

      -o OUTDIR   output folder (default: submission)
      -z          also create OUTDIR.zip
      -n          dry run: list what would be copied, change nothing
To reuse it on a new project, edit only LAYOUT and REUSE below.
A missing source is reported at the end (all of them at once) and makes the script exit 1.
"""
import argparse
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent

FFT = "FFT/HLS/2_Skeleton_Restructured"
OFDM = "ofdm/HLS/3_OFDM"

# Output folder -> source files, relative to the project root. Globs are allowed; symlinks are followed.
LAYOUT = {
    "fft/fft1024_best": [
        f"{FFT}/*.cpp",
        f"{FFT}/*.h",
        f"{FFT}/*.tcl",
        f"{FFT}/fft_csynth.rpt",
    ],
    "fft/Demo": [
        "FFT/HLS/FFT.ipynb",
        f"{FFT}/fft.bit",
        f"{FFT}/fft.hwh",
    ],
    "ofdm_receiver/OFDM_receiver": [
        f"{OFDM}/ofdm_recvr.cpp",
        f"{OFDM}/ofdm_recvr.h",
        f"{OFDM}/ofdm_test.cpp",
        f"{OFDM}/qpsk_decode.cpp",
        f"{OFDM}/qpsk_decode.h",
        f"{OFDM}/ofdm_receiver_csynth.rpt",
    ],
    "ofdm_receiver/Demo": [
        "ofdm/ofdm_receiver_test.ipynb",
        f"{OFDM}/ofdm_receiver.bit",
        f"{OFDM}/ofdm_receiver.hwh",
    ],
}

# Output folder -> a folder from LAYOUT to copy into it (a whole folder reused in another deliverable).
REUSE = {
    "ofdm_receiver/fft1024_best": "fft/fft1024_best",
}


def stage(out, dry_run):
    copied, missing = 0, []

    for dest, patterns in LAYOUT.items():
        for pattern in patterns:
            files = [f for f in sorted(ROOT.glob(pattern)) if f.is_file()]
            if not files:
                print(f"  MISSING: {pattern}", file=sys.stderr)
                missing.append(pattern)
                continue
            for f in files:
                if dry_run:
                    print(f"  {f.relative_to(ROOT)} -> {dest}/")
                else:
                    (out / dest).mkdir(parents=True, exist_ok=True)
                    shutil.copy2(f, out / dest / f.name)   # follows symlinks
                copied += 1

    for dest, src in REUSE.items():
        if src not in LAYOUT:
            print(f"  MISSING: REUSE source '{src}' is not a folder in LAYOUT", file=sys.stderr)
            missing.append(src)
        elif dry_run:
            print(f"  {src}/ -> {dest}/ (folder)")
        else:
            shutil.copytree(out / src, out / dest, dirs_exist_ok=True)

    return copied, missing


def main():
    ap = argparse.ArgumentParser(description="Stage a project submission folder.")
    ap.add_argument("-o", "--out", default="submission", help="output folder (default: submission)")
    ap.add_argument("-z", "--zip", action="store_true", help="also create <out>.zip")
    ap.add_argument("-n", "--dry-run", action="store_true", help="list what would be copied, change nothing")
    args = ap.parse_args()

    out = (ROOT / args.out).resolve()      # absolute -o paths are used as given
    if out == ROOT or out in ROOT.parents:
        sys.exit(f"error: refusing to use '{args.out}' as the output folder (it is, or contains, the project root)")

    if args.dry_run:
        print("Dry run, nothing will be changed:")
    else:
        shutil.rmtree(out, ignore_errors=True)
        out.mkdir(parents=True)

    copied, missing = stage(out, args.dry_run)

    if not args.dry_run:
        print(f"\nStaged in {out}/:")
        for p in sorted(out.rglob("*")):
            if p.is_file():
                print(f"  {p.relative_to(out)}")
        if args.zip:
            zip_path = shutil.make_archive(str(out), "zip", root_dir=out.parent, base_dir=out.name)
            print(f"\nWrote {zip_path}")

    print(f"\n{copied} file(s) {'would be copied' if args.dry_run else 'copied'}.")
    if missing:
        print(f"{len(missing)} source(s) MISSING:", file=sys.stderr)
        for m in missing:
            print(f"  - {m}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()