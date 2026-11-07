import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json,time,signal,resource
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'firstop'))
import nonlinear_supplement as sup
ma=sup.ma;D=ma.D
signal.alarm(110);start=time.monotonic();audit=json.loads((H/'audit.json').read_text());opened=[]
for e in audit['open']:
 src=ma.la.old.tup(json.loads((H/f'check_{e["name"]}.json').read_text())['exceptions'][e['index']]['body'])
 c=sup.restricted(D.inst(src,D.Z()));probe='zero'
 if not c:
  c=ma.la.cert(D.inst(src,D.U(1)),D.A(D.A(D.Kc('c'),D.U(0)),D.Kc('N')));probe='unary'
 if c and c['kind'] in('mixed','missing','head','loop'):audit['certificates'].append(dict(name=e['name'],index=e['index'],probe=probe,certificate=c))
 else:opened.append(e)
audit['open']=opened;audit['supplement_states']=sup.COUNT;audit['supplement_seconds']=time.monotonic()-start
(H/'audit.json').write_text(json.dumps(audit,indent=2)+'\n');print('open',opened,'states',sup.COUNT,'seconds',time.monotonic()-start)
