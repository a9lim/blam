import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'handlerlet'))
import mixed_audit as mx,loop_audit as au,audit as a
import json,time,signal,resource,collections
D=a.d

def flat(t):
 xs=[]
 while t[0]=='a':xs.append(t[2]);t=t[1]
 return t,xs[::-1]

def weakpath(t):
 p=[]
 while t[0]=='a' and t[1][0]!='l':p.append(1);t=t[1]
 return tuple(p) if t[0]=='a' else None

def lean(t,dep=0):
 if t[0]=='v':return f'(.var {t[1]})'
 if t[0]=='k':return f'(.var {dep+dict(c=0,j=1,N=2,r=3)[t[1]]})'
 if t[0]=='l':return f'(.lam {lean(t[1],dep+1)})'
 return f'(.app {lean(t[1],dep)} {lean(t[2],dep)})'

def source_rows():
 rem=json.loads((H.parent/'rootlet/remaining.json').read_text())
 return [(c,e) for c,es in rem.items() for e in es]

if __name__=='__main__':
 signal.alarm(110);start=time.monotonic();rs=source_rows();out=[];count=0
 for i,(cell,e) in enumerate(rs):
  R=a.tup(e['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());prep=[];seen=set();kind='open'
  for n in range(80):
   count+=1;assert count<100000
   h,xs=flat(t)
   if h[0]=='k':kind='head';break
   if t in seen:kind='cycle';break
   seen.add(t)
   if D.size(t)>3000:kind='size';break
   p=weakpath(t)
   if p is None:kind='lambda';break
   t=mx.rewrite(t,p);prep.append(p)
  out.append(dict(id=i,cell=cell,kind=kind,steps=len(prep),head=h,arity=len(xs),size=D.size(t)))
 (H/'probe.json').write_text(json.dumps(out,separators=(',',':'))+'\n')
 print(collections.Counter((r['cell'],r['kind']) for r in out));print('steps',count,'seconds',time.monotonic()-start,'rss',resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
 print([r for r in out if r['id'] in [0,32,56]])
