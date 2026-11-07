from eval_grammar import *
from simplified import SimplifiedMachine
import signal,argparse
class Timeout(Exception):pass
def timeout(*_):raise Timeout()
signal.signal(signal.SIGALRM,timeout)
def hasrigid(t,memo):
 i=id(t)
 if i in memo:return memo[i]
 a=t[0]=='r' or (t[0]=='a' and (hasrigid(t[1],memo) or hasrigid(t[2],memo))) or (t[0]=='c' and any(hasrigid(x,memo) for x in t[2]))
 memo[i]=a;return a

def search_prefix(m):
 t=m.root();stk=[];memo={};best={}
 for n in range(121):
  while t[0]=='a':stk.append(t[2]);t=t[1]
  xs=tuple(reversed(stk))
  if n in [12,20,30,45,60,90,120]:
   lengths=sorted(set([2,3,4,5,6,7,8,min(len(xs),12)]))
   if len(xs)<2:lengths=[len(xs)]
   lengths=[k for k in lengths if k<=len(xs)]
   choices=[(hasrigid(ap(t,*xs[:k]),memo),k) for k in lengths]
   for _,k in sorted(choices):
    z=ap(t,*xs[:k])
    for pr in [0,1,2]:
     g=SharedEvalGrammar(m,pr,15000);r=g.run(z);best=r
     if r['kind']=='eval-grammar':return dict(entry=n,prefix=k,precision=pr,shared=True,**r)
  if t[0]!='c' or len(stk)<m.rules[t[1]][0]:return best
  k,b,_,_=m.rules[t[1]];args=tuple(stk.pop() for _ in range(k));t=sub(b,args+t[2])
 return best

if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=15);p.add_argument('--output',default='prefix-hard.json');a=p.parse_args()
 rr=json.loads((HERE/'hard-all.json').read_text())['rows'][a.start:a.start+a.count];out=[];start=time.monotonic()
 for x in rr:
  signal.setitimer(signal.ITIMER_REAL,5)
  try:r=search_prefix(Machine(dec(x['bits'])))
  except (Timeout,RecursionError):r=dict(kind='unknown',reason='five-second-case-limit')
  finally:signal.setitimer(signal.ITIMER_REAL,0)
  if r.get('kind')!='eval-grammar':r=dict(kind='unknown')
  r['bits']=x['bits'];out.append(r)
  result=dict(count=len(out),seconds=time.monotonic()-start,counts=dict(Counter(x['kind'] for x in out)),rows=out)
  (HERE/a.output).write_text(json.dumps(result)+'\n')
  if time.monotonic()-start>90:break
 print({k:v for k,v in result.items() if k!='rows'})
