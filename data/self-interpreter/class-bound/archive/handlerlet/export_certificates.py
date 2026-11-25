import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
H=Path(__file__).resolve().parent

def tup(t):return tuple(tup(x) if isinstance(x,list) else x for x in t)
def lean(t,depth=0,source=False):
 tag=t[0]
 if tag=='v':return f'(.var {t[1]})'
 if tag=='k':
  i=(2 if source else 1) if t[1]=='j' else {'c':0,'N':2,'r':3}[t[1]]
  return f'(.var {depth+i})'
 if tag=='l':return f'(.lam {lean(t[1],depth+1,source)})'
 return f'(.app {lean(t[1],depth,source)} {lean(t[2],depth,source)})'
def lst(xs):return '['+', '.join(lean(tup(x)) for x in xs)+']'
def paths(xs):return '['+', '.join('['+', '.join(map(str,p))+']' for p in xs)+']'

simple={(e['q'],e['index']):e['certificate'] for e in json.loads((H/'loop_audit.json').read_text())}
mixed={(e['q'],e['index']):e['certificate'] for e in json.loads((H/'mixed_audit.json').read_text())}
assert not (simple.keys()&mixed.keys())
manifest=[]
for q in (1,2,3,4):
 r=json.loads((H/f'check{q}.json').read_text())
 s='''import Certificates
namespace Blc.HandlerLet.Q'''+str(q)+'''
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
'''
 for i,e in enumerate(r['exceptions']):
  name=f'r{i}';src='(.lam '+lean(tup(e['body']),source=True)+')'
  s+=f'\ndef {name} : Term := {src}\n'
  z='true' if e['probe']=='zero' else 'false'
  s+=f'theorem reject{i} : ¬ Reader {name} := by\n'
  c=simple.get((q,i))
  if c:
   n=c['steps']+1;kind=c['kind']
   if kind=='missing':
    j={'c':0,'j':1,'N':2,'r':3}[c['variable']]
    s+=f'  exact absent_reduct {z} {n} {j} (by decide) (by decide)\n'
   elif kind=='head':
    j={'c':0,'j':1,'N':2,'r':3}[c['head']]
    s+=f'  exact head_reduct {z} {n} ({j},{c["arity"]}) (by decide) (by decide)\n'
   else:
    assert kind=='loop'
    l=c['loop']
    s+=f'  exact loop_reduct {z} {n} {l["steps"]} {lean(tup(l["core"]))} {lst(l["extra"])} {lst(l["rest"])} (by decide) (by decide) (by decide)\n'
  else:
   c=mixed[(q,i)];kind='mixed';l=c['cycle'];prep=[[]]+c['prep']
   s+=f'  exact mixed_reduct {z} {paths(prep)} {paths(l["paths"])} {lean(tup(l["core"]))} {lst(l["extra"])} {lst(c["rest"])} (by decide) (by decide)\n'
  s+=f'#print axioms reject{i}\n'
  manifest.append(dict(q=q,index=i,theorem=f'Blc.HandlerLet.Q{q}.reject{i}',kind=kind,probe=e['probe']))
 s+=f'\nend Blc.HandlerLet.Q{q}\n'
 (H/f'Exceptions{q}.lean').write_text(s)
(H/'certificates_manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('exported',len(manifest),'certificates in four q modules')
