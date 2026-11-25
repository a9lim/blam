import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from flow import cfa,d,ad
from probe import rw,weakpath,substk
import json,time,signal,resource,collections
start=time.monotonic();signal.alarm(110)
rows=json.loads((H/'sources.json').read_text());old=json.loads((H/'flow_prefix.json').read_text());certs=[];opened=[];checks=0
D=d.L(d.A(d.V(0),d.V(0)));Om=d.A(D,D)
probes=[dict(c=Om),dict(c=d.I),dict(c=d.K),dict(c=d.F),dict(c=d.I,j=d.I),dict(c=d.K,j=d.I),dict(c=d.F,j=d.I),dict(c=Om,j=d.I)]
for i in old['opened']:
 row=rows[i];found=None
 for pi,vals in enumerate(probes):
  t=substk(d.A(d.subst(ad.tup(row['tree']),0,d.Kc('c')),d.Z()),vals);prep=[]
  for n in range(9):
   checks+=1
   if time.monotonic()-start>100 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>850_000_000:raise RuntimeError('cap')
   f,*_=cfa(t)
   if 'r' not in f:found=dict(id=i,probe=pi,values=vals,prep=prep,term=t,flow=sorted(f,key=str));break
   p=weakpath(t)
   if p is None or d.size(t)>500:break
   t=rw(t,p);prep.append(p)
  if found:break
 if found:certs.append(found)
 else:opened.append(i)
rec=dict(certificates=certs,opened=opened,checks=checks,seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'flow_instantiate.json').write_text(json.dumps(rec,separators=(',',':'))+'\n')
print('certs',len(certs),'open',len(opened),'checks',checks,'sec',rec['seconds'],'rss',rec['rss_bytes'])
print('by probe',collections.Counter(r['probe'] for r in certs));print('open',opened)
