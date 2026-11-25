from flow_probe import inputs,cert
from aam import discover,Limit
import time,json
from pathlib import Path
out=[];begin=time.monotonic()
for name,s in inputs():
    attempts=[]
    for k,w in [(0,6),(1,6),(2,6),(3,8)]:
        try:r=discover(cert.parse_show(s),k,w,seconds=1)
        except Limit as e:r={'ok':False,'reason':str(e),'k':k,'width':w}
        r={a:b for a,b in r.items() if a not in ('nodes','store','invariant','start')}
        attempts.append(r)
        if r['ok']:break
    out.append(dict(id=name,source=s,attempts=attempts));print(name,r,flush=True)
Path(__file__).with_suffix('.json').write_text(json.dumps(out,indent=2))
print('seconds',time.monotonic()-begin)
