#!/bin/sh
# Regenerate the coding-theorem record (docs/classical/coding.md):
# data/classical/coding.txt. Three full per-output Solomonoff dumps
# (programs 4..37, 4..39, 4..41, every |x| <= 63) land in tmp/coding-regen/.
# They total ~2 GB and are not kept in data/. The 4..41 run is census-scale:
# ~16 min wall and ~12 GB peak on the M5 Max.
# Usage: coding-regen.sh
set -e
cd "$(dirname "$0")/.."
OUT=tmp/coding-regen
mkdir -p "$OUT"
cargo build --release --bin blam
for N in 37 39 41; do
    target/release/blam solomonoff 4 "$N" --table "$OUT/table_$N.txt" --dump-max-x 63 > "$OUT/solomonoff_$N.txt"
done
{
    python3 tools/coding/report.py "$OUT/table_41.txt" 41
    echo
    python3 tools/coding/shells.py "$OUT/table_37.txt" "$OUT/table_39.txt" "$OUT/table_41.txt" 37
} > data/classical/coding.txt
echo "coding-regen: wrote data/classical/coding.txt"
