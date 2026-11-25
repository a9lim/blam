from w43sat import *
import inspect
def probe(i,side):
 R=ad.tup(sources()[str(i)]['source']);return d.A(d.subst(R,0,d.Kc('c')),d.Z() if side==0 else d.U(1))
def run(i,N,side):
 s=inspect.getsource(construct).replace("else 0\n   return tuple", "else (1 if t==('k',barrier) else 0)\n   return tuple").replace("t=ad.tup(sources()[str(i)]['source'])","t=probe(i,side)").replace("p.cl.append([typ(t,())[0]])","p.cl.append([v for z,v in enumerate(typ(t,())) if z!=1])").replace("f'ty{i}_{N}.cnf'","(name+'.cnf')").replace("f'ty{i}_{N}.map'","(name+'.map')")
 name=f'top{i}_{N}_{side}';sc={**globals(),'side':side,'barrier':'r' if side==0 else 'c','name':name};exec(s,sc);sc['construct'](i,N)
 tool=Path.home()/'.elan/toolchains'/((P.parents[2]/'lean/lean-toolchain').read_text().strip().replace('/','--').replace(':','---'))/'bin/cadical'
 os.execv(str(tool),[str(tool),'-q','-t','22',str(D/(name+'.cnf'))])
def go(N,side):
 ids=[i for i in (7741,7755,21043) if not (D/f'top{i}.json').exists()]
 import w43run
 s=inspect.getsource(w43run.supervise).replace('if code:raise RuntimeError','if code not in (0,10,20):raise RuntimeError')
 sc={**vars(w43run)};exec(s,sc);sc['supervise']([(f'top{i}_{N}_{side}',[sys.executable,'-B','w43top.py','one',str(i),str(N),str(side)],905000000,None) for i in ids],'topsearch')
 for i in ids:
  name=f'top{i}_{N}_{side}';ls=(D/(name+'.log')).read_text().splitlines()
  if 's SATISFIABLE' in ls:
   m={int(x) for l in ls if l.startswith('v ') for x in l.split()[1:]}
   F=[(k,a,z) for k,a,z,v in json.loads((D/(name+'.map')).read_text()) if v in m];save(D/f'top{i}.json',dict(N=N,F=F,side=side))
if __name__=='__main__':
 if sys.argv[1]=='one':limit();run(*map(int,sys.argv[2:]))
 else:go(*map(int,sys.argv[1:]))
