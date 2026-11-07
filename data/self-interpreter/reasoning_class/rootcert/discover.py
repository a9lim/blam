from probe import *
COUNT=0

def rw(t,p):
 global COUNT
 COUNT+=1
 assert COUNT<=99000
 return mx.rewrite(t,p)

def normal(t):
 ps=[]
 for _ in range(20):
  p=next(mx.redexes(t),None)
  if p is None:return t,ps
  t=rw(t,p);ps.append(p)
  if D.size(t)>150:return None
 return None

def parts(t):
 h,xs=flat(t);ps=[]
 paths=[(1,)*len(xs)]+[(1,)*(len(xs)-i-1)+(2,) for i in range(len(xs))]
 for p in paths:
  old=mx.at(t,p)
  if old[0]!='l':continue
  nf=normal(old)
  if nf:
   for q in nf[1]:r=p+q;t=rw(t,r);ps.append(r)
 return t,ps

def lower(t,n):
 def valid(t,depth=0):
  if t[0]=='v':return t[1]<depth or t[1]>=depth+n
  if t[0]=='k':return True
  if t[0]=='l':return valid(t[1],depth+1)
  return valid(t[1],depth) and valid(t[2],depth)
 return D.shift(t,-n) if valid(t) else None

def form(t):
 if t[0]!='l':return None
 h,xs=flat(t[1])
 if h!=D.V(0) or not xs or xs[0][0]!='l':return None
 gh,ys=flat(xs[0][1])
 if gh!=D.V(1) or not ys or ys[0]!=D.V(0):return None
 ws=[lower(t,2) for t in ys[1:]];ts=[lower(t,1) for t in xs[1:]]
 if None in ws or None in ts:return None
 return ws,ts

if __name__=='__main__':
 signal.alarm(110);start=time.monotonic();out=[];opened=[]
 for i,(cell,e) in enumerate(source_rows()):
  R=a.tup(e['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());prep=[];done=False
  for _ in range(16):
   t,ps=parts(t);prep+=ps;h,xs=flat(t)
   f1=form(h);f2=form(xs[0]) if xs else None
   if f1 and f2 and f1[0]==f2[0]:
    out.append(dict(id=i,kind='grow',prep=prep,ws=f1[0],ts=f1[1],ss=f2[1],rest=xs[1:]));done=True;break
   if len(xs)>=2 and h[0]=='l' and h[1][0]=='l' and xs[1]==h:
    hh,ys=flat(h[1][1])
    if hh==D.V(0) and len(ys)==2 and ys[1]==D.V(0):
     out.append(dict(id=i,kind='template',prep=prep,D=ys[0],t=xs[0],rest=xs[2:]));done=True;break
   p=weakpath(t)
   if p is None or D.size(t)>1500:break
   t=rw(t,p);prep.append(p)
  if not done:opened.append(i)
 (H/'certificates.json').write_text(json.dumps(out,separators=(',',':'))+'\n')
 (H/'discover_open.json').write_text(json.dumps(opened)+'\n')
 print(collections.Counter(r['kind'] for r in out),len(opened), 'states',COUNT,'seconds',time.monotonic()-start,'rss',resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
