#!/usr/bin/env python3
"""Small algebra audit, one reader witness, syntactic scan of 658 saved rows.
No reader enumeration and no re-evaluation of the survivor inventory.
"""
import csv, hashlib, json, pathlib, resource, sys, time
sys.dont_write_bytecode = True
resource.setrlimit(resource.RLIMIT_CPU, (110, 110))
BASE=pathlib.Path(__file__).resolve().parent
sys.path.insert(0,str(BASE.parent/'coord'))
import rd
start=time.monotonic()
V=lambda x:('V',x)
A=lambda f,a:('A',f,a)
L=lambda x,b:('L',x,b)
leaf='x'
trees=[('x','x'),('x',('x','x')),(('x','x'),'x'),
       ('x',('x',('x','x'))),('x',(('x','x'),'x')),
       (('x','x'),('x','x')),(('x',('x','x')),'x'),
       ((('x','x'),'x'),'x')]
def emit(t,vs):
    return vs[t] if isinstance(t,str) else A(emit(t[0],vs),emit(t[1],vs))
def spec(t):
    if t=='x': return 'w'
    f,a=t
    if f=='x': return ('m','m') if a=='x' else (spec(a),'m')
    return (spec(f),spec(a))
def count(t,x):
    return int(t==x) if isinstance(t,str) else count(t[0],x)+count(t[1],x)
def wrap(m): return L('zz',A(V('zz'),m))
def spine(t,cs):
    for c in cs: t=A(t,c)
    return t
def source(t,m,cs): return spine(A(L('xx',emit(t,{'x':V('xx')})),wrap(m)),cs)
def residual(t,m,cs):
    return spine(A(L('pp',emit(spec(t),{'m':V('pp'),'w':wrap(V('pp'))})),m),cs)
def captures(t,env=()):
    if t[0]=='V': return 0 if t[1] in env else (4 if t[1]=='j' else 1)
    if t[0]=='L': return captures(t[2],(t[1],)+env)
    return captures(t[1],env)+captures(t[2],env)
def lean(t,env=()):
    if t[0]=='V': return f'(.var {(env+ ("c","j")).index(t[1])})'
    if t[0]=='L': return f'(.lam {lean(t[2],(t[1],)+env)})'
    return f'(.app {lean(t[1],env)} {lean(t[2],env)})'
ms=[rd.parse(s) for s in [r'I',r'K',r'c',r'j',r'\a.c',r'\a.j',r'\a.a c',r'\a.c c']]
checks=[]
for i,t in enumerate(trees):
    for m in ms:
        cs=[V('c')] if 'j' in rd.fv(m) else [V('j')]
        r,s=source(t,m,cs),residual(t,m,cs)
        wr,ws=rd.weight(r),rd.weight(s)
        b=count(spec(t),'w'); f=captures(m)
        assert rd.alpha_eq(rd.normalize(r,1000),rd.normalize(s,1000))
        assert ws[0]+6+f==wr[0]+7*b
        assert ws[3]+1==wr[3]+b
        assert wr[2]==ws[2]+int('j' in rd.fv(m))
        assert wr[-1]==ws[-1]==1
        checks.append(dict(shape=i,source=rd.show(r),replacement=rd.show(s),
                           weight=wr[0],replacement_weight=ws[0],residual_wrappers=b,captures=f))
# One above-budget correct reader, demonstrating the all-length theorem's route.
m=rd.parse(r'\z n s. s I (\u. s (\q.c) (s s u)) n')
r,s=source(trees[0],m,[V('j')]),residual(trees[0],m,[V('j')])
witness=[]
for name,x in [('wrapped',r),('specialized',s)]:
    ok,w=rd.check(rd.show(x),nmax=8,verbose=False)
    assert ok
    witness.append(dict(name=name,source=rd.show(x),weight=w))
# Count the actual head prefix needed; this is tiny (no normal-form blow-up).
def head(t):
    if t[0]!='A': return None
    if t[1][0]=='L': return rd.subst(t[1][2],t[1][1],t[2])
    f=head(t[1]); return None if f is None else A(f,t[2])
