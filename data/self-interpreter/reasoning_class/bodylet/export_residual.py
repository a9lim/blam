import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
from make_special import lean,tup
H=Path(__file__).resolve().parent

def lst(xs):return '['+', '.join(lean(tup(x)) for x in xs)+']'
def paths(xs):return '['+', '.join('['+', '.join(map(str,p))+']' for p in xs)+']'
records=json.loads((H/'residual.json').read_text());src={r['file']:json.loads((H/r['file']).read_text()) for r in records};manifest=[]
s='''import Grow
namespace Blc.BodyLetResidual
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost HandlerLet BodyLetGrow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
'''
for i,r in enumerate(records):
 e=src[r['file']]['exceptions'][r['index']]
 s+=f'\ndef r{i} : Term := (.lam {lean(tup(e["body"]),source=True)})\ntheorem reject{i} : ¬ Reader r{i} := by\n'
 if r['kind']=='grow':
  s+=f' exact grow_reduct true {paths([[]]+r["prep"])} {lst(r["ws"])} {lst(r["ts"])} {lst(r["ss"])} {lst(r["rest"])} (by decide)\n'
 else:
  s+=f' exact mixed_reduct true {paths([[]]+r["prep"])} {paths(r["paths"])} {lean(tup(r["core"]))} {lst(r["extra"])} {lst(r["rest"])} (by decide) (by decide)\n'
 s+=f'#print axioms reject{i}\n';manifest.append(dict(file=r['file'],index=r['index'],module='Residual',theorem=f'Blc.BodyLetResidual.reject{i}',kind=r['kind']))
s+='\nend Blc.BodyLetResidual\n';(H/'Residual.lean').write_text(s)
(H/'manifest_residual.json').write_text(json.dumps(manifest,indent=2)+'\n');print(__import__('collections').Counter(r['kind'] for r in records))
