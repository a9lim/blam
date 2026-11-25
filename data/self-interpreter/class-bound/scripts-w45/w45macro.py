from w45hard import *
from functools import lru_cache
from itertools import count
@lru_cache(None)
def free(t):
 if t[0]=='v':return (t[1],)
 if t[0]=='l':return tuple(i-1 for i in free(t[1]) if i)
 return tuple(sorted(set(free(t[1]))|set(free(t[2]))))
def debruijn(t,d=0):
 if t[0]=='k':return ('v',d+{'c':0,'j':1,'N':2,'r':3}[t[1]])
 if t[0]=='v':return t
 return (t[0],*(debruijn(q,d+(t[0]=='l')) for q in t[1:]))
def spelled(t,env,d=0):
 if t[0]=='v':
  i=t[1]
  if i<d:return f'(.var {i})'
  return f'(shift {d} 0 {env[i-d]})' if d else env[i]
 if t[0]=='l':return f'(.lam {spelled(t[1],env,d+1)})'
 return f'(.app {spelled(t[1],env,d)} {spelled(t[2],env,d)})'
def names(xs):return ' '.join(xs)
class Machine:
 def __init__(self):
  self.func=[];self.rules=[];self.nids={};self.nodes=[];self.cache={};self.evdecl=[];self.pos={}
 def code(self,t):
  if t in self.pos:return self.pos[t]
  idx=len(self.func);self.pos[t]=idx;self.func.append(t)
  return idx
 def extract(self,t,e,app,lam):
  if t[0]=='v':return e[t[1]]
  if t[0]=='a':return app(self.extract(t[1],e,app,lam),self.extract(t[2],e,app,lam))
  return lam(self.code(t),*[e[j] for j in free(t)])
 def emit(self):
  txt=[]
  for i,t in enumerate(self.func):
   xs={j:f'x{j}' for j in free(t)}
   txt.append(f"def F{i} "+(f'({names(xs.values())} : Term) ' if xs else '')+f': Term := {spelled(t,xs)}')
  for i,t in enumerate(self.func):
   xs={j:f'x{j}' for j in free(t)};env={0:'y',**{j+1:n for j,n in xs.items()}}
   rhs=self.extract(t[1],env,lambda a,b:f'(.app {a} {b})',lambda i,*ss:'(F'+str(i)+' '+names(ss)+')')
   fs=','.join(f'F{j}' for j in range(len(self.func)))
   txt.append(f'theorem weak{i} ({names([*xs.values(),"y"])} : Term) : weakStep (.app (F{i} {names(xs.values())}) y) = some {rhs} := by\n simp (disch := decide) [{fs},weakStep,contract,substDec,shift_shift0,substDec_shift0,shift_zero]')
   txt.append(f'theorem step{i} ({names([*xs.values(),"y"])} : Term) : Beta (.app (F{i} {names(xs.values())}) y) {rhs} := weakStep_beta (weak{i} {names([*xs.values(),"y"])})')
  return '\n'.join(txt)+'\n'
 def node(self,*key):
  if key not in self.nids:
   if len(self.nodes)>1200:raise ValueError('node guard')
   self.nids[key]=len(self.nodes);self.nodes.append(key)
  return self.nids[key]
 def term(self,t,e):
  return self.extract(t,e,lambda a,b:self.node('a',a,b),lambda j,*args:self.node('f',j,*args))
 def ev(self,t,depth=0):
  if t in self.cache:
   if self.cache[t] is None:raise ValueError('cycle')
   return self.cache[t]
  if depth>450:raise ValueError('depth guard')
  self.cache[t]=None;n=self.nodes[t]
  if n[0]!='a':v=t;pf='.refl _'
  else:
   _,f,a=n;fv=self.ev(f,depth+1);target=self.nodes[fv]
   if target[0]!='f':v=self.node('a',fv,a);pf=f'betas_appL n{a} ev{f}'
   else:
    _,idx,*xs=target;b=self.func[idx];e={0:a,**{j+1:x for j,x in zip(free(b),xs)}};rhs=self.term(b[1],e);v=self.ev(rhs,depth+1)
    pf=f'betas_trans (betas_appL n{a} ev{f}) (.head (step{idx} '+names(f'n{j}' for j in [*xs,a])+f') ev{rhs})'
  self.evdecl.append(f'theorem ev{t} : Betas n{t} n{v} := {pf}');self.cache[t]=v;return v
 def proof(self,i,R,side):
  src=R if side is None else d.A(d.subst(R,0,d.Kc('c')),d.Z() if not side else d.U(1))
  tm=debruijn(src);start=self.term(tm,{q:self.node('v',q) for q in free(tm)});end=self.ev(start);v=end;rig='(.var _)';argc=0
  while self.nodes[v][0]=='a':v=self.nodes[v][1];rig=f'(.app _ {rig})';argc+=1
  if self.nodes[v][0]!='v':return
  head=self.nodes[v][1]
  if side is not None and (head,argc)==((0,2) if side else (3,1)):return
  # Emit rules for every lambda nested in a function, including unexecuted code.
  for t in self.func:self.extract(t[1],{j:j for j in free(t[1])},lambda a,b:0,lambda i,*args:0)
  out=self.emit()
  for j,n in enumerate(self.nodes):
   if n[0]=='v':rhs=f'.var {n[1]}'
   elif n[0]=='a':rhs=f'.app n{n[1]} n{n[2]}'
   else:rhs=f'F{n[1]} '+names(f'n{x}' for x in n[2:])
   out+=f'def n{j} : Term := {rhs}\n'
  out+='\n'.join(self.evdecl)+'\n'
  out+=f'def r{i} : Term := {ex.lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n intro hr\n'
  if side is None:out+=f' exact reader_not_rigid (SelfintRootLetPowers.reader_betas hr ev{start}) {rig}\n'
  else:
   target='varOut' if side else 'zeroOut';law='one_red' if side else 'zero_red'
   out+=f' have red := betas_preserve_nf ev{start} hr.{law} {target}_normal\n have bad := HandlerLet.signature_betas red (show HandlerLet.signature n{end}=some ({head},{argc}) from rfl)\n exact (by decide : HandlerLet.signature {target} ≠ some ({head},{argc})) bad\n'
  out+=f'#print axioms reject{i}'
  return out
def make(i,R):
 name=f'Slice45Demand{i}'
 for side in (None,0,1):
  try:body=Machine().proof(i,R,side)
  except (ValueError,RecursionError):continue
  if body:
   (proofs/(name+'.lean')).write_text(f'import Blc.SelfintRootLetBinaryOrbit\nimport Certificates\nnamespace Blc.{name}\nopen Term SelfintClass SelfintLowerBound WeakHeadClock\nset_option linter.unusedSimpArgs false\nset_option maxRecDepth 16000\n'+body+f'\nend Blc.{name}\n');return name
if __name__=='__main__':
 xs=json.loads((D/'extras.json').read_text());mods={}
 for j,r in sources().items():
  if j not in xs:
   name=make(int(j),ad.tup(r['source']))
   if name:mods[j]=name
 save(D/'macroplans.json',mods);supervise(leanjobs(list(mods.values())),'macro')
 xs.update({j:['shared head reduction',n] for j,n in mods.items()});save(D/'extras.json',xs)
