import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'coord'));import rd
import json

def enc(t,env):
 if t[0]=='V':return '1'*(env.index(t[1])+1)+'0'
 if t[0]=='L':return '00'+enc(t[2],[t[1]]+env)
 return '01'+enc(t[1],env)+enc(t[2],env)
rows=json.loads((H/'sources.json').read_text());opened=json.loads((H/'unary_flow.json').read_text())['opened'];out=[]
for i in opened:
 if i==208:continue
 for n in range(1,9):
  t=rd.parse(rows[i]['source']);u=rd.U(n,'N');closed=('L','c',('L','j',('L','N',('A',t,u))))
  out.append(dict(id=i,n=n,bits=enc(closed,[])))
(H/'unary_probes.json').write_text(json.dumps(out,separators=(',',':'))+'\n');(H/'unary.blc').write_text('\n'.join(x['bits'] for x in out)+'\n');print('probes',len(out))
