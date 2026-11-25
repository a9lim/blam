import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from export import lean,ls,ps,proof,ad
import families as f
from families import d,mx
import json,hashlib

def treeproof(atom,t):
 if t==atom:return '.atom'
 assert t[0]=='a'
 return f'(.app {treeproof(atom,t[1])} {treeproof(atom,t[2])})'
def moreproof(R,c):
 prep=c['prep'];kind=c['kind']
 if kind in ('recursor','lark'):
  ns='RootcertRecursor' if kind=='recursor' else 'RootcertLark'
  return f' exact {ns}.reject {ps(prep)} {lean(ad.tup(c["rest"][0]))} {ls(c["rest"][1:])} (by decide)\n'
 if kind=='owl':return f' exact RootcertOwl.reject {ps(prep)} {ls(c["rest"])} (by decide)\n'
 if kind=='grow':return f' exact BodyLetGrow.grow_reduct true {ps(prep)} {ls(c["ws"])} {ls(c["ts"])} {ls(c["ss"])} {ls(c["rest"])} (by decide)\n'
 if kind=='template':
  return (' intro hr\n'+f' have he : betaSteps {ps(prep)} (.app RPLACE Z) = some (spine (BodyLetSpecial.templateState {lean(ad.tup(c["D"]),2)} {lean(ad.tup(c["t"]))}) {ls(c["rest"])}) := by decide\n'+' have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal\n'+' exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩\n')
 if kind=='replicator':
  D=ad.tup(c['D']);A=ad.tup(c['A']);arg=ad.tup(c['arg'])
  return f' exact RootNLReplicator.reject {ps(prep)} {lean(D,1)} {lean(A)} {lean(arg)} {"["+", ".join(lean(ad.tup(q),1) for q in c["qs"])+"]"} {ls(c["rest"])} {treeproof(d.V(0),D)} .atom {treeproof(A,arg)} (by decide)\n'
 assert kind=='simple'
 cert=c['certificate'];typ=cert['kind'];n=cert['steps']
 if typ in ('loop','head','missing'):return proof(cert,'true',prep)
 if typ=='lambda':return f' exact RootNLExtra.replay_lambda {ps(prep)} {n} (by decide)\n'
 assert typ=='arg' and cert['arg_from_right']==0
 t=d.A(d.subst(R,0,d.Kc('c')),d.Z())
 for p in prep:t=mx.rewrite(t,tuple(p))
 for _ in range(n):t=ad.step(t)
 assert t[0]=='a' and t[1]==d.Kc('r');arg=t[2];sub=cert['sub'];m=sub['steps']
 if sub['kind']=='lambda':return f' exact RootNLExtra.zero_arg_lambda {ps(prep)} {n} {m} {lean(arg)} (by decide) (by decide)\n'
 if sub['kind']=='head':
  j=dict(c=0,j=1,N=2,r=3)[sub['head']]
  return f' exact RootNLExtra.zero_arg_head {ps(prep)} {n} {m} {lean(arg)} ({j},{sub["arity"]}) (by decide) (by decide) (by decide)\n'
 l=sub['loop']
 return f' exact RootNLExtra.zero_arg_loop {ps(prep)} {n} {m} {l["steps"]} {lean(arg)} {lean(ad.tup(l["core"]))} {ls(l["extra"])} {ls(l["rest"])} (by decide) (by decide) (by decide) (by decide)\n'

mods=[];manifest=[];items=[]
for typ in ('family','prefix'):
 for p in sorted(H.glob(f'{typ}_4_0_*.json')):
  data=json.loads(p.read_text());es=json.loads((H/data['source_file']).read_text())['exceptions']
  for c in data['certificates']:items.append((data['source_file'],c,es[c['index']]))
for off in range(0,len(items),100):
 name=f'More{off//100:02d}';mods.append(name)
 s=f'import Extras\nimport Grow\nimport Recursor\nimport Lark\nimport Owl\nimport Replicator\nnamespace Blc.HandlerLet.{name}\nopen Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost\nset_option maxRecDepth 10000\nset_option maxHeartbeats 8000000\n'
 for i,(sourcefile,c,e) in enumerate(items[off:off+100],off):
  R=ad.tup(e['source']);s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n'+moreproof(R,c).replace('RPLACE',f'r{i}')+f'#print axioms reject{i}\n'
  manifest.append(dict(file=sourcefile,index=c['index'],module=name,theorem=f'Blc.HandlerLet.{name}.reject{i}',kind=c['kind'],source_sha256=hashlib.sha256(repr(R).encode()).hexdigest()))
 s+=f'end Blc.HandlerLet.{name}\n';(H/f'{name}.lean').write_text(s)
(H/'more_modules.json').write_text(json.dumps(mods)+'\n');(H/'more_manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n');print('more',len(items),'modules',len(mods))
