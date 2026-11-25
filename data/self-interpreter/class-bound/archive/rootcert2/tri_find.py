import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
from probe import d,ad,flat,weakpath,rw,au,mx,allnodes
import probe
from simplify import simp,smallnf
import json,time,signal,resource,collections
START=time.monotonic()

def tri(t):
 h,xs=flat(t)
 if len(xs)<3 or xs[0]!=h or xs[1]!=h:return None
 if h[0]!='l' or h[1][0]!='l':return None
 b=h[1][1]
 if b[0]!='a' or b[1]!=d.V(1):return None
 D=b[2];K=d.A(d.A(h,h),h)
 u=ad.step(ad.step(K))
 if u!=d.A(h,K):return None
 p=dict(kind='tri',D=D,x=xs[2])
 for a in xs[3:]:p=dict(kind='left',arg=a,sub=p)
 return p

def find(t,depth=0):
 original=t;paths=[]
 for _ in range(28):
  b=tri(t)
  if b:return dict(kind='replay',term=t,prep=paths,sub=b) if paths else b
  p=weakpath(t)
  if p is None or d.size(t)>1500:break
  t=rw(t,p);paths.append(p)
 t=original;prep=[]
 for it in range(20):
  b=tri(t)
  if b:return dict(kind='replay',term=t,prep=prep,sub=b) if prep else b
  if depth<2:
   h,xs=flat(t)
   if h[0]=='l' and xs:
    hh,qs=flat(h[1])
    if hh==d.V(0):
     sub=find(xs[0],depth+1)
     if sub:
      b=dict(kind='strict',qs=qs,sub=sub)
      for a in xs[1:]:b=dict(kind='left',arg=a,sub=b)
      return dict(kind='replay',term=t,prep=prep,sub=b) if prep else b
  t,ps=simp(t);prep+=ps
  b=tri(t)
  if b:return dict(kind='replay',term=t,prep=prep,sub=b)
  p=weakpath(t)
  if p is None or d.size(t)>1400:break
  t=rw(t,p);prep.append(p)
 return None
if __name__=='__main__':
 signal.alarm(112);rows=json.loads((H/'sources.json').read_text());old=json.loads((H/'unary_flow.json').read_text());certs=[];opened=[]
 for i in old['opened']:
  t=d.A(d.subst(ad.tup(rows[i]['tree']),0,d.Kc('c')),d.Z());c=find(t)
  if c:certs.append(dict(id=i,certificate=c))
  else:opened.append(i)
 rec=dict(certificates=certs,opened=opened,states=probe.COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/'tri.json').write_text(json.dumps(rec,separators=(',',':'))+'\n');print('tri',len(certs),'open',len(opened),'states',probe.COUNT,'sec',rec['seconds']);print('open',opened)
