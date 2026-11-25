import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'jn'))
import dbn as d
import audit as old
import json,time,collections

def prefix(t,base):
 args=[]
 while True:
  if t==base:return args[::-1]
  if t[0]!='a':return None
  args.append(t[2]);t=t[1]

def loop(t):
 cores=[];p=t
 while p[0]=='a':cores.append(p);p=p[1]
 for core in reversed(cores):
  u=core
  for k in range(1,9):
   u=old.step(u)
   if u is None or d.size(u)>500:break
   extra=prefix(u,core)
   if extra is not None:return dict(core=core,steps=k,extra=extra,rest=prefix(t,core))
 return None

def cert(t,target):
 req=d.consts_of(target)
 for n in range(15):
  missing=req-d.consts_of(t)
  if missing:return dict(kind='missing',steps=n,variable=sorted(missing)[0])
  sp=[];h=t
  while h[0]=='a':sp.append(h[2]);h=h[1]
  if h[0]=='k':
   th=target;ta=[]
   while th[0]=='a':ta.append(th[2]);th=th[1]
   if h!=th or len(sp)!=len(ta):return dict(kind='head',steps=n,head=h[1],arity=len(sp))
   # Both root outputs are rigid: recursion in a matching argument is strict.
   for i,(a,b) in enumerate(zip(sp,ta)):
    if a!=b:
     sub=cert(a,b)
     if sub:return dict(kind='arg',steps=n,arg_from_right=i,sub=sub)
   return None
  if h[0]=='l' and not sp:return dict(kind='lambda',steps=n)
  ll=loop(t)
  if ll:return dict(kind='loop',steps=n,loop=ll)
  u=old.step(t)
  if u is None:break
  t=u
 return None
if __name__=='__main__':
 start=time.monotonic();out=[];opened=[]
 for q in (1,2,3,4):
  r=json.loads((H/f'check{q}.json').read_text())
  for i,e in enumerate(r['exceptions']):
   assert e['probe'] in ('zero','1')
   Y=old.tup(e['body']);stream=d.Z() if e['probe']=='zero' else d.U(1)
   target=d.A(d.Kc('r'),d.Kc('j')) if e['probe']=='zero' else d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N'))
   c=cert(d.inst(Y,stream),target)
   if c is None:opened.append((q,i))
   else:out.append(dict(q=q,index=i,certificate=c))
 (H/'loop_audit.json').write_text(json.dumps(out,indent=2)+'\n')
 print('certificates',len(out),'kinds',dict(collections.Counter(x['certificate']['kind'] for x in out)),'open',opened,'seconds',time.monotonic()-start)
