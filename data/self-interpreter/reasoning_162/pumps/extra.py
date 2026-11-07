from run import *
import argparse
p=argparse.ArgumentParser();p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=1000);p.add_argument('--output',default='extra.json');a=p.parse_args()
rr=json.loads((HERE/'normalization.json').read_text())['rows'];known={b for b,_,nf in rows() if nf};rr=sorted({x['reduct'] for x in rr}-known)[a.start:a.start+a.count];out=[];start=time.monotonic()
for bits in rr:
 m=Machine(dec(bits));r=solve(m);r['bits']=bits;out.append(r)
 if time.monotonic()-start>90:break
result=dict(start=a.start,seconds=time.monotonic()-start,count=len(out),counts=dict(Counter(x['kind'] for x in out)),rows=out)
(HERE/a.output).write_text(json.dumps(result)+'\n');print({k:v for k,v in result.items() if k!='rows'})
