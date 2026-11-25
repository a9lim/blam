"""Original-source Lean proofs for every nested-head normalizer exception."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
import export as e
import json,hashlib
# Load only reusable helpers; the imported script's publication loop is omitted.
more={'__file__':str(H.parent/'rootnl'/'export_more.py')}
exec(compile((H.parent/'rootnl'/'export_more.py').read_text().split('mods=[];')[0],str(H.parent/'rootnl'/'export_more.py'),'exec'),more)
def owl_tree(h):
 return f'(.atom {h[1]})' if h[0]=='atom' else f'(.app {owl_tree(h[1])} {owl_tree(h[2])})'
def proof(R,c):
 kind=c.get('kind')
 if kind is None:return e.proof(c['certificate'],'true')
 if kind=='mixed':return f' exact mixed_reduct true {e.ps(c["prep"])} {e.ps(c["paths"])} {e.lean(e.ad.tup(c["core"]))} {e.ls(c["extra"])} {e.ls(c["rest"])} (by decide) (by decide)\n'
 if kind=='owl_tree':
  f=e.lean(e.ad.tup(c['f']));a=e.lean(e.ad.tup(c['a']));rest=e.ls(c['rest'])
  return f' intro hr\n have he : betaSteps {e.ps(c["prep"])} (.app RPLACE Z) = some (spine (.app {f} {a}) {rest}) := by decide\n have red := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal\n exact RootcertOwl.no_nf {f} {a} {owl_tree(c["hf"])} {owl_tree(c["ha"])} {rest} ⟨_,red,zeroOut_normal⟩\n'
 return more['moreproof'](R,c)
items=[]
for k,jd in [(2,0),(2,1),(3,0),(3,1),(4,0)]:
 sourcefile=f'check_nested_{k}_{jd}.json';rec=json.loads((H/sourcefile).read_text());seen=set()
 for typ in ('cert','family','mixed','owl'):
  path=H/f'{typ}_nested_{k}_{jd}.json'
  if not path.exists():continue
  data=json.loads(path.read_text())
  for c in data['certificates']:
   i=c['index'];assert i not in seen;seen.add(i);items.append((sourcefile,i,c,rec['exceptions'][i]))
 assert seen==set(range(len(rec['exceptions'])))
mods=[];manifest=[]
for off in range(0,len(items),300):
 name=f'NestedExceptions{off//300:02d}';mods.append(name)
 s=f'import Extras\nimport Grow\nimport Recursor\nimport Lark\nimport Owl\nimport Replicator\nnamespace Blc.HandlerLet.{name}\nopen Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost\nset_option maxRecDepth 10000\nset_option maxHeartbeats 8000000\n'
 for num,(file,i,c,ex) in enumerate(items[off:off+300],off):
  R=e.ad.tup(ex['source']);assert ex['probe']=='zero'
  s+=f'\ndef r{num} : Term := {e.lean(R)}\ntheorem reject{num} : ¬ Reader r{num} := by\n'+proof(R,c).replace('RPLACE',f'r{num}')+f'#print axioms reject{num}\n'
  manifest.append(dict(file=file,index=i,module=name,theorem=f'Blc.HandlerLet.{name}.reject{num}',kind=c.get('kind',c.get('certificate',{}).get('kind')),source_sha256=hashlib.sha256(repr(R).encode()).hexdigest()))
 s+=f'end Blc.HandlerLet.{name}\n';(H/f'{name}.lean').write_text(s)
(H/'nested_modules.json').write_text(json.dumps(mods)+'\n');(H/'nested_manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n');print(len(items),'theorems in',len(mods),'modules')
