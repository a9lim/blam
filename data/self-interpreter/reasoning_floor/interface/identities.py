"""Fixed beta identities, collision witnesses, and divergent-program suffix checks."""
from pathlib import Path
import sys,re,json,time
ROOT=Path(__file__).resolve().parents[3]
LANE=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT/'tools/self-interpreter'))
import battery,lc

def syntax(src):
    return re.sub(r'\\([a-zA-Z0-9 ]+)\.',lambda m: ''.join('\\'+x for x in m[1].split())+'.',src)
def term(src): return battery.compile_lam(syntax(src))
def normal(src):
    out=battery.normalize(battery.enc(term(src)),1<<15)
    assert out is not None,src
    return out
K=r'(\a b.a)'
F=r'(\a b.b)'
I=r'(\a.a)'
def cons(b,r): return rf'(\h.h ({b}) ({r}))'
def unary(n):
    r=cons(K,'N')
    for _ in range(n): r=cons(F,r)
    return r

def av(v): return rf'(\e a.({v}) (\b r.b a (r e)))'

checks=[]
def eq(name,a,b,want=True):
    na,nb=normal(a),normal(b)
    good=na==nb
    assert good==want,(name,lc.show(lc.decode(na)[0]),lc.show(lc.decode(nb)[0]))
    checks.append(dict(name=name,equal=good,left=syntax(a),right=syntax(b),left_nf=na,right_nf=nb))
    print(name,'equal' if good else 'distinct',flush=True)

for n in (1,2,5):
    r=unary(n-1)
    lift=rf'(\e.((\u.{I}) e) (({r}) e))'
    eq(f'raw variable / I-variable collision n={n}',rf'\N.{lift}',rf'\N.{r}')

r=unary(0)
k=rf'(\v.C {av("v")})'
expected=rf'\C N.C (\z.{I}) N'
eq('same parent continuation, variable',rf'\C N.{k} ({r}) N',expected)
eq('same parent continuation, I-variable',rf'\C N.{k} (\e.((\u.{I}) e) (({r}) e)) N',expected)
eq('trailing argument cannot disappear',rf'\C N T.{k} ({r}) N T',rf'\C N T.C (\z.{I}) N',False)
eq('thunked tail is not the tail at rigid C',rf'\C N.C (\z.{I}) (\u.N)',rf'\C N.C (\z.{I}) N',False)
eq('arbitrary forcing operand',r'\N Q.(\u.N) Q',r'\N Q.N')

third=r'\s.s (\b r.b r (\u.c r (r r))) j'
delayed=r'\s.s (\b.b (\r.r j) c) (s s s)'
delayed_thunk=r'\s.s (\b.b (\r.r j) c) (s s)'
for n in (1,2,5):
    s=unary(n); r=unary(n-1)
    eq(f'third-operand reader variable n={n}',rf'\c j N.({third}) ({s})',rf'\c j N.c ({r}) (\u.N)')
    eq(f'delayed-drop thunk reader variable n={n}',rf'\c j N.({delayed_thunk}) ({s})',rf'\c j N.c ({r}) (\u.N)')
for label,b in [('abs',K),('app',F)]:
    q=cons(b,'t'); s=cons(K,q)
    eq('third-operand reader '+label,rf'\c j t.({third}) ({s})',rf'\c j t.j {b} t')
    eq('delayed-drop reader '+label,rf'\c j t.({delayed}) ({s})',rf'\c j t.j {b} t ({q})')
    eq('delayed-drop thunk reader '+label,rf'\c j t.({delayed_thunk}) ({s})',rf'\c j t.j {b} t (\u.({q}))')
    eq('root NEXT entry '+label,rf'\j t.({s}) (\zero q.q j)',rf'\j t.j {b} t')

cell=r'(\s.s (\b.b (\u.a) e))'
eq('function environment lookup zero',rf'\a e N.{cell} ({cons(K,"N")})',r'\a e N.a')
eq('function environment lookup successor',rf'\a e r.{cell} ({cons(F,"r")})',r'\a e r.e r')

# A carried mode occurring only as the forcing operand is erased.
eq('force erases a carried mode',r'\R Q1 Q2.(\u.R) Q1',r'\R Q1 Q2.(\u.R) Q2')
# ABS lambda.I with suffix code(I)++N versus APP I I with suffix N.
# The first parsed closure and remaining stream agree in the two cases.
rest=cons(K,cons(K,cons(F,cons(K,'N'))))
eq('same parsed child does not determine the constructor',
   rf'\C N.C (\z x.{I}) ({rest})',rf'\C N.C (\z.{I}) N',False)

# Exact module comparisons in a stated, fixed capture layout.
def cost(src,frame):
    import blcc
    p=blcc.P(syntax(src)); t=blcc.p_lc(p);p.ws();assert p.i==len(p.t)
    return lc.size(blcc.to_db(t,tuple(frame)))
costs={
 'third_variable_force':cost(r'\u.c r (r r u)',('r','b','s','c','p','x')),
 'third_variable_thunk':cost(r'\u.c r (r r)',('r','b','s','c','p','x')),
 'thunk_return_adapter':cost(r'\v t.c v (t t)',('c',)),
 'ordinary_second_parse':cost(r'p (\g.c (\e.f e (g e)))',('f','d','s','c','p','x')),
 'thunk_second_parse':cost(r'\t.p (\g.c (\e.f e (g e))) (t t)',('f','d','s','c','p','x')),
}
assert costs['third_variable_force']-costs['third_variable_thunk']==4
print('module costs',costs,flush=True)

suffix=[]
for row in json.loads((LANE/'checks.json').read_text()):
    bits=(LANE/(row['name']+'.best.blc')).read_text().strip()
    E=lc.decode(bits)[0]
    for label,src in [('omega',r'(\x.x x) (\x.x x)'),
                      ('lambda_omega',r'\z.(\x.x x) (\x.x x)'),
                      ('omega_omega',r'((\x.x x) (\x.x x)) ((\x.x x) (\x.x x))')]:
        M=term(src)
        tail=('V',0)
        c=term(r'\v r.r')
        probe=('L',('A',('A',battery.shift(E,1),c),battery.bitlist(battery.enc(M),tail)))
        got=battery.normalize(battery.enc(probe),1<<16)
        want=battery.enc(term(I))
        assert got==want,(row['name'],label,got)
        suffix.append(dict(name=row['name'],program=label,exact_tail=True))
print(f'{len(checks)} identity/counterexample checks; {len(suffix)} suffix checks; all passed')
(LANE/'identities.json').write_text(json.dumps(dict(checks=checks,module_costs=costs,suffix_checks=suffix),indent=2)+'\n')
