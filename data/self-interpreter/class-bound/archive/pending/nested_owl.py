"""Recognize the final eight exceptions as application trees of owl G_n."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'rootnl'))
import mixed as m
from nested_families import watchdog,START
import json,signal,threading,time,resource
D=m.d;O=m.f.O
def gn(n):
 t=D.A(O,D.V(0))
 for _ in range(n+1):t=D.A(D.V(0),t)
 return D.L(t)
GS=[gn(n) for n in range(16)]
def tree(t):
 if t in GS:return ['atom',GS.index(t)]
 if t[0]=='a':
  a,b=tree(t[1]),tree(t[2])
  if a and b:return ['app',a,b]
 return None
def convert(t):
 if t==O or t in GS or t[0] in ('v','k'):return t,[]
 ps=[]
 if t[0]=='l':
  u,qs=convert(t[1]);return D.L(u),[(0,)+q for q in qs]
 a,qs=convert(t[1]);ps.extend((1,)+q for q in qs)
 b,qs=convert(t[2]);ps.extend((2,)+q for q in qs);t=D.A(a,b)
 if a==O and b==O:
  t=m.rw(t,());ps.append(())
 elif a==O and b in GS:
  t=m.rw(t,());ps.append(());t=m.rw(t,(0,2));ps.append((0,2))
 elif a==GS[0] and b==O:
  t=m.rw(t,());ps.append(());t,qs=convert(t);ps+=qs
 return t,ps
def find(t):
 prep=[]
 for _ in range(8):
  t,ps=convert(t);prep+=ps
  h,args=m.flat(t)
  if tree(h) and args and tree(args[0]):return dict(kind='owl_tree',prep=prep,f=h,a=args[0],rest=args[1:],hf=tree(h),ha=tree(args[0]))
  p=m.weakpath(t)
  if p is None:break
  t=m.rw(t,p);prep.append(p)
 return None
def main(name):
 r=json.loads((H/name).read_text());es=json.loads((H/r['source_file']).read_text())['exceptions'];rows=[];opened=[]
 for i in r['opened']:
  R=m.ad.tup(es[i]['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());c=find(t)
  if c:rows.append(dict(index=i,**c))
  else:opened.append(i)
 rec=dict(source_file=r['source_file'],certificates=rows,opened=opened,states=m.COUNT,seconds=time.monotonic()-START,rss_bytes=resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 (H/name.replace('mixed_','owl_')).write_text(json.dumps(rec,separators=(',',':'))+'\n');print(name,len(rows),'open',opened,'states',m.COUNT)
if __name__=='__main__':signal.alarm(112);threading.Thread(target=watchdog,daemon=True).start();main(sys.argv[1])
