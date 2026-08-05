#!/bin/bash
# Differential verification of uni.rs against Tromp's uni.py on his own
# corpus. uni.rs lives in the ref/AIT submodule (the a9lim/AIT fork,
# where the upstream PR ships from); init it first. Every vector must
# be byte-identical; take256's nonzero exits match uni.py's behavior at
# that vector's terminator and are asserted, not ignored.
set -e
cd "$(dirname "$0")/../.."
R=ref/AIT
U=/tmp/uni_verify
rustc --edition 2021 -O -o $U $R/uni.rs 2>/dev/null

echo "quine (bit mode, self-application)"
cat $R/ait/quine $R/ait/quine | $U - > /tmp/uv_q.rs
cat $R/ait/quine $R/ait/quine | python3 $R/uni.py - > /tmp/uv_q.py 2>/dev/null
cmp /tmp/uv_q.py /tmp/uv_q.rs
cmp /tmp/uv_q.rs <(cat $R/ait/quine $R/ait/quine)

echo "take256 (byte mode, 400-byte input)"
head -c 400 /dev/urandom > /tmp/uv_in400
rc_rs=0; cat $R/bin/take256.blc8 /tmp/uv_in400 | $U > /tmp/uv_t.rs 2>/dev/null || rc_rs=$?
rc_py=0; cat $R/bin/take256.blc8 /tmp/uv_in400 | python3 $R/uni.py > /tmp/uv_t.py 2>/dev/null || rc_py=$?
[ "$rc_rs" -ne 0 ] && [ "$rc_py" -ne 0 ]  # both die at the terminator
cmp /tmp/uv_t.py /tmp/uv_t.rs
cmp /tmp/uv_t.rs <(head -c 256 /tmp/uv_in400)

echo "hilbert (byte mode, depth input '12')"
(cat $R/hilbert; echo '12') | $U > /tmp/uv_h.rs
(cat $R/hilbert; echo '12') | python3 $R/uni.py > /tmp/uv_h.py 2>/dev/null
cmp /tmp/uv_h.py /tmp/uv_h.rs

echo "primes1k (bit mode)"
$U - < $R/primes1k.blc > /tmp/uv_p.rs
python3 $R/uni.py - < $R/primes1k.blc > /tmp/uv_p.py 2>/dev/null
cmp /tmp/uv_p.py /tmp/uv_p.rs

# Adversarial-review witnesses (2026-08-01): each broke an earlier
# draft of uni.rs and stays as a regression tooth.

echo "call-by-name effect replay (duplicated argument must print 00)"
w=000000010001011000000101111000001010110011100000110
printf %s $w | $U - > /tmp/uv_w.rs
printf %s $w | python3 $R/uni.py - > /tmp/uv_w.py 2>/dev/null
cmp /tmp/uv_w.py /tmp/uv_w.rs
[ "$(cat /tmp/uv_w.rs)" = "00" ]

echo "streaming (output must arrive while stdin is still open)"
: > /tmp/uv_s.rs
( printf %s 000001011000001100000100; sleep 2 ) | $U - > /tmp/uv_s.rs &
spid=$!
sleep 1
[ -s /tmp/uv_s.rs ]  # wrote before EOF
wait $spid
[ "$(cat /tmp/uv_s.rs)" = "0" ]

echo "malformed nine-bit output byte (both must die with no output)"
printf %s 05858216085821608582160858216085820820 | xxd -r -p > /tmp/uv_m.in
rc_rs=0; $U < /tmp/uv_m.in > /tmp/uv_m.rs 2>/dev/null || rc_rs=$?
rc_py=0; python3 $R/uni.py < /tmp/uv_m.in > /tmp/uv_m.py 2>/dev/null || rc_py=$?
[ "$rc_rs" -ne 0 ] && [ "$rc_py" -ne 0 ]
[ ! -s /tmp/uv_m.rs ] && [ ! -s /tmp/uv_m.py ]

echo "ALL VECTORS BYTE-IDENTICAL"
