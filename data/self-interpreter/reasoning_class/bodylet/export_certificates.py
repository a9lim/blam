import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
from make_special import lean,tup
H=Path(__file__).resolve().parent

def lst(xs):return '['+', '.join(lean(tup(x)) for x in xs)+']'
def paths(xs):return '['+', '.join('['+', '.join(map(str,p))+']' for p in xs)+']'
records=[]
for name in ('audit.json','alternate.json'):
 for rec in json.loads((H/name).read_text()):records.append(rec)
sources={name:json.loads((H/name).read_text()) for name in {r['file'] for r in records}}
seen=set();manifest=[]
for batch,lo in enumerate(range(0,len(records),750)):
 s='''import Certificates
namespace Blc.BodyLetExceptions.B'''+str(batch)+'''
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost HandlerLet
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
'''
 for i,rec in enumerate(records[lo:lo+750]):
  key=(rec['file'],rec['index']);assert key not in seen;seen.add(key)
  e=sources[rec['file']]['exceptions'][rec['index']]
  src='(.lam '+lean(tup(e['body']),source=True)+')';z='true' if rec.get('probe',e['probe'])=='zero' else 'false';c=rec['certificate'];n=c['steps']+1;kind=c['kind']
  s+=f'\ndef r{i} : Term := {src}\ntheorem reject{i} : ¬ Reader r{i} := by\n'
  if kind=='missing':
   j={'c':0,'j':1,'N':2,'r':3}[c['variable']];s+=f' exact absent_reduct {z} {n} {j} (by decide) (by decide)\n'
  elif kind=='head':
   j={'c':0,'j':1,'N':2,'r':3}[c['head']];s+=f' exact head_reduct {z} {n} ({j},{c["arity"]}) (by decide) (by decide)\n'
  else:
   assert kind=='loop';l=c['loop'];s+=f' exact loop_reduct {z} {n} {l["steps"]} {lean(tup(l["core"]))} {lst(l["extra"])} {lst(l["rest"])} (by decide) (by decide) (by decide)\n'
  s+=f'#print axioms reject{i}\n';manifest.append(dict(file=rec['file'],index=rec['index'],module=f'Exceptions{batch}',theorem=f'Blc.BodyLetExceptions.B{batch}.reject{i}',kind=kind))
 s+=f'\nend Blc.BodyLetExceptions.B{batch}\n';(H/f'Exceptions{batch}.lean').write_text(s)
(H/'manifest_simple.json').write_text(json.dumps(manifest,indent=2)+'\n');print('exported',len(records),'in',batch+1,'modules')
