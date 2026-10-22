"""Targeted beta-loop discovery on the explicit unresolved catalogue.
One actual head beta step is mandatory before every arbitrary replay cycle.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import families as f
from families import d,ad,au,mx,flat,weakpath
import json,signal,time,resource,threading,collections
START=time.monotonic();COUNT=0
class Cap(Exception):pass
def rw(t,p):
 global COUNT
 COUNT+=1
 if COUNT>95000:raise Cap()
 return mx.rewrite(t,p)
def nodes(t,p=()):
 yield p,t
 if t[0]=='l':yield from nodes(t[1],p+(0,))
 elif t[0]=='a':yield from nodes(t[1],p+(1,));yield from nodes(t[2],p+(2,))
def simplify(t):
 ps=[]
 for _ in range(3):
  changed=False
  for path,x in list(nodes(t))[::-1]:
   if not path or x[0] not in ('a','l'):continue
   u=x;qs=[]
   for k in range(10):
    p=next(mx.redexes(u),None)
    if p is None:break
    u=rw(u,p);qs.append(p)
    if d.size(u)>min(3*d.size(x),180):break
   if next(mx.redexes(u),None) is None and d.size(u)<d.size(x):
    for q in qs:t=rw(t,path+q);ps.append(path+q)
    changed=True;break
  if not changed:break
 return t,ps
def find(t,ground):
 prep=[]
 for j in range(8):
  t,ps=simplify(t);prep+=ps
  core=t
  while core[0]=='a':
   if d.size(core)<=120:
    p=weakpath(core)
    if p is not None:
     u=rw(core,p);qs=[]
     for _ in range(5):
      u,ps=simplify(u);qs+=ps
      extra=au.prefix(u,core)
      if extra is not None:return dict(kind='ground' if ground else 'mixed',prep=prep,paths=qs,core=core,extra=extra,rest=au.prefix(t,core))
      p=weakpath(u)
      if p is None or d.size(u)>250:break
      u=rw(u,p);qs.append(p)
   core=core[1]
  p=weakpath(t)
  if p is None or d.size(t)>400:break
  t=rw(t,p);prep.append(p)
 return None

def ground(t):
 if t[0]=='k':return d.I
 if t[0]=='v':return t
 if t[0]=='l':return d.L(ground(t[1]))
 return d.A(ground(t[1]),ground(t[2]))
def main():
 name=sys.argv[1];r=json.loads((H/name).read_text());es=json.loads((H/r['source_file']).read_text())['exceptions'];rows=[];opens=[]
 for i in r['opened']:
  e=es[i];R=ad.tup(e['source']);t=d.A(d.subst(R,0,d.Kc('c')),d.Z())
  try:c=find(t,False)
  except Cap:c=None
  if c:rows.append(dict(index=i,**c))
  else:opens.append(i)
 rec=dict(source_file=r['source_file'],certificates=rows,opened=opens,states=COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/name.replace('prefix_','mixed_')).write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print(name,collections.Counter(c['kind'] for c in rows),'open',len(opens),'states',COUNT,'seconds',rec['seconds'])
if __name__=='__main__':signal.alarm(112);threading.Thread(target=f.watchdog,daemon=True).start();main()
