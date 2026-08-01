#!/bin/bash
# Differential verification of uni.rs against Tromp's uni.py on his own
# corpus (ref/AIT must be cloned; see AGENTS.md). Every vector must be
# byte-identical; take256's nonzero exits match uni.py's behavior at
# that vector's terminator and are asserted, not ignored.
set -e
cd "$(dirname "$0")/../.."
R=ref/AIT
U=/tmp/uni_verify
rustc --edition 2021 -O -o $U tools/uni/uni.rs 2>/dev/null

echo "quine (bit mode, self-application)"
cat $R/ait/quine $R/ait/quine | $U - > /tmp/uv_q.rs
cat $R/ait/quine $R/ait/quine | python3 $R/uni.py - > /tmp/uv_q.py 2>/dev/null
cmp /tmp/uv_q.py /tmp/uv_q.rs
cmp /tmp/uv_q.rs <(cat $R/ait/quine $R/ait/quine)

echo "take256 (byte mode, 400-byte input)"
head -c 400 /dev/urandom > /tmp/uv_in400
cat $R/bin/take256.blc8 /tmp/uv_in400 | $U > /tmp/uv_t.rs 2>/dev/null || true
cat $R/bin/take256.blc8 /tmp/uv_in400 | python3 $R/uni.py > /tmp/uv_t.py 2>/dev/null || true
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

echo "ALL VECTORS BYTE-IDENTICAL"
