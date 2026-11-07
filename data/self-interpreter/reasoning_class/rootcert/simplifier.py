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

