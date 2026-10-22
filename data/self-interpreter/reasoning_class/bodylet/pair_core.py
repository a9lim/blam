"""Complete pre-pending helper pairs, then the surviving source products.
The pending forest contains both c and j, hence costs >=7; this is why
the whole j-free (A,B) catalog has 7,898 pairs despite 199,029 sources.
"""
import sys
sys.dont_write_bytecode=True
import check as ck
import minimum as ct
from collections import Counter
from functools import lru_cache
import json,time,resource,signal,threading,hashlib
H=ck.H;d=ck.d
signal.alarm(112);threading.Thread(target=ct.watchdog,daemon=True).start()
cell=(2,'0','C','C');configs=list(ct.blocks(2,cell));catalog={}
for _,(a,ka,b,kb,p,kp,ja),num in configs:catalog[a,ka,b,kb,ja]=ct.terms(a,2,ja)[ka]*ct.terms(b,3,0)[kb]
assert sum(catalog.values())==7898

def sig(t,z):
 l=0;budget=[200]
 try:
  while True:
   h,args=ck.whnf(t,budget)
   if h[0]!='l':break
   assert not args;l+=1;t=h[1]
  if h[0]=='v':return ('bound',l,0)
  want=d.Kc('r' if z else 'c');q=1 if z else 2
  if h==want and len(args)<=q:return ('rigid',l,q-len(args))
  return ('wrong',0,0)
 except (ck.Cycle,ck.Cutoff,RecursionError):return ('unknown',0,0)

def valid(s,k):
 typ,h,q=s
 return typ=='unknown' or (typ!='wrong' and k>=h and (typ=='bound' or k==h+q))

pairs={};nr=Counter();core_exceptions=0
for key,num in catalog.items():
 a,ka,b,kb,ja=key;rec=[]
 for A in ck.gen(a,2,ja,ka):
  for B in ck.gen(b,3,0,kb):
   P=d.beta(B,A);z=sig(d.inst(P,d.Z()),True)
   if z[0]=='wrong':nr['zero']+=1;continue
   u=sig(d.inst(P,d.U(1)),False)
   if u[0]=='wrong':nr['one']+=1;continue
   if 'unknown' in (z[0],u[0]):core_exceptions+=1
   rec.append((A,B,z,u))
 pairs[key]=rec

@lru_cache(None)
def pd(p,kp):return Counter(map(len,ck.pgen(p,1,kp)))
expected=0;new=[]
for key,(a,ka,b,kb,p,kp,ja),num in configs:
 ps=pairs[a,ka,b,kb,ja]
 num=sum(n for A,B,z,u in ps for k,n in pd(p,kp).items() if valid(z,k) and valid(u,k))
 expected+=num;new.append((key,(a,ka,b,kb,p,kp,ja),num))
meta=dict(cell=cell,helper_pairs=sum(catalog.values()),pair_rejections=dict(nr),retained_pair_exceptions=core_exceptions,remaining_sources=expected,seconds=time.monotonic()-ct.START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'pair-core.json').write_text(json.dumps(meta,indent=2)+'\n');print(meta,flush=True)
assert expected+sum(catalog.values())<=100000
counts=Counter();exceptions=[];hits=[];seen=set();digest=hashlib.sha256();mx=0
for key,(a,ka,b,kb,p,kp,ja),num in new:
 nb=0
 for A,B,z,u in pairs[a,ka,b,kb,ja]:
  for Cs in ck.pgen(p,1,kp):
   if not valid(z,len(Cs)) or not valid(u,len(Cs)):continue
   body=d.A(d.L(B),A)
   for C in Cs:body=d.A(body,C)
   R=d.L(body);assert R not in seen;seen.add(R);nb+=1
   assert ck.price(R)==10+a+b+p<=45;digest.update((repr(R)+'\n').encode())
   for n in (0,1,2,3):
    label='zero' if not n else str(n)
    target=d.A(d.Kc('r'),d.Kc('j')) if not n else d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
    probe=d.inst(body,d.Z() if not n else d.U(n));budget=[200]
    try:ok=ck.matches(probe,target,budget)
    except (ck.Cutoff,ck.Cycle,RecursionError) as e:
     counts['exception'+label]+=1;exceptions.append(dict(body=body,probe=label,kind=type(e).__name__,reason=str(e)));break
    mx=max(mx,200-budget[0])
    if not ok:counts['wrong'+label]+=1;break
   else:hits.append(dict(body=body,weight=ck.price(R)))
 assert nb==num,(nb,num)
assert len(seen)==expected
out=dict(cell=cell,sources=expected,counts=dict(counts),exceptions=exceptions,hits=hits,source_digest=digest.hexdigest(),max_steps=mx,seconds=time.monotonic()-ct.START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
(H/'check-2-0-C-C.json').write_text(json.dumps(out,indent=2)+'\n');print({k:v for k,v in out.items() if k not in ('exceptions','hits')});print('exceptions',len(exceptions),'hits',len(hits))
