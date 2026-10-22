import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from arity_flow import cfa,d,ad
from probe import rw,weakpath
import probe
import json,time,signal,resource,collections
start=time.monotonic();signal.alarm(110)
rows=json.loads((H/'sources.json').read_text());old=json.loads((H/'simplified.json').read_text());arity=json.loads((H/'arity_flow.json').read_text());done={r['id'] for r in arity['certificates']};certs=[];opened=[];checks=0
for i in old['opened']:
 if i in done:continue
 found=None
 for n in range(1,4):
  t=d.A(d.subst(ad.tup(rows[i]['tree']),0,d.Kc('c')),d.U(n));prep=[]
  for k in range(17):
   if time.monotonic()-start>100:raise RuntimeError('time')
   fl,*_=cfa(t);checks+=1
   if ('c',2) not in fl:found=dict(id=i,n=n,prep=prep,term=t,flow=sorted(fl,key=str));break
   p=weakpath(t)
   if p is None or d.size(t)>500:break
   t=rw(t,p);prep.append(p)
  if found:break
 if found:certs.append(found)
 else:opened.append(i)
rec=dict(certificates=certs,opened=opened,checks=checks,states=probe.COUNT,seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'unary_flow.json').write_text(json.dumps(rec,separators=(',',':'))+'\n')
print('unary exclusions',len(certs),'open',len(opened),'checks',checks,'sec',rec['seconds']);print('open',opened)
