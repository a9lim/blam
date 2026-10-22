import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import audit as a, dbn as d
import json
es=json.loads((H/'boundary_check.json').read_text())['exceptions'];ids=json.loads((H/'boundary_longhead.json').read_text())['opened']
def ground(t):
 if t[0]=='k':return d.I
 if t[0]=='v':return t
 if t[0]=='l':return d.L(ground(t[1]))
 return d.A(ground(t[1]),ground(t[2]))
def bits(t):
 if t[0]=='v':return '1'*(t[1]+1)+'0'
 if t[0]=='l':return '00'+bits(t[1])
 return '01'+bits(t[1])+bits(t[2])
rows=[]
for i in ids:
 R=a.tup(es[i]['source']);t=d.A(d.subst(R,0,d.Kc('c')),d.Z());z=ground(t);rows.append(dict(index=i,bits=bits(z),term=z))
(H/'ground_inputs.txt').write_text('\n'.join(x['bits'] for x in rows)+'\n');(H/'ground_inputs.json').write_text(json.dumps(rows)+'\n')
