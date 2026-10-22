from simplified import *
from run import solve
import signal
class Timeout(Exception):pass
def timeout(*_):raise Timeout()
signal.signal(signal.SIGALRM,timeout)
import argparse
p=argparse.ArgumentParser();p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=60);p.add_argument('--output',default='tertiary.json');a=p.parse_args()
rr=json.loads((HERE/'normal-secondary.json').read_text())['rows'];rr=[x for x in rr if x['kind']=='unknown'][a.start:a.start+a.count];out=[];start=time.monotonic()
for x in rr:
 m=Simplified2Machine(dec(x['bits']))
 signal.setitimer(signal.ITIMER_REAL,2)
 try:r=solve(m)
 except Timeout:r=dict(kind='unknown',reason='two-second-case-limit')
 finally:signal.setitimer(signal.ITIMER_REAL,0)
 r.update(bits=x['bits'],simplifier=2);out.append(r)
 if time.monotonic()-start>90:break
result=dict(start=a.start,seconds=time.monotonic()-start,count=len(out),counts=dict(Counter(x['kind'] for x in out)),rows=out)
(HERE/a.output).write_text(json.dumps(result)+'\n');print({k:v for k,v in result.items() if k!='rows'})
