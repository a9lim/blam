#!/usr/bin/env python3
"""Symbolic checks of the fixed identities/prices in REPORT.md; no search."""
import json
import sys
from pathlib import Path

sys.dont_write_bytecode = True
LANE = Path(__file__).resolve().parent
ROOT = LANE.parents[3]
sys.path.insert(0, str(ROOT / 'tools'))
sys.path.insert(0, str(ROOT / 'tools/self-interpreter'))
import blcc
import lc

I = r'(\a.a)'
K = r'(\a \b.a)'
F = r'(\a \b.b)'
def cons(b, r):
    return rf'(\h.h ({b}) ({r}))'
def parse(source, context=()):
    p = blcc.P(source)
    tree = blcc.p_lc(p)
    p.ws()
    assert p.i == len(p.t), p.t[p.i:]
    return blcc.to_db(tree, context)
def norm(source, context):
    return lc.nf(parse(source, context), [100000])
def count(source, context=()):
    return lc.size(parse(source, context))
CHECKS = []
def eq(label, lhs, rhs, context=('t','c','p','n','a','b','q','x')):
    left = norm(lhs, context)
    right = norm(rhs, context)
    assert left == right, (label, lc.show(left), lc.show(right))
    CHECKS.append({'label': label, 'lhs': lhs, 'rhs': rhs, 'context': list(context)})

def absval(e='e'):
    return rf'(\env \arg.{e} (\z \y.z arg (y env)))'
def appval(e='e', g='g'):
    return rf'(\env.{e} env ({g} env))'
A = absval()
B = rf'(\g.c {appval()})'
K0 = rf'(\e.c {A})'
K1 = rf'(\e.p {B})'
T0 = rf'(p {K0})'
T1 = rf'(p {K1})'
N = rf'(\b.p (\e.b (c {A}) (p {B})))'
frame = ('s','c','p','x')

# Whole-source correlations; both second tags and arbitrary rigid tail.
for bit, label in [(K,'ABS'),(F,'APP')]:
    r = cons(bit, 't')
    s = cons(K, r)
    for suffix, expression, wanted in [
        ('second_I',f'{r} {I}',f'{K} t' if label=='ABS' else I),
        ('second_selftag',f'{r} {bit}',K if label=='ABS' else 't'),
        ('second_diagonal',f'{r} {r}',f'{K} t' if label=='ABS' else 't t'),
        ('whole_diagonal',f'{s} {s}',f'{K} {r}'),
        ('nested_diagonal',f'{s} ({s} {s})',f'{r} {r}'),
        ('second_tag_projection',f'{s} {F} {K}',bit),
        ('second_tail_projection',f'{s} {F} {F}','t'),
        ('whole_callback',rf'{s} (\q.c)',f'c {r}'),
    ]:
        eq(label+'_'+suffix, expression, wanted)

# The unchanged variable arm, including its constructor-mode result.
for bit in (K,F):
    r = cons(bit, 't')
    s = cons(K,r)
    V = rf'(\u.{s} (\q.c) ({s} {s} u))'
    eq('V_on_constructor_'+str(len(CHECKS)),f'{V} a',f'c {r} {r}')

# Crucially, an arbitrary NEXT here is q s, so K/F substitute different s.
generic_reader=rf'(\s.s {I} (\u.s (\z.c) (s s u)) (q s))'
eq('offdomain_K',f'{generic_reader} {K}',f'q {K}')
eq('offdomain_F',f'{generic_reader} {F}',f'q {F}')
eq('offdomain_I',f'{generic_reader} {I}','c')

# Nine canonical normal control forms, repriced in the new frame.
eta0 = rf'(\t.{T0} t)'
eta1 = rf'(\t.{T1} t)'
forms = [
    rf'(\b.b {T0} {T1})',
    rf'(\b.p (b {K0} {K1}))',
    N,
    rf'(\b.b {T0} {eta1})',
    rf'(\b.b {eta0} {T1})',
    rf'(\b.b {eta0} {eta1})',
    rf'(\b \t.b ({T0} t) ({T1} t))',
    rf'(\b \t.p (b {K0} {K1}) t)',
    rf'(\b \t.p (\e.b (c {A}) (p {B})) t)',
]
prices = []
for i, form in enumerate(forms):
    for bit, want in [(K,T0),(F,T1)]:
        eq(f'canonical_{i}_{bit}',f'{form} {bit} t',f'{want} t',
           ('t','s','c','p','x'))
    prices.append({'term':form, 'bits':count(form, frame)})
