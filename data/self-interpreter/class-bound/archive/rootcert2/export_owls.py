import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'));from export import lean,ps,ls,ad
from probe import d,flat,weakpath,rw
import json,hashlib
rows=json.loads((H/'sources.json').read_text());manifest=[]
for family,ids in [('TripleOwl',[446,447]),('NestedOwl',[482,483])]:
 s=f'import {family}\nnamespace Blc.Rootcert2.{family}Cases\nopen Term SelfintClass Rootcert2{family}\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
 for i in ids:
  r=rows[i];R=ad.tup(r['tree']);t=d.A(d.subst(R,0,d.Kc('c')),d.Z());p=weakpath(t);t=rw(t,p);h,args=flat(t);rest=args[2:]
  s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} :=\n Rootcert2{family}.reject {ps([p])} {ls(rest)} (by decide)\n#print axioms reject{i}\n'
  manifest.append(dict(id=i,module=family+'Cases',theorem=f'Blc.Rootcert2.{family}Cases.reject{i}',source_sha256=hashlib.sha256(r['source'].encode()).hexdigest()))
 s+=f'end Blc.Rootcert2.{family}Cases\n';(H/(family+'Cases.lean')).write_text(s)
(H/'owls_manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n')
