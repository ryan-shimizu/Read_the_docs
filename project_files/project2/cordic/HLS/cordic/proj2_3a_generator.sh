#!/usr/bin/env bash
# proj2_3a_generator.sh -- run from the top-level (staging) directory
# usage: ./proj2_3a_generator.sh            (all widths)
#        ./proj2_3a_generator.sh 8 16       (just these widths; handy for a dry run)
set -uo pipefail

HDR=cordiccart2pol.h
widths=("$@")
[[ ${#widths[@]} -eq 0 ]] && widths=(4 8 12 16 20 24 32)
failed=()

run_mhls() {
  make clean
  make hls || return 1                      # no synthesis -> nothing worth copying
  make test || echo "!! make test failed for W=${w}" >&2   # still want the logs
  make report
}
for w in "${widths[@]}"; do
  dir="cordic_3a_${w}"
  echo "=== W=${w} -> ${dir} ==="

  # keep the old copy rather than overwriting it
  if [[ -d "$dir" ]]; then
    mv "$dir" "${dir}.bak.$(date +%s)"
  fi

  # set both widths, leaving any trailing comments on the line alone
  sed -i -E \
    -e "s/^(#define[[:space:]]+W_VAR[[:space:]]+)[0-9]+/\1${w}/" \
    -e "s/^(#define[[:space:]]+W_LUT[[:space:]]+)[0-9]+/\1${w}/" \
    "$HDR"
  grep -E '^#define[[:space:]]+W_(VAR|LUT)' "$HDR"

  if ! run_mhls; then
    echo "!! mhls failed for W=${w}, skipping copy" >&2
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
