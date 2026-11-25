from w43hard import *
from functools import lru_cache
def checked(N,F,t):
 f={k:[(j,z) for l,j,z in F if l==k] for k in range(2,N)}
 @lru_cache(None)
 def typ(t,e):
  if t[0] in ('v','k'):
   j=e[t[1]] if t[0]=='v' and t[1]<len(e) else 0
   return set(range(N)) if not j else {1,j}
  if t[0]=='l':
   return {1}|{k for k,cs in f.items() if all(z in typ(t[1],(j,)+e) for j,z in cs)}
  h,a=[typ(x,e) for x in t[1:]]
  b={z for k in h if k>=2 for j,z in f[k] if j in a}
  return set(range(N)) if not h.isdisjoint({0}) or 0 in b else b|{1}
 return typ,f
def generate(i,model,ids):
 name=f'Slice43PolyAt{i}';N=model['N'];F=[tuple(x) for x in model['F']];rs=[ad.tup(sources()[str(j)]['source']) for j in ids]
 for row in F.copy():
  ff=F.copy();ff.remove(row)
  if 0 in checked(N,ff,rs[0])[0](rs[0],()):F=ff
 typ,f=checked(N,F,rs[0])
 tab='def tab : Table\n'+''.join(f' | {k} => ['+','.join(f'({j},{z})' for j,z in cs)+']\n' for k,cs in f.items())+' | _ => []\n'
 out=['import Slice43Poly',f'namespace Blc.{name}','open FloorPoly SelfintClass','set_option maxRecDepth 16000',tab,'def base : Env := fun _ => 0']
 n=0
 @lru_cache(None)
 def prove(t,e,z):
  nonlocal n
  assert z in typ(t,e)
  env='base'
  for j in reversed(e):env=f'(ext {j} {env})'
  if z==1:p='.top _ _'
  elif z!=0 and 0 in typ(t,e):p=f'.up {z} {prove(t,e,0)}'
  elif t[0] in ('k','v'):p='.var _ _'
  elif t[0]=='a':
   g,a=t[1:];gg=typ(g,e);aa=typ(a,e)
   if 0 in gg:p=f'.rigidApp _ {prove(g,e,0)}'
   else:
    k,j=next((k,j) for k in sorted(gg) if k>=2 for j,v in f[k] if v==z and j in aa)
    p=f'.app (k := {k}) (x := {j}) (by decide) (by decide) {prove(g,e,k)} {prove(a,e,j)}'
  else:
   cs=f[z];p=f'by\n apply Ty.lam (by decide)\n intro q h\n'
   if not cs:p+=' simp [tab] at h'
   else:
    p+=' simp only [tab,List.mem_cons,List.not_mem_nil,or_false] at h\n'
    p+=' rcases h with '+' | '.join('rfl' for pair in cs)+'\n'
    p+='\n'.join(' '+('· ' if len(cs)>1 else '')+'exact '+prove(t[1],(j,)+e,v) for j,v in cs)
  nn=f'p{n}';n+=1
  out.append(f'theorem {nn} : Ty tab {env} {ex.lean(t,len(e))} {z} := {p}')
  return nn
 for j,t in zip(ids,rs):
  pr=prove(t,(),0);out.extend([f'def r{j} : Term := {ex.lean(t)}',f'theorem reject{j} : ¬ Reader r{j} := FloorPoly.reject {pr}',f'#print axioms reject{j}'])
 out.append(f'end Blc.{name}');(proofs/(name+'.lean')).write_text('\n'.join(out)+'\n');return name
if __name__=='__main__':
 extras=json.loads((D/'extras.json').read_text());ns=[]
 for path in sorted(D.glob('type[0-9]*.json')):
  i=int(path.stem[4:]);ids=[i,i+1];model=json.loads(path.read_text());m=generate(i,model,ids);ns.append(m)
  for j in ids:extras[str(j)]=['recursive application types',m]
 supervise(leanjobs(ns),'poly');save(D/'extras.json',extras)
