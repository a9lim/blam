"""Additional handwritten grammar cut, for over-cap cells only.
Bad means: on the zero input, any application to arguments either retains
some lambda prefix or has rigid c/j at the head. A free c or j is bad;
lambda preserves badness; application of a bad function stays bad; and
s applied to a bad handler is bad, because Z H = H K r.
"""
import sys
sys.dont_write_bytecode=True
import minimum as ct
from collections import defaultdict,Counter
from functools import lru_cache
import time,signal,threading,json,resource

@lru_cache(None)
def terms(n,nf,j):
 if n<0 or j not in (0,1):return {}
 out=defaultdict(int);z=(0,)*nf
 if j and n==0:out[(z,z,0,'j',(),z,z,0),True]+=1
 if not j:
  for i in range(nf):
   if n==i+2:out[(tuple(int(i==k) for k in range(nf)),z,0,str(i),(),z,z,0),i==nf-1]+=1
  for (kb,bad),num in terms(n-2,nf+1,0).items():
   v,M,L,h,meta,args,sink,need=kb
   ch=meta[4] if h=='lam' else h
   ch=('bound' if ch=='0' else str(int(ch)-1)) if ch.isdigit() else ch
   key=v[1:],ct.plus(M[1:],v[1:]),L+1,'lam',(v[0],M[0],sum(v[1:]),sink[0],ch),z,z,0
   out[key,bad]+=num
 for a in range(n-1):
  for k in range(j+1):
   for (kf,bf),num in terms(a,nf,k).items():
    for (ka,ba),nn in terms(n-2-a,nf,j-k).items():
     key=ct.combine(kf,ka,n-2-a,j,a)
     if key is None:continue
     stream=a==nf and kf[3]==str(nf-2) and sum(kf[0])==1 and kf[2]==0
     out[key,bf or (stream and ba)]+=num*nn
 return dict(out)

if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=ct.watchdog,daemon=True).start()
 raw=sys.argv[1].split(':');cell=(int(raw[0]),)+tuple(raw[1:]);aa={};total=0
 for _,(a,ka,b,kb,p,kp,ja),num in ct.blocks(cell[0],cell):
  na=terms(a,2,ja).get((ka,False),0)
  if not na:continue
  aa[a,ka,ja]=na;total+=na*ct.terms(b,3,0)[kb]*ct.pending(p,1-ja)[kp]
 rec=dict(cell=cell,helpers=sum(aa.values()),remaining_sources=total,seconds=time.monotonic()-ct.START,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (ct.H/('safe-count-'+sys.argv[1].replace(':','-')+'.json')).write_text(json.dumps(rec,indent=2)+'\n');print(rec)

@lru_cache(50000)
def gen(n,nf,j,key,bad):
 import check as ck
 d=ck.d
 if not terms(n,nf,j).get((key,bad)):return ()
 out=[];v,M,L,h,meta,args,sink,need=key;z=(0,)*nf
 if j and n==0 and bad and key==(z,z,0,'j',(),z,z,0):out.append(d.Kc('j'))
 if not j:
  for i in range(nf):
   kk=(tuple(int(i==k) for k in range(nf)),z,0,str(i),(),z,z,0)
   if n==i+2 and key==kk and bad==(i==nf-1):out.append(d.V(i))
  if h=='lam':
   for (kb,bb) in terms(n-2,nf+1,0):
    if bb!=bad:continue
    vb,Mb,Lb,hb,mb,ab,sb,rb=kb
    ch=mb[4] if hb=='lam' else hb
    ch=('bound' if ch=='0' else str(int(ch)-1)) if ch.isdigit() else ch
    kk=vb[1:],ct.plus(Mb[1:],vb[1:]),Lb+1,'lam',(vb[0],Mb[0],sum(vb[1:]),sb[0],ch),z,z,0
    if kk==key:out.extend(d.L(b) for b in gen(n-2,nf+1,0,kb,bb))
 if h!='lam':
  for a in range(n-1):
   for k in range(j+1):
    for kf,bf in terms(a,nf,k):
     if any(x>y for x,y in zip(kf[0],v)) or kf[2]>L:continue
     stream=a==nf and kf[3]==str(nf-2) and sum(kf[0])==1 and kf[2]==0
     for ka,ba in terms(n-2-a,nf,j-k):
      if (bf or (stream and ba))!=bad or ct.combine(kf,ka,n-2-a,j,a)!=key:continue
      for f in gen(a,nf,k,kf,bf):
       for ar in gen(n-2-a,nf,j-k,ka,ba):out.append(d.A(f,ar))
 assert len(out)==terms(n,nf,j)[key,bad]
 return tuple(out)
