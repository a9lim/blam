from w43top import *
def problem(N,side):
 p=CNF();F={(k,j,z):p.new() for k in range(2,N) for j in range(N) for z in range(N) if z!=1}
 X={s:[p.new() for _ in range(N)] for s in ('c','j','N','r')}
 for vs in X.values():
  p.cl.append(vs)
  for j,v in enumerate(vs):
   for w in vs[:j]:p.cl.append([-w,-v])
 @lru_cache(None)
 def typ(t,e):
  if t[0]=='k':return [1 if z==1 else p.OR((X[t[1]][0],X[t[1]][z])) for z in range(N)]
  if t[0]=='v':
   j=e[t[1]];return [1 if j==0 or z in (j,1) else -1 for z in range(N)]
  if t[0]=='l':
   bs=[typ(t[1],(j,)+e) for j in range(N)]
   return [-1,1,*[p.AND(p.OR((-u,bs[j][z])) for (l,j,z),u in F.items() if l==k) for k in range(2,N)]]
  f,a=[typ(x,e) for x in t[1:]]
  terms={z:p.OR(p.AND((v,f[k],a[j])) for (k,j,b),v in F.items() if b==z) for z in range(N) if z!=1}
  rigid=p.OR([f[0],terms[0]])
  return [1 if z==1 else p.OR((rigid,terms[z])) for z in range(N)]
 R=probe(21043,side);target=d.A(d.Kc('r'),d.Kc('j')) if side==0 else d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N'))
 a=typ(R,());b=typ(target,());p.cl.append([p.AND([v,-u]) for v,u in zip(a,b)])
 name=f'law{N}_{side}'
 with (D/(name+'.cnf')).open('w') as f:
  f.write(f'p cnf {p.n} {len(p.cl)}\n')
  for c in p.cl:f.write(' '.join(map(str,c))+' 0\n')
 save(D/(name+'.map'),dict(F=[(k,j,z,v) for (k,j,z),v in F.items()],X=X))
 tool=Path.home()/'.elan/toolchains'/((P.parents[2]/'lean/lean-toolchain').read_text().strip().replace('/','--').replace(':','---'))/'bin/cadical'
 os.execv(str(tool),[str(tool),'-q','-t','18',str(D/(name+'.cnf'))])
if __name__=='__main__':
 if sys.argv[1]=='one':limit();problem(*map(int,sys.argv[2:]))
 else:
  import w43run
  sc=vars(w43run).copy();exec(inspect.getsource(w43run.supervise).replace('if code:raise RuntimeError','if code not in (0,10,20):raise RuntimeError'),sc)
  sc['supervise']([(f'law{N}_{s}',[sys.executable,'-B','w43law.py','one',str(N),str(s)],905000000,None) for N in (4,5,6) for s in (0,1)],'lawjobs')
