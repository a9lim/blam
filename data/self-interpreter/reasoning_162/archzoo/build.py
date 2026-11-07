#!/usr/bin/env python3
"""Six literal designs from PAPER.md; no generated candidate family."""
import sys
sys.dont_write_bytecode = True
from pathlib import Path
import json
import os
import tempfile

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
tempfile.tempdir = str(HERE)
os.environ['PYTHONDONTWRITEBYTECODE'] = '1'
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import battery

I = r'(\i.i)'
K = r'(\i\j.i)'
F = r'(\i\j.j)'
CELL = r'(\z\y.z a (y e))'
ABS = rf'(\e\a.f {CELL})'
APP = r'(\e.f e (g e))'

def knot(body):
    return rf'(\x.x x) (\x.(\p.{body}) (x x))'

def core(var, abstraction, application):
    return knot(rf'''\c\s.s {I} {var}
      (\b.p (\f.b (c {abstraction})
                       (p (\g.c {application}))))''')

THUNK = core(r'(\u.s (\q.c) (s s u))',
             r'(\e\a.f (\z.z a (\y.y e)))',
             r'(\e.f e (\unused.g e))')
PHASE = core(r'(\u.c s (s s u))',
             rf'(\e\a.f {F} {CELL})', APP)

PREFIX_CELL = r'(\unused\r.r (\b.b (\discard.a) (e b)))'
PREFIX_NEXT = rf'''(\b.p (\f.b
  (c (\e\a.f {PREFIX_CELL}))
  (p (\g.c {APP}))))'''
PREFIX = knot(rf'''\c\s.s {I} (\u.u s (s s u))
    (s {K} {PREFIX_NEXT} c)''')

LIFT_TAG = r'(\t\g\f\h.h t (\e.f e (g e)))'
BOX = rf'(\f\h.h {LIFT_TAG} f)'
BOX_BODY = core(r'(\u.s (\w\r.c (box r)) (s s u))',
                rf'(box (\e\a.(f {F}) {CELL}))', r'(f g)')
POINTWISE = rf'(\box\root.({BOX_BODY}) (\v.root (v {F}))) {BOX}'

RESUME_GEN = rf'''(\g\a\j\c\s.
  (\ret.s {I} (\u.s (\q.ret) (s s u))
    (\b.g g {F} {F} (\v.b
      (ret (\e\x.(v {F}) (\z\y.z x (y e))))
      (v v (\w.ret (w {F}))))))
  (\f.c (\h.h g (\e.a e (f e)))))'''
RESUME_DRIVER = rf'(\g\c.g g {F} {F} (\v.c (v {F})))'
RESUME = f'{RESUME_DRIVER} {RESUME_GEN}'

FOLD_BODY = core(r'(\u.s (\q\r.c (\a\b\v.v r)) (s s u))',
                 r'(\a\b\v.a (f a b v))',
                 r'(\a\b\v.b (f a b v) (g a b v))')
ABS_ALGEBRA = rf'(\f\e\a.f {CELL})'
APP_ALGEBRA = r'(\f\g\e.f e (g e))'
FOLD = rf'\root.({FOLD_BODY}) (\w.root (w {ABS_ALGEBRA} {APP_ALGEBRA} {I}))'

SOURCES = [
    ('argument_thunks', THUNK, (17,24,32), 164),
    ('local_phase', PHASE, (17,25,31), 167),
    ('prefix_continuation', PREFIX, (19,28,33), 185),
    ('pointwise_boxes', POINTWISE, (30,37,56), 266),
    ('resumption_pairs', RESUME, (36,37,54), 276),
    ('church_algebra', FOLD, (32,43,59), 297),
]

def counts(t):
    if t[0] == 'V': return (0,0,t[1])
    if t[0] == 'L':
        l,a,x = counts(t[1])
        return l+1,a,x
    l,a,x = counts(t[1])
    ll,aa,xx = counts(t[2])
    return l+ll,a+aa+1,x+xx

def main():
    rows = []
    for name, source, paper_counts, paper_bits in SOURCES:
        term = battery.compile_lam(source)
        wire = battery.enc(term)
        l,a,x = counts(term)
        assert len(wire) == 2*l + 4*a + 2 + x
        (HERE / (name + '.lam')).write_text(
            '-- Literal architecture from PAPER.md; hypotheses require checking.\n'
            + source + '\n')
        (HERE / (name + '.blc')).write_text(wire + '\n')
        row = dict(name=name, paper_counts=paper_counts, paper_bits=paper_bits,
                   measured_counts=[l,a,x], measured_bits=len(wire),
                   pricing_error=len(wire)-paper_bits)
        rows.append(row)
        print(json.dumps(row))
    (HERE / 'prices.json').write_text(json.dumps(rows, indent=2)+'\n')

if __name__ == '__main__':
    main()
