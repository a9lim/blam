"""Export original-source proofs, retaining every still-open exception explicitly."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
import json,hashlib
helper={'__file__':str(H/'export_nested.py')}
exec(compile((H/'export_nested.py').read_text().split('items=[]')[0],str(H/'export_nested.py'),'exec'),helper)
e=helper['e'];pf=helper['proof']
sys.path.insert(0,str(H.parent/'rootcert2'))
flowhelpers={'__file__':str(H.parent/'rootcert2'/'export_flow.py')}
exec(compile((H.parent/'rootcert2'/'export_flow.py').read_text().split('rows=json.loads')[0],str(H.parent/'rootcert2'/'export_flow.py'),'exec'),flowhelpers)
es=json.loads((H/'check_x.json').read_text())['exceptions'];seen=set();items=[]
for file in ['cert_x.json','prefix_x.json','core_x.json','family_core_x.json','mixed_core_x.json','owl_core_x.json','flow_x.json','develop_x.json']:
 if not (H/file).exists():continue
 for c in json.loads((H/file).read_text())['certificates']:
  i=c['index'];assert i not in seen;seen.add(i);items.append((i,{**c,'stage':file}))
normal=[x for x in items if x[1].get('kind')!='flow'];flow=[x for x in items if x[1].get('kind')=='flow' and x[1]['stage']!='develop_x.json'];develop=[x for x in items if x[1]['stage']=='develop_x.json'];mods=[];manifest=[]
for typ,rows,chunk in [('Basic',normal,300),('Flow',flow,50),('Develop',develop,1)]:
 for off in range(0,len(rows),chunk):
  name=f'X{typ}{off//chunk:02d}';mods.append(name)
  s=f'import Flow\nimport Extras\nimport Grow\nimport Recursor\nimport Lark\nimport Owl\nimport Replicator\nnamespace Blc.HandlerLet.{name}\nopen Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost Rootcert2Flow\nset_option maxRecDepth 10000\nset_option maxHeartbeats 8000000\n'
  for i,c in rows[off:off+chunk]:
   R=e.ad.tup(es[i]['source']);s+=f'\ndef r{i} : Term := {e.lean(R)}\n'
   if typ in ('Flow','Develop'):
    D,C,A=flowhelpers['export'](e.ad.tup(c['term']))
    s+=f'def d{i} : List FTy := {D}\ndef c{i} : List FTy := {C}\ndef a{i} : Ann := {A}\ntheorem reject{i} : ¬ Reader r{i} :=\n Rootcert2Flow.reject {e.ps(c["prep"])} d{i} c{i} a{i} (by decide) (by decide) (by decide)\n'
   else:s+=f'theorem reject{i} : ¬ Reader r{i} := by\n'+pf(R,c).replace('RPLACE',f'r{i}')
   s+=f'#print axioms reject{i}\n'
   manifest.append(dict(file='check_x.json',index=i,module=name,theorem=f'Blc.HandlerLet.{name}.reject{i}',kind=c.get('kind',c.get('certificate',{}).get('kind')),source_sha256=hashlib.sha256(repr(R).encode()).hexdigest()))
  s+=f'end Blc.HandlerLet.{name}\n';(H/f'{name}.lean').write_text(s)
(H/'x_modules.json').write_text(json.dumps(mods)+'\n');(H/'x_manifest.json').write_text(json.dumps(manifest,separators=(',',':'))+'\n');(H/'x_opened.json').write_text(json.dumps(sorted(set(range(len(es)))-seen))+'\n');print(len(manifest),'theorems in',len(mods),'modules; open',len(es)-len(seen))
