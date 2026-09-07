#!/bin/sh
# Extend the qALC finite-clock census one size at a time.  Each size receives
# one shared wall-clock budget across the convergence ladder
#
#     1024 -> 4096 -> 8192 -> 16384 -> ...
#
# and is accepted only when two adjacent deterministic reports are identical
# after removing the clock header.  Each run also writes the speed-prior file
# (`--speed`, docs/quantum-algebraic/speed.md); its brackets are clock-
# dependent by design and never enter the stability test, but the summary
# carries their totals beside the Omega_qALC columns.  A timeout stops the campaign at that size;
# group checkpoints and the cumulative spent-seconds file make a later run at
# a deliberately larger budget resumable without silently resetting the old
# allowance.
#
# Usage: scripts/qalc-census-extend.sh [MIN] [MAX] [MINUTES]
# Defaults: MIN=28, MAX=60, MINUTES=15.
#
# Scratch and checkpoints live under tmp/qalc-census-extend/.  The generated
# summary is tmp/qalc-census-extend/convergence.txt.  Set QALC_INSTALL=1 to
# install that summary as data/qalc/census_convergence.txt.
# QALC_THREADS and QALC_RETRY_THREADS default to 18 and 8 respectively.
set -eu

cd "$(dirname "$0")/.."

MIN=${1:-28}
MAX=${2:-60}
MINUTES=${3:-15}
THREADS=${QALC_THREADS:-18}
RETRY_THREADS=${QALC_RETRY_THREADS:-8}
OUT=tmp/qalc-census-extend
CKPT_GROUPS=64
SUPPORT=100000
BUDGET=$((MINUTES * 60))

case "$MIN:$MAX:$MINUTES:$THREADS:$RETRY_THREADS" in
    *[!0-9:]*|'')
        echo "qalc-census-extend: bounds, minutes, and thread counts must be integers" >&2
        exit 2
        ;;
esac
if [ "$MIN" -gt "$MAX" ] || [ "$MINUTES" -lt 1 ] || [ "$THREADS" -lt 1 ] || [ "$RETRY_THREADS" -lt 1 ]; then
    echo "qalc-census-extend: require MIN <= MAX and positive minutes/thread counts" >&2
    exit 2
fi

mkdir -p "$OUT"
cargo build --release --bin blam

report_complete() {
    [ -s "$1" ] && grep -q '^sweep:' "$2"
}

report_digest() {
    # The second line is the only protocol field allowed to differ when two
    # clocks have converged.
    sed '2d' "$1" | shasum -a 256 | awk '{print $1}'
}

run_clock() {
    n=$1
    clock=$2
    allowance=$3
    dir=$OUT/n$n
    report=$dir/$clock.txt
    log=$dir/$clock.log
    speed=$dir/$clock.speed.txt
    checkpoint=$dir/$clock.ckpt
    started=$(date +%s)

    target/release/blam qalc census "$n" "$n" \
        --steps "$clock" --support "$SUPPORT" \
        --threads "$THREADS" --retry-threads "$RETRY_THREADS" \
        --checkpoint "$checkpoint" --groups "$CKPT_GROUPS" \
        --speed "$speed" \
        > "$report" 2> "$log" &
    child=$!
    timed_out=0
    while kill -0 "$child" 2>/dev/null; do
        now=$(date +%s)
        if [ $((now - started)) -ge "$allowance" ]; then
            kill -TERM "$child" 2>/dev/null || true
            sleep 1
            if kill -0 "$child" 2>/dev/null; then
                kill -KILL "$child" 2>/dev/null || true
            fi
            timed_out=1
            break
        fi
        sleep 2
    done
    if wait "$child"; then
        child_status=0
    else
        child_status=$?
    fi
    RUN_ELAPSED=$(( $(date +%s) - started ))
    if [ "$timed_out" -eq 1 ]; then
        return 124
    fi
    return "$child_status"
}

