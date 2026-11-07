from eval_grammar import *
from simplified import SimplifiedMachine, Simplified2Machine
from other_probes import PROBES
from stopcheck import compare
import signal,argparse
class Timeout(Exception):pass
def timedout(*_):raise Timeout()
signal.signal(signal.SIGALRM,timedout)
p=argparse.ArgumentParser();p.add_argument('--input',default='hard-input.json');p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=32);p.add_argument('--output',default='hard.json');a=p.parse_args()
rr=json.loads((HERE/a.input).read_text())['rows'][a.start:a.start+a.count];out=[];start=time.monotonic()
for x in rr:
 r=dict(kind='unknown');m=Machine(dec(x['bits']))
 for mode,pr in [(0,0),(1,0),(1,1),(2,0),(2,1)]:
  m=([Machine,SimplifiedMachine,Simplified2Machine][mode])(dec(x['bits']))
  signal.setitimer(signal.ITIMER_REAL,2)
  try:
   q=search_eval(m,precision=pr,cap=50000)
   if q['kind']=='eval-grammar':
    r=q
    if mode==1:r['simplified']=True
    if mode==2:r['simplifier']=2
    break
  except (Timeout,RecursionError):pass
  finally:signal.setitimer(signal.ITIMER_REAL,0)
 if r['kind']=='unknown':
  m=Machine(dec(x['bits']))
  signal.setitimer(signal.ITIMER_REAL,2)
  try:
   for code,w in [('0010','000010')]+PROBES:
    q=compare(m,m.root(code),ap(('r',0),m.compile(dec(w),[]),('r',1)),limit=1000)
    if q['kind']=='wrong':r=q;r['probe']=code;break
  except (Timeout,RecursionError):pass
  finally:signal.setitimer(signal.ITIMER_REAL,0)
 r['bits']=x['bits'];out.append(r)
 result=dict(start=a.start,seconds=time.monotonic()-start,count=len(out),counts=dict(Counter(x['kind'] for x in out)),rows=out)
 (HERE/a.output).write_text(json.dumps(result)+'\n')
 if time.monotonic()-start>88:break
print({k:v for k,v in result.items() if k!='rows'})
