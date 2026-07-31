#!/bin/sh
# Tail-imbalance experiment: does a finer generation-task split recover
# the throughput lost at n>=37 (frontier terms clustering in few tasks)?
set -e
BIN=./target/release/census
N="${1:-37}"
echo "== default split (threads*64 = 1152 tasks)"
$BIN $N | tail -n +2 | head -1
echo "== x4 (4608 tasks)"
$BIN $N --chunk 4608 | tail -n +2 | head -1
echo "== x16 (18432 tasks)"
$BIN $N --chunk 18432 | tail -n +2 | head -1
echo "== x64 (73728 tasks)"
$BIN $N --chunk 73728 | tail -n +2 | head -1
