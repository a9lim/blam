import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import loop_audit as au
import json,time,signal,resource
signal.alarm(110);start=time.monotonic();out=[];opened=[];states=0
for rec in json.loads((H/'mixed_open.json').read_text()):
 e=json.loads((H/rec['file']).read_text())['exceptions'][rec['index']];Y=au.old.tup(e['body']);done=False
 for z in (True,False):
  t=au.d.inst(Y,au.d.Z() if z else au.d.U(1));target=au.d.A(au.d.Kc('r'),au.d.Kc('j')) if z else au.d.A(au.d.A(au.d.Kc('c'),au.d.U(0)),au.d.Kc('N'))
  for n in range(120):
   states+=1
   if states>100000 or au.d.size(t)>2000:break
   c=au.cert(t,target)
   if c and c['kind'] in ('missing','head','loop'):
    c['steps']+=n;out.append(dict(file=rec['file'],index=rec['index'],probe='zero' if z else '1',certificate=c));done=True;break
   t2=au.old.step(t)
   if t2 is None:break
   t=t2
  if done:break
 if not done:opened.append(rec)
(H/'long.json').write_text(json.dumps(out,indent=2)+'\n');(H/'long_open.json').write_text(json.dumps(opened,indent=2)+'\n')
print(dict(certificates=len(out),open=len(opened),states=states,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss));print(opened)
