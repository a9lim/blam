from w43sat import *
from itertools import combinations
def solve(i,N):
 p=CNF();ins=[(a,a) for a in range(N)]+list(combinations(range(2,N),2))
 F={(k,a,b,z):p.new() for k in range(2,N) for a,b in ins for z in range(N) if z!=1}
 @lru_cache(None)
 def typ(t,e):
  if t[0] in ('v','k'):
   pair=e[t[1]] if t[0]=='v' and t[1]<len(e) else (0,0)
   return tuple(1 if 0 in pair or z==1 or z in pair else -1 for z in range(N))
  if t[0]=='l':
   bodies={pair:typ(t[1],(pair,)+e) for pair in ins}
   return (-1,1,*[p.AND(p.OR((-v,bodies[a,b][z])) for (l,a,b,z),v in F.items() if l==k) for k in range(2,N)])
  f,a=[typ(x,e) for x in t[1:]]
  r={z:p.OR(p.AND((v,f[k],a[x],a[y])) for (k,x,y,vv),v in F.items() if vv==z) for z in range(N) if z!=1}
  rigid=p.OR([f[0],r[0]]);return tuple(1 if z==1 else p.OR((rigid,r[z])) for z in range(N))
 r=ad.tup(sources()[str(i)]['source']);p.cl.append([typ(r,())[0]])
 name=f'meet{i}_{N}'
 with (D/(name+'.cnf')).open('w') as f:
  f.write(f'p cnf {p.n} {len(p.cl)}\n')
  for c in p.cl:f.write(' '.join(map(str,c))+' 0\n')
 save(D/(name+'.map'),[(k,a,b,z,v) for (k,a,b,z),v in F.items()])
 tool=Path.home()/'.elan/toolchains'/((P.parents[2]/'lean/lean-toolchain').read_text().strip().replace('/','--').replace(':','---'))/'bin/cadical'
 os.execv(str(tool),[str(tool),'-q','-t','40',str(D/(name+'.cnf'))])
def go(N):
 ids=[i for i in (7741,7755,21043) if not (D/f'meet{i}.json').exists()]
 import inspect,w43run
 s=inspect.getsource(w43run.supervise).replace('if code:raise RuntimeError','if code not in (0,10,20):raise RuntimeError')
 scope={**vars(w43run)};exec(s,scope);scope['supervise']([(f'meet{i}_{N}',[sys.executable,'-B','w43meetsat.py','one',str(i),str(N)],905000000,None) for i in ids],'meetsearch')
 for i in ids:
  name=f'meet{i}_{N}'
  ls=(D/(name+'.log')).read_text().splitlines()
  if 's SATISFIABLE' in ls:
   m={int(x) for l in ls if l.startswith('v ') for x in l.split()[1:]}
   F=[(k,a,b,z) for k,a,b,z,v in json.loads((D/(name+'.map')).read_text()) if v in m]
   save(D/f'meet{i}.json',dict(N=N,F=F))
if __name__=='__main__':
 if sys.argv[1]=='one':limit();solve(*map(int,sys.argv[2:]))
 else:go(int(sys.argv[1]))
