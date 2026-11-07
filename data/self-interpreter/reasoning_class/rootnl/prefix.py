"""Finite head-prefix certificates and the kernel-checked replicator family."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import families as f
from families import d,ad,au,flat,weakpath
import json,time,collections,signal,threading,resource
START=time.monotonic();STATES=0
class Cap(Exception):pass
def tick():
 global STATES
 STATES+=1
 if STATES>95000:raise Cap()
def tree(t,a):return t==a or t[0]=='a' and tree(t[1],a) and tree(t[2],a)
def find(t):
 spine=[];hist=[];seen={};prep=[]
 for n in range(201):
  tick()
  while t[0]=='a':spine.append(t[2]);t=t[1]
  if t[0]=='k':
   if t!=d.Kc('r') or len(spine)!=1:return dict(kind='simple',prep=[],certificate=dict(kind='head',steps=n,head=t[1],arity=len(spine)))
   c=au.cert(spine[0],d.Kc('j'))
   if c and c['kind'] in ('loop','head','lambda'):return dict(kind='simple',prep=[],certificate=dict(kind='arg',steps=n,arg_from_right=0,sub=c))
   return None
  if t[0]!='l' or not spine:
   if t[0]=='l':return dict(kind='simple',prep=[],certificate=dict(kind='lambda',steps=n))
   return None
  core=d.A(t,spine[-1]);depth=len(spine)
  hh,qs=flat(t[1])
  if hh==d.V(0) and qs and tree(qs[0],d.V(0)) and tree(spine[-1],t):
   return dict(kind='replicator',prep=prep,D=qs[0],qs=qs[1:],A=t,arg=spine[-1],rest=spine[:-1][::-1])
  if core in seen:
   n0,d0,rest0=seen[core]
   if depth>=d0 and min(hist[n0:])>=d0-1:
    u=core
    for _ in range(n-n0):
     tick();u=ad.step(u)
     if u is None:break
    if u is not None:
     extra=au.prefix(u,core)
     if extra is not None:return dict(kind='simple',prep=[],certificate=dict(kind='loop',steps=n0,loop=dict(core=core,steps=n-n0,extra=extra,rest=rest0)))
  seen[core]=(n,depth,spine[:-1][::-1])
  prep.append((1,)*(len(spine)-1));t=d.beta(t[1],spine.pop());hist.append(len(spine))
  if d.size(t)+sum(d.size(x) for x in spine)>2500:return None
 return None

def main():
 name=sys.argv[1];r=json.loads((H/name).read_text());es=json.loads((H/r['source_file']).read_text())['exceptions'];rows=[];opens=[]
 for i in r['opened']:
  e=es[i];R=ad.tup(e['source']);assert e['probe']=='zero'
  try:c=find(d.A(d.subst(R,0,d.Kc('c')),d.Z()))
  except Cap:c=None
  if c:rows.append(dict(index=i,**c))
  else:opens.append(i)
 rec=dict(source_file=r['source_file'],certificates=rows,opened=opens,states=STATES,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/name.replace('family_','prefix_')).write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print(name,collections.Counter(c['kind'] for c in rows),'open',len(opens),'states',STATES,'seconds',rec['seconds'])
if __name__=='__main__':signal.alarm(112);threading.Thread(target=f.watchdog,daemon=True).start();main()
