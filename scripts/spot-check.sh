#!/bin/sh
# Census spot-check: the standing regression bar (AGENTS.md, Ground
# rules). At the checked sizes, n, closed, halt, diverge, unknown, max|nf|
# and beta_total must be bit-identical to data/classical/census_table.txt.
# escal is the escalation-path distribution, which memo and scheduling
# changes move by design: a difference there is reported, not failed, and
# the table is regenerated when it should move. Timing columns are ignored.
# CI runs this same script; rows 4..32 cover the full ladder including
# loop32's row and run in under a second after the build.
# Usage: spot-check.sh [min] [max]   (default 4 32)
set -e
cd "$(dirname "$0")/.."
MIN="${1:-4}" MAX="${2:-32}"
cargo build --release --bin blam
T=$(mktemp -d)
trap 'rm -rf "$T"' EXIT
# Rows only, from both sides: `#` opens every provenance and telemetry
# line the census prints, and a row is the only line that starts with a
# number. Comparing rows is what makes this robust to prose changes —
# and to comparing a fresh run against a table generated before them.
target/release/blam census "$MIN" "$MAX" --verify > "$T/spot.txt"
rows() {  # census output $1 -> $T/$2.hard (compared) and $T/$2.escal (reported)
    awk -v lo="$MIN" -v hi="$MAX" '/^[[:space:]]*#/ {next}
        /^[[:space:]]*[0-9]/ && $1>=lo && $1<=hi' "$1" > "$T/$2.rows"
    awk '{print $1,$2,$3,$4,$5,$7,$8}' "$T/$2.rows" > "$T/$2.hard"
    awk '{print $1,$6}' "$T/$2.rows" > "$T/$2.escal"
}
rows "$T/spot.txt" spot
rows data/classical/census_table.txt canon
diff "$T/spot.hard" "$T/canon.hard"
if ! diff -q "$T/spot.escal" "$T/canon.escal" > /dev/null; then
    echo "note: escal differs from the canonical table (n, fresh vs canonical):"
    paste -d' ' "$T/spot.escal" "$T/canon.escal" | awk '$2 != $4 {print "  " $1 ": " $2 " vs " $4}'
fi
echo "spot-check OK: rows $MIN..$MAX bit-identical to data/classical/census_table.txt (escal reported)"
