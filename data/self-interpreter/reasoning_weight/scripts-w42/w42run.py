from pathlib import Path
import sys,os,time,subprocess,json,signal,collections,hashlib,csv
from table import rows,closed
from leancheck import rss
P=Path(__file__).resolve().parent
D=P/'w42'
proofs=P/'proofs'
cells=sorted(c for c,h in rows.items() if h[42] and c!=closed)
assert sum(rows[c][42] for c in cells)==210988 and len(cells)==104
def save(path,data):
 tmp=path.with_suffix('.partial');tmp.write_text(json.dumps(data,separators=(',',':')));tmp.replace(path)
def probe(i):
 from count import limit,f
 import generate as g,check as ck,dbn as d,resource,pickle
 limit();start=time.monotonic()
 cell=cells[i];f.K,f.JD=cell[:2];nwant=rows[cell][42]
 assert 0<nwant<=100000
 seen=set();m=collections.Counter();bad=[]
 probes=[(d.Z(),d.A(d.Kc('r'),d.Kc('j')))]+[(d.U(n),d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))) for n in (1,2,3)]
 with (P/f'blocks_{f.K}_{f.JD}_42.pkl').open('rb') as fp:
  while True:
   try:key,n,mult=__import__('pickle').load(fp)
   except EOFError:break
   if f.cell(key)!=cell[2:]:continue
   L,T,b,a,cs,bf,af,t=key;emitted=0
   assert mult==n and (not bf[5] or not t)
   for B in g.gen(b,bf):
    for A in g.gen(a,af):
     for Cs in g.forest(cs,t):
      R=d.A(d.L(B),A)
      for C in Cs:R=d.A(R,C)
      assert ck.weight(R)==42 and R not in seen
      seen.add(R);emitted+=1;term=d.subst(R,0,d.Kc('c'))
      for q,(inp,want) in enumerate(probes):
       try:ok=ck.matches(d.A(term,inp),want,[120])
       except (ck.hc.Cutoff,ck.hc.Cycle,RecursionError) as e:
        bad.append(dict(source=R,cell=cell,q=q,reason=type(e).__name__));break
       if not ok:m[q]+=1;break
      else:
       save(D/'HIT.json',dict(w=42,source=R,cell=cell));raise SystemExit(88)
   assert emitted==mult
 assert len(seen)==nwant==len(bad)+sum(m.values())
 save(D/f'cell{i}.json',dict(cell=cell,total=nwant,mismatch=m,exceptions=bad,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,seconds=time.monotonic()-start))
def supervise(jobs,stage):
 live={};start=time.monotonic()
 def stop(sig,frame):raise SystemExit(128+sig)
 signal.signal(signal.SIGTERM,stop);signal.signal(signal.SIGINT,stop);signal.signal(signal.SIGHUP,stop)
 events=D/(stage+'.jsonl')
 try:
  while live or jobs:
   if (D/'HIT.json').exists():raise RuntimeError('probe survivor')
   while jobs and len(live)<3:
    key,cmd,cap,out=jobs.pop(0)
    fp=(D/(key+'.log')).open('w')
    p=subprocess.Popen(cmd,stdout=fp,stderr=subprocess.STDOUT,cwd=P,env={**os.environ,'PYTHONDONTWRITEBYTECODE':'1','LEAN_PATH':str(proofs)+':'+str(P.parents[2]/'lean/.lake/build/lib/lean')})
    live[p]=(key,fp,time.monotonic(),0,cap,out)
   for p,(key,fp,t0,peak,cap,out) in list(live.items()):
    mem=rss(p.pid);peak=max(peak,mem)
    live[p]=(key,fp,t0,peak,cap,out)
    if peak>cap or time.monotonic()-t0>110:
     p.kill();p.wait()
     with events.open('a') as ef:ef.write(json.dumps(dict(job=key,seconds=time.monotonic()-t0,peak=peak,code='local limit'))+'\n')
     raise RuntimeError((key,'local limit',peak,time.monotonic()-t0))
    code=p.poll()
    if code is not None:
     fp.close();del live[p]
     event=dict(job=key,seconds=time.monotonic()-t0,peak=peak,code=code)
     with events.open('a') as ef:ef.write(json.dumps(event)+'\n')
     if code:raise RuntimeError((key,code,(D/(key+'.log')).read_text()[-1200:]))
     if out:out(key,event)
   time.sleep(.015)
 finally:
  for p in live:
   if p.poll() is None:p.kill()
  for p,(_,fp,*_) in live.items():p.wait();fp.close()
 print(stage,'seconds',round(time.monotonic()-start,2),flush=True)
if __name__=='__main__':
 if sys.argv[1]=='one':probe(int(sys.argv[2]))
 elif sys.argv[1]=='probe':
  if not (D/'start.json').exists():save(D/'start.json',dict(epoch=time.time()))
  order=sorted(range(len(cells)),key=lambda i:-rows[cells[i]][42])
  supervise([(f'probe{i}',[sys.executable,'-B','w42run.py','one',str(i)],905000000,None) for i in order if not (D/f'cell{i}.json').exists()],'probe')
