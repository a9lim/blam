#!/bin/sh
# Regenerate the canonical census table and the unknown frontier
# (AGENTS.md, Ground rules: regenerate, never hand-edit). The frontier
# is the raw census unknowns minus the checked adjudications in
# data/certificates/{ratchet_kills,bb_kills,bb_halts}.tsv; the subtraction
# identity (raw = frontier + adjudications present, zero overlap) is reported.
#
# The 4..40 prefix is about six minutes wall on the M5 Max under the
# two-phase group scheduler (two 2026-08-07 runs, 323.6 s and 397.9 s;
# user time ~1,980 s each is the stable number — wall tracks ambient
# load). Full 4..41 has not been re-timed since the scheduler landed,
# so its last measured 16.5 min stands only as an upper bound.
# n>=42 FIRST needs a --rescue raise — the max successful rescue at
# n=41 is 9,457,564 beta against the 10^7 cap, 1.06x headroom
# (AGENTS.md, The engines); a9 decides the new cap.
#
# Outputs install into data/ only when the full canonical range is run;
# partial ranges land in tmp/census-regen/ for inspection.
# After a changed census: rerun scripts/solomonoff-regen.sh and update STATUS.
# --frontier-only reuses the unchanged census and its complete per-program
# speed-floor inventory, cross-checked against counts and all existing entries.
# Usage: census-regen.sh [min] [max] | --frontier-only (default 4 41)
set -e
cd "$(dirname "$0")/.."
OUT=tmp/census-regen
mkdir -p "$OUT"
if [ "${1:-}" = "--frontier-only" ]; then
    MIN=4
    MAX=$(awk '/^[[:space:]]*[0-9]/ {n=$1} END {print n}' data/classical/census_table.txt)
    python3 - <<'PY' > "$OUT/raw_unknowns.txt"
import sys
sys.path.insert(0, "tools/certificates")
from bb import census_unknowns
print("\n".join(census_unknowns()))
PY
    cp data/classical/census_table.txt "$OUT/census_table.txt"
else
    MIN="${1:-4}" MAX="${2:-41}"
    cargo build --release --bin blam
    # Start empty: a no-unknown sweep must not reuse a previous dump.
    : > "$OUT/raw_unknowns.txt"
    target/release/blam census "$MIN" "$MAX" --verify --dump-unknowns "$OUT/raw_unknowns.txt" \
        > "$OUT/census_table.txt"
fi
{
    cut -f2 data/certificates/ratchet_kills.tsv
    awk '!/^#/ && NF {print $1}' data/certificates/bb_kills.tsv
    awk '!/^#/ && NF {print $1}' data/certificates/bb_halts.tsv
} | sort -u > "$OUT/kill_bits.txt"
grep -vxF -f "$OUT/kill_bits.txt" "$OUT/raw_unknowns.txt" > "$OUT/unknowns.txt" || true
RAW=$(wc -l < "$OUT/raw_unknowns.txt")
FIN=$(wc -l < "$OUT/unknowns.txt")
sort "$OUT/raw_unknowns.txt" > "$OUT/raw_sorted.txt"
HIT=$(comm -12 "$OUT/raw_sorted.txt" "$OUT/kill_bits.txt" | wc -l)
echo "census-regen: raw unknowns $RAW; certified adjudications present $HIT; frontier $FIN"
if [ "$RAW" -ne $((FIN + HIT)) ]; then
    echo "census-regen: SUBTRACTION MISMATCH — investigate before installing" >&2
    exit 1
fi
if [ "$MIN" -eq 4 ] && [ "$MAX" -ge 41 ]; then
    mv "$OUT/census_table.txt" data/classical/census_table.txt
    mv "$OUT/unknowns.txt" data/classical/unknowns.txt
    echo "census-regen: installed data/classical/census_table.txt + data/classical/unknowns.txt"
    if [ "${1:-}" = "--frontier-only" ]; then
        python3 tools/certificates/bounds.py > "$OUT/certificate_bounds.txt"
        mv "$OUT/certificate_bounds.txt" data/classical/certificate_bounds.txt
    fi
else
    echo "census-regen: partial range — outputs left in $OUT/, data/ untouched"
fi
