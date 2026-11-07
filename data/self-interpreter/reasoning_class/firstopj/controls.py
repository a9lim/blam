import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,time
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'coord'));import rd
controls=[r'\s. s I (\u. s (\q. c) (s s u)) j',r'\s. s ((\x. \b. \r. s I (\u. s (\q. c) (s s u)) x) (s K j (s s s)))']
start=time.monotonic();out=[]
for s in controls:
 ok,price=rd.check(s,nmax=8,verbose=False);assert ok;out.append(dict(source=s,ok=ok,price=price))
(H/'controls.json').write_text(json.dumps(dict(controls=out,seconds=time.monotonic()-start),indent=2)+'\n');print(json.dumps(out,indent=2))
