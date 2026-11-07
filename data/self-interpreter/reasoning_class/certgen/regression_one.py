import sys,json,time,resource
from pathlib import Path
from flow_probe import cert
from regular import discover,Limit
from portable import portable
H=Path(__file__).resolve().parent
row=json.loads(sys.stdin.read());t=('A',cert.parse_show(row['source']),cert.law_io(0)[0]);attempts=[];budget=80000;begin=time.monotonic()
configs=[(sys.argv[1],int(sys.argv[2]))] if len(sys.argv)>2 else [('site',0),('site',1),('site',2),('lambda',2),('arg',1),('site',4)]
for mode,k in configs:
 if budget<2000:break
 cap=min(45000 if len(configs)==1 else 12000,budget//2)
 try:r=discover(t,k,cap=cap,seconds=8,mode=mode)
 except Limit as e:r={'ok':False,'reason':str(e),'work':cap+1,'states':0}
 budget-=r['work']+r['states']
 a={x:y for x,y in r.items() if x not in ('nodes','vals','konts','invariant','start')};a.update(mode=mode,k=k);attempts.append(a)
 if r['ok']:
  c=portable(r);a['portable_states']=len(c['states']);break
row.update(new_ok=attempts[-1]['ok'],attempts=attempts,seconds=time.monotonic()-begin,
           peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
print(json.dumps(row))
