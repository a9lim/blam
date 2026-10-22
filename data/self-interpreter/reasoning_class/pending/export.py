"""Kernel replay certificates for every exception; no normalizer verdict assumed."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
import importlib.util,json,hashlib
spec=importlib.util.spec_from_file_location('root_export',H.parent/'rootnl'/'export.py')
e=importlib.util.module_from_spec(spec);spec.loader.exec_module(e)
manifest=[]
for jd in (0,1):
 rec=json.loads((H/f'cert_2_{jd}.json').read_text());assert not rec['opened']
 es=json.loads((H/f'check_2_{jd}.json').read_text())['exceptions']
 assert len(rec['certificates'])==len(es)
 name=f'Exceptions{jd}'
 s='import Certificates\nnamespace Blc.HandlerLet.Pending'+str(jd)+'\nopen Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
 for row in rec['certificates']:
  i=row['index'];ex=es[i];R=e.ad.tup(ex['source']);z='true' if ex['probe']=='zero' else 'false';assert ex['probe'] in ('zero','1')
  s+=f'\ndef r{i} : Term := {e.lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n'+e.proof(row['certificate'],z)+f'#print axioms reject{i}\n'
  manifest.append(dict(file=f'check_2_{jd}.json',index=i,module=name,theorem=f'Blc.HandlerLet.Pending{jd}.reject{i}',source_sha256=hashlib.sha256(repr(R).encode()).hexdigest()))
 s+='end Blc.HandlerLet.Pending'+str(jd)+'\n';(H/f'{name}.lean').write_text(s)
(H/'manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n')
print('theorems',len(manifest))
