"""Recognize checked symbolic families and finite replay on one exception cell."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as mx,loop_audit as au,audit as ad,dbn as d
import json,collections,time,resource,signal,threading,os
START=time.monotonic();COUNT=0
class Cap(Exception):pass

def watchdog():
 while True:
  time.sleep(.1)
  if time.monotonic()-START>110 or resource.getrusage(resource.RUSAGE_SELF).ru_maxrss>900_000_000:os._exit(97)
def rw(t,p):
 global COUNT
 COUNT+=1
 if COUNT>95000:raise Cap()
 return mx.rewrite(t,p)
def flat(t):
 xs=[]
 while t[0]=='a':xs.append(t[2]);t=t[1]
 return t,xs[::-1]
def weakpath(t):
 p=[]
 while t[0]=='a' and t[1][0]!='l':p.append(1);t=t[1]
 return tuple(p) if t[0]=='a' else None

def normal(t):
 ps=[]
 for _ in range(12):
  p=next(mx.redexes(t),None)
  if p is None:return t,ps
  t=rw(t,p);ps.append(p)
  if d.size(t)>150:return None
 return None

def parts(t):
 h,xs=flat(t);ps=[]
 paths=[(1,)*len(xs)]+[(1,)*(len(xs)-i-1)+(2,) for i in range(len(xs))]
 for p in paths:
  old=mx.at(t,p)
  if old[0]!='l':continue
  nf=normal(old)
  if nf:
   for q in nf[1]:r=p+q;t=rw(t,r);ps.append(r)
 return t,ps

def lower(t,n):
 def valid(t,depth=0):
  if t[0]=='v':return t[1]<depth or t[1]>=depth+n
  if t[0]=='k':return True
  if t[0]=='l':return valid(t[1],depth+1)
  return valid(t[1],depth) and valid(t[2],depth)
 return d.shift(t,-n) if valid(t) else None

def form(t):
 if t[0]!='l':return None
 h,xs=flat(t[1])
 if h!=d.V(0) or not xs or xs[0][0]!='l':return None
 gh,ys=flat(xs[0][1])
 if gh!=d.V(1) or not ys or ys[0]!=d.V(0):return None
 ws=[lower(t,2) for t in ys[1:]];ts=[lower(t,1) for t in xs[1:]]
 if None in ws or None in ts:return None
 return ws,ts
L=d.L(d.L(d.A(d.V(1),d.A(d.V(0),d.V(0)))))
Lcore=d.A(d.A(L,L),d.A(L,L))
HC=d.L(d.L(d.A(d.V(1),d.A(d.V(0),d.V(1)))))
Hcore=d.A(d.A(HC,d.A(HC,HC)),HC)
O=d.L(d.L(d.A(d.V(0),d.A(d.V(1),d.V(0)))))
Ocore=d.A(d.A(O,O),d.A(d.A(O,O),O))

def discover(R):
 t=d.A(d.subst(R,0,d.Kc('c')),d.Z());prep=[];target=d.A(d.Kc('r'),d.Kc('j'))
 for iteration in range(32):
  t,ps=parts(t);prep+=ps;h,xs=flat(t)
  for name,core in (('lark',Lcore),('recursor',Hcore),('owl',Ocore)):
   rest=au.prefix(t,core)
   if rest is not None and (name=='owl' or rest):return dict(kind=name,prep=prep,rest=rest)
  f1=form(h);f2=form(xs[0]) if xs else None
  if f1 and f2 and f1[0]==f2[0]:return dict(kind='grow',prep=prep,ws=f1[0],ts=f1[1],ss=f2[1],rest=xs[1:])
  if len(xs)>=2 and h[0]=='l' and h[1][0]=='l' and xs[1]==h:
   hh,ys=flat(h[1][1])
   if hh==d.V(0) and len(ys)==2 and ys[1]==d.V(0):return dict(kind='template',prep=prep,D=ys[0],t=xs[0],rest=xs[2:])
  if iteration%4==0:
   c=au.cert(t,target)
   if c:
    if c['kind'] in ('head','loop','missing','lambda'):return dict(kind='simple',prep=prep,certificate=c)
    if c['kind']=='arg' and c['arg_from_right']==0 and c['sub']['kind'] in ('head','lambda','loop'):
     return dict(kind='simple',prep=prep,certificate=c)
  p=weakpath(t)
  if p is None or d.size(t)>800:break
  t=rw(t,p);prep.append(p)
 return None

def main():
 name=sys.argv[1];first=json.loads((H/name).read_text());es=json.loads((H/first['source_file']).read_text())['exceptions'];rows=[];opens=[]
 for i in first['opened']:
  e=es[i];assert e['probe']=='zero'
  try:c=discover(ad.tup(e['source']))
  except Cap: c=None
  if c:rows.append(dict(index=i,**c))
  else:opens.append(i)
 rec=dict(source_file=first['source_file'],certificates=rows,opened=opens,states=COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/name.replace('cert_','family_')).write_text(json.dumps(rec,separators=(',',':'))+'\n')
 print(json.dumps({k:v for k,v in rec.items() if k not in ('certificates','opened')})+' '+str(collections.Counter(c['kind'] for c in rows))+' open='+str(len(opens)))
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main()
