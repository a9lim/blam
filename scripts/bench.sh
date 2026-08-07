#!/bin/sh
# Variant benchmark: what does each census knob actually buy?
#
# Usage: bench.sh [min] [max]        (default 34 36)
#        REPS=5 bench.sh             (default 3 runs per rung)
#
# READ THIS BEFORE BELIEVING A ROW
#
# * Sizes. The default range is 34..36 because that is where the ladder's
#   expensive rungs live. AGENTS.md: "Profile the size where the problem
#   lives; the n=40 tail is invisible at n=37" — and the old default of
#   28..31 was worse than useless, every rung landing at 0.03-0.09 s with
#   the ablations producing bit-identical counts. Budget ~30 min for the
#   full sweep at REPS=3 (measured, 18 cores, loaded box): most rungs are
#   ~25 s per run, but --threads 1 is ~95 s and --rescue-trans-mult 64 is
#   ~40 s. Narrow the range or drop REPS if that is too long.
#
# * Memo warm-up. Rows are NOT comparable across different START sizes.
#   The lambda-wrap memo rolls by size parity from wherever the sweep
#   begins, so a size reached mid-sweep is cheaper than the same size
#   run cold. Measured: n=36 reports escal 25268 from a cold `census
#   36 36` and escal 18729 when reached from `census 4 36` — same halt,
#   diverge and unknown counts, different work. Comparing this script's
#   output against a run with a different min is comparing two different
#   amounts of work.
#
# * wall vs user. Both are printed. On a loaded machine wall is nearly
#   useless — a contended box moved the same binary between 12 s and 39 s
#   here while user time held to within 5%. Trust `user` for "did this
#   change the work", `wall` for "did this change the parallelism". A
#   rung that cuts user but not wall is load-imbalanced, which is the
#   failure mode the two-phase scheduler exists to fix.
set -e
cd "$(dirname "$0")/.."
MIN="${1:-34}" MAX="${2:-36}"
REPS="${REPS:-3}"
BIN="./target/release/blam"
cargo build --release --bin blam

TMP=$(mktemp -d)
trap 'rm -rf "$TMP"' EXIT
PRE=""

# run3 LABEL [flags...] — REPS runs, median wall and median user.
# $PRE is eval'd before each run (used to keep checkpoint rungs cold).
run3() {
    label="$1"
    shift
    : > "$TMP/t"
    i=1
    while [ "$i" -le "$REPS" ]; do
        # `if`, not `[ ... ] && ...`: under `set -e` the latter aborts the
        # script on the rep where PRE is empty.
        if [ -n "$PRE" ]; then eval "$PRE"; fi
        /usr/bin/time -p "$BIN" census "$MIN" "$MAX" "$@" \
            > "$TMP/out" 2> "$TMP/e" || { cat "$TMP/e"; exit 1; }
        grep -E '^(real|user) ' "$TMP/e" >> "$TMP/t"
        i=$((i + 1))
    done
    # Escalation count of the last run: the "did this rung change the
    # work, not just the speed" column. Ablations that alter verdicts or
    # ladder routing show up here.
    esc=$(awk -v m="$MAX" 'NF>=10 && $1==m {print $6}' "$TMP/out")
    awk -v L="$label" -v E="$esc" '
        /^real/ { r[++n] = $2 }
        /^user/ { u[++m] = $2 }
        END {
            for (i = 1; i <= n; i++)
                for (j = i + 1; j <= n; j++) {
                    if (r[j] < r[i]) { t = r[i]; r[i] = r[j]; r[j] = t }
                    if (u[j] < u[i]) { t = u[i]; u[i] = u[j]; u[j] = t }
                }
            h = int((n + 1) / 2)
            printf "%-38s wall %7.2f  user %8.2f  escal %s\n", L, r[h], u[h], E
        }' "$TMP/t"
}

echo "census $MIN..$MAX, median of $REPS runs, $(nproc 2>/dev/null || sysctl -n hw.ncpu) cpus"
echo

echo "-- ladder rungs"
run3 "baseline"
run3 "no NF-prescan"                     --no-prescan
run3 "no oracle prefilter"               --no-oracle
run3 "neither"                           --no-prescan --no-oracle

echo
echo "-- budgets (escal column moves: different routing)"
run3 "budget1=16"                        --budget1 16
run3 "budget1=512"                       --budget1 512
run3 "rescue-trans-mult 64 (dflt 32)"    --rescue-trans-mult 64

echo
echo "-- scheduling"
# --chunk 1 asks split_tasks for a single generation task, so phase A
# (generation fused with the cheap rungs) runs essentially serially.
# Phase B still spreads survivors across the work queue, so this is NOT
# a single-threaded run — it is the cost of losing generation
# parallelism, which is what the old script's row silently measured.
run3 "serial generation (--chunk 1)"     --chunk 1
run3 "single thread (--threads 1)"       --threads 1

echo
echo "-- checkpoint grouping (--groups binds only with --checkpoint)"
# --groups K is TWO knobs at once, which is why these rows move so far:
# it sets the number of sequential barriers per size AND the task-split
# target, `threads × 16 × K` (ckpt.rs). At 18 threads, K=64 is 18432
# tasks behind 64 barriers and K=1 is 288 tasks behind one. So the
# comparison below is not "barrier cost" in isolation — a smaller K buys
# fewer barriers and pays with a coarser, less balanced split. Read it
# against the no-checkpoint baseline, not as a clean one-variable sweep.
# Each rep must start from no checkpoint file, or the run resumes and
# measures nothing.
PRE="rm -f $TMP/ck"
run3 "ckpt --groups 64 (dflt; 64 barriers)" --checkpoint "$TMP/ck" --groups 64
run3 "ckpt --groups 1 (1 barrier, coarse)"  --checkpoint "$TMP/ck" --groups 1
PRE=""

echo
echo "-- delta protocol (memo files)"
# --memo-in is not a pure speedup: seeded no-whnf facts settle terms the
# cold run reports as Unknown, and the escal column drops accordingly.
# AGENTS.md calls the memo files "part of the delta protocol, not a
# speedup" for exactly this reason, so read the escal column here.
PRE="rm -f $TMP/mo"
run3 "--memo-out (write records)"        --memo-out "$TMP/mo"
PRE=""
if [ "$MIN" -gt 4 ]; then
    echo "   seeding memo file from census 4 $((MIN - 1))..." >&2
    rm -f "$TMP/memo"
    $BIN census 4 $((MIN - 1)) --memo-out "$TMP/memo" > /dev/null 2>&1
    run3 "--memo-in (seeded 4..$((MIN - 1)))" --memo-in "$TMP/memo"
else
    echo "(--memo-in rung skipped: needs MIN > 4 to have a prior range)"
fi
