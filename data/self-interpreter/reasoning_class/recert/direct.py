import sys,json,time,resource
from pathlib import Path
H=Path(__file__).resolve().parent;sys.path.insert(0,str(H.parent/'certgen'))
from flow_probe import cert
from exact import run
r=next(x for x in json.loads((H/'inventory.json').read_text()) if x['label']=='R322')
t=cert.parse_show(r['source']);I=('L',('V',0))
def fill(t):
 if t[0]=='C' and t[1].startswith('_'):return I
 if t[0]=='L':return ('L',fill(t[1]))
 if t[0]=='A':return ('A',fill(t[1]),fill(t[2]))
 return t
def wh(t):
 for n in range(10000):
  h,args=cert.spine(t)
  if h[0]!='L' or not args:return n,t
  t=cert.mk(cert.beta(h,args[0]),args[1:])
  assert cert.size(t)<100000
 raise RuntimeError('cap')
def lean(t):
 if t[0]=='V':return f'(.var {t[1]})'
 if t[0]=='C':raise ValueError(t)
 if t[0]=='L':return f'(.lam {lean(t[1])})'
 return f'(.app {lean(t[1])} {lean(t[2])})'
start=time.monotonic();filled=fill(t);n,nf=wh(filled);assert nf==I
result=dict(id=r['id'],source=r['source'],fill='all holes I',beta_steps_to_I=n,result='I',opaque_closure_run=run(('A',t,cert.law_io(0)[0]),cap=20000),seconds=time.monotonic()-start,peak_rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
(H/'Direct322.json').write_text(json.dumps(result,indent=2)+'\n')
(H/'Direct322.lean').write_text('''import Blc.SelfintClass
import Blc.SelfintProbe
namespace Recert.Direct322
open Blc Blc.Term Blc.SelfintClass Blc.SelfintProbe
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
'''+f'def source : Term := {lean(filled)}\ntheorem reduces : headSteps {n} source = some (.lam (.var 0)) := by decide\ntheorem probe : headSteps {n+1} (.app source Z) = some Z := by decide\ntheorem solvable : Solvable (.app source Z) := ⟨{n+1},Z,probe,rfl⟩\n#print axioms reduces\n#print axioms solvable\nend Recert.Direct322\n')
print({k:v for k,v in result.items() if k not in ['source','opaque_closure_run']})
