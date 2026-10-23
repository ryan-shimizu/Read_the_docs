#!/usr/bin/env bash
# make_submission.sh -- lives in the top-level cordic/ directory
# Rebuilds ./submission from scratch each run.
set -o pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT="$ROOT/submission"

SRC_FILES=(__hls_config__.ini cordiccart2pol_test.cpp cordiccart2pol.cpp
           cordiccart2pol.h cordiccart2pol.tcl Makefile)

# Which width-variant supplies the source/test files for each design
ARITH_VARIANT=16     # cordic_1a, 2b, 2c, 3a use their _16 folder
LUT_VARIANT=6        # cordic_LUT: which cordic_4b_x supplies the source

warnings=0
cp_warn() {   # cp_warn <src> <dst>
  if [[ -f "$1" ]]; then
    cp "$1" "$2"
  else
    echo "WARN: missing $1" >&2
    warnings=$((warnings + 1))
  fi
}

# build_design <out_name> <src_root> <folder_prefix> <variant> [extra source files...]
build_design() {
  local out="$1" src_root="$2" prefix="$3" variant="$4"; shift 4
  local dest="$OUT/$out" vdir="$src_root/${prefix}_${variant}" f d s n=0
  echo "== $out  (source: ${prefix}_${variant})"
  mkdir -p "$dest/reports"

  for f in "${SRC_FILES[@]}" "$@"; do
    cp_warn "$vdir/$f" "$dest/$f"
  done

  # one .log/.rpt pair per width subfolder, renamed to <suffix>.log / <suffix>.rpt
  for d in "$src_root/${prefix}_"*/; do
    d="${d%/}"; s="${d##*_}"
    [[ -d "$d" && "$s" =~ ^[0-9]+$ ]] || continue     # skips things like cordic_2b_8.bak.1729
    cp_warn "$d/cordiccart2pol_test.log"   "$dest/reports/$s.log"
    cp_warn "$d/cordiccart2pol_csynth.rpt" "$dest/reports/$s.rpt"
    n=$((n + 1))
  done
  [[ $n -gt 0 ]] || { echo "WARN: no ${prefix}_<number> subfolders under $src_root" >&2; warnings=$((warnings + 1)); }
}

rm -rf "$OUT"
mkdir -p "$OUT"

for name in cordic_1a cordic_2b cordic_2c cordic_3a; do
  build_design "$name" "$ROOT/HLS/cordic" "$name" "$ARITH_VARIANT"
done

build_design cordic_LUT "$ROOT/HLS/cordic_LUT" cordic_4b "$LUT_VARIANT" lut_r.h lut_th.h

# Demo
echo "== Demo"
mkdir -p "$OUT/Demo"
cp_warn "$ROOT/Demo/Cordic.ipynb" "$OUT/Demo/Cordic.ipynb"
shopt -s nullglob
demo_files=("$ROOT"/HLS/cordic/cordic_demo/*.bit "$ROOT"/HLS/cordic/cordic_demo/*.hwh)
shopt -u nullglob
if [[ ${#demo_files[@]} -eq 0 ]]; then
  echo "WARN: no .bit/.hwh found in HLS/cordic/cordic_demo" >&2; warnings=$((warnings + 1))
fi
for f in "${demo_files[@]}"; do cp "$f" "$OUT/Demo/$(basename "$f")"; done

echo
(cd "$OUT" && find . -type f | sort)
echo
echo "$warnings warning(s)."
[[ $warnings -eq 0 ]]