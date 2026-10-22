import sys,json,time,resource,hashlib
from pathlib import Path
from flow_probe import inputs,cert
from regular import discover,Limit
from portable import portable,lean
H=Path(__file__).resolve().parent
name=sys.argv[1];mode=sys.argv[2];k=int(sys.argv[3]);label=sys.argv[4]
s=dict(inputs())[name];t=('A',cert.parse_show(s),cert.law_io(0)[0]);begin=time.monotonic()
try:r=discover(t,k,cap=45000,seconds=90,mode=mode)
except Limit as e:r={'ok':False,'reason':str(e)}
result={a:b for a,b in r.items() if a not in ('nodes','vals','konts','invariant','start')}
if r['ok']:
    c=portable(r);(H/(label+'.json')).write_text(json.dumps(c,separators=(',',':'))+'\n')
    (H/(label+'.lean')).write_text(lean(c,label))
    result['portable_states']=len(c['states']);result['portable_edges']=sum(map(len,c['hints']))
    result['certificate_sha256']=hashlib.sha256((H/(label+'.json')).read_bytes()).hexdigest()
result.update(id=name,source=s,label=label,mode=mode,k=k,seconds=time.monotonic()-begin,
              peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss,threads=1)
(H/(label+'.result.json')).write_text(json.dumps(result,indent=2))
print(json.dumps(result))
