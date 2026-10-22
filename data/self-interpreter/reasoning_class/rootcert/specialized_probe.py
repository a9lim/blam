from probe import *
I=D.L(D.V(0));K=D.L(D.L(D.V(1)));F=D.L(D.L(D.V(0)))
COUNT=0

def inst(t,env):
 if t[0]=='k':return env[t[1]]
 if t[0]=='v':return t
 if t[0]=='l':return D.L(inst(t[1],env))
 return D.A(inst(t[1],env),inst(t[2],env))

def nf(t):
 global COUNT
 ps=[];seen=set()
 for k in range(200):
  p=next(mx.redexes(t),None)
  if p is None:return t,ps
  if t in seen:return None
  seen.add(t);t=mx.rewrite(t,p);ps.append(p);COUNT+=1;assert COUNT<=95000
  if D.size(t)>1000:return None
 return None

rs=source_rows();out=[];opened=[];start=time.monotonic();signal.alarm(110)
for i in [115,119,127]:
 R=a.tup(rs[i][1]['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());done=False
 for c in [F,K,I]:
  for j in [I,K,F]:
   for r in [I,K,F]:
    env=dict(c=c,j=j,N=I,r=r);left=nf(inst(t,env));right=nf(D.A(r,j))
    if left is not None and right is not None and left[0]!=right[0]:
     out.append(dict(id=i,kind='specialized',env=env,lhs=left[0],rhs=right[0],ps=left[1],qs=right[1]));done=True;break
   if done:break
  if done:break
 if not done:opened.append(i)
(H/'specialized_certificates.json').write_text(json.dumps(out,separators=(',',':'))+'\n');print('cert',len(out),'open',opened,'steps',COUNT,'seconds',time.monotonic()-start)
