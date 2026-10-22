"""Bounded recheck of one original cut-off; no old result is assumed."""
import sys,json,signal,time,resource
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent;W=H.parent/'rootnarrow/work'
sys.path.insert(0,str(W));sys.path.insert(0,str(H.parent/'shared'))
import cert,certw5,certsf
# Avoid this lane's module name colliding with the old certgen.
import importlib.util
spec=importlib.util.spec_from_file_location('oldcertgen',W/'certgen.py');old=importlib.util.module_from_spec(spec);spec.loader.exec_module(old)
name=sys.argv[1];idx=int(sys.argv[2]);s=json.loads((W/name).read_text())['cut'][idx][1]
class Stop(Exception):pass
calls=0;orig=cert.beta
def beta(a,b):
 global calls
 calls+=1
 if calls>35000:raise Stop('beta-state cap')
 if time.monotonic()>deadline:raise Stop('time')
 return orig(a,b)
cert.beta=beta
R=cert.parse_show(s);inp=cert.law_io(0)[0];found=[];outcomes={};begin=time.monotonic()
for tag,fn in [('W5',lambda:certw5.w5(R,inp)),('SR',lambda:old.certify(R,inp)),("SFprime",lambda:certsf.certify(R,inp)),('SF2',lambda:certsf.certify2(R,inp))]:
 deadline=time.monotonic()+.2
 try:res=fn();outcomes[tag]=res
 except (Stop,RecursionError) as e:outcomes[tag]=str(e);res=False

 if res:found.append(tag);break
print(json.dumps(dict(id=f'{name}:{idx}',source=s,legacy=found,outcomes=outcomes,work=calls,seconds=time.monotonic()-begin)))
