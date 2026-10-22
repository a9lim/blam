import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import loop_audit as au
import mixed_audit as mix
import json,time,signal,resource
signal.alarm(110);start=time.monotonic();out=[];opened=[]
for rec in json.loads((H/'audit_open.json').read_text()):
 e=json.loads((H/rec['file']).read_text())['exceptions'][rec['index']];Y=au.old.tup(e['body'])
 for z in (True,False):
  target=au.d.A(au.d.Kc('r'),au.d.Kc('j')) if z else au.d.A(au.d.A(au.d.Kc('c'),au.d.U(0)),au.d.Kc('N'))
  t=au.d.inst(Y,au.d.Z() if z else au.d.U(1));cert=au.cert(t,target)
  if cert and cert['kind'] in ('missing','head','loop'):
   out.append(dict(file=rec['file'],index=rec['index'],probe='zero' if z else '1',certificate=cert));break
 else:opened.append(rec)
(H/'alternate.json').write_text(json.dumps(out,indent=2)+'\n');(H/'alternate_open.json').write_text(json.dumps(opened,indent=2)+'\n')
print(dict(certificates=len(out),open=len(opened),seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss));print(opened)
