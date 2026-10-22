#!/bin/zsh
# Run a Codex lane turn over gaslamp, resuming the same thread automatically
# when the API reports "model at capacity" (transient), up to $MAX tries.
# usage: lane.sh THREAD LABEL MODEL EFFORT PROMPTFILE OUTFILE
set -u
thread=$1 label=$2 model=$3 effort=$4 prompt=$5 out=$6
MAX=${MAX:-6}
cd /Users/a9lim/Work/blam
try=1
gaslamp codex --thread "$thread" --label "$label" --model "$model" --effort "$effort" \
  --cwd /Users/a9lim/Work/blam - < "$prompt" >> "$out" 2>&1
rc=$?
while [ $rc -ne 0 ] && [ $try -lt $MAX ]; do
  job=$(grep -o 'job cx-[0-9a-f-]*' "$out" | tail -1 | awk '{print $2}')
  ev=~/.gaslamp/jobs/$job/events.jsonl
  if [ -n "$job" ] && grep -q 'at capacity' "$ev" 2>/dev/null; then
    try=$((try+1))
    echo "[lane.sh] capacity cut-off on $job; resuming (try $try)" >> "$out"
    sleep 30
    gaslamp codex --thread "$thread" --label "$label-r$try" --model "$model" --effort "$effort" \
      --cwd /Users/a9lim/Work/blam "Coordinator: your previous turn was cut off by a transient 'model at capacity' API error, not by anything you did. Continue the lane from where you were (your NOTES.md and files are intact), and finish with the report the lane asks for." >> "$out" 2>&1
    rc=$?
  else
    break
  fi
done
echo "[lane.sh] done rc=$rc tries=$try" >> "$out"
exit $rc
