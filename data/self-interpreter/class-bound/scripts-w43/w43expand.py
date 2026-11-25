from w43hard import *
def variants(R):
 """Walk the zero-probe head, retaining every demanded application prefix. Develop small internal redexes of each prefix separately."""
 from w43guard import LargeReduct
 t=d.A(d.subst(R,0,d.Kc('c')),d.Z());ps=[];found={}
 def keep(t,ps,rest):
  if 5<=d.size(t)<=150 and t[0]=='a' and (t not in found or len(ps)<len(found[t][0])):found[t]=(ps,rest)
 for step in range(40):
  u=t;rest=[]
  while u[0]=='a':
   keep(u,ps,rest);rest=[u[2]]+rest;u=u[1]
  if d.size(t)>730:break
  p=fam.weakpath(t)
  if p is None:break
  try:t=fam.mx.rewrite(t,p)
  except (RecursionError,LargeReduct):break
  ps=ps+[p]
 def contract(u,path=()):
  if u[0]=='a':
   if u[1][0]=='l':
    try:
     x=d.beta(u[1][1],u[2])
     if d.size(x)<=d.size(u)+2:yield path
    except LargeReduct:pass
   yield from contract(u[1],path+(1,));yield from contract(u[2],path+(2,))
  elif u[0]=='l':yield from contract(u[1],path+(0,))
 for u,(ps,cs) in list(found.items()):
  if d.size(u)>110:continue
  for _ in range(12):
   paths=list(contract(u))
   if not paths:break
   p=paths[-1];u=fam.mx.rewrite(u,p);ps=ps+[(1,)*len(cs)+p]
   keep(u,ps,cs)
 return sorted([(t,p,c) for t,(p,c) in found.items()],key=lambda a:(d.size(a[0]),len(a[1])))
def rescue(i):
 from w43guard import install
 install();limit()
 old=D/f'regular{i}.json';goal=json.loads(old.read_text())['states'] if old.exists() else 100000
 opts=variants(ad.tup(sources()[str(i)]['source']));t0=time.monotonic();tried=0
 cfg=[(0,'site'),(1,'lambda'),(1,'site'),(2,'lambda'),(1,'arg'),(2,'argenv'),(2,'env'),(3,'lambda'),(3,'argenv'),(3,'env'),(3,'both'),(4,'lambda'),(4,'argenv'),(5,'lambda'),(6,'lambda')]
 best=None
 for k,mode in cfg:
  for t,prep,rest in opts:
   if time.monotonic()-t0>50:break
   tried+=1
   try:z=regular.discover(convert(t),k,mode=mode,cap=11000,seconds=.09)
   except regular.Limit:continue
   if not z['ok']:continue
   c=portable.portable(z);n=len(c['states'])
   if n<goal:
    goal=n;best=dict(i=i,states=n,k=k,mode=mode,certificate=c,t=t,prep=prep,rest=rest,unary=False)
   if goal<175:break
  if goal<175 or time.monotonic()-t0>50:break
 if best:save(old,best)
 print('options',len(opts),'attempts',tried,'states',goal,flush=True)
if __name__=='__main__':
 if sys.argv[1]=='one':rescue(int(sys.argv[2]))
 else:
  ids=[int(x) for x in sources()]
  ids=[i for i in ids if not (D/f'regular{i}.json').exists() or json.loads((D/f'regular{i}.json').read_text())['states']>350]
  supervise([(f'expand{i}',[sys.executable,'-B','w43expand.py','one',str(i)],905000000,None) for i in ids],'expand')
