from probe import *
HCOM=D.L(D.L(D.A(D.V(1),D.A(D.V(0),D.V(1)))))
KCOM=D.A(D.A(HCOM,D.A(HCOM,HCOM)),HCOM)
OCOM=D.L(D.L(D.A(D.V(0),D.A(D.V(1),D.V(0)))))
rs=source_rows();engine=json.loads((H/'engine_results.json').read_text());cert=[];opened=[];steps=0
for r in engine:
 if r['engine'][0]!='UNKNOWN' or r['id'] in {x['id'] for x in json.loads((H/'church_certificates.json').read_text())}:continue
 i=r['id'];R=a.tup(rs[i][1]['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());prep=[];done=False
 for n in range(100):
  # Seek exact K core as a head prefix.
  u=t;rest=[]
  while u[0]=='a':
   if u==KCOM:break
   rest.append(u[2]);u=u[1]
  if u==KCOM and rest:
   cert.append(dict(id=i,kind='kcore',prep=prep,rest=rest[::-1]));done=True;break
  p=weakpath(t)
  if p is None or D.size(t)>3000:break
  t=mx.rewrite(t,p);prep.append(p);steps+=1
 if not done:opened.append(i)
(H/'k_certificates.json').write_text(json.dumps(cert,separators=(',',':'))+'\n')
print('K cert',len(cert),'open',opened,'steps',steps)
