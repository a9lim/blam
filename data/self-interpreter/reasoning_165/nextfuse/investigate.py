#!/usr/bin/env python3
"""A few derived second-tag handoffs; no enumeration or optimization."""
from pathlib import Path
import json
import os
import sys
import time

HERE = Path(__file__).resolve().parent
ROOT = Path('/Users/a9lim/Work/blam')
sys.path[:0] = [str(ROOT / 'tools/self-interpreter'), str(ROOT / 'tools')]
os.environ['RAYON_NUM_THREADS'] = '2'
os.environ['TMPDIR'] = str(HERE)
import battery
import blcc


def parse(src):
    p = blcc.P(blcc.strip_comments(src))
    ast = blcc.p_lc(p)
    p.ws()
    assert p.i == len(p.t)
    return blcc.to_db(ast)


def knot(body):
    return rf'(\x. x x) (\x. (\intL. {body}) (x x))'


ABS = r'(cont (\args \arg. exp (\zx \zy. zx arg (zy args))))'
APP = r'(intL (\exp2. cont (\args. exp args (exp2 args))))'
K = r'(\a \b. a)'
F = r'(\a \b. b)'

# One zero-arm binder leaves its second copy of q after the first parse.
# next ignores b1; D receives f, residual, q and re-reads b1 as q K.
AFTER = knot(rf'''\cont.
  (\next. \list.
    list (\bit0. bit0 (\r. r next) cont) (list list list))
  (\unused. intL (\exp \rest \tagtail.
     tagtail {K} {ABS} {APP} rest))''')

# Since bit0 is K in the zero arm, it can discard b1 for us. This floats
# the complete first-parse partial application outside that dummy binder.
HOIST = knot(rf'''\cont.
  (\parse. \list.
    list (\bit0. bit0 (\r. r (bit0 parse)) cont) (list list list))
  (intL (\exp \rest \tagtail.
     tagtail {K} {ABS} {APP} rest))''')

# Same new protocol, but eliminate the second tag's source field with a
# handler rather than a literal K projection; the lexical-depth cost matters.
HANDLER = knot(rf'''\cont.
  (\next. \list.
    list (\bit0. bit0 (\r. r next) cont) (list list list))
  (\unused. intL (\exp \rest \tagtail.
     tagtail (\bit1 \source. bit1 {ABS} {APP}) rest))''')

# Retain the actual tag explicitly and derive the two first-parse fields
# separately. This is a lossless realization of the q P / projection idea.
PROJECT = knot(rf'''\cont.
  (\next. \list.
    list (\bit0. bit0 (\unused. next) cont) (list list list))
  (\tagtail.
     (\source.
       (\exp. tagtail {K} {ABS} {APP} (intL {F} source))
       (intL {K} source))
     (tagtail {F}))''')

CANDIDATES = [
    ('tag_after_parse', AFTER, 'Carry the redundant second-tag stream through the first parse and re-read its tag afterward.'),
    ('tag_after_parse_hoisted', HOIST, 'Use the known first-tag K to hoist the first-parse partial application out of the ignored-bit binder.'),
    ('tag_after_parse_handler', HANDLER, 'Replay the second tag with a Scott handler instead of the literal K projection.'),
    ('independent_projections', PROJECT, 'Preserve the second tag and reconstruct value and remainder with separate first-parse projections.'),
]


def counts(t):
    if t[0] == 'V':
        return (0, 0, t[1])
    if t[0] == 'L':
        l, a, x = counts(t[1])
        return l + 1, a, x
    a, b = counts(t[1]), counts(t[2])
    return a[0] + b[0], a[1] + b[1] + 1, a[2] + b[2]


def main():
    rows = []
    for name, source, idea in CANDIDATES:
        path = HERE / (name + '.lam')
        path.write_text(source + '\n')
        term = parse(source)
        bits = battery.enc(term)
        (HERE / (name + '.blc')).write_text(bits + '\n')
        started = time.monotonic()
        ok, skip, bad = battery.check(term, threads=2)
        elapsed = time.monotonic() - started
        line = f'{len(bits):5d} bits  ok={ok} skip={skip} fail={len(bad)}  {path}'
        print(line, flush=True)
        print(f'    L,A,X={counts(term)} seconds={elapsed:.3f}; {idea}', flush=True)
        for failure in bad[:5]:
            print('   ', *failure, flush=True)
        rows.append(dict(name=name, bits=len(bits), counts=counts(term), ok=ok,
                         skip=skip, failures=bad, seconds=elapsed, idea=idea,
                         line=line))
    (HERE / 'results.json').write_text(json.dumps(rows, indent=2) + '\n')


if __name__ == '__main__':
    main()
