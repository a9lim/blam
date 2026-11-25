"""Find prefix recurrences with arbitrary holes in a shared term pattern."""
from w45macro import *

class Search(Machine):
 def flat(self,t):
  args=[]
  while self.nodes[t][0]=='a':
   _,t,a=self.nodes[t];args.append(a)
  return t,list(reversed(args))
 def spine(self,f,aa):
  for a in aa:f=self.node('a',f,a)
  return f
 def one(self,t):
  f,aa=self.flat(t);n=self.nodes[f]
  if n[0]!='f' or not aa:return
  _,j,*xs=n;b=self.func[j];e={0:aa[0],**{q+1:x for q,x in zip(free(b),xs)}}
  rhs=self.term(b[1],e)
  return self.spine(rhs,aa[1:]),(j,xs+[aa[0]],aa[1:])
 def anti(self,a,b,memo):
  if a==b:return a
  if (a,b) in memo:return memo[a,b]
  x,y=self.nodes[a],self.nodes[b]
  if x[0]==y[0]=='a':t=self.node('a',self.anti(x[1],y[1],memo),self.anti(x[2],y[2],memo))
  elif x[0]==y[0]=='f' and x[1]==y[1]:t=self.node('f',x[1],*(self.anti(l,r,memo) for l,r in zip(x[2:],y[2:])))
  else:t=self.node('p',a,b)
  memo[a,b]=t;return t
 def match(self,p,t,env):
  if p==t and self.nodes[p][0]!='p':return True
  a,b=self.nodes[p],self.nodes[t]
  if a[0]=='p':return env.setdefault(p,t)==t
  if a[0]!=b[0]:return False
  if a[0]=='v':return a==b
  if a[0]=='f' and a[1]!=b[1]:return False
  j=2 if a[0]=='f' else 1
  return all(self.match(l,r,env) for l,r in zip(a[j:],b[j:]))
 def params(self,t,seen=None):
  if seen is None:seen=set()
  if t in seen:return set()
  seen.add(t);n=self.nodes[t]
  if n[0]=='p':return {t}
  if n[0]=='v':return set()
  return set().union(*(self.params(a,seen) for a in n[(2 if n[0]=='f' else 1):]))
 def find(self,root):
  trace=[];ops=[];t=root;tried=set()
  for n in range(52):
   f,aa=self.flat(t);fn=self.nodes[f]
   if fn[0]!='f' or not aa:break
   for step,t0,g,bb in reversed(trace):
    if self.nodes[g][1]!=fn[1]:continue
    for size in range(1,min(len(aa),len(bb),5)+1):
     old=self.spine(g,bb[:size]);now=self.spine(f,aa[:size]);p=self.anti(old,now,{})
     if p in tried:continue
     tried.add(p);v=p;hist=[]
     for _ in range(min(32,2*(n-step)+2)):
      vv=self.one(v)
      if not vv:break
      v,rule=vv;hist.append(rule);h,args=self.flat(v)
      if len(args)<size:continue
      en={};pr=self.spine(h,args[:size])
      if self.match(p,pr,en):
       pars=sorted(self.params(p))
       for q in pars:en.setdefault(q,q)
       initial={};assert self.match(p,old,initial)
       return p,pars,hist,en,args[size:],ops[:step],initial,bb[size:]
   trace.append((n,t,f,aa));u=self.one(t)
   if not u:break
   t,rule=u;ops.append(rule)
 def body(self,found,root,r,i,side):
  p,pars,hist,en,tail,pre,initial,rest=found
  for t in self.func:self.extract(t[1],{j:j for j in free(t[1])},lambda a,b:0,lambda i,*args:0)
  s=self.emit();gs=[];ls=[];cache={}
  def name(t):
   if t in pars:return 'x'+str(t)
   if t in cache:return cache[t]
   n=self.nodes[t];kind=n[0]
   if kind=='v':v=f'(.var {n[1]})'
   elif kind=='a':v=f'(.app {name(n[1])} {name(n[2])})'
   elif kind=='f':v=f'(F{n[1]} '+names(name(z) for z in n[2:])+')'
   else:raise ValueError('unbound parameter')
   dest='t'+str(t)
   if self.params(t):
    ls.append(f'  let {dest} : Term := {v}');ans=dest
   else:gs.append(f'def {dest} : Term := {v}');ans=dest
   cache[t]=ans;return ans
  def rr(xs):return '['+','.join(name(x) for x in xs)+']'
  def steps(rs):
   out=[]
   for z,(j,xs,aa) in enumerate(rs):
    r=f'(weak{j} '+names(name(x) for x in xs)+')'
    if aa:r=f'(SelfintRegularSoundness.weak_spine {r} {rr(aa)})'
    out.append(f'  obtain ⟨n{z},lt{z},hc⟩ := head_decreases hc {r}')
   return out
  xp=names('x'+str(q) for q in pars)
  # Write pattern separately, avoiding local names in its definition.
  pat=name(p);local=ls.copy()
  patDef=f'def pat '+(f'({xp} : Term)' if xp else '')+' : Term := by\n'+'\n'.join(local)+f'\n  exact {pat}\n'
  sym=steps(hist);extra=rr(tail);nxt=names(name(en[q]) for q in pars)
  sym.append(f'  obtain ⟨k,hk,hc⟩ := HandlerLet.count_spine_reflect {extra} _ _ hc')
  sym.append(f'  exact ih k (by omega) {nxt} hc')
  lp=f'theorem noCount (n : Nat) : '+(f'∀ {xp}, ' if xp else '')+f'¬ Count (pat {xp}) n := by\n induction n using Nat.strongRecOn with\n | ind n ih =>\n  intro {xp} hc\n'+'\n'.join(ls+sym)+'\n'
  # Literal prefix contains no symbolic holes.
  init=names(name(initial[q]) for q in pars);fr=rr(rest);prefix=steps(pre)
  srcdef=f'def r{i} : Term := {ex.lean(r)}\ntheorem reject{i} : ¬ Reader r{i} := by\n  intro hr\n'
  law='one_red' if side else 'zero_red';norm='varOut_normal' if side else 'zeroOut_normal'
  return s+'\n'.join(gs)+'\n'+patDef+lp+srcdef+f'  obtain ⟨n,hc⟩ := hasNormalForm_count ⟨_,hr.{law},{norm}⟩\n'+'\n'.join(prefix)+f'\n  obtain ⟨k,_,hc⟩ := HandlerLet.count_spine_reflect {fr} _ _ hc\n  exact noCount k {init} hc\n#print axioms reject{i}\n'
