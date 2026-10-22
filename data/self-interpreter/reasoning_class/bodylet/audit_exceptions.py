import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import loop_audit as au
import audit as old
import dbn as d
import json,time,signal,resource,threading,os,collections
start=time.monotonic();signal.alarm(112)
def watch():
 while True:
  time.sleep(.1)
  if time.monotonic()-start>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
threading.Thread(target=watch,daemon=True).start()
out=[];unknown=[]
for p in sorted(H.glob('check-*.json')):
 data=json.loads(p.read_text())
 for i,e in enumerate(data['exceptions']):
  assert e['probe'] in ('zero','1')
  Y=old.tup(e['body']);z=e['probe']=='zero'
  target=d.A(d.Kc('r'),d.Kc('j')) if z else d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N'))
  cert=au.cert(d.inst(Y,d.Z() if z else d.U(1)),target)
  if cert is not None and cert['kind'] in ('missing','head','loop'):out.append(dict(file=p.name,index=i,certificate=cert))
  else:unknown.append(dict(file=p.name,index=i,certificate=cert))
(H/'audit.json').write_text(json.dumps(out,indent=2)+'\n');(H/'audit_open.json').write_text(json.dumps(unknown,indent=2)+'\n')
print(dict(certificates=len(out),kinds=dict(collections.Counter(x['certificate']['kind'] for x in out)),open=len(unknown),seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss))
print('open kinds',collections.Counter(str(x['certificate'] and x['certificate']['kind']) for x in unknown))
