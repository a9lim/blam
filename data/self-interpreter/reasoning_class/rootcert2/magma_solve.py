import sys,time,json,signal,resource
from pathlib import Path
H=Path(__file__).resolve().parent
N=int(sys.argv[1]) if len(sys.argv)>1 else 4
A=1;BAD=N-1;VARS=N*N;START=time.monotonic();STATES=0
O=lambda x,y:(x,y)
B=O(A,A);cores=[O(O(A,B),A),O(B,B),O(O(B,A),A)]
EQS=[(O(O(A,x),y),O(x,O(y,O(y,x)))) for x in range(N) for y in range(N)]
EQS.extend((O(c,0),BAD) for c in cores)

def eval(e,table):
 if isinstance(e,int):return e,None
 x,_=eval(e[0],table);y,_=eval(e[1],table)
 if x is None or y is None:return None,None
 k=x*N+y;v=table[k]
 return (v,None) if v is not None else (None,k)
def search(table):
 global STATES
 STATES+=1
 if STATES>95000 or time.monotonic()-START>105:raise TimeoutError()
 while True:
  changed=False
  for l,r in EQS:
   x,xi=eval(l,table);y,yi=eval(r,table)
   if x is not None and y is not None:
    if x!=y:return None
   elif x is not None and yi is not None:
    if yi//N==1 and x==BAD:return None
    table[yi]=x;changed=True
   elif y is not None and xi is not None:
    if xi//N==1 and y==BAD:return None
    table[xi]=y;changed=True
  if not changed:break
 # Prefer active unresolved cells.
 cells=[]
 for l,r in EQS:
  for e in (l,r):
   _,k=eval(e,table)
   if k is not None:cells.append(k)
 if not cells:
  if None not in table:return table
  cells=[table.index(None)]
 from collections import Counter
 k=Counter(cells).most_common(1)[0][0]
 for v in range(N):
  if k//N==1 and v==BAD:continue
  t=table.copy();t[k]=v;sol=search(t)
  if sol is not None:return sol
 return None
signal.alarm(112)
try:sol=search([0]*N+[None]*(N*(N-1)));status='sat' if sol else 'unsat'
except TimeoutError:sol=None;status='cap'
r=dict(n=N,table=sol,status=status,states=STATES,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss);(H/f'magma{N}.json').write_text(json.dumps(r)+'\n');print(r)
