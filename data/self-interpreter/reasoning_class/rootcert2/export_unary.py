import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from arity_flow import cfa,d,ad
sys.path.insert(0,str(H.parent/'rootnl'))
from export import lean,ps
import json,collections,hashlib

def export(t):
 _,_,_,nodes,flow,bindings=cfa(t,3)
 labels={i:k+16 for k,i in enumerate(bindings)}
 def ty(f):return sorted(dict(c=0,j=1,N=2,r=3)[a[0]]*4+a[1] if isinstance(a,tuple) else labels[a] for a in f)
 def ls(ns):return '['+','.join(map(str,ns))+']'
 def ann(i,t,dep):
  n=nodes[i];T=ls(ty(flow[i]))
  if t[0]=='k':return f'(.var {dep+dict(c=0,j=1,N=2,r=3)[t[1]]} {T})'
  if n[0]=='v':return f'(.var {t[1]} {T})'
  if n[0]=='l':return f'(.lam {labels[i]} {ann(n[1],t[1],dep+1)} {T})'
  return f'(.app {ann(n[1],t[1],dep)} {ann(n[2],t[2],dep)} {T})'
 D=['[]']*16+[ls(ty(bindings[i])) for i in bindings]
 C=['[]']*16+[ls(ty(flow[nodes[i][1]])) for i in bindings]
 return '['+','.join(D)+']','['+','.join(C)+']',ann(0,t,0)
rows=json.loads((H/'sources.json').read_text());rec=json.loads((H/'unary_flow.json').read_text());manifest=[]
s='import Unary\nnamespace Blc.Rootcert2.UnaryCases\nopen Term SelfintClass Rootcert2Unary\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
for row in rec['certificates']:
 i=row['id'];R=ad.tup(rows[i]['tree']);t=ad.tup(row['term']);D,C,A=export(t)
 s+=f'\ndef r{i} : Term := {lean(R)}\ndef d{i} : List FTy := {D}\ndef c{i} : List FTy := {C}\ndef a{i} : Ann := {A}\ntheorem reject{i} : ¬ Reader r{i} :=\n Rootcert2Unary.reject {ps(row["prep"])} d{i} c{i} a{i} (by decide) (by decide) (by decide)\n#print axioms reject{i}\n'
 manifest.append(dict(id=i,module='UnaryCases',theorem=f'Blc.Rootcert2.UnaryCases.reject{i}',source_sha256=hashlib.sha256(rows[i]['source'].encode()).hexdigest()))
s+='end Blc.Rootcert2.UnaryCases\n';(H/'UnaryCases.lean').write_text(s)
(H/'unary_manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n')
print('arity certificates',len(manifest))
