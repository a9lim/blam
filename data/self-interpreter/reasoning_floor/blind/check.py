#!/usr/bin/env python3
"""Lane-local battery adapter: raw compile, at most two workers, lane temp files."""
import os
from pathlib import Path
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[2]
os.environ['TMPDIR'] = str(HERE)
os.environ['RAYON_NUM_THREADS'] = '2'
sys.dont_write_bytecode = True
sys.path[:0] = [str(ROOT / 'tools'), str(ROOT / 'tools/self-interpreter')]
import blcc
import battery
import lc

def compile_src(src):
    p = blcc.P(blcc.strip_comments(src))
    e = blcc.p_lc(p)
    p.ws()
    assert p.i == len(p.t), p.t[p.i:]
    return blcc.to_db(e)

def counts(t):
    if t[0] == 'V': return (0, 0, t[1])
    if t[0] == 'L':
        l, a, x = counts(t[1]); return l+1, a, x
    u, v = counts(t[1]), counts(t[2])
    return u[0]+v[0], u[1]+v[1]+1, u[2]+v[2]

def write(name, src):
    p = HERE / (name + '.lam')
    p.write_text(src.strip() + '\n')
    t = compile_src(src)
    print(f'{name}: {lc.size(t)} bits L,A,X={counts(t)}', flush=True)
    return p

if __name__ == '__main__':
    args = sys.argv[1:]
    max_bits = 18
    if '--max-bits' in args:
        i = args.index('--max-bits'); max_bits = int(args[i+1]); del args[i:i+2]
    for a in args:
        p = HERE / a
        t = compile_src(p.read_text())
        start = time.monotonic()
        ok, skip, bad = battery.check(t, max_bits=max_bits, threads=2)
        line = f'{lc.size(t)} bits ok={ok} skip={skip} fail={len(bad)} {p.name} time={time.monotonic()-start:.2f}s L,A,X={counts(t)}'
        print(line, flush=True)
        with (HERE / 'battery.log').open('a') as f:
            print(line, file=f)
            for item in bad[:5]: print('  ', *item, file=f)
        for item in bad[:5]: print('  ', *item, flush=True)
