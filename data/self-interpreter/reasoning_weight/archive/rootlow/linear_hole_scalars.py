import json,collections
from pathlib import Path
rows=[]
for f in range(6):
 for b in range(6):
  for cc in range(6):
   for M in range(1,12):
    if (f+3)*M<7+b or f*(M+1)+cc<4:continue
    for L in range(max(3,M+2),12):
     for V in range(5+f+b+cc,12):
      for T in range(M+b,46):
       w=2*L+4*V+T
       if w<=45:rows.append((f,b,cc,M,L,V,T,w))
r=dict(profiles=len(rows),rows=rows,byf=dict(collections.Counter(x[0] for x in rows)))
Path(__file__).with_suffix('.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps({k:v for k,v in r.items() if k!='rows'},indent=2))
