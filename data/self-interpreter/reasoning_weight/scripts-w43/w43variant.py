from w43sat import *
from w43polycert import checked
def candidates(i):
 from w43guard import install,LargeReduct
 from harder import deep
 R=ad.tup(sources()[str(i)]['source']);t=R;ps=[];seen={R};opts=[]
 for s in range(19):
  seen.add(t);opts.append((ps,t))
  if d.size(t)>=120:break
  p=fam.weakpath(t)
  if p is None:break
  t=fam.mx.rewrite(t,p);ps=ps+[p]
 for ps,t in opts.copy():
  u,qs=deep(t)
  if qs and u not in seen and d.size(u)<=130:seen.add(u);opts.append((ps+qs,u))
 return opts[1:]
def setup(i,N,lo,hi):
 import inspect
 cname=f'v{i}_{N}_{lo}_{hi}'
 opts=candidates(i)[lo:hi]
 text=inspect.getsource(construct)
 text=text[:text.index(' t=ad.tup')]+text[text.index(' with (D/'):];text=text.replace(" with (D/", " p.cl.append([p.OR(typ(t,())[0] for ps,t in opts)])\n with (D/",1)
 text=text.replace("f'ty{i}_{N}.cnf'","(cname+'.cnf')").replace("f'ty{i}_{N}.map'","(cname+'.map')")
 scope={**globals(),'opts':opts,'cname':cname};exec(text,scope);scope['construct'](i,N);return cname
def go(N,lo,hi):
 import inspect
 ids=[i for i in [7741,7755,21043] if not (D/f'type{i}.json').exists()]
 jobs=[];names=[]
 for i in ids:
  name=setup(i,N,lo,hi);names.append(name)
  tool=Path.home()/'.elan/toolchains'/((P.parents[2]/'lean/lean-toolchain').read_text().strip().replace('/','--').replace(':','---'))/'bin/cadical'
  jobs.append((name,[str(tool),'-q','-t','18',str(D/(name+'.cnf'))],905000000,None))
 import w43run
 s=inspect.getsource(w43run.supervise).replace('if code:raise RuntimeError','if code not in (0,10,20):raise RuntimeError')
 scope={**vars(w43run)};exec(s,scope);scope['supervise'](jobs,'variant')
 for i,n in zip(ids,names):
  lines=(D/(n+'.log')).read_text().splitlines()
  if 's SATISFIABLE' not in lines:continue
  m={int(s) for l in lines if l.startswith('v ') for s in l.split()[1:]}
  F=[(k,j,z) for k,j,z,v in json.loads((D/(n+'.map')).read_text()) if v in m]
  ps,t=next((ps,t) for ps,t in candidates(i)[lo:hi] if 0 in checked(N,F,t)[0](t,()))
  save(D/f'type{i}.json',dict(N=N,F=F,prep=ps))
if __name__=='__main__':limit();go(*map(int,sys.argv[1:]))
