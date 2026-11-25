from w43hard import *
from functools import lru_cache
class CNF:
 def __init__(self):
  self.n=1;self.cl=[[1]];self.memo={};self.w=0
 def new(self):
  self.n+=1;return self.n
 def AND(self,args):
  s=set(args)
  if -1 in s or any(-a in s for a in s):return -1
  s.discard(1)
  if not s:return 1
  if len(s)==1:return s.pop()
  s=tuple(sorted(s))
  if s not in self.memo:
   v=self.new();self.memo[s]=v;self.cl.extend([[-v,k] for k in s]);self.cl.append([v,*[-a for a in s]])
  return self.memo[s]
 def OR(self,args):return -self.AND(-x for x in args)
def construct(i,N):
 p=CNF();F={(k,j,z):p.new() for k in range(2,N) for j in range(N) for z in range(N) if z!=1}
 @lru_cache(None)
 def typ(t,e):
  if t[0] in ('v','k'):
   j=e[t[1]] if t[0]=='v' and t[1]<len(e) else 0
   return tuple(1 if j==0 or z in (j,1) else -1 for z in range(N))
  if t[0]=='l':
   bs=[typ(t[1],(j,)+e) for j in range(N)]
   return (-1,1,*[p.AND(p.OR((-u,bs[j][z])) for (l,j,z),u in F.items() if l==k) for k in range(2,N)])
  f,a=[typ(x,e) for x in t[1:]]
  terms={z:p.OR(p.AND((v,f[k],a[j])) for (k,j,b),v in F.items() if b==z) for z in range(N) if z!=1}
  rigid=p.OR([f[0],terms[0]])
  return tuple(1 if z==1 else p.OR((rigid,terms[z])) for z in range(N))
 t=ad.tup(sources()[str(i)]['source'])
 p.cl.append([typ(t,())[0]])
 with (D/f'ty{i}_{N}.cnf').open('w') as f:
  f.write(f'p cnf {p.n} {len(p.cl)}\n')
  for c in p.cl:f.write(' '.join(map(str,c))+' 0\n')
 save(D/f'ty{i}_{N}.map',[(k,j,z,v) for (k,j,z),v in F.items()])
def runsolver(i,N):
 lean=Path.home()/'.elan/toolchains'/((P.parents[2]/'lean/lean-toolchain').read_text().strip().replace('/','--').replace(':','---'))/'bin/cadical'
 # This watcher owns the CaDiCaL PID via exec. The SAT convention uses codes 10 and 20.
 os.execv(str(lean),[str(lean),'-q','-t','24',str(D/f'ty{i}_{N}.cnf')])
def dispatch(N,ids):
 import w43run
 jobs=[]
 for i in ids:
  if not (D/f'ty{i}_{N}.cnf').exists():construct(i,N)
  if not (D/f'type{i}.json').exists():
   jobs.append((f'sat{i}_{N}',[sys.executable,'-B','w43sat.py','solve',str(i),str(N)],905000000,None))
 # Normalize documented solver exit codes without introducing a fourth worker.
 import inspect
 s=inspect.getsource(w43run.supervise).replace('if code:raise RuntimeError','if code not in (0,10,20):raise RuntimeError')
 scope={**vars(w43run)};exec(s,scope);scope['supervise'](jobs,'satjobs')
 for i in ids:
  if (D/f'type{i}.json').exists():continue
  lines=(D/f'sat{i}_{N}.log').read_text().splitlines()
  if 's SATISFIABLE' not in lines:continue
  m={int(s) for l in lines if l.startswith('v ') for s in l.split()[1:]}
  F=[(k,j,z) for k,j,z,v in json.loads((D/f'ty{i}_{N}.map').read_text()) if v in m]
  save(D/f'type{i}.json',dict(N=N,F=F))
if __name__=='__main__':
 if sys.argv[1]=='solve':runsolver(*map(int,sys.argv[2:]))
 else:
  N=int(sys.argv[1]);dispatch(N,list(map(int,sys.argv[2:])))
