"""Coefficient-only nested-head classification, with proved flatten cuts.
No source term is built: the extra feature follows only the application spine.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
import grammar as f
from functools import lru_cache
import collections,json,time,resource,signal,threading,os
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
# tag = uses_x(E),uses_y(D),uses_x(D),uses_x(P),F(E),F(P),j(E),j(P),depthsum_y(D),len(P)
@lru_cache(None)
def tags(s,key):
 out=collections.Counter()
 assert not key[1] and key[2]==-1
 for a,b in f.parts(s):
  for af,na in f.count(a).items():
   for bf,nb in f.count(b).items():
    if f.combine(a,af,b,bf)!=key:continue
    if af[1]:
     tag=(b[0][0],af[1][0],a[0][0],0,b[1]+4*b[2],0,b[2],0,af[1][1],0)
     out[tag]+=na*nb
    else:
     assert af[2]==-1
     for tag,n in tags(a,af).items():
      ke,m,kD,kP,fe,fp,je,jp,q,np=tag
      out[ke,m,kD,kP+b[0][0],fe,fp+b[1]+4*b[2],je,jp+b[2],q,np+1]+=n*nb
 assert sum(out.values())==f.count(s)[key],(s,key,out,f.count(s)[key])
 return out

def cut(tag):
 ke,m,kD,kP,fe,fp,je,jp,q,np=tag
 if ke:return False
 delta=min(kP,m-kD)+fp-fe
 return delta<0 or delta==0 and jp<=je

def blocks():
 for key,n in f.roots():
  L,T,b,a,cs,bf,af,t=key
  if bf[1] or bf[2]!=-1:continue
  ts=tags(b,bf);nb=f.count(b)[bf];assert n%nb==0
  for tag,nt in ts.items():yield key,tag,n//nb*nt

def run(k,d):
 f.K=k;f.JD=d;pre=collections.Counter();cuts=collections.Counter();rem=collections.Counter();profiles=collections.Counter()
 for key,tag,n in blocks():
  cell=f.cell(key);pre[cell]+=n
  if cut(tag):cuts[cell]+=n
  else:
   rem[cell]+=n;profiles[(tag[0],tag[1],tag[2],tag[3],tag[4],tag[5],tag[6],tag[7],tag[9])]+=n
 rec=dict(k=k,depth=d,before=sum(pre.values()),cut=sum(cuts.values()),remaining=sum(rem.values()),cells={str(k):v for k,v in rem.items()},cut_cells={str(k):v for k,v in cuts.items()},profiles={str(k):v for k,v in profiles.items()},seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/f'nested_count_{k}_{d}.json').write_text(json.dumps(rec,indent=2)+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in ('profiles','cut_cells')}))
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();run(*map(int,sys.argv[1:3]))
