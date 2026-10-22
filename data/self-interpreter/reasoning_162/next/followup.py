#!/usr/bin/env python3
"""Four hand-derived constructions and their fixed symbolic checks; no search."""
import json
from pathlib import Path
import sys

sys.dont_write_bytecode = True
LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[3]
sys.path.insert(0, str(ROOT / 'tools'))
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import blcc
import lc

I = r'(\i.i)'
K = r'(\a \b.a)'
F = r'(\a \b.b)'
D = r'(\a \b \d.a)'
J = r'(\a \b \d.d)'
A = r'(\env \arg.e (\z \y.z arg (y env)))'
B = r'(\env.e env (g env))'
frame = ('s','c','p','x')

def parse(src, context=()):
    q = blcc.P(src)
    tree = blcc.p_lc(q)
    q.ws()
    assert q.i == len(q.t)
    return blcc.to_db(tree, context)

def size(src, context=()):
    return lc.size(parse(src, context))

def cons(b,t):
    return rf'(\h.h ({b}) ({t}))'

def code(bits, tail='n'):
    for b in reversed(bits):
        tail = cons(K if b == '0' else F, tail)
    return tail

checks = []
def eq(label, left, right, context=('t','n','c','p','q','e','g')):
    l = lc.nf(parse(left, context), [100000])
    r = lc.nf(parse(right, context), [100000])
    assert l == r, (label,lc.show(l),lc.show(r))
    checks.append(dict(label=label,left=left,right=right,context=context))

N0 = rf'(\b.p (\e.b (c {A}) (p (\g.c {B}))))'
raw = rf'(\b.p (\e.b c (\v.p (\g.c {B})) {A}))'
raw_shared = r'(\b.p (\e.(b c p) (\y.b (\arg.e (\z \w.z arg (w y))) (c (\env.e env (y env))))))'
late = rf'(\b.b (\c.p (\e.c {A})) (\c.p (\e.p (\g.c {B}))) c)'
dual = rf'(\b.(b p p) (\e.b (\c.c {A}) (\c.p (\g.c {B})) c))'
W_raw = rf'(\u.s (u {D} {I}) (s s u))'
W_reset = rf'(\u.s (\b.u b {I} b {I}) (s s u))'
W_late = rf'(\u.s (\q.u {J}) (s s u))'
W_dual = rf'(\u.s (u {J}) (s s u))'
W_bit = r'(\u.s (\b.u (\a.b)) (s s u))'
V = r'(\u.s (\q.c) (s s u))'
second = rf'(\b \t.p (\e.(b t) (\u.p (\g.c {B})) (\a \r.c {A})) t)'

def reader(w,n):
    return rf's {I} {w} {n}'
def whole(w,n):
    return rf'(\x.x x) (\x.(\p \c \s.{reader(w,n)}) (x x))'

candidates = [
    ('reset_raw', W_raw, raw),
    ('reset_shared', W_raw, raw_shared),
    ('reset_app_identity', W_reset, N0),
    ('marker_late', W_late, late),
    ('marker_dual', W_dual, dual),
    ('marker_bit', W_bit, late),
    ('stream_second', V, second),
]
prices = []
for name,w,n in candidates:
    src = whole(w,n)
    (LANE / (name + '.lam')).write_text(src+'\n')
    bits = lc.enc(parse(src))
    (LANE / (name + '.blc')).write_text(bits+'\n')
    prices.append(dict(name=name,W=size(w,frame),NEXT=size(n,frame),bits=len(bits)))

# All except the stream-cell construction obey the rigid-tail NEXT laws.
for name,w,n in candidates:
    if name == 'stream_second':
        continue
    for b,label in [(K,'ABS'),(F,'APP')]:
        eq(name+'_'+label, f'{n} {b} t', f'{N0} {b} t',
           ('t','s','c','p','x'))

# This is the crucial equation: reset-dependent modes call p on I.
for name,n in [('raw',raw),('raw_shared',raw_shared)]:
    eq(name+'_mode',f'{n} {D} {I}',rf'p (\e.c) {I}')

# The valid extensions expose c without evaluating p or the source stream.
eq('late_mode',f'{late} {J}','c')
eq('dual_mode',f'{dual} {J}',r'(\e.c)')
for name,w,n in [('late',W_late,late),('dual',W_dual,dual)]:
    body = reader(w,n)
    eq(name+'_I_reset',rf'(\s.{body}) {I}','c')
    for k in range(1,6):
        s = code('1'*k+'0')
        r = code('1'*(k-1)+'0')
        eq(name+'_var_'+str(k),rf'(\s.{body}) {s}',f'c {r} n')

# The original stream also supplies F, from which one lambda builds J.
for k in range(1,6):
    s = code('1'*k+'0')
    r = code('1'*(k-1)+'0')
    eq('bit_marker_var_'+str(k),rf'(\s.{reader(W_bit,late)}) {s}',f'c {r} n')

# The usual APP value builder is the identity on an actual Scott cell at F.
for b in (K,F):
    r = cons(b,'t')
    eq('app_identity_'+b,rf'(\e \g.{B}) {F} {r}',r)

# Off-domain expansion of the two raw-c routes, with p temporarily rigid.
for name,n in [('raw',raw),('raw_shared',raw_shared)]:
    nI = rf'(\s.{n}) {I}'
    eq(name+'_I_unfold',rf'(\s.{reader(W_raw,n)}) {I}',
       rf'(p (\e.c) {I}) ({nI})')

kappa = rf'(\e.{N0} (c {A}) (p (\g.c {B})))'
eq('app_reset_I_unfold',rf'(\s.{reader(W_reset,N0)}) {I}',
   rf'(p {kappa} {I}) {N0} {I}')

# The stream-aware second-tag construction only needs a nonempty first child.
tcell = cons('q','t')
eq('second_stream_ABS',f'{second} {K} {tcell}',f'{N0} {K} {tcell}')
eq('second_stream_APP',f'{second} {F} t',f'{N0} {F} t')
eq('second_stream_I_reset',rf'(\s.{reader(V,second)}) {I}','c')

# Fixed template accounting, with no enumeration.
assert size(D) == 10 and size(J) == 8
assert size(W_raw,frame) == 23 + 10 + 4 + 4
assert size(W_late,frame) == 28 + 8
assert size(W_dual,frame) == 23 + 8 + 2
assert size(W_bit,frame) == 33
eta = rf'(\b \t.p (\e.b (c {A}) (p (\g.c {B}))) t)'
assert size(eta,frame) == 107
assert size(second,frame) == size(eta,frame) + 2 + 3 + 5 + 8 == 125

result = dict(prices=prices,checked_equalities=len(checks),checks=checks)
(LANE/'followup.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(dict(prices=prices,checked_equalities=len(checks))))
