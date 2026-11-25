import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import loop_audit as la,audit as ad,dbn as d
import json,collections
rows=[];opens=[]
for cell in (1,2,3,4,'zero'):
 es=json.loads((H/('linear_zero_check.json' if cell=='zero' else f'linear_hole_check{cell}.json')).read_text())['exceptions']
 for i,e in enumerate(es):
  R=ad.tup(e['source']);z=e['probe']=='zero'
  target=d.A(d.Kc('r'),d.Kc('j')) if z else d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N'))
  cert=la.cert(d.A(d.subst(R,0,d.Kc('c')),d.Z() if z else d.U(1)),target)
  if cert:rows.append(dict(cell=cell,index=i,certificate=cert))
  else:opens.append((cell,i,d.show(R,['c'])))
r=dict(certificates=rows,opened=opens,kinds=dict(collections.Counter(x['certificate']['kind'] for x in rows)))
(H/'linear_certificates.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps({k:v for k,v in r.items() if k!='certificates'},indent=2))
