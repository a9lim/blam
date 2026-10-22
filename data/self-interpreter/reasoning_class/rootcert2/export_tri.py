import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
from export import lean,ps,ls,ad
import json,collections,hashlib

def bp(c):
 k=c['kind']
 if k=='tri':return f'(Bad.tri {lean(ad.tup(c["D"]),2)} {lean(ad.tup(c["x"]))} (by decide))'
 if k=='left':return f'(Bad.left {lean(ad.tup(c["arg"]))} {bp(c["sub"])})'
 if k=='strict':return f'(Bad.strict [{", ".join(lean(ad.tup(q),1) for q in c["qs"])}] {bp(c["sub"])})'
 if k=='replay':return f'(Bad.replay {ps(c["prep"])} (by decide) {bp(c["sub"])})'
 raise ValueError(k)
rows=json.loads((H/'sources.json').read_text());rec=json.loads((H/'tri.json').read_text());groups=collections.defaultdict(list)
for c in rec['certificates']:groups[rows[c['id']]['helper']].append(c)
manifest=[]
for g,(helper,cs) in enumerate(groups.items()):
 name=f'TriCases{g:02d}';s=f'import Tri\nnamespace Blc.Rootcert2.{name}\nopen Term SelfintClass Rootcert2Tri\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
 for c in cs:
  i=c['id'];s+=f'\ndef r{i} : Term := {lean(ad.tup(rows[i]["tree"]))}\ntheorem reject{i} : ¬ Reader r{i} :=\n Rootcert2Tri.reject (t := .app r{i} Z) [] (by decide) {bp(c["certificate"])}\n#print axioms reject{i}\n'
  manifest.append(dict(id=i,module=name,theorem=f'Blc.Rootcert2.{name}.reject{i}',source_sha256=hashlib.sha256(rows[i]['source'].encode()).hexdigest()))
 s+=f'end Blc.Rootcert2.{name}\n';(H/(name+'.lean')).write_text(s)
(H/'tri_manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n');print('tri certificates',len(manifest),'groups',len(groups))
