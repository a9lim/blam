#!/bin/sh
# Regenerate the certified bounds on the true Omega (docs/classical/omega.md):
# data/classical/omega_leaves.txt (leaf tables, closed terms <= 28 bits) and
# data/classical/omega.txt (exact lower/upper bounds and the pinned bits).
# Reads data/classical/census_table.txt and unknowns.txt; regenerate those
# first if the census moves.
# Usage: omega-regen.sh [HL] [MAX]   (default 28 240)
set -e
cd "$(dirname "$0")/.."
HL="${1:-28}" MAX="${2:-240}"
python3 tools/omega/leaves.py "$HL" data/classical/omega_leaves.txt
python3 tools/omega/bound.py data/classical/omega_leaves.txt --max "$MAX" > data/classical/omega.txt
cat data/classical/omega.txt
