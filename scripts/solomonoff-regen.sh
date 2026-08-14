#!/bin/sh
# Regenerate the Omega/K/speed sweep: data/classical/solomonoff.txt
# (summary: exact 2^-64-unit m/Omega masses plus the 2^-128-unit
# Omega_speed brackets, spectra, and Kt analytics),
# data/classical/solomonoff_table.txt (per-x m/K/Kt/speed table), and
# data/classical/speed_floors.txt (per-open-program t-floors —
# docs/classical/speed.md).
# A census-scale run. The certificate-kill mass trims on the Omega and
# Omega_speed upper bounds stay by-hand exact-fraction steps (AGENTS.md
# live state; the floors file makes the speed trim a lookup).
# Outputs install into data/ only on the full canonical range;
# partial ranges land in tmp/solomonoff-regen/.
# Usage: solomonoff-regen.sh [min] [max]   (default 4 41)
set -e
cd "$(dirname "$0")/.."
MIN="${1:-4}" MAX="${2:-41}"
OUT=tmp/solomonoff-regen
mkdir -p "$OUT"
cargo build --release --bin blam
target/release/blam solomonoff "$MIN" "$MAX" --table "$OUT/solomonoff_table.txt" \
    --unknown-floors "$OUT/speed_floors.txt" \
    > "$OUT/solomonoff.txt"
if [ "$MIN" -eq 4 ] && [ "$MAX" -ge 41 ]; then
    mv "$OUT/solomonoff.txt" data/classical/solomonoff.txt
    mv "$OUT/solomonoff_table.txt" data/classical/solomonoff_table.txt
    mv "$OUT/speed_floors.txt" data/classical/speed_floors.txt
    echo "solomonoff-regen: installed data/classical/{solomonoff.txt,solomonoff_table.txt,speed_floors.txt}"
else
    echo "solomonoff-regen: partial range — outputs left in $OUT/, data/ untouched"
fi
