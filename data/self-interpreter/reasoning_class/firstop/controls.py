import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'coord'))
import rd,json
v=r'(\u. s (\q. c) (s s u))'
sources=[r'\s. s I '+v+' j',r'\s. s (s (\b t. b K)) '+v+' j']
results=[]
for src in sources:
 ok,info=rd.check(src,nmax=8,verbose=False);assert ok
 results.append({'source':src,'nmax':8,'pass':ok,'weight':info[0]})
q=r'(\a.a)'
short=rd.parse(r'\s. s (s '+q+r') j')
long=rd.parse(r'\s. s (\b t. '+q+r' b t b t) j')
assert rd.weight(long)[0]-rd.weight(short)[0]==18
r={'readers':results,'identity_prices':{'short':rd.weight(short)[0],'expanded':rd.weight(long)[0]},'note':'These are reader-level controls, not a full interpreter battery.'}
(H/'controls.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r,indent=2))
