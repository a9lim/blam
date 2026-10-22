import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import loop_audit as la
import audit as old
import dbn as d
import json,time,collections,resource,signal
signal.alarm(110);START=time.monotonic();rows=[];opened=[]
name=sys.argv[1];r=json.loads((H/f'check{name}.json').read_text())
for i,e in enumerate(r['exceptions']):
 R=old.tup(e['source']);assert e['probe']=='zero'
 t=d.A(d.subst(R,0,d.Kc('c')),d.Z());target=d.A(d.Kc('r'),d.Kc('j'))
 c=la.cert(t,target)
 if c is None:opened.append(i)
 else:rows.append(dict(index=i,certificate=c))
rec=dict(certificates=rows,opened=opened,kinds=dict(collections.Counter(x['certificate']['kind'] for x in rows)),seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/f'audit{name}.json').write_text(json.dumps(rec)+'\n');print({k:v for k,v in rec.items() if k not in ('certificates','opened')});print('OPEN',len(opened))
