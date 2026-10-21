#!/usr/bin/env python3
"""Lane helper: size a .lam text (unoptimized), L/A/X breakdown, battery (2 threads),
and rigid-variable normal-form checks.

    python3 h.py size FILE.lam          -> bits L A X
    python3 h.py bat  FILE.lam          -> battery line (2 threads)
    python3 h.py eq  'TERM1' 'TERM2'    -> normalize both closed .lam terms, compare
    python3 h.py nf  'TERM'             -> normal form (pretty)
"""
import sys, os, subprocess, tempfile
from pathlib import Path
ROOT = Path("/Users/a9lim/Work/blam")
sys.path.insert(0, str(ROOT / "tools/self-interpreter")); sys.path.insert(0, str(ROOT / "tools"))
import battery, blcc, lc

def parse_text(src):
    return battery.compile_lam(src)

def lax(t, depth=0):
    if t[0] == 'V':
        return (0, 0, t[1])
    if t[0] == 'L':
        l, a, x = lax(t[1], depth + 1); return (l + 1, a, x)
    l1, a1, x1 = lax(t[1], depth); l2, a2, x2 = lax(t[2], depth)
    return (l1 + l2, a1 + a2 + 1, x1 + x2)

def size_info(src):
    t = parse_text(src)
    bits = battery.enc(t)
    l, a, x = lax(t)
    return len(bits), l, a, x, t

def normalize_src(src, beta=1 << 20):
    t = parse_text(src)
    out = battery.normalize(battery.enc(t), beta)
    return out

def pretty(bits):
    return lc.show(lc.decode(bits)[0])

def bat(path):
    t = parse_text(open(path).read())
    ok, skip, bad = battery.check(t, threads=2)
    return f"{len(battery.enc(t)):5d} bits  ok={ok} skip={skip} fail={len(bad)}  {path}", bad[:5]

if __name__ == "__main__":
    cmd = sys.argv[1]
    if cmd == "size":
        b, l, a, x, _ = size_info(open(sys.argv[2]).read()); print(b, "bits  L", l, "A", a, "X", x)
    elif cmd == "bat":
        line, bad = bat(sys.argv[2]); print(line)
        for b in bad: print("   ", *b)
    elif cmd == "eq":
        a, b = normalize_src(sys.argv[2]), normalize_src(sys.argv[3])
        print("EQUAL" if a == b and a is not None else "DIFF", "\n ", pretty(a) if a else a, "\n ", pretty(b) if b else b)
    elif cmd == "nf":
        a = normalize_src(sys.argv[2]); print(pretty(a) if a else "no nf (fuel)")
