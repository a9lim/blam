#!/bin/sh
# Statistical estimate of the true Omega (docs/classical/omega.md §6):
# a stratified uniform sample of closed terms of 42..NMAX bits, each
# adjudicated on blam's full ladder, then data/classical/omega_estimate.txt.
# The result is an estimate, not a certificate. Each chunk's verdicts are
# published atomically (written to .tmp, then renamed), and a rerun skips the
# chunks already published. A changed M/NMAX/CHUNKS needs a fresh
# tmp/omega-estimate/: the config file pins it.
# Usage: omega-estimate.sh [M] [NMAX] [CHUNKS]   (default 8000000 300 80, ~10 min + ~15 min rerun)
set -e
cd "$(dirname "$0")/.."
M="${1:-8000000}" NMAX="${2:-300}" NCH="${3:-80}"
OUT=tmp/omega-estimate
mkdir -p "$OUT"
cfg="M=$M NMAX=$NMAX NCH=$NCH"
if [ -f "$OUT/config" ] && [ "$(cat "$OUT/config")" != "$cfg" ]; then
    echo "omega-estimate: $OUT holds a run with $(cat "$OUT/config"); remove it first" >&2
    exit 1
fi
echo "$cfg" > "$OUT/config"
cargo build --release --bin blam
i=0
while [ "$i" -lt "$NCH" ]; do
    f="$OUT/verdicts_$(printf %03d "$i").txt"
    if [ ! -f "$f" ]; then
        python3 tools/omega/sample.py "$M" "$NMAX" "$NCH" "$i" > "$OUT/chunk.txt"
        target/release/blam adjudicate --file "$OUT/chunk.txt" --threads 12 --work-mult 2 \
            > "$f.tmp" 2> "$OUT/chunk.err"
        mv "$f.tmp" "$f"
    fi
    i=$((i + 1))
done
cat "$OUT"/verdicts_[0-9][0-9][0-9].txt > "$OUT/verdicts.txt"
# Second pass: the UNKNOWN terms again, at 10x escalation capacity and the
# largest usable rescue budget.
grep ' UNKNOWN' "$OUT/verdicts.txt" | cut -d' ' -f1 | sort -u > "$OUT/unknown.txt"
target/release/blam adjudicate --file "$OUT/unknown.txt" --threads 8 --work-mult 2 \
    --bb-cap 20000000 --rescue 67000000 > "$OUT/resolved.txt" 2> "$OUT/resolved.err"
python3 tools/omega/estimate.py "$OUT/verdicts.txt" "$NMAX" --resolve "$OUT/resolved.txt" \
    > data/classical/omega_estimate.txt
head -10 data/classical/omega_estimate.txt
