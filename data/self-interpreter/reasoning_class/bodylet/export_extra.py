import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
from make_special import lean,tup
H=Path(__file__).resolve().parent

def lst(xs):return '['+', '.join(lean(tup(x)) for x in xs)+']'
def paths(xs):return '['+', '.join('['+', '.join(map(str,p))+']' for p in xs)+']'
records=[]
for name in ('wide.json','core.json','spine.json'):
 for rec in json.loads((H/name).read_text()):
  rec['kind']=rec.get('kind',rec['certificate'].get('kind','mixed'));records.append(rec)
src={r['file']:json.loads((H/r['file']).read_text()) for r in records};manifest=[]
for batch,lo in enumerate(range(0,len(records),128)):
 s='''import Special
namespace Blc.BodyLetExtra.B'''+str(batch)+'''
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost HandlerLet BodyLetSpecial
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
'''
 for i,rec in enumerate(records[lo:lo+128]):
  e=src[rec['file']]['exceptions'][rec['index']];z='true' if rec['probe']=='zero' else 'false';c=rec['certificate'];kind=rec['kind']
  s+=f'\ndef r{i} : Term := (.lam {lean(tup(e["body"]),source=True)})\ntheorem reject{i} : ¬ Reader r{i} := by\n'
  if kind in ('template','delay'):
   s+=f' exact {kind}_reduct {z} {c["steps"]+1} {lean(tup(c["D"]),depth=2)} {lean(tup(c["t"]))} {lst(c["rest"])} (by decide)\n'
  elif kind=='mixed':
   l=c['cycle'];s+=f' exact mixed_reduct {z} {paths([[]]+c["prep"])} {paths(l["paths"])} {lean(tup(l["core"]))} {lst(l["extra"])} {lst(c["rest"])} (by decide) (by decide)\n'
  else:raise ValueError(kind)
  s+=f'#print axioms reject{i}\n';manifest.append(dict(file=rec['file'],index=rec['index'],module=f'Extra{batch}',theorem=f'Blc.BodyLetExtra.B{batch}.reject{i}',kind=kind))
 s+=f'\nend Blc.BodyLetExtra.B{batch}\n';(H/f'Extra{batch}.lean').write_text(s)
(H/'manifest_extra.json').write_text(json.dumps(manifest,indent=2)+'\n');print('exported',len(records),'in',batch+1,'modules')
