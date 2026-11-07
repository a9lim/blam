#!/bin/zsh
# usage: runcells.sh TAG B FLAGS-FILE PREFIXFILE   (one narrowing per line of PREFIXFILE)
TAG=$1; B=$2; FUEL=${FUEL:-300}; FLAGS=$(cat $3); i=0
while IFS= read -r p; do
  i=$((i+1)); out=${TAG}_$i.json
  r=$(timeout 115 python3 narrowmin.py $B --prefix "$p" --fuel $FUEL --max 100000 ${=FLAGS} --dump $out 2>&1 | grep -E '^(B=|PREFIX|SOL)' | tr '\n' ' ')
  if [ -s $out ]; then c=$(timeout 115 python3 certgen.py $out | tail -1); else c='-'; fi
  printf "%s | %s | %s | %s\n" "$i" "$p" "$r" "$c"
done < $4
