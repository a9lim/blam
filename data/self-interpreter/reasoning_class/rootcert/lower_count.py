"""Count open L=3, V=k+5, one-c profile cells; no term construction.
This is a restricted necessary grammar, not the whole lower-k remainder.
"""
import sys
sys.dont_write_bytecode=True
import filtered_eta as f
import itertools,collections,json,time,resource,signal
from pathlib import Path
H=Path(__file__).resolve().parent
f.K=int(sys.argv[1]);f.JD=int(sys.argv[2]);K=f.K;JD=f.JD
start=time.monotonic();signal.alarm(110);out=collections.Counter();blocks=0
# Exactly root plus one unary and one binary live binder, no unused binder.
for T in range(24-4*K-4*JD):
 for ob,tb,cb,jb,Tb in itertools.product(range(2),range(2),range(2),range(JD+1),range(T+1)):
  b=((K,),cb,jb,0,ob,tb,Tb);bc=f.count(b)
  if not bc:continue
  rem=((),1-cb,1-jb,0,1-ob,1-tb,T-Tb)
  for a,cs in f.fparts(rem):
   if not sum(a[3:6]):continue
   ac=f.count(a);nc=f.forest(cs)
   if not ac or not nc:continue
   for bf,nb in bc.items():
    if bf[2] not in (0,-1):continue
    if b[2] and not bf[3]:continue
    for af,na in ac.items():
     if bf[2]==0 and af[2]!=-1:continue
     if bf[2]==0 and af[1] and af[1][0]==0 and not bf[4]:continue
     M=bf[0][0];delta=(K-1)*f.wt(a)+(f.fr(a)-1)*M-4-2*K-(f.fr(b)-K)
     if K==1 and delta<=0:continue
     if not a[2] and (delta<0 or delta==0 and not sum(a[3:6])):continue
     loc='B' if b[2] else 'A' if a[2] else 'Cs'
     out[(T,loc)]+=na*nb*nc;blocks+=1
rec=dict(k=K,depth=JD,L=3,V=K+5,c_count=1,rows={str(k):v for k,v in out.items()},total=sum(out.values()),blocks=blocks,seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/f'profile{K}d{JD}.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps({k:v for k,v in rec.items() if k!='rows'},indent=2))
