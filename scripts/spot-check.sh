#!/bin/sh
# Census spot-check: the standing regression bar (AGENTS.md, Ground
# rules). Halt counts must be bit-identical to data/classical/census_table.txt at
# the checked sizes; timing columns are excluded. CI runs this same
# script; rows 4..32 cover the full ladder including loop32's row and
# run in under a second after the build.
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
awk '/^[[:space:]]*#/ {next} /^[[:space:]]*[0-9]/ {print $1,$2,$3,$4,$5,$6,$7,$8}' \
    "$T/spot.txt" > "$T/spot.cols"
awk -v lo="$MIN" -v hi="$MAX" \
    '/^[[:space:]]*#/ {next} /^[[:space:]]*[0-9]/ && $1>=lo && $1<=hi {print $1,$2,$3,$4,$5,$6,$7,$8}' \
    data/classical/census_table.txt > "$T/canon.cols"
diff "$T/spot.cols" "$T/canon.cols"
echo "spot-check OK: rows $MIN..$MAX bit-identical to data/classical/census_table.txt"
