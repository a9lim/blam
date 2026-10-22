import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from export import lean,ls,ps,ad
import json,hashlib
items=[];manifest=[]
for f in sorted(H.glob('mixed_4_0_*.json')):
 r=json.loads(f.read_text());es=json.loads((H/r['source_file']).read_text())['exceptions']
 for c in r['certificates']:items.append((r['source_file'],c,es[c['index']]))
name='Mixed';s='import Certificates\nnamespace Blc.HandlerLet.RootNLMixed\nopen Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
for i,(file,c,e) in enumerate(items):
 R=ad.tup(e['source']);s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n'
 s+=f' exact mixed_reduct true {ps(c["prep"])} {ps(c["paths"])} {lean(ad.tup(c["core"]))} {ls(c["extra"])} {ls(c["rest"])} (by decide) (by decide)\n#print axioms reject{i}\n'
 manifest.append(dict(file=file,index=c['index'],module=name,theorem=f'Blc.HandlerLet.RootNLMixed.reject{i}',source_sha256=hashlib.sha256(repr(R).encode()).hexdigest()))
s+='end Blc.HandlerLet.RootNLMixed\n';(H/'Mixed.lean').write_text(s);(H/'mixed_manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n');print('mixed',len(items))
