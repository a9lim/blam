"""Lift small helper head cycles through syntactically strict contexts."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import mixed as m
from mixed import d,ad,flat,weakpath,au
import json,time,signal,collections,resource,threading
signal.alarm(112)
threading.Thread(target=m.f.watchdog,daemon=True).start()
from functools import lru_cache
START=time.monotonic();COUNT=0
rows=json.loads((H/'PRE_STRICT.json').read_text())
helpers=set()
for e in rows:
 R=ad.tup(e['tree']);_,args=flat(d.subst(R,0,d.Kc('c')));A=args[0]
 if A[0]=='l' and flat(A[1])[0]==d.V(0):helpers.add(A)
lib={}
for A in sorted(helpers,key=repr):
 try:c=m.find(d.A(A,A),False)
 except m.Cap:c=None
 if c:lib[d.A(A,A)]=c
@lru_cache(None)
def bad(t):
 global COUNT
 COUNT+=1
 if COUNT>95000:return None
 if t in lib:return dict(kind='base',term=t,certificate=lib[t])
 if t[0]!='a':return None
 q=bad(t[1])
 if q:return dict(kind='left',arg=t[2],sub=q)
 if t[1][0]=='l':
  h,qs=flat(t[1][1])
  if h==d.V(0):
   q=bad(t[2])
   if q:return dict(kind='strict',qs=qs,sub=q)
 return None
certs=[];opened=[]
for e in rows:
 R=ad.tup(e['tree']);t=d.A(d.subst(R,0,d.Kc('c')),d.Z());prep=[];found=None
 for _ in range(8):
  b=bad(t)
  if b:found=dict(file=e['file'],index=e['exception_index'],prep=prep,term=t,bad=b);break
  p=weakpath(t)
  if p is None or d.size(t)>800:break
  t=m.mx.rewrite(t,p);prep.append(p)
 if found:certs.append(found)
 else:opened.append(e['id'])
rec=dict(certificates=certs,opened=opened,helper_count=len(helpers),helper_cycles=len(lib),discovery_states=m.COUNT,structural_states=COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'strict.json').write_text(json.dumps(rec,separators=(',',':'))+'\n')
print({k:len(v) if k in ('certificates','opened') else v for k,v in rec.items()})
