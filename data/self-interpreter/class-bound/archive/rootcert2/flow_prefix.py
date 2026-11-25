import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from flow import cfa,d,ad
from probe import rw,weakpath,allnodes,flat,norm
import json,time,resource,signal,collections
start=time.monotonic();signal.alarm(110)
rows=json.loads((H/'sources.json').read_text());certs=[];opened=[];checks=0
for row in rows:
 t=d.A(d.subst(ad.tup(row['tree']),0,d.Kc('c')),d.Z());prep=[];found=None
 for n in range(17):
  checks+=1
  if time.monotonic()-start>100 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>850_000_000:break
  f,*_=cfa(t)
  if 'r' not in f:found=dict(id=row['id'],prep=prep,term=t,flow=sorted(f,key=str));break
  p=weakpath(t)
  if p is None or d.size(t)>400:break
  t=rw(t,p);prep.append(p)
 if found:certs.append(found)
 else:opened.append(row['id'])
rec=dict(certificates=certs,opened=opened,checks=checks,seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'flow_prefix.json').write_text(json.dumps(rec,separators=(',',':'))+'\n')
print('certs',len(certs),'open',len(opened),'checks',checks,'sec',rec['seconds'],'rss',rec['rss_bytes'])
print('open',opened)