n=$MIN
while [ "$n" -le "$MAX" ]; do
    dir=$OUT/n$n
    mkdir -p "$dir"
    spent_file=$dir/spent_seconds
    if [ -s "$spent_file" ]; then
        spent=$(sed -n '1p' "$spent_file")
    else
        spent=0
    fi
    case "$spent" in
        *[!0-9]*|'')
            echo "qalc-census-extend: invalid $spent_file" >&2
            exit 2
            ;;
    esac

    previous=
    previous_clock=
    clock=1024
    stable=0
    while :; do
        report=$dir/$clock.txt
        log=$dir/$clock.log
        if ! report_complete "$report" "$log"; then
            remaining=$((BUDGET - spent))
            if [ "$remaining" -le 0 ]; then
                break
            fi
            echo "qalc-census-extend: n=$n clock=$clock remaining=${remaining}s" >&2
            RUN_ELAPSED=0
            if run_clock "$n" "$clock" "$remaining"; then
                run_status=0
            else
                run_status=$?
            fi
            spent=$((spent + RUN_ELAPSED))
            printf '%s\n' "$spent" > "$spent_file"
            if [ "$run_status" -eq 124 ]; then
                echo "qalc-census-extend: n=$n exhausted ${BUDGET}s at clock=$clock" >&2
                break
            fi
            if [ "$run_status" -ne 0 ]; then
                echo "qalc-census-extend: n=$n clock=$clock failed with status $run_status" >&2
                exit "$run_status"
            fi
        fi

        if [ -n "$previous" ] && [ "$(report_digest "$previous")" = "$(report_digest "$report")" ]; then
            stable=1
            printf '%s %s\n' "$previous_clock" "$clock" > "$dir/stable_clocks"
            echo "qalc-census-extend: n=$n converged at $previous_clock/$clock (${spent}s charged)" >&2
            break
        fi
        previous=$report
        previous_clock=$clock
        if [ "$clock" -eq 1024 ]; then
            clock=4096
        else
            clock=$((clock * 2))
        fi
    done

    if [ "$stable" -ne 1 ]; then
        printf '%s %s\n' "${previous_clock:-none}" "$clock" > "$dir/unresolved_clocks"
        echo "qalc-census-extend: n=$n unresolved after ${spent}s; last complete ${previous_clock:-none}, next clock $clock" >&2
        break
    fi
    n=$((n + 1))
done

summary=$OUT/convergence.txt
{
    echo "# qALC finite-clock convergence census"
    echo "# generated $(date +%F); invocation=p-h-t support=$SUPPORT matrix=false"
    echo "# threads=$THREADS retry-threads=$RETRY_THREADS groups=$CKPT_GROUPS per-size-budget=${BUDGET}s"
    echo "# omega-speed columns are 2^-128 units from the run's speed file (lower, upper, open running subtotal)"
    echo "# n steps wall-s programs gate1 cons halt error running cap peak omega-lower-exact bracket-upper-exact speed-lower speed-upper speed-open report-sha256"
    scan=$MIN
    while [ "$scan" -le "$MAX" ]; do
        scan_dir=$OUT/n$scan
        [ -d "$scan_dir" ] || break
        for report in $(find "$scan_dir" -maxdepth 1 -type f -name '[0-9]*.txt' ! -name '*.speed.txt' -size +0c | sort -t/ -k4n); do
            clock=$(basename "$report" .txt)
            log=$scan_dir/$clock.log
            report_complete "$report" "$log" || continue
            row=$(awk -v n="$scan" '$1 == n { print; exit }' "$report")
            set -- $row
            wall=$(sed -n 's/.*(\([0-9][0-9.]*\)s, [0-9][0-9.]*\/s).*/\1/p' "$log" | tail -n 1)
            lower=$(awk '/^Omega_qALC lower =/ { print $4; exit }' "$report")
            upper=$(awk '/^bracket upper/ { print $4; exit }' "$report")
            speed=$scan_dir/$clock.speed.txt
            speed_lower=$(awk '/^Omega_speed lower =/ { print $4; exit }' "$speed")
            speed_upper=$(awk '/^Omega_speed upper =/ { print $4; exit }' "$speed")
            speed_open=$(awk '/^open running/ { print $4; exit }' "$speed")
            digest=$(shasum -a 256 "$report" | awk '{print $1}')
            printf '%s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s %s\n' \
                "$scan" "$clock" "$wall" "$2" "$3" "$4" "$5" "$6" "$7" "$8" "$9" \
                "$lower" "$upper" "${speed_lower:--}" "${speed_upper:--}" "${speed_open:--}" "$digest"
        done
        if [ -s "$scan_dir/stable_clocks" ]; then
            set -- $(cat "$scan_dir/stable_clocks")
            charged=$(sed -n '1p' "$scan_dir/spent_seconds" 2>/dev/null || echo 0)
            echo "# stable n=$scan clocks=$1/$2 charged=${charged}s"
        elif [ -s "$scan_dir/unresolved_clocks" ]; then
            set -- $(cat "$scan_dir/unresolved_clocks")
            charged=$(sed -n '1p' "$scan_dir/spent_seconds" 2>/dev/null || echo 0)
            checkpoint=$scan_dir/$2.ckpt
            if [ -f "$checkpoint" ]; then
                completed=$(grep -c '^E ' "$checkpoint" || true)
            else
                completed=0
            fi
            echo "# unresolved n=$scan last-complete=$1 next=$2 checkpoint-groups=$completed/$CKPT_GROUPS charged=${charged}s"
            break
        fi
        scan=$((scan + 1))
    done
} > "$summary"

if [ "${QALC_INSTALL:-0}" -eq 1 ]; then
    mkdir -p data/qalc
    cp "$summary" data/qalc/census_convergence.txt
    echo "qalc-census-extend: installed data/qalc/census_convergence.txt" >&2
else
    echo "qalc-census-extend: wrote $summary" >&2
fi

exit 0
