"""Source eta redex audit only; NOT used in the certified exclusion counts.
The proposed full-law preservation lemma is handwritten, not kernel checked.
"""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import boundary as b
import dbn as d
sys.path.insert(0,str(H.parent/'handlerlet'))
import audit as a
import json,collections

def first(t,p=(),dep=0):
 if t[0]=='l':
  u=t[1]
  if u[0]=='a' and u[2]==d.V(0) and not d.free_in(u[1],0):return p,dep,d.shift(u[1],-1)
  return first(u,p+(0,),dep+1)
 if t[0]=='a':return first(t[1],p+(1,),dep) or first(t[2],p+(2,),dep)
 return None

def replace(t,p,s):
 if not p:return s
 h,*ps=p
 if h==0:return d.L(replace(t[1],ps,s))
 if h==1:return d.A(replace(t[1],ps,s),t[2])
 return d.A(t[1],replace(t[2],ps,s))

rows=json.loads((H/'remaining.json').read_text());out=[];counts=collections.Counter()
for cell,es in rows.items():
 for e in es:
  R=a.tup(e['source']);hit=first(R)
  if hit:
   p,dep,P=hit;U=replace(R,p,P);saving=b.weight(R)-b.weight(U)
   assert saving==6+b.free(P) and saving>=6
   counts[cell]+=1;out.append(dict(cell=cell,index=e['exception_index'],path=p,weight=e['weight'],saving=saving,reduct_weight=b.weight(U),reduct=U))
(H/'eta_inventory.json').write_text(json.dumps(dict(counts=dict(counts),total=len(out),candidates=out),indent=2)+'\n');print(dict(counts),'total',len(out))
