import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
from export_nonlinear import lean,tup
H=Path(__file__).resolve().parent
r=json.loads((H/'nonlinear_1_root.json').read_text());s='''import NonlinearFamilies
namespace Blc.FirstopNonlinear.Residual
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost WeakHeadClock
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
'''
for i,core,proof in [(1776,'(.app (towerC 0) (towerC 0))','fun n => towerC_nocount n 0 0'),(1885,'(.app (.app carryRight carryRight) (.lam (.lam (.var 1))))','fun n => carryRight_nocount n _'),(1886,'(.app (.app carryLeft carryLeft) (.lam (.lam (.var 1))))','fun n => carryLeft_nocount n _')]:
 s+=f'\ndef r{i} : Term := (.lam {lean(tup(r["exceptions"][i]["body"]),source=True)})\n'
 rest='[(.lam (.lam (.var 1))), (.var 3), (.var 1)]' if i==1776 else '[(.var 3), (.var 1)]'
 s+=f'theorem reject{i} : ¬ Reader r{i} :=\n  nocount_reduct true 3 {core} {rest} (by decide) ({proof})\n#print axioms reject{i}\n'
s+='end Blc.FirstopNonlinear.Residual\n';(H/'NonlinearResidual.lean').write_text(s)

p=H/'nonlinear_1_root_audit.json';audit=json.loads(p.read_text())
assert [e['index'] for e in audit['open']] in ([1776,1885,1886],[])
audit['families']=[dict(index=i,kind='tower' if i==1776 else 'argument_ratchet',theorem=f'Blc.FirstopNonlinear.Residual.reject{i}',module='NonlinearResidual') for i in (1776,1885,1886)]
audit['open']=[];p.write_text(json.dumps(audit,indent=2)+'\n')
