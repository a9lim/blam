"""Targeted instantiation of the zero law, with finite beta certificates."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
from families import d,ad,mx,au,flat,weakpath
import json,time,signal,resource,collections
START=time.monotonic();COUNT=0
class Cap(Exception):pass

def rw(t,p):
 global COUNT
 COUNT+=1
 if COUNT>95000 or time.monotonic()-START>105 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>850_000_000:raise Cap()
 return mx.rewrite(t,p)
def substk(t,vs):
 if t[0]=='k':return vs.get(t[1],t)
 if t[0]=='v':return t
 if t[0]=='l':return d.L(substk(t[1],vs))
 return d.A(substk(t[1],vs),substk(t[2],vs))
def allnodes(t,p=()):
 yield p,t
 if t[0]=='l':yield from allnodes(t[1],p+(0,))
 if t[0]=='a':yield from allnodes(t[1],p+(1,));yield from allnodes(t[2],p+(2,))
def norm(t,limit=90,size=3500):
 ps=[]
 for i in range(limit):
  p=next(mx.redexes(t),None)
  if p is None:return t,ps
  t=rw(t,p);ps.append(p)
  if d.size(t)>size:return None
 return None

def find(t,target,limit=100):
 prep=[];history={}
 for _ in range(limit):
  # Head or missing-variable mismatch requires no normalization of operands.
  h,args=flat(t);th,ta=flat(target)
  if h[0]=='k' and (h!=th or len(args)!=len(ta)):
   return dict(kind='head',prep=prep,head=h[1],arity=len(args))
  missing=d.consts_of(target)-d.consts_of(t)
  if missing:return dict(kind='missing',prep=prep,variable=sorted(missing)[0])
  core=t
  while core[0]=='a':
   if core in history:
    oldpath,n,rest=history[core]
    seq=prep[n:];u=core;ok=True
    for p in seq:
     if p[:len(oldpath)]!=oldpath:ok=False;break
     try:u=rw(u,p[len(oldpath):])
     except Exception as e:
      if isinstance(e,Cap):raise
      ok=False;break
    if ok and au.prefix(u,core) is not None:
     return dict(kind='cycle',prep=prep[:n],core=core,paths=[p[len(oldpath):] for p in seq],extra=au.prefix(u,core),rest=rest)
   path=(1,)*(len(args)-len(flat(core)[1]))
   history[core]=(path,len(prep),au.prefix(t,core))
   core=core[1]
  p=weakpath(t)
  if p is None:
   n=norm(t)
   if n and n[0]!=target:return dict(kind='nf',prep=prep+n[1],lhs=n[0],rhs=target)
   return None
  t=rw(t,p);prep.append(p)
  if d.size(t)>3500:return None
 return None

def main():
 name=sys.argv[1] if len(sys.argv)>1 else 'ground'
 vals={'ground':dict(c=d.I,j=d.I,N=d.I,r=d.I),'ci':dict(c=d.I),'cf':dict(c=d.F),'ck':dict(c=d.K),'ji':dict(j=d.I),'jf':dict(j=d.F),'jk':dict(j=d.K)}[name]
 rows=json.loads((H/'sources.json').read_text());certs=[];opened=[]
 target=substk(d.A(d.Kc('r'),d.Kc('j')),vals);tn=norm(target);target=tn[0]
 for row in rows:
  t=substk(d.A(d.subst(ad.tup(row['tree']),0,d.Kc('c')),d.Z()),vals)
  try:c=find(t,target)
  except Cap:
   opened.extend(r['id'] for r in rows[len(certs)+len(opened):]);break
  if c:certs.append(dict(id=row['id'],**c))
  else:opened.append(row['id'])
 rec=dict(probe=name,values=vals,target_prep=tn[1],certificates=certs,opened=opened,states=COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/(name+'.json')).write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print(name,collections.Counter(c['kind'] for c in certs),'open',len(opened),'states',COUNT,'sec',rec['seconds'])
if __name__=='__main__':signal.alarm(112);main()
