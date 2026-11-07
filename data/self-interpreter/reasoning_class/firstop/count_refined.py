import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import importlib.util
spec=importlib.util.spec_from_file_location('firstopcount',H/'count.py');ct=importlib.util.module_from_spec(spec);spec.loader.exec_module(ct)
from collections import defaultdict
import json,time,signal,resource
signal.alarm(100);start=time.monotonic();out=defaultdict(int)
for (t,m),(a,ka,b,kd,p,tc),num in ct.blocks():
 F,L,c=ka
 if L==0:
  if (a,ka) not in ((6,(2,0,0)),(10,(3,0,0))):continue
  num//=ct.A(a,0,2)[ka] # one source in either flat normal representative
 out[t,m]+=num
r={'cells':{f'{t}:{m}':n for (t,m),n in sorted(out.items())},'base_total':sum(out.values()),'all_pending_splits':sum((t+1)*n for (t,m),n in out.items()),'seconds':time.monotonic()-start,'rss':resource.getrusage(resource.RUSAGE_SELF).ru_maxrss}
(H/'count_refined.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
