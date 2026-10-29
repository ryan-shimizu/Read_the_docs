#!/usr/bin/env python3
"""
Sweep ARRAY_PARTITION variations (no unrolling) on dft_32_precomputed/dft.cpp.

For each variation:
  1. insert the ARRAY_PARTITION pragmas at the top of dft()
  2. run the mhls steps (make clean/hls/test/report) inside dft_32_precomputed
  3. run ./proj3_copy_results 32 q4_<type>_<factor>
  4. restore the original dft.cpp

Run from the top-level directory (the one containing dft_32_precomputed/).
"""
import re
import shutil
import subprocess
import sys
from pathlib import Path

SRC = Path("dft_32_precomputed/dft.cpp")

# Arrays to partition: (variable name, dim)
ARRAYS = [
    ("in_real_sample", 1),
    ("in_imag_sample", 1),
    ("out_real_sample", 1),
    ("out_imag_sample", 1),
]

# Only block necessary for hw, cyclic and complete for my own curiosity
TYPES = ["block", "cyclic", "complete"]
FACTORS = [2, 4, 8, 16, 32]

# Each step allowed to fail, some iterations may exceed RMSE threshold
HLS_STEPS = [
    (["make", "clean"], False),
    (["make", "hls"], False),
    (["make", "test"], False),
    (["make", "report"], False),
]
HLS_DIR = SRC.parent

COPY_CMD = ["./proj3_copy_results.sh"]
SIZE_ARG = "32"


def variations():
    for t in TYPES:
        if t == "complete":
            yield t, None  # factor is not applicable to complete
        else:
            for f in FACTORS:
                yield t, f


def build_pragmas(ptype, factor):
    lines = []
    for var, dim in ARRAYS:
        if ptype == "complete":
            lines.append(f"    #pragma HLS ARRAY_PARTITION variable={var} type=complete dim={dim}")
        else:
            lines.append(f"    #pragma HLS ARRAY_PARTITION variable={var} type={ptype} factor={factor} dim={dim}")
    return lines


def insert_pragmas(original_text, pragmas):
    lines = original_text.splitlines()

    # drop any ARRAY_PARTITION pragmas already on our arrays so they don't clash
    names = {v for v, _ in ARRAYS}
    pat = re.compile(r"#pragma\s+HLS\s+ARRAY_PARTITION\s+variable\s*=\s*(\w+)", re.I)
    lines = [l for l in lines if not ((m := pat.search(l)) and m.group(1) in names)]

    # find "void dft(" and then the first "{" at or after it
    start = next((i for i, l in enumerate(lines) if re.search(r"\bvoid\s+dft\s*\(", l)), None)
    if start is None:
        sys.exit("Could not find 'void dft(' in " + str(SRC))
    brace = next((i for i in range(start, len(lines)) if "{" in lines[i]), None)
    if brace is None:
        sys.exit("Could not find the opening brace of dft()")

    lines[brace + 1:brace + 1] = pragmas
    return "\n".join(lines) + "\n"


def run(cmd, cwd=None, check=True):
    print(f"  $ {' '.join(cmd)}" + (f"   (in {cwd})" if cwd else ""), flush=True)
    subprocess.run(cmd, cwd=cwd, check=check)


def main():
    if not SRC.exists():
        sys.exit(f"{SRC} not found. Run this from the top-level directory.")

    original = SRC.read_text()
    backup = SRC.with_suffix(SRC.suffix + ".orig")
    shutil.copy2(SRC, backup)

    failures = []
    try:
        for ptype, factor in variations():
            name = f"q4_{ptype}" if factor is None else f"q4_{ptype}_{factor}"
            print(f"\n=== {name} ===", flush=True)

            SRC.write_text(insert_pragmas(original, build_pragmas(ptype, factor)))
            try:
                for cmd, must_succeed in HLS_STEPS:
                    run(cmd, cwd=HLS_DIR, check=must_succeed)
                run(COPY_CMD + [SIZE_ARG, name])  # from the top-level directory
            except subprocess.CalledProcessError as e:
                print(f"  FAILED: {e}", flush=True)
                failures.append(name)
    finally:
        SRC.write_text(original)  # always restore the untouched source
        backup.unlink(missing_ok=True)

    print("\nDone.", "Failures: " + ", ".join(failures) if failures else "All variations ran.")


if __name__ == "__main__":
    main()
