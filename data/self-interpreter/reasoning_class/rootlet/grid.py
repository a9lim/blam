"""Closed necessary probes; finite beta-normal-form mismatches only."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as ma
import audit as a,dbn as d
import json,time,resource,signal,itertools
START=time.monotonic();signal.alarm(110)
name=sys.argv[1]
if name=='5':
 es=json.loads((H/'boundary_check.json').read_text())['exceptions'];ids=json.loads((H/'boundary_ground8.json').read_text())['opened']
else:
 es=json.loads((H/f'check{name}.json').read_text())['exceptions'];ids=json.loads((H/f'audit{name}.json').read_text())['opened']

def instantiate(t,cs,dep=0):
 if t[0]=='k':return cs[{'c':0,'j':1,'N':2,'r':3}[t[1]]]
 if t[0]=='v':return t
 if t[0]=='l':return d.L(instantiate(t[1],cs,dep+1))
 return d.A(instantiate(t[1],cs,dep),instantiate(t[2],cs,dep))
def normal(t):
 ps=[];seen=set()
 for _ in range(90):
  p=next(ma.redexes(t),None)
  if p is None:return t,ps
  if t in seen:return None
  seen.add(t);t=ma.rewrite(t,p);ps.append(p)
  if d.size(t)>800:return None
 return None
values=[d.I,d.K,d.F];assigns=[(c,j,d.I,r) for c,j,r in itertools.product(values,repeat=3)]
rows=[];op=[];probes=0
for i in ids:
 R=a.tup(es[i]['source']);t=d.A(d.subst(R,0,d.Kc('c')),d.Z());found=None
 for cs in assigns:
  probes+=1
  z=instantiate(t,cs);target=d.A(cs[3],cs[1]);got=normal(z);want=normal(target)
  assert want is not None
  if got is not None and got[0]!=want[0]:
   found=dict(index=i,values=cs,actual=got[0],prep=got[1],target=want[0],target_prep=want[1]);break
 if found:rows.append(found)
 else:op.append(i)
rec=dict(certificates=rows,opened=op,probes=probes,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/f'grid{name}.json').write_text(json.dumps(rec)+'\n');print('probes',probes,'certificates',len(rows),'open',len(op),'seconds',rec['seconds'])
