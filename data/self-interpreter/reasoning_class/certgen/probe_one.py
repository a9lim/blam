from flow_probe import inputs,cert
from aam import discover,Limit
import time,json,sys,resource
resource.setrlimit(resource.RLIMIT_CPU,(110,110))
name=sys.argv[1]; k=int(sys.argv[2]);w=int(sys.argv[3])
s=dict(inputs())[name];t=('A',cert.parse_show(s),cert.law_io(0)[0])
begin=time.monotonic()
try:r=discover(t,k,w,cap=45000,seconds=10)
except Limit as e:r={'ok':False,'reason':str(e)}
r={a:b for a,b in r.items() if a not in ('nodes','store','invariant','start')}
r.update(id=name,k=k,width=w,seconds=time.monotonic()-begin)
print(json.dumps(r))
