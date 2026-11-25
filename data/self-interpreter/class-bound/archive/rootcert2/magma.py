"""Finite invariant models for the single H2 combinator equation."""
import itertools,time,json
from pathlib import Path
H=Path(__file__).resolve().parent
start=time.monotonic();tested=0;found=[]
# 0 represents any inert external head and is left absorbing. A is 1.
for tail in itertools.product(range(3),repeat=6):
 tab=(0,0,0)+tail;tested+=1
 op=lambda x,y:tab[3*x+y]
 if any(op(op(1,x),y)!=op(x,op(y,op(y,x))) for x in range(3) for y in range(3)):continue
 allowed={0,1,*[op(1,x) for x in range(3)]}
 a=1;b=op(a,a)
 cores=[op(op(a,b),a),op(b,b),op(op(b,a),a)]
 vals=[op(t,0) for t in cores]
 if any(v not in allowed for v in vals):found.append(dict(table=tab,values=vals,allowed=sorted(allowed)))
print('tables',tested,'found',found[:5],'seconds',time.monotonic()-start)
(H/'magma.json').write_text(json.dumps(dict(tested=tested,models=found,seconds=time.monotonic()-start))+'\n')
