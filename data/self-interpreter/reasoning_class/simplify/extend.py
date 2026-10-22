#!/usr/bin/env python3
"""Bounded static specialization of the saved 658 sources; no stream probes."""
import sys, pathlib, json, time, resource, signal, collections
sys.dont_write_bytecode=True
BASE=pathlib.Path(__file__).resolve().parent
sys.path.insert(0,str(BASE.parent/'coord'))
import rd
signal.alarm(110)
V=lambda x:('V',x)
A=lambda f,a:('A',f,a)
L=lambda x,b:('L',x,b)
def spine(t,cs):
 for c in cs:t=A(t,c)
 return t
def parts(t):
 cs=[]
 while t[0]=='A':cs.append(t[2]);t=t[1]
 return t,list(reversed(cs))
def unique(t,env={},ctr=None):
 if ctr is None:ctr=[0]
 if t[0]=='V':return V(env.get(t[1],t[1]))
 if t[0]=='A':return A(unique(t[1],env,ctr),unique(t[2],env,ctr))
 name=f'v{ctr[0]}';ctr[0]+=1
 return L(name,unique(t[2],dict(env,**{t[1]:name}),ctr))
def pathstep(t,head=False):
 if t[0]=='V':return None
 if t[0]=='L':
  if head:return None
  z=pathstep(t[2]);return (L(t[1],z[0]),[0]+z[1]) if z else None
 if t[1][0]=='L':return rd.subst(t[1][2],t[1][1],t[2]),[]
 z=pathstep(t[1],head)
 if z:return A(z[0],t[2]),[0]+z[1]
 if head:return None
 z=pathstep(t[2]);return (A(t[1],z[0]),[1]+z[1]) if z else None
def nodes(t):return 1 if t[0]=='V' else 1+nodes(t[2]) if t[0]=='L' else 1+nodes(t[1])+nodes(t[2])
def db(t,env=()):
 if t[0]=='V':return ('v',(env+('c','j')).index(t[1]))
 if t[0]=='L':return ('l',db(t[2],(t[1],)+env))
 return ('a',db(t[1],env),db(t[2],env))
def lean(t):
 if t[0]=='v':return f'(.var {t[1]})'
 if t[0]=='l':return f'(.lam {lean(t[1])})'
 return f'(.app {lean(t[1])} {lean(t[2])})'
def order(t):w=rd.weight(t);return w[0],w[3],w[2]
def capture(t):
 if t[0]=='V':return 4 if t[1]=='j' else 1 if t[1]=='c' else 0
 if t[0]=='L':return capture(t[2])
 return capture(t[1])+capture(t[2])
def apply_at(t,path):
 if not path:assert t[0]=='A' and t[1][0]=='L';return rd.subst(t[1][2],t[1][1],t[2])
 p,*ps=path
 if t[0]=='L':assert p==0;return L(t[1],apply_at(t[2],ps))
 assert t[0]=='A';return A(apply_at(t[1],ps),t[2]) if p==0 else A(t[1],apply_at(t[2],ps))
def apply_paths(t,paths):
 for p in paths:t=apply_at(t,p)
 return t
def abstract(params,b):
 for p in reversed(params):b=L(p,b)
 return b
