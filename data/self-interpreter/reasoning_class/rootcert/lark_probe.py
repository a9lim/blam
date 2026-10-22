from probe import *
L=D.L(D.L(D.A(D.V(1),D.A(D.V(0),D.V(0)))))
T=D.A(D.A(L,L),D.A(L,L))
rs=source_rows();engine=json.loads((H/'engine_only.json').read_text());cert=[];opened=[];steps=0
for r in engine:
 i=r['id'];R=a.tup(rs[i][1]['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());prep=[];done=False
 for n in range(80):
  u=t;rest=[]
  while u[0]=='a':
   if u==T:break
   rest.append(u[2]);u=u[1]
  if u==T and rest:
   cert.append(dict(id=i,kind='lark',prep=prep,rest=rest[::-1]));done=True;break
  p=weakpath(t)
  if p is None or D.size(t)>3000:break
  t=mx.rewrite(t,p);prep.append(p);steps+=1
 if not done:opened.append(i)
(H/'lark_certificates.json').write_text(json.dumps(cert,separators=(',',':'))+'\n');(H/'lark_open.json').write_text(json.dumps(opened)+'\n')
print('Lark cert',len(cert),'open',opened,'steps',steps)
