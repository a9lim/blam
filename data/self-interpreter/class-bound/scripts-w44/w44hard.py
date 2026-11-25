from w44regular import *
from w44split import segments,build
def small_options(R,side):
 # The first two options are independent of the final probe, apart from the
 # residual spine. Later options include bounded weak-head prefixes of the full probe.
 rr=d.subst(R,0,d.Kc('c'));h,args=fam.flat(rr);a,*cs=args
 stream=d.Z() if side==0 else d.U(1)
 yield d.A(h,a),[],cs+[stream]
 yield d.beta(h[1],a),[(1,)*(len(cs)+1)],cs+[stream]
 t=d.A(rr,stream);ps=[]
 for j in range(9):
  if d.size(t)>380:break
  if j in (0,2,4,8):yield t,ps,[]
  p=fam.weakpath(t)
  if p is None:break
  t=fam.mx.rewrite(t,p);ps=ps+[p]
def sources():
 return json.loads((D/'hard-input.json').read_text())
def searchone(i):
 limit();e=sources()[str(i)];R=ad.tup(e['source'])
 configs=[(0,'site'),(1,'site'),(1,'arg'),(1,'lambda'),(2,'site'),(2,'lambda'),(2,'argenv'),(2,'arg'),(3,'site'),(3,'lambda'),(3,'arg'),(4,'lambda'),(4,'argenv')]
 opts=list(small_options(R,0));opts+=list(small_options(R,1))[2:]
 best=None;attempted=set()
 # Prefer compact literal models. A stronger allocation can cost less in Lean
 # than checking a large expanded source.
 for maxsize in (42,80,380):
  for k,mode in configs:
   for idx,(t,ps,cs) in enumerate(opts):
    if len(ps)+len(cs)>60 or d.size(t)>maxsize or (idx,k,mode) in attempted:continue
    attempted.add((idx,k,mode))
    try:z=regular.discover(convert(t),k,mode=mode,cap=13000,seconds=.38)
    except regular.Limit:continue
    if not z['ok']:continue
    c=portable.portable(z);n=len(c['states']);score=n+d.size(t)
    if best is None or score<best[0]:best=score,idx,k,mode,c
    if n<=300:break
   if best and (best[0]<=340 or k>=2):break
  if best:break
 if best:
  sc,idx,k,mode,c=best
  save(D/f'regular{i}.json',dict(i=i,states=len(c['states']),idx=idx,k=k,mode=mode,certificate=c))
 else:save(D/f'unsettled{i}.json',dict(i=i,attempts=len(attempted)))
if __name__=='__main__':
 stage=sys.argv[1]
 if stage=='one':searchone(int(sys.argv[2]))
 elif stage=='discover':
  op,es=residual();save(D/'hard-input.json',{i:es[i] for i in op});del es;extras=json.loads((D/'extras.json').read_text());op=[i for i in op if str(i) not in extras]
  supervise([(f'regfind{i}',[sys.executable,'-B','w44hard.py','one',str(i)],905000000,None) for i in op if not (D/f'regular{i}.json').exists() and not (D/f'unsettled{i}.json').exists()],'regdiscovery')