rows=json.loads((BASE.parent/'rootnl/SURVIVORS.json').read_text())
old=set(x['id'] for x in json.loads((BASE/'checks.json').read_text())['excluded_minimum_rows'])
records=[]; misses=[]; hits=[]; algebras=[]
start=time.monotonic()
for row in rows:
 if row['id'] in old:continue
 r=unique(rd.parse(row['source']));f,args=parts(r);assert f[0]=='L' and args
 b,x,a,cs=f[2],f[1],args[0],args[1:]
 variants=[]
 # A bounded sequence of source contractions can itself be the smaller source.
 for hd in [True,False]:
  t=r;paths=[]
  for n in range(32):
   z=pathstep(t,hd)
   if not z:break
   t,p=z;paths.append(p)
   if nodes(t)>1200:break
   if rd.weight(t)[-1]==1 and order(t)<order(r):
    variants.append(dict(kind='source_head' if hd else 'source_normal',s=t,q=r,left=[],right=paths.copy()))
    break
 # Extract all payloads simultaneously. The new parameters remain opaque.
 if a[0]=='L':
  z=a[1];h,ms=parts(a[2])
  if h[0]=='V' and ms:
   own=h==V(z)
   pieces=ms if own else [h]+ms
   params=[f'p{i}' for i in range(len(pieces))]
   deps=[z in rd.fv(m) for m in pieces]
   payloads=[L(z,m) if dep else m for m,dep in zip(pieces,deps)]
   qi=[A(V(p),V(z)) if dep else V(p) for p,dep in zip(params,deps)]
   wa=L(z,spine(V(z),qi) if own else spine(qi[0],qi[1:]))
   skeleton=A(L(x,b),wa)
   d=skeleton;paths=[]
   # Q is a common beta ancestor. Its symbolic branch never inspects payloads.
   q=spine(spine(abstract(params,skeleton),payloads),cs)
   left=[];t=q
   for i in range(len(params)):
    p=[0]*(len(cs)+len(params)-1-i);left.append(p);t=apply_at(t,p)
   # Now only reconstruction redexes inside the helper, in its original position.
   helperprefix=[0]*len(cs)+[1]
   helper=parts(t)[1][0]
   # It is safe to contract only the generated (lambda z.M) z redexes.
   dep_paths=[]
   headlen=len(qi) if own else len(qi)-1
   for i,dep in enumerate(deps):
    if not dep:continue
    # qi_i in the reconstructed application spine, under helper lambda.
    argpos=i if own else i-1
    assert argpos>=0
    p=helperprefix+[0]+[0]*(headlen-1-argpos)+[1]
    left.append(p);t=apply_at(t,p)
   assert db(t)==db(r),(row['id'],rd.show(t),rd.show(r))
   pref=[0]*(len(cs)+len(params))+[0]*len(params)
   for n in range(49):
    # n=0 checks the uncontracted skeleton too, useful algebra sanity.
    s=spine(spine(abstract(params,d),payloads),cs)
    # Exact arbitrary-B factorization price, evaluated independently.
    # c/j leaf costs in B are measured at binder depth 1; D at depth p.
    def weight_at(t,env):
     if t[0]=='V':
      if t[1]=='j':return 4*len(env)
      return 2+(env.index(t[1]) if t[1] in env else len(env))
     if t[0]=='L':return 2+weight_at(t[2],[t[1]]+env)
     return 2+weight_at(t[1],env)+weight_at(t[2],env)
    pd=len(params);nd=sum(deps);fi=sum(capture(m) for m,dep in zip(pieces,deps) if not dep)
    delta=weight_at(d,list(reversed(params)))-weight_at(b,[x])+2*pd+2*nd-(8 if own else 4)-fi
    assert rd.weight(s)[0]-rd.weight(r)[0]==delta
    if rd.weight(s)[-1]==1 and order(s)<order(r):
     right=[pref+p for p in paths]
     assert db(apply_paths(q,right))==db(s)
     variants.append(dict(kind='factor_own' if own else 'factor_external',s=s,q=q,left=left,right=right,
                          parameters=pd,dependent=nd,price=delta,symbolic_steps=len(paths)))
    nxt=pathstep(d)
    if not nxt:break
    d,path=nxt;paths.append(path)
    if nodes(d)>1200:break
   algebras.append(dict(id=row['id'],parameters=pd,dependent=nd,own_head=own,steps=len(paths)))
 if variants:
  best=min(variants,key=lambda v:(order(v['s']),nodes(v['q']),len(v['left'])+len(v['right'])))
  hits.append((row,r,best))
  rec=dict(id=row['id'],source=row['source'],source_order=order(r),kind=best['kind'],replacement=rd.show(best['s']),replacement_order=order(best['s']),left_steps=len(best['left']),right_steps=len(best['right']))
  for k in ['parameters','dependent','price','symbolic_steps']:
   if k in best:rec[k]=best[k]
  records.append(rec)
 else:misses.append(row['id'])
print(json.dumps(dict(scanned=len(rows)-len(old),hits=len(hits),kinds=dict(collections.Counter(x['kind'] for x in records)),factor_applied=len(algebras),remaining=len(misses),elapsed=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss),indent=2))
(BASE/'extend.json').write_text(json.dumps(dict(excluded_nonminimum=records,remaining_ids=misses,algebra_instances=algebras,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss),indent=2)+'\n')
proofs=[]
for row,r,v in hits:
 i=row['id'];q=v['q'];s=v['s']
 proofs.append(f'''def source{i} : Term := {lean(db(r))}
def replacement{i} : Term := {lean(db(s))}
def ancestor{i} : Term := {lean(db(q))}
theorem join{i} : BetaJoin source{i} replacement{i} := by
  have h1 := paths_sound (by decide : pathSteps {v['left']} ancestor{i} = some source{i})
  have h2 := paths_sound (by decide : pathSteps {v['right']} ancestor{i} = some replacement{i})
  exact join_trans (join_symm (join_of_betas h1)) (join_of_betas h2)
theorem excluded{i} : ¬ MinimumReader source{i} :=
  no_minimum_join join{i} (by decide) (by decide) (by decide)
#print axioms excluded{i}
''')
(BASE/'ExtendedCases.lean').write_text('''import General
namespace Blc.Simplify
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost SelfintLocalCost SelfintControl
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
'''+ '\n'.join(proofs)+'\nend Blc.Simplify\n')
