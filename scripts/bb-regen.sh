#!/bin/sh
# Recheck BB seed proofs, regenerate their checked lambda closure, and
# update the frontier and exact certificate bounds. The census is reused:
# these proofs adjudicate its unknowns without changing engine verdicts.
set -e
cd "$(dirname "$0")/.."
python3 tools/certificates/bb.py
sh scripts/census-regen.sh --frontier-only
sh scripts/omega-regen.sh --reuse-leaves
