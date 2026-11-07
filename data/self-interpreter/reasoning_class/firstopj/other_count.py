"""Count pinned remaining first-operand cells without instantiating syntax."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import importlib.util,json,signal,threading,time,resource
from collections import defaultdict
from functools import lru_cache
H=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('firstopj_count',H/'count.py');ct=importlib.util.module_from_spec(spec);spec.loader.exec_module(ct)
@lru_cache(None)
def jt(n,t,p,c):
 # One j among first p pending operands, exactly c continuation leaves.
 if not t or p<=0 or n<2*t+2 or c<0:return 0
 out=0
 for a in range(4,n-2*(t-1)+1):
  for (L,s,e,h),v in ct.J(a).items():out+=v*ct.tails(n-a,t-1,c-e)
 if t>1:
  for a in range(2,n-2*(t-1)-1):
   for e,v in ct.simple(a).items():out+=v*jt(n-a,t-1,p-1,c-e)
 return out

def blocks(t,p):
 assert 1<=p<=t
 for a in range(2,32-4*t):
  for ka,na in ct.T(a,2).items():
   LA,ca,da,ha,ma,Ma=ka;F=sum(ca)
   for b in range(2,34-4*t-a):
    for kd,nd in ct.T(b,3).items():
     LD,cd,dd,hd,mb,Mb=kd;m,sd,cc=cd;M=dd[0]
     if not m or hd==2 or(hd==0 and ha==1):continue
     delta=(m-1)*a+(F-1)*M-4-2*m-sd-cc
     if delta<0 or(delta==0 and (m==1 or LA==0)):continue
     for v in range(2*t+2,36-2*t-a-b):
      for c in range(v//3+1):
       if not ca[1]+cc+c:continue
       nt=jt(v,t,p,c)
       if nt:yield(a,ka,b,kd,v,c),na*nd*nt
if __name__=='__main__':
 signal.alarm(110);threading.Thread(target=ct.watch,daemon=True).start();start=time.monotonic();out={}
 for t in range(1,8):
  for p in range(1,t+1):out[f'{t}:{p}']=sum(n for _,n in blocks(t,p))
 rec=dict(jpending=out,total=sum(out.values()),seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'other_count.json').write_text(json.dumps(rec,indent=2)+'\n');print(json.dumps(rec,indent=2))
