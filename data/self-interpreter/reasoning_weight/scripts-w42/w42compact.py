from w42regular import *
def findsmall(i):
 limit()
 es=json.loads((P/'probe42.json').read_text())['exceptions'];opts=list(options(ad.tup(es[i]['source'])))
 best=None
 for idx,(t,p,r) in enumerate(opts):
  if d.size(t)>50:continue
  for k,mode in ((1,'site'),(1,'argenv'),(2,'lambda'),(2,'site'),(2,'argenv'),(2,'arg'),(3,'lambda'),(3,'site'),(3,'arg'),(4,'lambda'),(4,'argenv')):
   try:z=regular.discover(convert(t),k,mode=mode,cap=20000,seconds=1.5)
   except regular.Limit:continue
   if z['ok']:
    c=portable.portable(z);n=len(c['states'])
    if best is None or n<best[0]:best=n,idx,k,mode,c
    if n<400:break
 if best:
  n,idx,k,mode,c=best;save(D/f'regular{i}.json',dict(i=i,states=n,idx=idx,k=k,mode=mode,certificate=c))
 print('compact',i,best[:4] if best else None)
if __name__=='__main__':findsmall(int(sys.argv[1]))
