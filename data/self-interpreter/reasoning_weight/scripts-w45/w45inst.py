from w45hard import *
def options_inst(R,side):
 I=d.L(d.V(0));delta=d.L(d.A(d.V(0),d.V(0)));om=d.A(delta,delta)
 env={'c':om,'j':om,'N':om,'r':om};env['c' if side else 'r']=d.L(d.L(I)) if side else d.L(I)
 def fill(t):
  if t[0]=='k':return env[t[1]]
  if t[0]=='v':return t
  return (t[0],*(fill(x) for x in t[1:]))
 t=fill(d.A(d.subst(R,0,d.Kc('c')),d.U(1) if side else d.Z()));ps=[]
 for j in range(15):
  if d.size(t)>1100:break
  if j in (0,1,2,4,8,14):
   yield t,ps,[]
   h,args=fam.flat(t)
   for k in range(len(args)-1):
    h=d.A(h,args[k]);yield h,ps,args[k+1:]
  path=fam.weakpath(t)
  if path is None:break
  t=fam.mx.rewrite(t,path);ps=[*ps,path]
def search(i):
 limit();r=ad.tup(sources()[str(i)]['source'])
 best=None;seen=set()
 opts=[(side,idx,t,ps,cs) for side in (0,1) for idx,(t,ps,cs) in enumerate(options_inst(r,side))]
 opts.sort(key=lambda opt:d.size(opt[2]))
 for k,mode in ((0,'site'),(1,'site'),(1,'lambda'),(2,'argenv'),(2,'site'),(3,'lambda'),(3,'site')):
  for side,idx,t,ps,cs in opts:
   if (k,mode,t) in seen:continue
   seen.add((k,mode,t))
   try:z=regular.discover(convert(t),k,mode=mode,cap=6000,seconds=.12)
   except regular.Limit:continue
   if z['ok']:
    c=portable.portable(z);n=len(c['states'])
    if best is None or n<best[0]:best=n,side,idx,k,mode,c
    if n<140:break
  if best:break
 if best:
  n,side,idx,k,mode,c=best;save(D/f'regular{i}.json',dict(i=i,states=n,side=side,inst=True,idx=idx,k=k,mode=mode,certificate=c))
 else:save(D/f'instopen{i}.json',dict(attempts=len(seen)))
if __name__=='__main__':
 if sys.argv[1]=='one':search(int(sys.argv[2]))
 else:
  exs=json.loads((D/'extras.json').read_text())
  ids=[int(x) for x in sources() if x not in exs and not (D/f'regular{x}.json').exists()]
  supervise([(f'instfind{i}',[sys.executable,'-B','w45inst.py','one',str(i)],905000000,None) for i in ids],'instdiscovery')
