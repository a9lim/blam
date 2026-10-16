#!/bin/sh
# Regenerate the certified bounds on the true Omega (docs/classical/omega.md):
# data/classical/omega_leaves.txt (leaf tables from every closed term <= 41 bits
# on the census ladder, ~4 min) and data/classical/omega.txt (exact lower and
# upper bounds and the pinned bits, ~20 s). Reads data/classical/census_table.txt
# and unknowns.txt; regenerate those first if the census moves.
# --reuse-leaves is for a certificate-only frontier trim: the census and
# ladder leaf judgments did not change. bound.py rechecks leaf halt counts.
# Usage: omega-regen.sh [HL] [MAX] | --reuse-leaves (default 41 240)
set -e
cd "$(dirname "$0")/.."
if [ "${1:-}" = "--reuse-leaves" ]; then
    MAX="${2:-240}"
else
    HL="${1:-41}" MAX="${2:-240}"
    cargo build --release --bin blam
    target/release/blam omega leaves "$HL" --out data/classical/omega_leaves.txt
fi
OUT=$(mktemp)
trap 'rm -f "$OUT"' EXIT
python3 tools/omega/bound.py data/classical/omega_leaves.txt --max "$MAX" > "$OUT"
mv "$OUT" data/classical/omega.txt
cat data/classical/omega.txt
