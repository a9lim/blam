"""Coefficient counts only; no source terms or law probes are constructed."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
import grammar as f
import collections,json,time,resource,signal,threading,os
START=time.monotonic()
def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start()
f.K,f.JD=map(int,sys.argv[1:3])
base=collections.Counter();cut=collections.Counter();rem=collections.Counter()
profiles=collections.Counter()
for key,n in f.roots():
 L,T,b,a,cs,bf,af,t=key
 if not t or not bf[5]:continue
 cell=f.cell(key);base[cell]+=n
 uses=(f.K,)+bf[5][:t]
 if any(x>y for x,y in zip(uses,uses[1:])):cut[cell]+=n
 else:rem[cell]+=n;profiles[(cell,uses)]+=n
rec=dict(k=f.K,depth=f.JD,baseline={str(k):v for k,v in base.items()},exchange_cut={str(k):v for k,v in cut.items()},residual={str(k):v for k,v in rem.items()},profiles={str(k):v for k,v in profiles.items()},seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/f'prefix_{f.K}_{f.JD}.json').write_text(json.dumps(rec,indent=2)+'\n')
print(json.dumps({k:v for k,v in rec.items() if k!='profiles'}))
