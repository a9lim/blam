from probe import *
from export import ls,ps
HCOM=D.L(D.L(D.A(D.V(1),D.A(D.V(0),D.V(1)))))
KCOM=D.A(D.A(HCOM,D.A(HCOM,HCOM)),HCOM)
cs=json.loads((H/'lower_open.json').read_text());out=[]
s='import Recursor\nnamespace Blc.Rootcert.LowerCases\nopen Term SelfintClass RootcertRecursor\nset_option maxRecDepth 10000\n'
for rec in cs:
 i=rec['id'];R=a.tup(rec['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());prep=[]
 for n in range(30):
  u=t;rest=[]
  while u[0]=='a':
   if u==KCOM:break
   rest.append(u[2]);u=u[1]
  if u==KCOM and rest:break
  p=weakpath(t);assert p is not None;t=mx.rewrite(t,p);prep.append(p)
 else:raise AssertionError(i)
 rest=rest[::-1]
 s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n exact reject {ps(prep)} {lean(rest[0])} {ls(rest[1:])} (by decide)\n#print axioms reject{i}\n'
 out.append(dict(id=i,kind='recursor',cell=rec['cell'],prep=prep))
s+='end Blc.Rootcert.LowerCases\n';(H/'LowerCases.lean').write_text(s);(H/'lower_certificates.json').write_text(json.dumps(out)+'\n');print('certificates',len(out))