def generate_pattern(i,r):
 name=f'Slice45Pattern{i}'
 for side in (0,1):
  m=Search();tm=debruijn(d.A(d.subst(r,0,d.Kc('c')),d.U(1) if side else d.Z()))
  try:
   root=m.term(tm,{q:m.node('v',q) for q in free(tm)});found=m.find(root)
   if not found:continue
   s=m.body(found,root,r,i,side)
  except (RecursionError,ValueError,KeyError):continue
  (proofs/(name+'.lean')).write_text('import Certificates\nimport Blc.SelfintRegularSoundness\nnamespace Blc.'+name+'\nopen Term WeakHeadClock SelfintClass SelfintLowerBound\nset_option linter.unusedSimpArgs false\nset_option maxRecDepth 12000\n'+s+'end Blc.'+name+'\n');return name
if __name__=='__main__':
 exs=json.loads((D/'extras.json').read_text());mods={}
 for j,r in sources().items():
  if j not in exs:
   nm=generate_pattern(int(j),ad.tup(r['source']))
   if nm:mods[j]=nm
 save(D/'patternplans.json',mods);supervise(leanjobs(list(mods.values())),'pattern')
 exs.update({j:['parametric prefix recurrence',n] for j,n in mods.items()});save(D/'extras.json',exs)
