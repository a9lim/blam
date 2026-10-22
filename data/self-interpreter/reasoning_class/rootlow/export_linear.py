import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import json,hashlib
import generate as g
sys.path.insert(0,str(H.parent/'handlerlet'))
import audit as ad

def lean(t,dep=0):
 if t[0]=='v':return f'(.var {t[1]})'
 if t[0]=='k':return f'(.var {dep+dict(c=0,j=1,N=2,r=3)[t[1]]})'
 if t[0]=='l':return f'(.lam {lean(t[1],dep+1)})'
 return f'(.app {lean(t[1],dep)} {lean(t[2],dep)})'
def ls(xs):return '['+', '.join(lean(ad.tup(t)) for t in xs)+']'
manifest=[];rows=list(g.sources('Cs'));assert len(rows)==1236
for off in range(0,len(rows),500):
 name=f'LinearNoHole{off//500}'
 code=f'import Blc.SelfintHelperPair\nnamespace Blc.RootLow.{name}\nopen Term SelfintClass SelfintHelperPair\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
 for i,(R,meta) in enumerate(rows[off:off+500],off):
  code+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := rejectsZero_sound (by decide)\n#print axioms reject{i}\n'
  manifest.append(dict(cell='nohole',index=i,module=name,theorem=f'Blc.RootLow.{name}.reject{i}',source_sha256=hashlib.sha256(repr(R).encode()).hexdigest()))
 code+=f'\nend Blc.RootLow.{name}\n';(H/f'{name}.lean').write_text(code)
cs=json.loads((H/'linear_certificates.json').read_text());assert not cs['opened']
code='import Certificates\nnamespace Blc.HandlerLet.RootLowLinear\nopen Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost\nset_option maxRecDepth 10000\nset_option maxHeartbeats 2000000\n'
for q,c in enumerate(cs['certificates']):
 e=json.loads((H/('linear_zero_check.json' if c['cell']=='zero' else f'linear_hole_check{c["cell"]}.json')).read_text())['exceptions'][c['index']]
 R=ad.tup(e['source']);cert=c['certificate'];z='true' if e['probe']=='zero' else 'false'
 code+=f'\ndef r{q} : Term := {lean(R)}\ntheorem reject{q} : ¬ Reader r{q} := by\n'
 if cert['kind']=='head':
  j=dict(c=0,j=1,N=2,r=3)[cert['head']]
  code+=f'  exact head_reduct {z} {cert["steps"]} ({j},{cert["arity"]}) (by decide) (by decide)\n'
 elif cert['kind']=='loop':
  l=cert['loop']
  code+=f'  exact replay_loop {z} [] {cert["steps"]} {l["steps"]} {lean(ad.tup(l["core"]))} {ls(l["extra"])} {ls(l["rest"])} (by decide) (by decide) (by decide)\n'
 else:raise RuntimeError(cert)
 code+=f'#print axioms reject{q}\n'
 manifest.append(dict(cell=c['cell'],index=c['index'],module='LinearExceptions',theorem=f'Blc.HandlerLet.RootLowLinear.reject{q}',source_sha256=hashlib.sha256(repr(R).encode()).hexdigest()))
code+='\nend Blc.HandlerLet.RootLowLinear\n';(H/'LinearExceptions.lean').write_text(code)
(H/'linear_manifest.json').write_text(json.dumps(manifest,indent=2)+'\n')
print('exported',len(manifest),'theorems')
