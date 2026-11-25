from w44polycert import *
from w44sat import construct,runsolver
import inspect,w44run
def abstract(t,dep=0):
 if t[0]=='k' or t[0]=='v' and t[1]>=dep:return ('free',)
 if t[0]=='v':return t
 return (t[0],*(abstract(x,dep+(t[0]=='l')) for x in t[1:]))
def groups():
 p=sources();exs=json.loads((D/'extras.json').read_text());b={}
 for j,e in p.items():
  if j not in exs:b.setdefault(abstract(ad.tup(e['source'])),[]).append(int(j))
 return list(b.values())
def loadknown():
 return [json.loads(p.read_text()) for path,pattern in [(P/'w43','type[0-9]*.json'),(D,'type[0-9]*.json')] for p in sorted(path.glob(pattern))]
def sweep():
 op,es=residual();save(D/'hard-input.json',{j:es[j] for j in op});save(D/'extras.json',{});print('baseline residual',len(op),flush=True)
def infer(N):
 if not (D/'hard-input.json').exists():sweep()
 seeds=loadknown();e=sources();jobs=[];gs=groups()
 for g in gs:
  i=g[0];t=ad.tup(e[str(i)]['source']);p=D/f'type{i}.json'
  if p.exists():continue
  for m in seeds:
   test=checked(m['N'],[tuple(x) for x in m['F']],t)[0]
   if 0 in test(t,()):save(p,m);break
  else:
   name=f'sat{i}_{N}'
   if not (D/(name+'.done')).exists():jobs.append((name,[sys.executable,'-B','w44family.py','one',str(i),str(N)],905000000,None))
 sc=vars(w44run).copy();exec(inspect.getsource(w44run.supervise).replace('if code:raise RuntimeError','if code not in (0,10,20):raise RuntimeError'),sc)
 keys=[j[0] for j in jobs];sc['supervise'](jobs,'sat')
 for name in keys:
  i=int(name.split('_')[0][3:]);log=(D/(name+'.log')).read_text().splitlines()
  if 's SATISFIABLE' in log:
   m={int(s) for l in log if l.startswith('v ') for s in l.split()[1:]}
   F=[(k,j,z) for k,j,z,v in json.loads((D/f'ty{i}_{N}.map').read_text()) if v in m]
   save(D/f'type{i}.json',dict(N=N,F=F))
  (D/(name+'.done')).write_text('\n')
 print('groups',len(gs),'typed',sum((D/f'type{g[0]}.json').exists() for g in gs),flush=True)
def emittypes():
 exs=json.loads((D/'extras.json').read_text());mods=[]
 for g in groups():
  i=g[0];p=D/f'type{i}.json'
  if not p.exists():continue
  m=generate(i,json.loads(p.read_text()),g);mods.append(m)
  for j in g:exs[str(j)]=['recursive application types',m]
 build(['Slice44Poly'],'polylib',True);supervise(leanjobs(mods),'poly');save(D/'extras.json',exs)
if __name__=='__main__':
 if sys.argv[1]=='one':
  limit();i,N=map(int,sys.argv[2:]);construct(i,N);runsolver(i,N)
 elif sys.argv[1]=='infer':infer(int(sys.argv[2]))
 elif sys.argv[1]=='emit':emittypes()
 else:sweep()
