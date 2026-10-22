"""Lower-k minimal leaf profiles only: L=3,V=k+5,one c,other binders 1/2 uses.
Exact coefficient grammar plus every-let prices and the kernel-checked eta cut.
No generic zcore site cut is imposed on application-rooted hand-offs.
"""
from probe import *
import itertools,threading,os,hashlib
import filtered_eta as f,generate_eta as gen
sys.path.insert(0,str(H.parent/'rootlet'))
import boundary as b
import check_filtered as check
START=time.monotonic();sys.setrecursionlimit(3000)

def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)

def blocks(K,JD):
 for T in range(24-4*K-4*JD):
  for ob,tb,cb,jb,Tb in itertools.product(range(2),range(2),range(2),range(JD+1),range(T+1)):
   bs=((K,),cb,jb,0,ob,tb,Tb);bc=f.count(bs)
   if not bc:continue
   rem=((),1-cb,1-jb,0,1-ob,1-tb,T-Tb)
   for aa,cs in f.fparts(rem):
    if not sum(aa[3:6]):continue
    ac=f.count(aa);nc=f.forest(cs)
    if not ac or not nc:continue
    for bf,nb in bc.items():
     if bf[2] not in (0,-1):continue
     if bs[2] and not bf[3]:continue
     if K==1 and bf[5]:continue
     for af,na in ac.items():
      if bf[2]==0 and af[2]!=-1:continue
      if bf[2]==0 and af[1] and af[1][0]==0 and not bf[4]:continue
      M=bf[0][0];delta=(K-1)*f.wt(aa)+(f.fr(aa)-1)*M-4-2*K-(f.fr(bs)-K)
      if K==1 and delta<=0:continue
      if not aa[2] and (delta<0 or delta==0 and not sum(aa[3:6])):continue
      yield (T,bs,aa,cs,bf,af),na*nb*nc

def setcell(k,d):
 f.K=k;f.JD=d
 for fun in [f.count,f.forest,gen.gen,gen.forest]:fun.cache_clear()

def sources(k,d):
 for (tax,bs,aa,cs,bf,af),n in blocks(k,d):
  emitted=0
  for B in gen.gen(bs,bf):
   for A in gen.gen(aa,af):
    for Cs in gen.forest(cs):
     R=D.A(D.L(B),A)
     for C in Cs:R=D.A(R,C)
     emitted+=1;yield R,tax
  assert emitted==n

if __name__=='__main__':
 signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start()
 cells=[(4,0),(3,1),(3,0),(2,1),(2,0),(1,1),(1,0)]
 plan={}
 for k,d in cells:
  setcell(k,d);plan[f'{k}d{d}']=sum(n for _,n in blocks(k,d))
 assert sum(plan.values())<=100000
 (H/'lower_plan.json').write_text(json.dumps(plan,indent=2)+'\n');print('plan',plan,'total',sum(plan.values()),flush=True)
 if len(sys.argv)>1 and sys.argv[1]=='count':sys.exit(0)
 exceptions=[];hits=[];results={};total=0
 for k,d in cells:
  setcell(k,d);stats=collections.Counter();seen=set();digest=hashlib.sha256()
  for R,tax in sources(k,d):
   assert R not in seen;seen.add(R);total+=1;assert total<=100000
   w=b.weight(R);assert w==4*k+22+4*d+tax<=45
   digest.update(repr(R).encode());digest.update(b'\n')
   for label,stream,target in [('zero',D.Z(),D.A(D.Kc('r'),D.Kc('j'))),('1',D.U(1),D.A(D.A(D.Kc('c'),D.U(0)),D.Kc('N')))]:
    instance=D.A(D.subst(R,0,D.Kc('c')),stream)
    try:why=check.necessary(instance,target)
    except (check.hc.Cutoff,check.hc.Cycle,RecursionError) as exc:
     stats['exception']+=1;exceptions.append(dict(id=len(exceptions),cell=f'{k}d{d}',source=R,weight=w,probe=label,reason=type(exc).__name__));break
    if why!='pass':stats[label+'_'+why]+=1;break
   else:stats['hit']+=1;hits.append(dict(source=R,cell=f'{k}d{d}',weight=w))
  assert len(seen)==plan[f'{k}d{d}']
  results[f'{k}d{d}']=dict(total=len(seen),stats=dict(stats),source_sha256=digest.hexdigest());print(k,d,results[f'{k}d{d}'],flush=True)
 rec=dict(cells=results,total=total,exceptions=len(exceptions),hits=len(hits),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=2)
 (H/'lower_check.json').write_text(json.dumps(rec,indent=2)+'\n');(H/'lower_exceptions.json').write_text(json.dumps(exceptions,separators=(',',':'))+'\n');(H/'lower_hits.json').write_text(json.dumps(hits,separators=(',',':'))+'\n');print(rec)
