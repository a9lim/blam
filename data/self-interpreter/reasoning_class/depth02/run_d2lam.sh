#!/bin/bash
cd /Users/a9lim/Work/blam/tmp/round4/depth02
for spec in "1 4,5" "1 6" "1 7" "1 8,9" "2 5,6,7,8,9" "3 6,7,8,9" "4 7,8,9" "5 8,9" "6 9"; do
  set -- $spec
  timeout 115 python3 runfam.py d2lam $1 $2 d2lam_f$1_v${2//,/}.pkl
done
echo done
