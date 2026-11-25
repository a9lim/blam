"""Small normalizing subterms and head-prefix return certificates."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from flow import cfa,d,ad
from probe import rw,weakpath,allnodes,flat,mx,au,Cap
import probe
from functools import lru_cache
import json,time,resource,signal,collections
START=time.monotonic()
@lru_cache(None)
def smallnf(t):
 u=t;ps=[];seen=set()
 for _ in range(45):
  if u in seen:return None
  seen.add(u);p=next(mx.redexes(u),None)
  if p is None:return u,ps
  u=rw(u,p);ps.append(p)
  if d.size(u)>min(500,5*d.size(t)):return None
 return None

def simp(t):
 prep=[]
 for _ in range(20):
  change=False
  for p,u in list(allnodes(t))[::-1]:
   if u[0] in ('v','k') or d.size(u)>150:continue
   res=smallnf(u)
   if res and d.size(res[0])<d.size(u):
    for q in res[1]:t=rw(t,p+q);prep.append(p+q)
    change=True;break
  if not change:break
 return t,prep

def find(t):
 prep=[]
 for _ in range(20):
  t,ps=simp(t);prep+=ps
  f,*_=cfa(t)
  if 'r' not in f:return dict(kind='flow',prep=prep,term=t,flow=sorted(f,key=str))
  core=t
  while core[0]=='a':
   if d.size(core)<180:
    p=weakpath(core)
    if p is not None:
     u=rw(core,p);qs=[]
     for _ in range(8):
      u,ps=simp(u);qs+=ps
      extra=au.prefix(u,core)
      if extra is not None:return dict(kind='mixed',prep=prep,paths=qs,core=core,extra=extra,rest=au.prefix(t,core))
      p=weakpath(u)
      if p is None or d.size(u)>400:break
      u=rw(u,p);qs.append(p)
   core=core[1]
  p=weakpath(t)
  if p is None or d.size(t)>600:break
  t=rw(t,p);prep.append(p)
 return None
if __name__=='__main__':
 signal.alarm(112)
 rows=json.loads((H/'sources.json').read_text());old=json.loads((H/'flow_develop.json').read_text());certs=[];opened=[]
 for idx,i in enumerate(old['opened']):
  R=d.subst(ad.tup(rows[i]['tree']),0,d.Kc('c'));t=d.A(R,d.Z())
  try:c=find(t)
  except Cap:opened+=old['opened'][idx:];break
  if c:certs.append(dict(id=i,**c))
  else:opened.append(i)
 rec=dict(certificates=certs,opened=opened,states=probe.COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'simplified.json').write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print(collections.Counter(c['kind'] for c in certs),'open',len(opened),'states',probe.COUNT,'sec',rec['seconds']);print('open',opened)
