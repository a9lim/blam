import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as ma
import json,time,signal,resource
signal.alarm(110);start=time.monotonic();out=[];opened=[]
es=json.loads((H/'boundary_check.json').read_text())['exceptions']
ids=json.loads((H/'boundary_audit.json').read_text())['opened']
for i in ids:
 R=ma.la.old.tup(es[i]['source']);t=ma.D.A(ma.D.subst(R,0,ma.D.Kc('c')),ma.D.Z())
 c=ma.cert(t)
 if c is None:opened.append(i)
 else:out.append(dict(index=i,certificate=c))
rec=dict(certificates=out,opened=opened,expanded_states=ma.COUNT,seconds=time.monotonic()-start,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'boundary_mixed.json').write_text(json.dumps(rec)+'\n');print({k:v for k,v in rec.items() if k!='certificates'})
