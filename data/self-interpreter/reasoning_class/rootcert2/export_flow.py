import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from flow import cfa,d,ad
sys.path.insert(0,str(H.parent/'rootnl'))
from export import lean,ps
import json,collections,hashlib

def export(t):
 _,_,_,nodes,flow,bindings=cfa(t)
 labels={i:k+4 for k,i in enumerate(bindings)}
 def ty(f):return sorted(dict(c=0,j=1,N=2,r=3)[a] if isinstance(a,str) else labels[a] for a in f)
 def ls(ns):return '['+','.join(map(str,ns))+']'
 def ann(i,t,dep):
  n=nodes[i];T=ls(ty(flow[i]))
  if t[0]=='k':return f'(.var {dep+dict(c=0,j=1,N=2,r=3)[t[1]]} {T})'
  if n[0]=='v':return f'(.var {t[1]} {T})'
  if n[0]=='l':return f'(.lam {labels[i]} {ann(n[1],t[1],dep+1)} {T})'
  return f'(.app {ann(n[1],t[1],dep)} {ann(n[2],t[2],dep)} {T})'
 D=['[]']*4+[ls(ty(bindings[i])) for i in bindings]
 C=['[]']*4+[ls(ty(flow[nodes[i][1]])) for i in bindings]
 return '['+','.join(D)+']','['+','.join(C)+']',ann(0,t,0)
rows=json.loads((H/'sources.json').read_text());tag=sys.argv[1] if len(sys.argv)>1 else 'flow_prefix';rec=json.loads((H/(tag+'.json')).read_text());groups=collections.defaultdict(list)
for r in rec['certificates']:groups[rows[r['id']]['helper']].append(r)
manifest=[]
for g,(helper,rs) in enumerate(groups.items()):
 name=f'{"FlowCases" if tag=="flow_prefix" else ("DevelopCases" if tag=="flow_develop" else "SimplifyCases")}{g:02d}';s=f'import Flow\nnamespace Blc.Rootcert2.{name}\nopen Term SelfintClass Rootcert2Flow\nset_option maxRecDepth 10000\nset_option maxHeartbeats 4000000\n'
 for row in rs:
  i=row['id'];R=ad.tup(rows[i]['tree']);t=ad.tup(row['term']);D,C,A=export(t)
  s+=f'\ndef r{i} : Term := {lean(R)}\ndef d{i} : List FTy := {D}\ndef c{i} : List FTy := {C}\ndef a{i} : Ann := {A}\ntheorem reject{i} : ¬ Reader r{i} :=\n Rootcert2Flow.reject {ps(row["prep"])} d{i} c{i} a{i} (by decide) (by decide) (by decide)\n#print axioms reject{i}\n'
  manifest.append(dict(id=i,module=name,theorem=f'Blc.Rootcert2.{name}.reject{i}',prefix_length=len(row['prep']),source_sha256=hashlib.sha256(rows[i]['source'].encode()).hexdigest()))
 s+=f'end Blc.Rootcert2.{name}\n';(H/(name+'.lean')).write_text(s)
(H/('flow_manifest.json' if tag=='flow_prefix' else ('develop_manifest.json' if tag=='flow_develop' else 'simplify_manifest.json'))).write_text(json.dumps(manifest,separators=(',',':'))+'\n')
print(len(manifest),'source certificates in',len(groups),'helper groups')
