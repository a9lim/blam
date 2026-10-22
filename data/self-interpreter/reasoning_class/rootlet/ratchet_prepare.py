import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import audit as a
import dbn as d
import json
es=json.loads((H/'boundary_check.json').read_text())['exceptions'];ids=json.loads((H/'boundary_longhead.json').read_text())['opened']
def close(t,dep=0):
 if t[0]=='k':return d.V(dep+{'c':0,'j':1,'N':2,'r':3}[t[1]])
 if t[0]=='v':return t
 if t[0]=='l':return d.L(close(t[1],dep+1))
 return d.A(close(t[1],dep),close(t[2],dep))
def bits(t):
 if t[0]=='v':return '1'*(t[1]+1)+'0'
 if t[0]=='l':return '00'+bits(t[1])
 return '01'+bits(t[1])+bits(t[2])
rows=[]
for i in ids:
 R=a.tup(es[i]['source']);t=d.A(d.subst(R,0,d.Kc('c')),d.Z());z=close(t)
 for _ in range(4):z=d.L(z)
 rows.append(dict(index=i,bits=bits(z),term=z))
(H/'ratchet_inputs.txt').write_text('\n'.join(x['bits'] for x in rows)+'\n')
(H/'ratchet_inputs.json').write_text(json.dumps(rows)+'\n');print('prepared',len(rows))
