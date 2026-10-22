import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as mx
import loop_audit as au
import json,time,signal,resource,threading,os
signal.alarm(112);start=time.monotonic();STATES=0
D=au.d

def watch():
 while True:
  time.sleep(.1)
  if time.monotonic()-start>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
threading.Thread(target=watch,daemon=True).start()

class Cap(Exception):pass
def rewrite(t,p):
 global STATES
 STATES+=1
 if STATES>99000:raise Cap
 return mx.rewrite(t,p)

def nfpaths(t):
 ps=[]
 for _ in range(40):
  paths=mx.redexes(t);p=next(paths,None)
  if p is None:return t,ps
  t=rewrite(t,p);ps.append(p)
  if D.size(t)>300:return None
 return None

def subpaths(t,p=()):
 if t[0]=='a':
  yield p+(2,);yield from subpaths(t[2],p+(2,))
  yield p+(1,);yield from subpaths(t[1],p+(1,))
 elif t[0]=='l':yield p+(0,);yield from subpaths(t[1],p+(0,))

def proper(t):
 ps=[]
 for _ in range(12):
  changed=False
  for p in subpaths(t):
   old=mx.at(t,p)
   if old[0] in ('v','k'):continue
   result=nfpaths(old)
   if result and result[1]:
    new,paths=result
    for q in paths:
     path=p+q;t=rewrite(t,path);ps.append(path)
    changed=True;break
  if not changed:return t,ps
 return t,ps

def weakpath(t):
 p=[]
 while t[0]=='a' and t[1][0]!='l':p.append(1);t=t[1]
 if t[0]!='a':return None
 return tuple(p)

def cycle(core):
 p=weakpath(core)
 if p is None:return None
 t=rewrite(core,p);ps=[]
 for _ in range(12):
  extra=au.prefix(t,core)
  if extra is not None:return dict(core=core,paths=ps,extra=extra)
  t,qs=proper(t);ps+=qs
  extra=au.prefix(t,core)
  if extra is not None:return dict(core=core,paths=ps,extra=extra)
  p=weakpath(t)
  if p is None or D.size(t)>300:return None
  t=rewrite(t,p);ps.append(p)
 return None

def cert(t):
 prep=[]
 for _ in range(5):
  t,qs=proper(t);prep+=qs
  cores=[];p=t
  while p[0]=='a':cores.append(p);p=p[1]
  for core in reversed(cores):
   c=cycle(core)
   if c:return dict(prep=prep,cycle=c,rest=au.prefix(t,core))
  p=weakpath(t)
  if p is None:return None
  t=rewrite(t,p);prep.append(p)
 return None

records=json.loads((H/'wide_open.json').read_text());src={r['file']:json.loads((H/r['file']).read_text()) for r in records}
cache={};out=[];opened=[];cap=False
for rec in records:
 e=src[rec['file']]['exceptions'][rec['index']];Y=au.old.tup(e['body']);done=False
 for z in (True,False):
  t=D.inst(Y,D.Z() if z else D.U(1));cs=[];f=t
  while f[0]=='a':cs.append(f[2]);f=f[1]
  assert f[0]=='l';A=cs.pop();cs.reverse();P=D.beta(f[1],A)
  if P not in cache:
   if cap:cache[P]=None
   else:
    try:cache[P]=cert(P)
    except Cap:cap=True;cache[P]=None
  c=cache[P]
  if c:
   prefix=(1,)*len(cs)
   lifted=dict(prep=[prefix]+[prefix+tuple(p) for p in c['prep']],cycle=c['cycle'],rest=c['rest']+cs)
   out.append(dict(file=rec['file'],index=rec['index'],probe='zero' if z else '1',certificate=lifted));done=True;break
 if not done:opened.append(rec)
(H/'core.json').write_text(json.dumps(out,indent=2)+'\n');(H/'core_open.json').write_text(json.dumps(opened,indent=2)+'\n')
print(dict(certificates=len(out),open=len(opened),states=STATES,distinct_cores=len(cache),cap=cap,seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss))
