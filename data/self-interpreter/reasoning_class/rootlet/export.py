import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import json,collections,hashlib
sys.path.insert(0,str(H.parent/'handlerlet'))
import audit as a,dbn as d

def read(n):return json.loads((H/n).read_text())
def lean(t,dep=0):
 if t[0]=='v':return f'(.var {t[1]})'
 if t[0]=='k':return f'(.var {dep+dict(c=0,j=1,N=2,r=3)[t[1]]})'
 if t[0]=='l':return f'(.lam {lean(t[1],dep+1)})'
 return f'(.app {lean(t[1],dep)} {lean(t[2],dep)})'
def ls(xs):return '['+', '.join(lean(a.tup(t)) for t in xs)+']'
def ps(xs):return '['+', '.join('['+', '.join(map(str,p))+']' for p in xs)+']'
def put(m,rows,kind='simple'):
 for e in rows:
  if e['index'] not in m:m[e['index']]=dict(kind=kind,record=e)

def certificates(name):
 m={}
 if name=='5':
  for f in ('boundary_audit.json','boundary_reduced.json','boundary_directed.json','boundary_longhead.json','boundary_prefix.json'):
   for e in read(f)['certificates']:
    kind='mixed' if 'cycle' in e else 'simple'
    put(m,[e],kind)
  for f in ('boundary_ground8.json','boundary_ground.json'):put(m,read(f)['certificates'],'ground')
 else:put(m,read(f'audit{name}.json')['certificates'])
 put(m,read(f'tower{name}.json')['certificates'],'tower')
 return m

def proof(R,desc):
 e=desc['record'];kind=desc['kind'];prep=e.get('prep',[])
 if kind=='tower':return f'  exact tower_reduct {e["steps"]} {e["n"]-1} {e["k"]-1} {ls(e["rest"])} (by decide)\n'
 if kind in ('mixed','ground'):
  c=e['cycle'];p=ps(prep);rest=ls(e['rest']);rule='ground_mixed' if kind=='ground' else 'mixed_reduct true'
  return f'  exact {rule} {p} {ps(c["paths"])} {lean(a.tup(c["core"]))} {ls(c["extra"])} {rest} (by decide) (by decide)\n'
 c=e['certificate'];typ=c['kind'];n=c['steps']
 if typ=='missing':
  j=dict(c=0,j=1,N=2,r=3)[c['variable']]
  return f'  exact replay_absent true {ps(prep)} {n} {j} (by decide) (by decide)\n'
 if typ=='head':
  j=dict(c=0,j=1,N=2,r=3)[c['head']]
  return f'  exact replay_head true {ps(prep)} {n} ({j},{c["arity"]}) (by decide) (by decide)\n'
 if typ=='loop':
  l=c['loop'];return f'  exact replay_loop true {ps(prep)} {n} {l["steps"]} {lean(a.tup(l["core"]))} {ls(l["extra"])} {ls(l["rest"])} (by decide) (by decide) (by decide)\n'
 if typ=='arg':
  assert c['arg_from_right']==0 and c['sub']['kind']=='loop'
  t=d.A(d.subst(R,0,d.Kc('c')),d.Z())
  for _ in range(n):t=a.step(t)
  assert t[0]=='a' and t[1]==d.Kc('r')
  arg=t[2];sub=c['sub'];l=sub['loop']
  return f'  exact zero_argument_loop {n} {sub["steps"]} {l["steps"]} {lean(arg)} {lean(a.tup(l["core"]))} {ls(l["extra"])} {ls(l["rest"])} (by decide) (by decide) (by decide) (by decide)\n'
 raise RuntimeError((kind,c))

manifest=[];opens={};modules=[]
for name in ('5','4A','4B','4Cs'):
 es=read('boundary_check.json' if name=='5' else f'check{name}.json')['exceptions'];cs=certificates(name)
 opens[name]=[dict(exception_index=i,**e) for i,e in enumerate(es) if i not in cs]
 items=sorted(cs.items())
 for off in range(0,len(items),600):
  mod=f'Exceptions{name}_{off//600:02d}';modules.append(mod)
  s=f'import Certificates\nnamespace Blc.HandlerLet.{mod}\nopen Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost\nset_option maxRecDepth 10000\nset_option maxHeartbeats 2000000\n'
  for i,c in items[off:off+600]:
   R=a.tup(es[i]['source']);s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n'+proof(R,c)+f'#print axioms reject{i}\n'
   manifest.append(dict(cell=name,index=i,module=mod,theorem=f'Blc.HandlerLet.{mod}.reject{i}',kind=c['kind'],source_sha256=hashlib.sha256(json.dumps(es[i]['source']).encode()).hexdigest()))
  s+=f'end Blc.HandlerLet.{mod}\n';(H/f'{mod}.lean').write_text(s)
(H/'manifest.json').write_text(json.dumps(manifest,indent=2)+'\n');(H/'remaining.json').write_text(json.dumps(opens,indent=2)+'\n');(H/'modules.json').write_text(json.dumps(modules)+'\n')
print('certificates',len(manifest),'modules',len(modules),'remaining',{k:len(v) for k,v in opens.items()})
