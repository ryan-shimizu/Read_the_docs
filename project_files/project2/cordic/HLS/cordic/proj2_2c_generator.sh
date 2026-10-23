#!/usr/bin/env bash
# sweep_lut.sh -- run from the top-level (staging) directory
# usage: WVAR=16 ./sweep_lut.sh          (W_VAR fixed at 16, sweep W_LUT over all widths)
#        ./sweep_lut.sh 8 12             (leave W_VAR as it is in the header, just these widths)
set -uo pipefail

HDR=cordiccart2pol.h
PREFIX="cordic_lut"          # output folders: cordic_lut_8, cordic_lut_12, ...
widths=("$@")
[[ ${#widths[@]} -eq 0 ]] && widths=(4 8 12 16 20 24 32)
failed=()

run_mhls() {
  make clean
  make hls || return 1
  make test || echo "!! make test failed for W_LUT=${w}" >&2
  make report
}

# optionally pin W_VAR once, before the sweep
if [[ -n "${WVAR:-}" ]]; then
  sed -i -E "s/^(#define[[:space:]]+W_VAR[[:space:]]+)[0-9]+/\1${WVAR}/" "$HDR"
fi

for w in "${widths[@]}"; do
  dir="${PREFIX}_${w}"
  echo "=== W_LUT=${w} -> ${dir} ==="

  if [[ -d "$dir" ]]; then
    mv "$dir" "${dir}.bak.$(date +%s)"
  fi

  # change W_LUT only
  sed -i -E "s/^(#define[[:space:]]+W_LUT[[:space:]]+)[0-9]+/\1${w}/" "$HDR"
  grep -E '^#define[[:space:]]+W_(VAR|LUT)' "$HDR"   # confirm what W_VAR is for this run

  if ! run_mhls; then
    echo "!! synthesis failed for W_LUT=${w}, skipping copy" >&2
    failed+=("$w")
    continue
  fi

  ./proj2_copy_results.sh "$dir"
done

echo
if [[ ${#failed[@]} -gt 0 ]]; then
  echo "Failed widths: ${failed[*]}"
else
  echo "All widths done."
fi