#!/bin/sh
# Variant benchmark: what does each census optimization actually buy?
# Runs the same size range under ablations and prints the timing rows.
set -e
cd "$(dirname "$0")/.."
RANGE="${1:-28} ${2:-31}"
BIN=./target/release/census
cargo build --release 2>/dev/null

echo "== baseline (prescan + oracle + ladder + fused parallel gen)"
$BIN $RANGE | tail -n +2
echo "== no NF-prescan"
$BIN $RANGE --no-prescan | tail -n +2
echo "== no oracle prefilter"
$BIN $RANGE --no-oracle | tail -n +2
echo "== neither"
$BIN $RANGE --no-prescan --no-oracle | tail -n +2
echo "== budget1=16"
$BIN $RANGE --budget1 16 | tail -n +2
echo "== budget1=512"
$BIN $RANGE --budget1 512 | tail -n +2
echo "== single task chunk (serialized generation, parallel ladder only)"
$BIN $RANGE --chunk 1 | tail -n +2
