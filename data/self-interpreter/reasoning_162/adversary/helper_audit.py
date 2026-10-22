"""One small hole check: concrete 162 helpers in a sub-24 uniform cell.

The old written proof specializes the actual 165 helpers. This finite audit
checks precisely the newly exposed helper case, not all cells or ABS bodies.
"""
from concurrent.futures import ThreadPoolExecutor
from functools import lru_cache
from itertools import permutations
import json
import os
from pathlib import Path
import subprocess
import sys
import time

LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[3]
sys.dont_write_bytecode = True
sys.path[:0] = [str(ROOT / 'tools'), str(ROOT / 'tools/self-interpreter')]
import blcc
import lc

def parse(src):
    parser = blcc.P(src)
    return blcc.to_db(blcc.p_lc(parser), ())

E = lc.decode((ROOT / 'data/self-interpreter/machines/int162.blc').read_text().strip())[0]
G = E[2]
K, F, I = lc.TRUE, lc.FALSE, ('L', ('V', 0))

@lru_cache(None)
def shapes(lams, apps):
    out = []
    if lams == apps == 0:
        return (('leaf',),)
    if lams:
        out += [('L', t) for t in shapes(lams-1, apps)]
    if apps:
        for ll in range(lams+1):
            for aa in range(apps):
                out += [('A', f, a) for f in shapes(ll, aa)
                        for a in shapes(lams-ll, apps-1-aa)]
    return tuple(out)

def fill(shape, labels, depth=0):
    if shape[0] == 'leaf':
        label = next(labels)
        if label < 0:
            if depth == 0:
                raise ValueError('unbound local')
            return ('V', 0)
        return ('V', depth+label)
    if shape[0] == 'L':
        return ('L', fill(shape[1], labels, depth+1))
    return ('A', fill(shape[1], labels, depth), fill(shape[2], labels, depth))

# Mandatory a,e and one concrete helper; <24 bits allows A<=3.
# Mandatory excess 7 (P) or 8 (G) implies L<=3 at A=2, L<=1 at A=3.
terms = {}
for helper in [6, 7]:
    for apps, max_lam in [(2, 3), (3, 1)]:
        extras = [None] if apps == 2 else [-1, *range(8)]
        for extra in extras:
            labels = [0, 1, helper] + ([] if extra is None else [extra])
            for order in set(permutations(labels)):
                for lams in range(max_lam+1):
                    for shape in shapes(lams, apps):
                        try:
                            term = fill(shape, iter(order))
                        except ValueError:
                            continue
                        if lc.size(term) <= 23:
                            terms[lc.enc(term)] = term
assert len(terms) <= 2000, len(terms)

# Rigid a,e,n,r,N,C in a six-variable ambient frame.
v = lambda i: ('V', i)
loans = [v(0), v(1), F, K, lc.bitlist('000010', v(4)), v(5), E, G]
def substitute(t, depth=0):
    if t[0] == 'V':
        return t if t[1] < depth else lc.shift(depth, 0, loans[t[1]-depth])
    if t[0] == 'L':
        return ('L', substitute(t[1], depth+1))
    return ('A', substitute(t[1], depth), substitute(t[2], depth))

def close(t):
    for _ in range(6):
        t = ('L', t)
    return t

def whnf(t, fuel=256):
    stack = []
    steps = 0
    while True:
        if t[0] == 'A':
            stack.append(t[2])
            t = t[1]
        elif t[0] == 'L' and stack:
            if steps >= fuel:
                return None
            t = lc.beta(t, stack.pop())
            steps += 1
        else:
            return t, list(reversed(stack)), steps

def check(item):
    bits, term = item
    cell = substitute(term)
    for label, tag, tail, want_head, arity in [('K', K, v(2), v(0), 0), ('F', F, v(3), v(3), 1)]:
        got = whnf(('A', ('A', cell, tag), tail))
        if got is None:
            return {'bits': bits, 'size': len(bits), 'verdict': 'capped', 'test': label}
        head, args, steps = got
        if head != want_head or len(args) != arity:
            return {'bits': bits, 'size': len(bits), 'verdict': 'refuted', 'test': label,
                    'head': head[0] if head[0]=='L' else lc.show(head), 'arity': len(args), 'steps':steps}
        if label == 'F':
            value = whnf(args[0])
            if value is None:
                return {'bits': bits, 'size': len(bits), 'verdict': 'capped', 'test': 'F-argument'}
            if value[0] != v(1) or value[1]:
                return {'bits': bits, 'size': len(bits), 'verdict': 'refuted', 'test': 'F-argument'}
    return {'bits': bits, 'size': len(bits), 'verdict': 'survivor'}

start = time.monotonic()
with ThreadPoolExecutor(2) as ex:
    results = list(ex.map(check, sorted(terms.items(), key=lambda x:(len(x[0]),x[0]))))
counts = {status: sum(row['verdict']==status for row in results)
          for status in ['refuted','capped','survivor']}
report = dict(candidates=len(results), counts=counts,
              seconds=round(time.monotonic()-start,3), results=results)
(LANE / 'helper_audit.json').write_text(json.dumps(report, indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='results'}))
