from w45hard import *
from functools import lru_cache
from itertools import product
# Finite samples only propose lambda-introduction bounds; Lean proves them at every grade.
def engine(t,cut,boost):
 def step(a,b):
  if a==0:return 0
  return max(a-1,max(1,b-1 if cut==100 or a<cut else b+boost) if b else 0)
 order=[]
 def visit(t,l,p):
  for j,x in enumerate(t[1:]):
   if isinstance(x,tuple):visit(x,l+(t[0]=='l'),p+(j,))
  if t[0]=='l':order.append((p,t,l))
 visit(t,0,());forms={}
 def val(t,e,p):
  if t[0] in ('v','k'):return e[t[1]] if t[0]=='v' and t[1]<len(e) else 0
  if t[0]=='a':return step(val(t[1],e,p+(0,)),val(t[2],e,p+(1,)))
  base,ds=forms[p];return max([base]+[e[q]+v for q,v in ds])
 for p,t0,l in order:
  # env coordinates whose grades may affect body. Ignore shadowed or absent binders.
  def refs(u,depth=0):
   if u[0]=='v':return {u[1]-depth} if u[1]>=depth else set()
   if u[0]=='k':return set()
   if u[0]=='a':return refs(u[1],depth)|refs(u[2],depth)
   return refs(u[1],depth+1)
  relevant=sorted(q for q in refs(t0) if q<l)
  samples=[]
  for vs in product((0,1,2,3,4,6,9),repeat=len(relevant)):
   e=[0]*l
   for q,n in zip(relevant,vs):e[q]=n
   bs=[(n,val(t0[1],(n,*e),p+(0,))) for n in (0,1,2,3,4,6,8,12,16,25,57)]
   minimal=next((g for g in range(1,22) if all(b<=step(g,n) for n,b in bs)),None)
   if minimal is None:return
   samples.append((tuple(e),minimal))
  # Approximate the minimal grade by a maximum of a constant and translated inputs.
  base=max(1,min(v for e,v in samples))
  shifts=[(q,max(v-e[q] for e,v in samples if e[q]>=6 and all(e[other]==0 for other in relevant if other!=q))) for q in relevant]
  shifts=[(q,d) for q,d in shifts if any(v>base for e,v in samples if e[q]>=6 and all(e[other]==0 for other in relevant if other!=q))]
  for b in range(base,max(v for e,v in samples)+1):
   if all(v<=max([b]+[e[q]+d for q,d in shifts]) for e,v in samples):break
  forms[p]=b,shifts
 if val(t,(),())!=0:return
 return forms,order
def library(cut,boost):
 n=f'Slice45Arity{cut}B{boost}';s=(proofs/'Slice43Arity.lean').read_text().split('theorem liftConst')[0]
 s=s.replace('Slice43Arity',n)
 if cut!=100:s=s.replace('if b=0 then 0 else max 1 (b-1)',f'if b=0 then 0 else max 1 (if a<{cut} then b-1 else b+{boost})')
 s=s.replace('by_cases ha : a=0 <;> by_cases hb : b=0 <;> simp [flow,ha,hb] <;> omega',f'by_cases ha : a=0 <;> by_cases hb : b=0 <;> by_cases hc : c=0 <;> by_cases h1 : a<{cut} <;> by_cases h2 : b<{cut} <;> simp [flow,ha,hb,hc,h1,h2] <;> omega')
 (proofs/(n+'.lean')).write_text(s+'end Blc.'+n+'\n');return n
def form(g,env):
 k,ds=g;s=str(k)
 for j,d0 in ds:
  n=env[j];v=n if d0==0 else f'({n} + {d0})' if d0>0 else f'({n} - {-d0})';s=f'(max {s} {v})'
 return s
def gen(i,t,cut,boost,forms,order):
 lib=library(cut,boost);name=f'Slice45Nat{i}';out=['import '+lib,'namespace Blc.'+name,'open '+lib+' SelfintClass','set_option maxHeartbeats 5200000','set_option maxRecDepth 12000'];names={};arity=len(forms)
 def tree(u,e,p):
  if u[0] in ('v','k'):
   g=e[u[1]] if u[0]=='v' and u[1]<len(e) else '0'
   return g,f'(show Typed _ _ {g} from .var _ _ (Nat.le_refl _))'
  if u[0]=='a':
   a,pf=tree(u[1],e,p+(0,));b,pa=tree(u[2],e,p+(1,))
   return f'(flow {a} {b})',f'(ap {pf} {pa})'
  return form(forms[p],e),'('+names[p]+(' '+' '.join(e) if e else '')+')'
 for p,u,l in order:
  nm='lam'+str(len(names));names[p]=nm;e=['v'+str(i) for i in range(l)];env='rigidEnv'
  for a in reversed(e):env=f'(push {a} {env})'
  bound=form(forms[p],e);g,pf=tree(u[1],['arg',*e],p+(0,))
  out.append(f'theorem {nm} '+('('+' '.join(e)+' : Nat) ' if e else '')+f': Typed {env} {ex.lean(u,l)} {bound} := by\n apply Typed.lam (by omega)\n intro arg\n apply {pf}.weaken\n change {g} ≤ flow {bound} arg\n simp only [flow]\n repeat\' first | split <;> try omega\n all_goals omega')
 g,pf=tree(t,(),());out+= [f'def r{i} : Term := {ex.lean(t)}',f'theorem reject{i} : ¬ Reader r{i} := rigid_typed_not_reader (e:=rigidEnv) (show Typed rigidEnv _ 0 from {pf})',f'#print axioms reject{i}',f'end Blc.{name}'];(proofs/(name+'.lean')).write_text('\n'.join(out)+'\n');return name,lib
def main():
 es=sources();exs=json.loads((D/'extras.json').read_text());mods=[];libs=[]
 for x,e in es.items():
  i=int(x)
  if x in exs or (proofs/f'Slice45Regular{i}.resources.json').exists():continue
  t=ad.tup(e['source'])
  for cut,boost in [(100,0),(2,0),(3,0),(4,0),(2,1),(3,1),(4,1),(3,2)]:
   got=engine(t,cut,boost)
   if got:
    mod,lib=gen(i,t,cut,boost,*got);mods.append(mod);libs.append(lib);break
 print('arity proposals',mods,flush=True)
 save(D/'natplans.json',dict(modules=mods,libs=list(dict.fromkeys(libs))))
if __name__=='__main__':
 if sys.argv[1]=='gen':limit();main()
 else:
  p=json.loads((D/'natplans.json').read_text());build(p['libs'],'aritylib',True);supervise(leanjobs(p['modules']),'arity')
