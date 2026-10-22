#!/bin/bash
cd /Users/a9lim/Work/blam/tmp/round4/depth02
for spec in "3 1" "3 2,3,4,5" "4 1,2,3,4,5" "5 1,2,3,4,5" "6 1,2,3,4,5" "7 1,2,3,4" "8 1,2,3" "9 1,2" "10 1"; do
  set -- $spec
  timeout 115 python3 runfam4.py $1 $2 letj_D$1_dm${2//,/}.pkl
done
echo done
