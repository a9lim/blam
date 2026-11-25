"""Original-source Lean certificates, sharded only after compliant checks."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import audit as ad
import json,hashlib

def lean(t,dep=0):
 if t[0]=='v':return f'(.var {t[1]})'
 if t[0]=='k':return f'(.var {dep+dict(c=0,j=1,N=2,r=3)[t[1]]})'
 if t[0]=='l':return f'(.lam {lean(t[1],dep+1)})'
 return f'(.app {lean(t[1],dep)} {lean(t[2],dep)})'
def ls(xs):return '['+', '.join(lean(ad.tup(t)) for t in xs)+']'
def ps(xs):return '['+', '.join('['+', '.join(map(str,p))+']' for p in xs)+']'
def proof(c,z,prep=[]):
 if c['kind']=='head':
  j=dict(c=0,j=1,N=2,r=3)[c['head']]
  return f'  exact replay_head {z} {ps(prep)} {c["steps"]} ({j},{c["arity"]}) (by decide) (by decide)\n'
 if c['kind']=='missing':
  j=dict(c=0,j=1,N=2,r=3)[c['variable']]
  return f'  exact replay_absent {z} {ps(prep)} {c["steps"]} {j} (by decide) (by decide)\n'
 if c['kind']=='loop':
  l=c['loop'];return f'  exact replay_loop {z} {ps(prep)} {c["steps"]} {l["steps"]} {lean(ad.tup(l["core"]))} {ls(l["extra"])} {ls(l["rest"])} (by decide) (by decide) (by decide)\n'
 raise RuntimeError(c)

def main():
 modules=[];manifest=[]
 for f in sorted(H.glob('cert_4_0_*.json')):
  r=json.loads(f.read_text());es=json.loads((H/r['source_file']).read_text())['exceptions'];rows=r['certificates'];base=f.stem.replace('cert_4_0_','')
  for off in range(0,len(rows),450):
   name=f'Proof4_{base}_{off//450:02d}';modules.append(name)
   s=f'import Certificates\nnamespace Blc.HandlerLet.{name}\nopen Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
   for row in rows[off:off+450]:
    i=row['index'];e=es[i];R=ad.tup(e['source']);assert e['probe'] in ('zero','1')
    z='true' if e['probe']=='zero' else 'false'
    s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n'+proof(row['certificate'],z)+f'#print axioms reject{i}\n'
    manifest.append(dict(file=r['source_file'],index=i,module=name,theorem=f'Blc.HandlerLet.{name}.reject{i}',source_sha256=hashlib.sha256(repr(R).encode()).hexdigest()))
   s+=f'end Blc.HandlerLet.{name}\n';(H/f'{name}.lean').write_text(s)
 (H/'modules.json').write_text(json.dumps(modules)+'\n');(H/'manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n')
 print('modules',len(modules),'theorems',len(manifest))
if __name__=='__main__':main()
