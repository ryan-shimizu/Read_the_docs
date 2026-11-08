#!/usr/bin/env python3
"""
Sweep the inner-loop UNROLL factor on dft_32_precomputed/dft.cpp.

For each factor x in UNROLL_FACTORS:
  1. insert `#pragma HLS UNROLL factor=x` at the top of the inner (j) loop body
  2. run the mhls steps (make clean/hls/test/report) inside dft_32_precomputed
  3. run ./proj3_copy_results 32 <PREFIX>_<x>
  4. restore the original dft.cpp

Run from the top-level directory (the one containing dft_32_precomputed/).
"""
import re
import shutil
import subprocess
import sys
from pathlib import Path

SRC = Path("dft_32_precomputed/dft.cpp")

UNROLL_FACTORS = [1, 2, 4, 8, 16, 32]

# Output directory name is <PREFIX>_<factor>
PREFIX = "q5"

HLS_STEPS = [
    (["make", "clean"], False),
    (["make", "hls"], True),
    (["make", "test"], True),
    (["make", "report"], True),
]
HLS_DIR = SRC.parent

COPY_CMD = ["./proj3_copy_results.sh"]
SIZE_ARG = "32"

def insert_pragmas(original_text, factor):
    lines = original_text.splitlines()

    # drop any existing UNROLL pragmas (and our partition pragmas) so nothing clashes
    unroll_pat = re.compile(r"#pragma\s+HLS\s+UNROLL\b", re.I)
    part_pat = re.compile(r"#pragma\s+HLS\s+ARRAY_PARTITION\s+variable\s*=\s*(\w+)", re.I)
    part_names = set()
    lines = [
        l for l in lines
        if not unroll_pat.search(l)
        and not ((m := part_pat.search(l)) and m.group(1) in part_names)
    ]

    # --- inner loop: find `for (j = ...` and the first `{` at or after it
    loop = next((i for i, l in enumerate(lines) if re.search(r"\bfor\s*\(\s*(int\s+)?j\s*=", l)), None)
    if loop is None:
        sys.exit("Could not find the inner `for (j = ...` loop in " + str(SRC))
    brace = next((i for i in range(loop, len(lines)) if "{" in lines[i]), None)
    if brace is None:
        sys.exit("Could not find the opening brace of the inner loop")
    indent = re.match(r"\s*", lines[loop]).group(0) + "    "
    lines.insert(brace + 1, f"{indent}#pragma HLS UNROLL factor={factor}")

    return "\n".join(lines) + "\n"


def run(cmd, cwd=None, check=True):
    print(f"  $ {' '.join(cmd)}" + (f"   (in {cwd})" if cwd else ""), flush=True)
    subprocess.run(cmd, cwd=cwd, check=check)


def main():
    if not SRC.exists():
        sys.exit(f"{SRC} not found. Run this from the top-level directory.")

    original = SRC.read_text()
    failures = []
    try:
        for factor in UNROLL_FACTORS:
            name = f"{PREFIX}_{factor}"
            print(f"\n=== {name} ===", flush=True)

            SRC.write_text(insert_pragmas(original, factor))
            try:
                for cmd, must_succeed in HLS_STEPS:
                    run(cmd, cwd=HLS_DIR, check=must_succeed)
                run(COPY_CMD + [SIZE_ARG, name])  # from the top-level directory
            except subprocess.CalledProcessError as e:
                print(f"  FAILED: {e}", flush=True)
                failures.append(name)
    finally:
        SRC.write_text(original)  # always restore the untouched source

    print("\nDone.", "Failures: " + ", ".join(failures) if failures else "All variations ran.")


if __name__ == "__main__":
    main()
