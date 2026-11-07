from stopcheck import compare
from simplified import *
PROBES=[('0000110','000000110'),('0100100010','000010'),('00011010','0000011010'),('00000110110','0000000110110'),('0001001010','000010'),('000010','00000010'),('0100100000110','000000110')]
if __name__=='__main__':
 import argparse
 p=argparse.ArgumentParser();p.add_argument('input');p.add_argument('--output',default='other-probes.json');p.add_argument('--start',type=int,default=0);p.add_argument('--count',type=int,default=1000);a=p.parse_args()
 rr=json.loads((HERE/a.input).read_text())['rows'];rr=[r for r in rr if r['kind']=='unknown'][a.start:a.start+a.count];out=[];start=time.monotonic()
 for x in rr:
  m=Machine(dec(x['bits']));r={}
  for code,w in PROBES:
   r=compare(m,m.root(code),ap(('r',0),m.compile(dec(w),[]),('r',1)),limit=350)
   if r['kind']=='wrong':r['probe']=code;break
  if r['kind']!='wrong':r=dict(kind='unknown')
  r['bits']=x['bits'];out.append(r)
  if time.monotonic()-start>95:break
 result=dict(seconds=time.monotonic()-start,count=len(out),counts=dict(Counter(x['kind'] for x in out)),rows=out)
 (HERE/a.output).write_text(json.dumps(result)+'\n');print({k:v for k,v in result.items() if k!='rows'})
