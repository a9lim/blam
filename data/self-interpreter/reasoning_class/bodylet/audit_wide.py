import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import loop_audit as au
import json,time,signal,resource,threading,os
signal.alarm(112);start=time.monotonic();out=[];opened=[];states=0

def watch():
 while True:
  time.sleep(.1)
  if time.monotonic()-start>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
threading.Thread(target=watch,daemon=True).start()

def template(t):
 args=[];h=t
 while h[0]=='a':args.append(h[2]);h=h[1]
 args.reverse()
 if len(args)<2 or h!=args[1] or h[0]!='l' or h[1][0]!='l':return None
 b=h[1][1]
 if b[0]!='a' or b[2]!=au.d.V(0) or b[1][0]!='a' or b[1][1]!=au.d.V(0):return None
 return dict(kind='template',D=b[1][2],t=args[0],rest=args[2:])
records=json.loads((H/'alternate_open.json').read_text());src={r['file']:json.loads((H/r['file']).read_text()) for r in records}
for rec in records:
 e=src[rec['file']]['exceptions'][rec['index']];Y=au.old.tup(e['body']);done=False
 for z in (True,False):
  t=au.d.inst(Y,au.d.Z() if z else au.d.U(1));target=au.d.A(au.d.Kc('r'),au.d.Kc('j')) if z else au.d.A(au.d.A(au.d.Kc('c'),au.d.U(0)),au.d.Kc('N'))
  for n in range(120):
   states+=1;assert states<=100000
   if au.d.size(t)>2000:break
   cert=template(t)
   if cert is None:
    missing=au.d.consts_of(target)-au.d.consts_of(t)
    if missing:cert=dict(kind='missing',variable=sorted(missing)[0])
   if cert is None:
    ll=au.loop(t)
    if ll:cert=dict(kind='loop',loop=ll)
   if cert:
    cert['steps']=n;out.append(dict(file=rec['file'],index=rec['index'],probe='zero' if z else '1',certificate=cert));done=True;break
   t2=au.old.step(t)
   if t2 is None:break
   t=t2
  if done:break
 if not done:opened.append(rec)
(H/'wide.json').write_text(json.dumps(out,indent=2)+'\n');(H/'wide_open.json').write_text(json.dumps(opened,indent=2)+'\n')
print(dict(certificates=len(out),open=len(opened),kinds=__import__('collections').Counter(r['certificate']['kind'] for r in out),states=states,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss))
