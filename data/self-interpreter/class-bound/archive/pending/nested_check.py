"""Complete pinned nested-head family; over-cap input is refused."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import nested_count as nc
f=nc.f
import generate as g,check as ck,dbn as d
import json,collections,hashlib,time,resource,signal,threading,os
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
def free(t,dep=0):
 if t[0]=='k':return 4
 if t[0]=='v':return int(t[1]>=dep)
 if t[0]=='l':return free(t[1],dep+1)
 return free(t[1],dep)+free(t[2],dep)
def j(t):
 if t[0]=='k':return 1
 if t[0]=='v':return 0
 return sum(j(x) for x in t[1:])
def flat(t):
 xs=[]
 while t[0]=='a':xs.append(t[2]);t=t[1]
 return t,list(reversed(xs))
def actual_cut(B):
 h,xs=flat(B);assert h[0]=='l' and xs
 E,*ps=xs;D=h[1];ke=ck.hc.occ(E,0)
 if ke:return False
 m=ck.hc.occ(D,0);kd=ck.hc.occ(D,1);kp=sum(ck.hc.occ(p,0) for p in ps)
 fe=free(E);fp=sum(free(p)-ck.hc.occ(p,0) for p in ps)
 delta=min(kp,m-kd)+fp-fe
 return delta<0 or delta==0 and sum(j(p) for p in ps)<=j(E)
def main(k,jd):
 f.K=k;f.JD=jd;r=json.loads((H/f'nested_count_{k}_{jd}.json').read_text());assert r['before']<=100000
 expected=r['remaining'];stats=collections.Counter();bad=[];seen=set();digest=hashlib.sha256();cut=0;total=0
 pred=lambda key:not key[5][1] and key[5][2]==-1
 for R,meta,(B,A,Cs) in g.sources(pred):
  total+=1
  if actual_cut(B):cut+=1;continue
  assert R not in seen;seen.add(R);digest.update(repr(R).encode()+b'\n')
  assert ck.weight(R)<=45 and ck.hc.occ(B,0)==k
  for n in range(4):
   label='zero' if n==0 else str(n)
   arg=d.Z() if n==0 else d.U(n)
   target=d.A(d.Kc('r'),d.Kc('j')) if n==0 else d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
   try:ok=ck.matches(d.A(d.subst(R,0,d.Kc('c')),arg),target,[120])
   except (ck.hc.Cycle,ck.hc.Cutoff,RecursionError) as e:
    bad.append(dict(source=R,probe=label,reason=type(e).__name__,w=ck.weight(R)));break
   if not ok:stats[label]+=1;break
  else:raise RuntimeError(('finite pass needs investigation',R))
 assert len(seen)==expected and total==r['before'] and cut==r['cut']
 rec=dict(k=k,depth=jd,total=expected,finite_failures=dict(stats),exceptions=bad,hits=[],sha256=digest.hexdigest(),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/f'check_nested_{k}_{jd}.json').write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print(json.dumps({k:v if k!='exceptions' else len(v) for k,v in rec.items()}))
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main(*map(int,sys.argv[1:3]))
