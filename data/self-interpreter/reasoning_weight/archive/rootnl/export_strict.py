import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from export import lean,ls,ps,ad
import json,hashlib

def badproof(b):
 kind=b['kind']
 if kind=='left':return f'(Bad.left {lean(ad.tup(b["arg"]))} {badproof(b["sub"])})'
 if kind=='strict':return f'(Bad.strict [{", ".join(lean(ad.tup(q),1) for q in b["qs"])}] {badproof(b["sub"])})'
 c=b['certificate'];assert c['kind']=='mixed'
 p=f'(Bad.cycle {lean(ad.tup(c["core"]))} {ps(c["paths"])} {ls(c["extra"])} (by decide))'
 for a in c['rest']:p=f'(Bad.left {lean(ad.tup(a))} {p})'
 return f'(Bad.replay (t := {lean(ad.tup(b["term"]))}) {ps(c["prep"])} (by decide) {p})'
r=json.loads((H/'strict.json').read_text());rows=r['certificates'];manifest=[];mods=[]
for off in range(0,len(rows),80):
 name=f'StrictCases{off//80}';mods.append(name)
 s=f'import Strict\nnamespace Blc.RootNLStrict.{name}\nopen Term SelfintClass\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
 for i,c in enumerate(rows[off:off+80],off):
  es=json.loads((H/c['file']).read_text())['exceptions'];R=ad.tup(es[c['index']]['source'])
  s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n exact reject {ps(c["prep"])} (by decide) {badproof(c["bad"])}\n#print axioms reject{i}\n'
  manifest.append(dict(file=c['file'],index=c['index'],module=name,theorem=f'Blc.RootNLStrict.{name}.reject{i}',source_sha256=hashlib.sha256(repr(R).encode()).hexdigest()))
 s+=f'end Blc.RootNLStrict.{name}\n';(H/f'{name}.lean').write_text(s)
(H/'strict_manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n');(H/'strict_modules.json').write_text(json.dumps(mods)+'\n');print('strict proofs',len(rows))
