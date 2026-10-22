import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'jn'))
import dbn as d

def tup(t):return tuple(tup(x) if isinstance(x,list) else x for x in t)
def lean(t,depth=0,source=False):
 if t[0]=='v':return f'(.var {t[1]})'
 if t[0]=='k':
  i=(2 if source else 1) if t[1]=='j' else {'c':0,'N':2,'r':3}[t[1]]
  return f'(.var {depth+i})'
 if t[0]=='l':return f'(.lam {lean(t[1],depth+1,source)})'
 return f'(.app {lean(t[1],depth,source)} {lean(t[2],depth,source)})'
def step(t):
 if t[0] in ('v','k'):return None
 if t[0]=='l':
  b=step(t[1]);return d.L(b) if b is not None else None
 if t[1][0]=='l':return d.beta(t[1][1],t[2])
 f=step(t[1])
 if f is not None:return d.A(f,t[2])
 a=step(t[2]);return d.A(t[1],a) if a is not None else None
rows=json.loads((H/'linear_manifest.json').read_text());out=['import LinearCertificates','namespace Blc.Firstop.LinearInventory','open Term SelfintClass','set_option maxRecDepth 10000','set_option maxHeartbeats 2000000']
steps=[]
for i,e in enumerate(rows):
 b=tup(e['body']);actual=tup(e['normal']);t=d.inst(b,d.Z() if e['probe']=='zero' else d.U(1));n=1
 while True:
  u=step(t)
  if u is None:break
  t=u;n+=1;assert n<100
 assert t==actual
 steps.append(n)
 out += [f'def r{i} : Term := (.lam {lean(b,source=True)})',f'theorem reject{i} : ¬ Reader r{i} :=',f'  refute_{e["probe"]} r{i} {lean(actual)} {n} (by decide) (by decide) (by decide)',f'#print axioms reject{i}']
out+=['end Blc.Firstop.LinearInventory']
(H/'LinearInventory.lean').write_text('\n'.join(out)+'\n')
print(json.dumps({'certificates':len(rows),'max_beta_steps':max(steps),'total_beta_steps':sum(steps)}))
