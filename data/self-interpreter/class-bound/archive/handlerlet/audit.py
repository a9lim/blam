import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'jn'))
import dbn as d
import json,collections

def tup(t):return tuple(tup(x) if isinstance(x,list) else x for x in t)
def step(t):
 if t[0]!='a':return None
 if t[1][0]=='l':return d.beta(t[1][1],t[2])
 u=step(t[1])
 return None if u is None else d.A(u,t[2])
def cert(e):
 Y=tup(e['body']);label=e['probe'];stream=d.Z() if label=='zero' else d.U(int(label))
 t=d.inst(Y,stream)
 target=d.A(d.Kc('r'),d.Kc('j')) if label=='zero' else d.A(d.A(d.Kc('c'),d.U(int(label)-1)),d.Kc('N'))
 req=d.consts_of(target)
 for n in range(25):
  missing=req-d.consts_of(t)
  if missing:return ('missing',n,sorted(missing)[0],t)
  sp=[];h=t
  while h[0]=='a':sp.append(h[2]);h=h[1]
  if h[0]=='k':
   th=target;ta=[]
   while th[0]=='a':ta.append(th[2]);th=th[1]
   if h!=th or len(sp)!=len(ta):return ('head',n,(h[1],len(sp)),t)
  if h[0]=='l' and not sp:return ('lambda',n,None,t)
  u=step(t)
  if u==t:return ('fixed',n,None,t)
  if u is None:break
  t=u
 return ('open',n,None,t)
if __name__=='__main__':
 all=[]
 for q in (1,2,3,4):
  p=H/f'check{q}.json'
  if not p.exists():continue
  r=json.loads(p.read_text())
  for i,e in enumerate(r['exceptions']):
   c=cert(e);all.append(dict(q=q,index=i,kind=c[0],steps=c[1]+1,detail=c[2],reduct=c[3]))
 print(collections.Counter(x['kind'] for x in all))
 for x in [x for x in all if x['kind']=='open'][:5]:print('OPEN',x['q'],x['index'])
 (H/'audit.json').write_text(json.dumps(all,indent=2)+'\n')
