from flow_probe import inputs,cert
from regular import discover,Limit
import time,json,sys,resource
resource.setrlimit(resource.RLIMIT_CPU,(110,110))
name=sys.argv[1]; k=int(sys.argv[2]);s=dict(inputs())[name]
t=('A',cert.parse_show(s),cert.law_io(0)[0]);begin=time.monotonic()
try:r=discover(t,k,cap=45000,seconds=10,mode=sys.argv[3] if len(sys.argv)>3 else "site")
except Limit as e:r={'ok':False,'reason':str(e)}
r={a:b for a,b in r.items() if a not in ('nodes','vals','konts','invariant','start')}
r.update(id=name,k=k,seconds=time.monotonic()-begin)
print(json.dumps(r))
