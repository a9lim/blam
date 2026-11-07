"""Joint arity flow after bounded internal developments on the exact remainder."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from arity_flow import cfa,d,ad
from probe import rw,weakpath,mx
import probe
import json,time,resource,signal,collections
start=time.monotonic();signal.alarm(110)
rows=json.loads((H/'sources.json').read_text());old=json.loads((H/'unary_flow.json').read_text());certs=[];opened=[];checks=0

def develop(t):
 qs=[]
 def go(t,path):
  if t[0]=='l':return d.L(go(t[1],path+(0,)))
  if t[0]!='a':return t
  f=go(t[1],path+(1,));a=go(t[2],path+(2,));t=d.A(f,a)
  if f[0]=='l':
   u=rw(t,())
   if d.size(u)<1000:qs.append(path);return u
  return t
 u=go(t,());return u,qs
for i in old['opened']:
 row=rows[i];found=None
 for z in [True,False]:
  t=d.A(d.subst(ad.tup(row['tree']),0,d.Kc('c')),d.Z() if z else d.U(1));prep=[]
  for n in range(18):
   checks+=1
   if time.monotonic()-start>100 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>850_000_000:raise RuntimeError('cap')
   f,*_=cfa(t,2 if z else 3)
   if (('r',1) if z else ('c',2)) not in f:found=dict(id=i,zero=z,prep=prep,term=t,flow=sorted(f,key=str));break
   t,qs=develop(t);prep+=qs
   if not qs or d.size(t)>2500 or len(prep)>1000:break
  if found:break
 if found:certs.append(found)
 else:opened.append(i)
rec=dict(certificates=certs,opened=opened,checks=checks,rewrites=probe.COUNT,seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'final_develop.json').write_text(json.dumps(rec,separators=(',',':'))+'\n')
print('certs',len(certs),'open',len(opened),'checks',checks,'rewrites',probe.COUNT,'sec',rec['seconds'],'rss',rec['rss_bytes'])
print('open',opened)
