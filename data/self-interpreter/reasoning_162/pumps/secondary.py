from simplified import *
from run import solve
if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=150);p.add_argument('--output',default='secondary.json');a=p.parse_args()
 rr=json.loads((HERE/'normal-current.json').read_text())['rows'];rr=[x for x in rr if x['kind']=='unknown'][a.start:a.start+a.count];out=[];start=time.monotonic()
 for x in rr:
  m=SimplifiedMachine(dec(x['bits']));r=solve(m);r.update(bits=x['bits'],simplified=True);out.append(r)
  if time.monotonic()-start>90:break
 result=dict(start=a.start,seconds=time.monotonic()-start,count=len(out),counts=dict(Counter(x['kind'] for x in out)),rows=out)
 (HERE/a.output).write_text(json.dumps(result)+'\n');print({k:v for k,v in result.items() if k!='rows'})
