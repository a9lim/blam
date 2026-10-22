#!/bin/zsh
# usage: batch.sh B prefix...   (one narrowing per prefix, each capped at 115 s)
B=$1; shift
for p in "$@"; do
  n=$(echo "$p" | md5 | cut -c1-6)
  timeout 115 python3 narrow.py $B --prefix "$p" --fuel 300 --max 100000 --dump "q_$n.json" 2>&1 | grep -v '^FUEL' | sed "s|^|$n $p :: |"
  [ -s "q_$n.json" ] || echo "$n $p :: TIMEOUT/OVERFLOW"
done
