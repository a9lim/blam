from flow_probe import inputs,cert
from regular import discover,Limit
import time,json,sys
name=sys.argv[1];n=int(sys.argv[2]);k=int(sys.argv[3]);mode=sys.argv[4]
t=('A',cert.parse_show(dict(inputs())[name]),cert.law_io(0)[0]);begin=time.monotonic()
for _ in range(n):
    h,args=cert.spine(t)
    if h[0]!='L' or not args:break
    t=cert.mk(cert.beta(h,args[0]),args[1:])
    if cert.size(t)>800:raise SystemExit('prefix tree cap')
try:r=discover(t,k,cap=45000,seconds=10,mode=mode)
except Limit as e:r={'ok':False,'reason':str(e)}
r={a:b for a,b in r.items() if a not in ('nodes','vals','konts','invariant','start')}
r.update(id=name,k=k,mode=mode,prefix=n,termsize=cert.size(t),seconds=time.monotonic()-begin)
print(json.dumps(r))