canonical=rd.parse(r'\s.s I (\u.s (\q.c) (s s u)) j')
proofs=[]
for name,x in [('wrapped',r),('specialized',s)]:
    n=0; p=x
    while not rd.alpha_eq(p,canonical):
        p=head(p); assert p is not None
        n+=1; assert n<30
    proofs.append(f'''def {name}Witness : Term := {lean(x)}
theorem {name}_reduce : Betas {name}Witness reader162 :=
  headSteps_beta_star (by decide : headSteps {n} {name}Witness = some reader162)
theorem {name}_full : SelfintWiden.FullReader {name}Witness :=
  SelfintWiden.FullReader.of_betas (by decide) {name}_reduce SelfintWiden.reader162_fullReader
theorem {name}_price : weight 0 {name}Witness={rd.weight(x)[0]} ∧ occ 1 {name}Witness=1 := by decide
#print axioms {name}_full
''')
# Saved catalogue: finite syntactic applicability audit, not a search or law check.
rows=json.loads((BASE.parent/'rootnl/SURVIVORS.json').read_text())
IDEM=['l',['a',['v',0],['l',['v',1]]]]
def parts(t):
    cs=[]
    while t[0]=='a': cs.append(t[2]); t=t[1]
    return t,list(reversed(cs))
def squash(b,d=0):
    if b==['a',['v',d],['v',d]]: return ['v',d],f'(Squash.here {d})',d+4
    if b[0]=='l':
        z=squash(b[1],d+1)
        if z: q,h,k=z; return ['l',q],f'(Squash.lam {h})',k
    if b[0]=='a':
        z=squash(b[1],d)
        if z: q,h,k=z; return ['a',q,b[2]],f'(Squash.appL {jsonlean(b[2],d+1)} {h})',k
        z=squash(b[2],d)
        if z: q,h,k=z; return ['a',b[1],q],f'(Squash.appR {jsonlean(b[1],d+1)} {h})',k
    return None
def jsonlean(t,d=0):
    if t[0]=='v': return f'(.var {t[1]})'
    if t[0]=='k': assert t[1]=='j'; return f'(.var {d+1})'
    if t[0]=='l': return f'(.lam {jsonlean(t[1],d+1)})'
    assert t[0]=='a'; return f'(.app {jsonlean(t[1],d)} {jsonlean(t[2],d)})'
matched=[]; idempotent_rows=[]
for row in rows:
    h,args=parts(row['tree'])
    if h[0]!='l' or not args or args[0]!=IDEM: continue
    idempotent_rows.append(row['id'])
    z=squash(h[1])
    if not z: continue
    q,hproof,saving=z
    mrow={k:row[k] for k in ['id','weight','source','helper','file','exception_index']}
    mrow['saving']=saving; mrow['replacement_weight']=row['weight']-saving
    matched.append(mrow)
    cs='['+','.join(jsonlean(a) for a in args[1:])+']'
    proofs.append(f'''def case{row['id']} : Term := {jsonlean(row['tree'])}
theorem case{row['id']}_not_minimum : ¬ MinimumReader case{row['id']} :=
  no_minimum_idempotent_diagonal {hproof} idem idem_idempotent {cs}
#print axioms case{row['id']}_not_minimum
''')
(BASE/'Cases.lean').write_text('''import Handoff
namespace Blc.Simplify
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost SelfintLocalCost SelfintControl
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
'''+ '\n'.join(proofs)+'\nend Blc.Simplify\n')
results=dict(algebra_checks=checks,witness=witness,inventory_scanned=len(rows),
             idempotent_helper_ids=idempotent_rows,excluded_minimum_rows=matched,
             source_inventory_sha256=hashlib.sha256((BASE.parent/'rootnl/SURVIVORS.json').read_bytes()).hexdigest(),
             elapsed_s=time.monotonic()-start)
(BASE/'checks.json').write_text(json.dumps(results,indent=2)+'\n')
print(json.dumps(dict(algebra_pairs=len(checks),reader_witnesses=witness,
                     inventory_rows=len(rows),idempotent_helper_rows=len(idempotent_rows),
                     excluded_minimum_count=len(matched),excluded_minimum_ids=[x['id'] for x in matched],
                     elapsed_s=results['elapsed_s']),indent=2))
