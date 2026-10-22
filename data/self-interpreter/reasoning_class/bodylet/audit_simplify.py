import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as mix
import loop_audit as au
import json,time,signal,resource
signal.alarm(110);start=time.monotonic();out=[];opened=[]

def nfpaths(t,limit=120):
 paths=[]
 for _ in range(limit):
  pp=list(mix.redexes(t))
  if not pp:return t,paths
  p=pp[0];t=mix.rewrite(t,p);paths.append(p)
  if au.d.size(t)>1000:return None
 return None

def simplify(t):
 paths=[]
 for _ in range(60):
  for p in list(mix.redexes(t))[::-1]:
   if not p:continue
   result=nfpaths(mix.at(t,p))
   if result:
    u,ps=result
    for q in ps:
     path=tuple(p)+tuple(q);t=mix.rewrite(t,path);paths.append(path)
    break
  else:return t,paths
 return t,paths

for rec in json.loads((H/'alternate_open.json').read_text()):
 e=json.loads((H/rec['file']).read_text())['exceptions'][rec['index']];Y=au.old.tup(e['body']);done=False
 for z in (True,False):
  t=au.d.inst(Y,au.d.Z() if z else au.d.U(1));t,ps=simplify(t)
  c=mix.cert(t)
  if c:
   c['prep']=ps+c['prep'];out.append(dict(file=rec['file'],index=rec['index'],probe='zero' if z else '1',certificate=c));done=True;break
 if not done:opened.append(rec)
(H/'simplify.json').write_text(json.dumps(out,indent=2)+'\n');(H/'simplify_open.json').write_text(json.dumps(opened,indent=2)+'\n')
print(dict(certificates=len(out),open=len(opened),expanded=mix.COUNT,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss));print(opened)
