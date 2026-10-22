#!/bin/bash
cd /Users/a9lim/Work/blam/tmp/round4/depth02
for spec in "1 4,5,6,7" "1 8,9,10" "2 5,6,7,8,9,10" "3 6,7,8,9,10" "4 7,8,9,10" "5 8,9,10" "6 9,10"; do
  set -- $spec
  timeout 115 python3 runfam.py d2app $1 $2 d2app_f$1_v${2//,/}.pkl
done
echo done
