#!/bin/sh
# Regenerate the Omega/K sweep: data/classical/solomonoff.txt (summary,
# exact 2^-64-unit masses) + data/classical/solomonoff_table.txt (per-x m/K
# table).
# A census-scale run. The certificate-kill mass trim on the Omega
# bounds stays a by-hand exact-fraction step (AGENTS.md live state).
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
    > "$OUT/solomonoff.txt"
if [ "$MIN" -eq 4 ] && [ "$MAX" -ge 41 ]; then
    mv "$OUT/solomonoff.txt" data/classical/solomonoff.txt
    mv "$OUT/solomonoff_table.txt" data/classical/solomonoff_table.txt
    echo "solomonoff-regen: installed data/classical/solomonoff.txt + data/classical/solomonoff_table.txt"
else
    echo "solomonoff-regen: partial range — outputs left in $OUT/, data/ untouched"
fi
