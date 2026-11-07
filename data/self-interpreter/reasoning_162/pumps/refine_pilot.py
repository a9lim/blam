from grammar import *
old=json.loads((HERE/'grammar-context2.json').read_text())['rows'];out=[];start=time.monotonic()
for x in old:
 if x['kind']=='grammar':continue
 m=Machine(dec(x['bits']))
 for pr,stk,cap in [(1,6,10000),(2,4,10000),(2,6,20000),(3,6,20000)]:
  r=search(m,precision=pr,stack=stk,cap=cap)
  if r.get('kind')=='grammar':break
 out.append(dict(bits=x['bits'],precision=pr,stack=stk,**r))
 if time.monotonic()-start>90:break
print('seconds',time.monotonic()-start,Counter(x['kind'] for x in out));print(out[:15])
(HERE/'grammar-refined-pilot.json').write_text(json.dumps(out)+'\n')
