import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as au
import loop_audit as la
import json,time,signal,resource
signal.alarm(110);start=time.monotonic();out=[];opened=[]
for rec in json.loads((H/'alternate_open.json').read_text()):
 e=json.loads((H/rec['file']).read_text())['exceptions'][rec['index']]
 body=la.old.tup(e['body']);t=la.d.inst(body,la.d.Z() if e['probe']=='zero' else la.d.U(1))
 cert=au.cert(t)
 if cert:out.append(dict(file=rec['file'],index=rec['index'],certificate=cert))
 else:opened.append(rec)
(H/'mixed.json').write_text(json.dumps(out,indent=2)+'\n');(H/'mixed_open.json').write_text(json.dumps(opened,indent=2)+'\n')
print(dict(certificates=len(out),open=len(opened),expanded=au.COUNT,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss))
