import sys,json,time,resource,signal,hashlib,importlib.util
from pathlib import Path
sys.dont_write_bytecode=True
H=Path(__file__).resolve().parent;R=H.parent
sys.path.insert(0,str(R/'certgen'))
from flow_probe import cert
from regular import discover,Limit
from portable import portable,check,lean
label,action=sys.argv[1:3];row=next(r for r in json.loads((H/'inventory.json').read_text()) if r['label']==label)
start=time.monotonic();out=dict(label=label,id=row['id'],source=row['source'],action=action)
class Stop(Exception):pass
def timeout(*a):raise Stop('deadline')
signal.signal(signal.SIGALRM,timeout);signal.setitimer(signal.ITIMER_REAL,100)
try:
 t=('A',cert.parse_show(row['source']),cert.law_io(0)[0])
 if action=='legacy':
  sys.path.insert(0,str(R/'rootnarrow/work'));import certsf,certw5
  spec=importlib.util.spec_from_file_location('oldgen',R/'rootnarrow/work/certgen.py');old=importlib.util.module_from_spec(spec);spec.loader.exec_module(old)
  signal.signal(signal.SIGALRM,timeout)
  calls=[0];orig=cert.beta
  def beta(a,b):
   calls[0]+=1
   if calls[0]>30000:raise Stop('beta cap')
   return orig(a,b)
  cert.beta=beta;out['outcomes']={};out['legacy']=None
  for tag,f in [('W5',certw5.w5),('SR',old.certify),('SFprime',certsf.certify),('SF2',certsf.certify2)]:
   signal.setitimer(signal.ITIMER_REAL,.3)
   try:ok=f(t[1],t[2]);out['outcomes'][tag]=ok
   except (Stop,RecursionError,MemoryError) as e:ok=False;out['outcomes'][tag]=str(e)
   finally:signal.setitimer(signal.ITIMER_REAL,0)
   if ok:out['legacy']=tag;break
  out['beta_calls']=calls[0]
 elif action.startswith('discover'):
  _,mode,k=action.split('_');k=int(k)
  r=discover(t,k,cap=45000,seconds=80,mode=mode)
  out.update({a:b for a,b in r.items() if a not in ['nodes','vals','konts','invariant','start']})
  if r['ok']:
   c=portable(r);assert check(c);out['portable_states']=len(c['states']);out['checked']=True
   b=json.dumps(c,separators=(',',':'))+'\n';p=H/(label+'.certificate.json');p.write_text(b)
   out['sha256']=hashlib.sha256(b.encode()).hexdigest()
   (H/(label+'.lean')).write_text(lean(c,label))
except (Stop,Limit,RecursionError,MemoryError) as e:out.update(ok=False,reason=str(e))
out.update(seconds=time.monotonic()-start,peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=1)
(H/(label+'.'+action+'.json')).write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({k:v for k,v in out.items() if k!='source'}))
