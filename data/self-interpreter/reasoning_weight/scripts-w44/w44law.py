from w44sat import *
from w44hard import *
from functools import lru_cache
import inspect,w44run
def terms(i,side):
 R=ad.tup(sources()[str(i)]['source']);a=d.A(d.subst(R,0,d.Kc('c')),d.Z() if side==0 else d.U(1))
 b=d.A(d.Kc('r'),d.Kc('j')) if side==0 else d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N'))
 return a,b
def problem(i,N,side):
 p=CNF();F={(k,j,z):p.new() for k in range(2,N) for j in range(N) for z in range(N) if z!=1};keys=('c','j','N','r')
 X={s:[p.new() for _ in range(N)] for s in keys}
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
  rigid=p.OR([f[0],terms[0]]);return [1 if z==1 else p.OR((rigid,terms[z])) for z in range(N)]
 a,b=[typ(t,()) for t in terms(i,side)];p.cl.append([p.AND([v,-u]) for v,u in zip(a,b)])
 name=f'law{i}_{N}_{side}'
 with (D/(name+'.cnf')).open('w') as f:
  f.write(f'p cnf {p.n} {len(p.cl)}\n')
  for c in p.cl:f.write(' '.join(map(str,c))+' 0\n')
 save(D/(name+'.map'),dict(F=[(k,j,z,v) for (k,j,z),v in F.items()],X=X))
 tool=Path.home()/'.elan/toolchains'/((P.parents[2]/'lean/lean-toolchain').read_text().strip().replace('/','--').replace(':','---'))/'bin/cadical'
 os.execv(str(tool),[str(tool),'-q','-t','8',str(D/(name+'.cnf'))])
def getids():
 exs=json.loads((D/'extras.json').read_text())
 return [int(x) for x in sources() if x not in exs and not (proofs/f'Slice44Regular{x}.resources.json').exists()]
def finds(N):
 ids=[i for i in getids() if not (D/f'law{i}.json').exists()]
 for side in (0,1):
  jobs=[]
  for i in ids:
   name=f'law{i}_{N}_{side}'
   if not (D/f'law{i}.json').exists():jobs.append((name,[sys.executable,'-B','w44law.py','one',str(i),str(N),str(side)],905000000,None))
  sc=vars(w44run).copy();exec(inspect.getsource(w44run.supervise).replace('if code:raise RuntimeError','if code not in (0,10,20):raise RuntimeError'),sc);keys=[job[0] for job in jobs];sc['supervise'](jobs,'lawsearch')
  for name in keys:
   lines=(D/(name+'.log')).read_text().splitlines()
   if 's SATISFIABLE' not in lines:continue
   m={int(x) for l in lines if l.startswith('v ') for x in l.split()[1:]};r=json.loads((D/(name+'.map')).read_text())
   F=[(k,j,z) for k,j,z,v in r['F'] if v in m];e={k:next(j for j,v in enumerate(vs) if v in m) for k,vs in r['X'].items()}
   save(D/(name.split('_')[0]+'.json'),dict(F=F,e=e,N=N,side=side))
def discriminate(i,r,F):
 N=r['N'];base=r['e'];a,b=terms(i,r['side'])
 @lru_cache(None)
 def ev(t,e):
  if t[0] in ('k','v'):
   j=base[t[1]] if t[0]=='k' else e[t[1]];return set(range(N)) if j==0 else {1,j}
  if t[0]=='l':return {1}|{k for k in range(2,N) if all(z in ev(t[1],(j,)+e) for l,j,z in F if l==k)}
  f,a=[ev(u,e) for u in t[1:]];b={z for k,j,z in F if k in f and j in a}
  return set(range(N)) if 0 in f or 0 in b else b|{1}
 return ev(a,())-ev(b,())
def emit():
 exs=json.loads((D/'extras.json').read_text());ns=[];es=sources()
 for i in getids():
  path=D/f'law{i}.json'
  if not path.exists():continue
  r=json.loads(path.read_text());F=list(map(tuple,r['F']))
  for q in F.copy():
   tmp=F.copy();tmp.remove(q)
   if discriminate(i,r,tmp):F=tmp
  z=min(discriminate(i,r,F));e=r['e'];name=f'Slice44Law{i}'
  body='import Slice44FlowCheck\nnamespace Blc.'+name+'\nopen SelfintClass FloorFlowCheck\nset_option maxRecDepth 20000\n'
  body+='def g : List Row := ['+','.join(f'({k},{a},{b})' for k,a,b in F)+']\ndef e : FloorPoly.Env\n'+''.join(f" | {j} => {e[k]}\n" for j,k in enumerate(('c','j','N','r')))+' | _ => 0\n'
  body+=f'def r{i} : Term := {ex.lean(ad.tup(es[str(i)]["source"]))}\ntheorem reject{i} : ¬ Reader r{i} := '+('oneMismatch' if r['side'] else 'zeroMismatch')+f' g e {z} (by decide +kernel) (by decide +kernel)\n#print axioms reject{i}\nend Blc.{name}\n'
  (proofs/(name+'.lean')).write_text(body);ns.append(name);exs[str(i)]=['probe type mismatch',name]
 build(['Slice44FlowCheck'],'flowchecklib',True);supervise(leanjobs(ns),'lawreplay');save(D/'extras.json',exs)
if __name__=='__main__':
 if sys.argv[1]=='one':limit();problem(*map(int,sys.argv[2:]))
 elif sys.argv[1]=='emit':emit()
 else:finds(int(sys.argv[1]))
