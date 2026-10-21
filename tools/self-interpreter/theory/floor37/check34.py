#!/usr/bin/env python3
"""The twelve residual 34-bit layouts, after the handwritten reduction.

No closed-term census. No modification of repository files.
"""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import itertools
import json

ROOT = Path(__file__).resolve().parents[4]
sys.path.insert(0, str(ROOT / "tools"))
sys.path.insert(0, str(ROOT / "tools/self-interpreter"))
import blcc
import lc

def parse(src):
    parser = blcc.P(blcc.strip_comments(src))
    tree = blcc.p_lc(parser)
    parser.ws()
    assert parser.i == len(parser.t)
    return blcc.to_db(tree)

def head_step(t):
    if t[0] == 'L':
        u = head_step(t[1])
        return None if u is None else ('L', u)
    if t[0] == 'A':
        if t[1][0] == 'L':
            return lc.beta(t[1], t[2])
        u = head_step(t[1])
        return None if u is None else ('A', u, t[2])
    return None

def head_trace(t, cap=100):
    seen = {t:0}
    for n in range(cap):
        u = head_step(t)
        if u is None:
            return 'hnf', n, t
        if u in seen:
            return 'loop', (seen[u],n+1), u
        seen[u] = n+1
        t = u
        if lc.size(t) > 100000:
            return 'size', n+1, t
    return 'cap',cap,t

def invoke(e, m):
    return ('L',('L',('A',('A',lc.shift(2,0,e),('V',1)),
                     lc.bitlist(lc.enc(m),('V',0)))))

def main():
    rows = []
    delta = parse('\\x.x x')
    ident = parse('\\x.x')
    for (a,b,c) in itertools.permutations('abc'):
        for tree in (f'({a} {b}) {c}', f'{a} ({b} {c})'):
            nsrc = '\\a\\b.a (\\c.' + tree + ')'
            n = parse(nsrc)
            e = ('A',delta,n)
            assert lc.size(e) == 34
            status, steps, hnf = head_trace(e)
            pstatus,psteps,phnf = head_trace(invoke(e,ident))
            row = dict(tree=tree, n=nsrc, source_bits=lc.enc(e),
                       head_status=status, head_steps=steps,
                       head_result=lc.show(hnf)[:1000],
                       I_status=pstatus,I_steps=psteps,
                       I_result=lc.show(phnf)[:1000])
            rows.append(row)
            print(json.dumps(row))
    (Path(__file__).parent/'check34.json').write_text(json.dumps(rows,indent=2)+'\n')

if __name__ == '__main__':
    main()