assert [a['bits'] for a in prices] == [104,97,96,113,112,121,120,108,107]

# Continuation-revealing NEXT, with one outer first-tag guard.
guard = f'(s {K})'
guard_forms = [
    f'{guard} {N} (\\b.c)',
    rf'(\b.{guard} (p (\e.b (c {A}) (p {B}))) c)',
    rf'(\b \t.{guard} (p (\e.b (c {A}) (p {B})) t) (c t))',
]
guard_prices=[]
for i, form in enumerate(guard_forms):
    guard_prices.append({'term':form, 'bits':count(form,frame)})
    for first in (K,F):
        s = cons(first,'q')
        instantiated=rf'(\s.{form}) {s}'
        for bit, want in [(K,T0),(F,T1)]:
            eq(f'guard_{i}_{first}_{bit}', f'({instantiated}) {bit} t',
               f'{want} t' if first==K else 'c t',
               ('t','q','c','p','x'))
assert [a['bits'] for a in guard_prices] == [117,116,133]

# The new variable reader really uses NEXT's on-variable K c mode.
W = r'(\u.s u (s s u))'
assert count(W,frame)==23
mode = guard_forms[1]
for n in range(1,6):
    stream=cons(K,'n')
    tail=stream
    for j in range(n):
        tail=stream
        stream=cons(F,stream)
    body=rf's {I} {W} {mode}'
    eq(f'variable_mode_var_{n}',rf'(\s.{body}) {stream}',f'c {tail} n',
       ('n','c','p','x'))

# New embedding cost: Q is closed, so its placement adds no index tax.
Q = K
embedding=rf'(\b \t.{Q} c s)'
embedding_overhead=count(embedding,frame)-count(Q)
assert embedding_overhead==17
for bit in (K,F):
    s=cons(K,cons(bit,'t'))
    # Here q is rigid for the equality, and the preceding closed Q for size.
    generic=r'(\b \tail.q c s)'
    eq('embedding_'+bit,rf'(\s.{generic}) {s} {bit} t',f'q c {s}')

# Tail-first canonical interface, not complete interpreter candidates.
tail_first = [
    rf'(\t \b.b ({T0} t) ({T1} t))',
    rf'(\t \b.p (b {K0} {K1}) t)',
    rf'(\t \b.p (\e.b (c {A}) (p {B})) t)',
]
tail_prices=[]
for i, form in enumerate(tail_first):
    tail_prices.append({'term':form,'bits':count(form,frame)})
    for bit,want in [(K,T0),(F,T1)]:
        eq(f'tail_first_{i}_{bit}',f'{form} t {bit}',f'{want} t',
           ('t','s','c','p','x'))
assert [a['bits'] for a in tail_prices] == [121,108,107]

# A nested whole-stream diagonal collides on two distinct open APP inputs.
i_code='0010'
def bitstream(code, tail='n'):
    s=tail
    for bit in reversed(code):
        s=cons(K if bit=='0' else F,s)
    return s
t1=bitstream('10'+i_code)
t2=bitstream('110'+i_code)
eq('open_APP_diagonal_collision',f'{t1} {t1}',f'{t2} {t2}')
eq('open_APP_diagonal_value',f'{t1} {t1}',f'{K} {bitstream(i_code)}')

result={'fixed_equalities':len(CHECKS),'checks':CHECKS,'canonical':prices,
        'guarded':guard_prices,'tail_first':tail_prices,
        'embedding_overhead':embedding_overhead,
        'variable_reader_bits':count(W,frame)}
(LANE/'fixed.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k not in ('checks','canonical','guarded','tail_first')}))
