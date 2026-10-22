import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as mx
import loop_audit as au
from functools import lru_cache
import json,time,signal,resource,threading,os
signal.alarm(112);start=time.monotonic();STATES=0;D=au.d

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

def flat(t):
 args=[]
 while t[0]=='a':args.append(t[2]);t=t[1]
 return t,args[::-1]

def delay(t):
 h,args=flat(t)
 if len(args)<2 or h!=args[0] or h[0]!='l' or h[1][0]!='l':return None
 b=h[1][1]
 if b[0]!='a' or b[1]!=D.A(D.V(1),D.V(1)):return None
 return dict(kind='delay',D=b[2],t=args[1],rest=args[2:])

@lru_cache(20000)
def nfpaths(t):
 ps=[]
 for _ in range(30):
  p=next(mx.redexes(t),None)
  if p is None:return t,ps
  t=rewrite(t,p);ps.append(p)
  if D.size(t)>200:return None
 return None

def parts(t):
 h,args=flat(t);ps=[];paths=[(1,)*len(args)]+[(1,)*(len(args)-i-1)+(2,) for i in range(len(args))]
 for p in paths:
  old=mx.at(t,p)
  if old[0] in ('v','k'):continue
  result=nfpaths(old)
  if result:
   _,qs=result
   for q in qs:
    path=p+q;t=rewrite(t,path);ps.append(path)
 return t,ps

def weakpath(t):
 p=[]
 while t[0]=='a' and t[1][0]!='l':p.append(1);t=t[1]
 return tuple(p) if t[0]=='a' else None

def cycle(core):
 p=weakpath(core)
 if p is None:return None
 t=rewrite(core,p);ps=[]
 for _ in range(8):
  extra=au.prefix(t,core)
  if extra is not None:return dict(core=core,paths=ps,extra=extra)
  t,qs=parts(t);ps+=qs
  extra=au.prefix(t,core)
  if extra is not None:return dict(core=core,paths=ps,extra=extra)
  p=weakpath(t)
  if p is None or D.size(t)>300:return None
  t=rewrite(t,p);ps.append(p)
 return None

def cert(t):
 prep=[]
 for _ in range(5):
  t,qs=parts(t);prep+=qs
  cores=[];p=t
  while p[0]=='a':cores.append(p);p=p[1]
  for core in reversed(cores):
   c=cycle(core)
   if c:return dict(prep=prep,cycle=c,rest=au.prefix(t,core))
  p=weakpath(t)
  if p is None:return None
  t=rewrite(t,p);prep.append(p)
 return None

records=json.loads((H/'core_open.json').read_text());src={r['file']:json.loads((H/r['file']).read_text()) for r in records};out=[];opened=[];cache={};cap=False
for rec in records:
 e=src[rec['file']]['exceptions'][rec['index']];Y=au.old.tup(e['body']);done=False
 for z in (True,False):
  t=D.inst(Y,D.Z() if z else D.U(1));u=t
  for n in range(20):
   c=delay(u)
   if c:
    c['steps']=n;out.append(dict(file=rec['file'],index=rec['index'],probe='zero' if z else '1',kind='delay',certificate=c));done=True;break
   v=au.old.step(u)
   if v is None or D.size(v)>500:break
   u=v
  if done:break
  f,cs=flat(t);assert f[0]=='l';A=cs.pop(0);P=D.beta(f[1],A)
  if P not in cache:
   if cap:cache[P]=None
   else:
    try:cache[P]=cert(P)
    except Cap:cap=True;cache[P]=None
  c=cache[P]
  if c:
   prefix=(1,)*len(cs);lifted=dict(prep=[prefix]+[prefix+tuple(p) for p in c['prep']],cycle=c['cycle'],rest=c['rest']+cs)
   out.append(dict(file=rec['file'],index=rec['index'],probe='zero' if z else '1',kind='mixed',certificate=lifted));done=True;break
 if not done:opened.append(rec)
(H/'spine.json').write_text(json.dumps(out,indent=2)+'\n');(H/'spine_open.json').write_text(json.dumps(opened,indent=2)+'\n')
print(dict(certificates=len(out),open=len(opened),states=STATES,distinct_cores=len(cache),cap=cap,kinds=__import__('collections').Counter(r['kind'] for r in out),seconds=time.monotonic()-start,rss=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss))
