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

from collections import defaultdict
rows=json.loads((H/'jbare_manifest.json').read_text());groups=defaultdict(list)
def args(t):
 a=[]
 while t[0]=='a':a.append(t[2]);t=t[1]
 return list(reversed(a))
for i,e in enumerate(rows):
 b=tup(e['body']);outer=args(b);inner=args(outer[0]);t=len(outer)+len(inner)-2
 groups[t].append((i,e))
steps=[];manifest=[]
for t,es in sorted(groups.items()):
 out=['import LinearCertificates',f'namespace Blc.Firstop.JBare{t}','open Term SelfintClass','set_option maxRecDepth 10000','set_option maxHeartbeats 2000000']
 for i,e in es:
  b=tup(e['body']);actual=tup(e['normal']);u=d.inst(b,d.Z() if e['probe']=='zero' else d.U(1));n=1
  while True:
   v=step(u)
   if v is None:break
   u=v;n+=1;assert n<100
  assert u==actual
  steps.append(n);manifest.append(dict(index=i,t=t,theorem=f'Blc.Firstop.JBare{t}.reject{i}'))
  out += [f'def r{i} : Term := (.lam {lean(b,source=True)})',f'theorem reject{i} : ¬ Reader r{i} :=',f'  refute_{e["probe"]} r{i} {lean(actual)} {n} (by decide) (by decide) (by decide)',f'#print axioms reject{i}']
 out += [f'end Blc.Firstop.JBare{t}'];(H/f'JBare{t}.lean').write_text('\n'.join(out)+'\n')
(H/'jbare_certificates.json').write_text(json.dumps(manifest,indent=2)+'\n')
print(json.dumps({'certificates':len(rows),'max_beta_steps':max(steps),'total_beta_steps':sum(steps),'modules':{str(t):len(es) for t,es in groups.items()}}))
