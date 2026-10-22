import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as ma,audit as a,dbn as d
import json,time,signal
start=time.monotonic();signal.alarm(110)
inputs=json.loads((H/'ground_inputs.json').read_text());ids=set(json.loads((H/'grid5.json').read_text())['opened']);rows=[]
def bits(t):
 if t[0]=='v':return '1'*(t[1]+1)+'0'
 if t[0]=='l':return '00'+bits(t[1])
 return '01'+bits(t[1])+bits(t[2])
for x in inputs:
 if x['index'] not in ids:continue
 t=a.tup(x['term']);prep=[]
 for k in range(4):
  t,ps=ma.affine(t);prep+=ps
  if d.size(t)<200:rows.append(dict(index=x['index'],stage=k,term=t,bits=bits(t),prep=prep.copy()))
  u=a.step(t)
  if u is None:break
  p=[];h=t
  while h[0]=='a' and h[1][0]!='l':p.append(1);h=h[1]
  t=u;prep.append(p)
(H/'preprocessed.json').write_text(json.dumps(rows)+'\n');(H/'preprocessed.txt').write_text('\n'.join(x['bits'] for x in rows)+'\n');print('prepared',len(rows),'seconds',time.monotonic()-start)
