"""Finite scalar profiles, not a lambda-term enumeration."""
import json
from pathlib import Path
out=[]
# j-free A and linear root: f=#c(A), M=depth of sole x, b=#c(B), hB=#j(B).
for d in (0,1):
 for f in range(2,10):
  for M in range(1,15):
   for b in range(10):
    for hB in range(2):
     if hB and not d:continue
     if (f-1)*M<7+b+4*hB:continue
     # A contains a lambda, independently of the M ancestors of x in B.
     Lmin=max(3,M+2)
     # k=1, three other owned leaves, f+b c leaves, one j.
     Vmin=5+f+b
     Tmin=M+b
     wmin=2*Lmin+4*Vmin-4+Tmin+4*d
     if wmin<=45:out.append(dict(d=d,f=f,M=M,b=b,jB=hB,Lmin=Lmin,Vmin=Vmin,Tmin=Tmin,wmin=wmin))
print(json.dumps(out,indent=2))
Path(__file__).with_suffix('.json').write_text(json.dumps(out,indent=2)+'\n')
