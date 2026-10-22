#!/bin/bash
cd /Users/a9lim/Work/blam/tmp/round4/depth02
timeout 115 python3 certify_all.py d2app_left_a.bits d2app_f1_v4567.pkl
timeout 115 python3 certify_all.py d2app_left_b.bits d2app_f1_v8910.pkl
timeout 115 python3 certify_all.py d2app_left_c.bits d2app_f2_v5678910.pkl d2app_f3_v678910.pkl
cat d2app_left_a.bits d2app_left_b.bits d2app_left_c.bits > d2app_left.bits
wc -l d2app_left.bits
./blam adjudicate --file d2app_left.bits --threads 2 --no-oracle 2>/dev/null | awk '{print $2, $3}' | sort | uniq -c
echo done
