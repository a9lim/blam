import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
from export import lean,ps,ls,ad
import json,collections,hashlib
rs=json.loads((H/'sources.json').read_text());rec=json.loads((H/'simplified.json').read_text());groups=collections.defaultdict(list)
for r in rec['certificates']:
 if r['kind']=='mixed':groups[rs[r['id']]['helper']].append(r)
manifest=[]
for g,(helper,cs) in enumerate(groups.items()):
 name=f'MixedCases{g:02d}';s=f'import Certificates\nnamespace Blc.Rootcert2.{name}\nopen Term SelfintClass HandlerLet\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
 for c in cs:
  i=c['id'];R=ad.tup(rs[i]['tree']);s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} :=\n mixed_reduct true {ps(c["prep"])} {ps(c["paths"])} {lean(ad.tup(c["core"]))} {ls(c["extra"])} {ls(c["rest"])} (by decide) (by decide)\n#print axioms reject{i}\n'
  manifest.append(dict(id=i,module=name,theorem=f'Blc.Rootcert2.{name}.reject{i}',source_sha256=hashlib.sha256(rs[i]['source'].encode()).hexdigest()))
 s+=f'end Blc.Rootcert2.{name}\n';(H/(name+'.lean')).write_text(s)
(H/'mixed_manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n')
(H/'flow_simplified.json').write_text(json.dumps(dict(certificates=[r for r in rec['certificates'] if r['kind']=='flow']),separators=(',',':'))+'\n')
print('mixed',len(manifest),'helper families',len(groups))
