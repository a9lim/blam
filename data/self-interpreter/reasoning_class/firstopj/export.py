import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
from collections import defaultdict
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'firstop'))
from export_nonlinear import tup,lean,lst,paths
manifest=[];files=[];groups=defaultdict(list);audit=json.loads((H/'audit.json').read_text())
for e in audit['certificates']:groups[e['name']].append(e)
for name,es in groups.items():
 module='Exceptions'+name.title();out=['import NonlinearCertificates',f'namespace Blc.FirstopJ.{module}','open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost FirstopNonlinear','set_option maxRecDepth 10000','set_option maxHeartbeats 2000000']
 rows=json.loads((H/f'check_{name}.json').read_text())['exceptions']
 for x in es:
  i=x['index'];e=rows[i];c=x['certificate'];kind=c['kind'];probe=x.get('probe',e['probe']);z='true' if probe=='zero' else 'false'
  out += [f'def r{i} : Term := (.lam {lean(tup(e["body"]),source=True)})',f'theorem reject{i} : ¬ Reader r{i} := by']
  if kind=='missing':
   j={'c':0,'j':1,'N':2,'r':3}[c['variable']];proof=f'absent_reduct {z} {c["steps"]+1} {j} (by decide) (by decide)'
  elif kind=='head':
   j={'c':0,'j':1,'N':2,'r':3}[c['head']];proof=f'head_reduct {z} {c["steps"]+1} ({j},{c["arity"]}) (by decide) (by decide)'
  elif kind=='loop':
   l=c['loop'];proof=f'loop_reduct {z} {c["steps"]+1} {l["steps"]} {lean(tup(l["core"]))} {lst(l["extra"])} {lst(l["rest"])} (by decide) (by decide) (by decide)'
  else:
   assert kind=='mixed';l=c['cycle'];proof=f'mixed_reduct {z} {paths([[]]+c["prep"])} {paths(l["paths"])} {lean(tup(l["core"]))} {lst(l["extra"])} {lst(c["rest"])} (by decide) (by decide)'
  out += ['  exact '+proof,f'#print axioms reject{i}'];manifest.append(dict(cell=name,index=i,module=module,theorem=f'Blc.FirstopJ.{module}.reject{i}',probe=probe,kind=kind))
 out.append(f'end Blc.FirstopJ.{module}');(H/f'{module}.lean').write_text('\n'.join(out)+'\n');files.append(module+'.lean')
# Three exact sources use already kernel-checked divergence families.
family_cases=[{'name':'pending1','index':i} for i in (703,793,794)]
assert audit['open']==family_cases or audit.get('families')==family_cases
module='Residual';out=['import NonlinearFamilies',f'namespace Blc.FirstopJ.{module}','open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost FirstopNonlinear WeakHeadClock','set_option maxRecDepth 10000','set_option maxHeartbeats 2000000']
rows=json.loads((H/'check_pending1.json').read_text())['exceptions']
for i,fam in [(703,'tower'),(793,'Right'),(794,'Left')]:
 out += [f'def r{i} : Term := (.lam {lean(tup(rows[i]["body"]),source=True)})',f'theorem reject{i} : ¬ Reader r{i} := by']
 if fam=='tower':proof='nocount_reduct true 3 (.app (towerC 0) (towerC 0)) [(.var 1), (.lam (.lam (.var 1))), (.var 3)] (by decide) (fun n => towerC_nocount n 0 0)'
 else:proof=f'nocount_reduct true 3 (.app (.app carry{fam} carry{fam}) (.var 1)) [(.lam (.lam (.var 1))), (.var 3)] (by decide) (fun n => carry{fam}_nocount n _)'
 out += ['  exact '+proof,f'#print axioms reject{i}'];manifest.append(dict(cell='pending1',index=i,module=module,theorem=f'Blc.FirstopJ.{module}.reject{i}',probe='zero',kind='family_'+fam))
out.append(f'end Blc.FirstopJ.{module}');(H/f'{module}.lean').write_text('\n'.join(out)+'\n');files.append(module+'.lean')
audit['families']=family_cases;audit['open']=[]
(H/'audit.json').write_text(json.dumps(audit,indent=2)+'\n')
(H/'certificates.json').write_text(json.dumps(manifest,indent=2)+'\n');(H/'modules.json').write_text(json.dumps(files,indent=2)+'\n');print('certificates',len(manifest),'modules',len(files))
