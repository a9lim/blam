from probe import *
COUNT=0

def rw(t,p):
 global COUNT
 COUNT+=1;assert COUNT<=90000
 return mx.rewrite(t,p)

def nodes(t,p=()):
 yield p,t
 if t[0]=='l':yield from nodes(t[1],p+(0,))
 if t[0]=='a':yield from nodes(t[1],p+(1,));yield from nodes(t[2],p+(2,))

def simplify(t):
 ps=[]
 for round in range(5):
  changed=False
  for path,x in list(nodes(t))[::-1]:
   if not path or x[0] not in ('a','l'):continue
   u=x;qs=[]
   for k in range(16):
    p=next(mx.redexes(u),None)
    if p is None:break
    u=rw(u,p);qs.append(p)
    if D.size(u)>D.size(x)*3:break
   if not list(mx.redexes(u)) and D.size(u)<D.size(x):
    for q in qs:t=rw(t,path+q);ps.append(path+q)
    changed=True;break
  if not changed:break
 return t,ps

rs=source_rows();out=[];opened=[];signal.alarm(110);start=time.monotonic()
for i in json.loads((H/'lark_open.json').read_text()):
 R=a.tup(rs[i][1]['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());prep=[];done=False
 for j in range(12):
  t,ps=simplify(t);prep+=ps
  # Find cycle on each left prefix, with one genuine head beta first.
  core=t
  while core[0]=='a':
   p=weakpath(core)
   if p is not None:
    u=rw(core,p);qs=[]
    for n in range(12):
     u,ps=simplify(u);qs+=ps
     extra=au.prefix(u,core)
     if extra is not None:
      out.append(dict(id=i,kind='mixed',prep=prep,core=core,paths=qs,extra=extra,rest=au.prefix(t,core)));done=True;break
     p=weakpath(u)
     if p is None or D.size(u)>500:break
     u=rw(u,p);qs.append(p)
   if done:break
   core=core[1]
  if done:break
  p=weakpath(t)
  if p is None or D.size(t)>500:break
  t=rw(t,p);prep.append(p)
 if not done:opened.append(i)
(H/'mixed_certificates.json').write_text(json.dumps(out,separators=(',',':'))+'\n');(H/'mixed_open.json').write_text(json.dumps(opened)+'\n')
print('cert',len(out),'open',opened,'states',COUNT,'seconds',time.monotonic()-start,'rss',resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
