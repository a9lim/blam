from probe import *
from export import ls,ps
O=D.L(D.L(D.A(D.V(0),D.A(D.V(1),D.V(0)))))
core=D.A(D.A(O,O),D.A(D.A(O,O),O))
s='import Owl\nnamespace Blc.Rootcert.OwlCases\nopen Term SelfintClass RootcertOwl\nset_option maxRecDepth 10000\n';out=[];rs=source_rows()
for i in [0,1,2,3,102]:
 R=a.tup(rs[i][1]['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());p=weakpath(t);t=mx.rewrite(t,p);rest=[]
 while t!=core:assert t[0]=='a';rest.append(t[2]);t=t[1]
 rest=rest[::-1]
 s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n exact reject {ps([p])} {ls(rest)} (by decide)\n#print axioms reject{i}\n'
 out.append(dict(id=i,kind='owl',prep=[p]))
s+='end Blc.Rootcert.OwlCases\n';(H/'OwlCases.lean').write_text(s);(H/'owl_certificates.json').write_text(json.dumps(out)+'\n')
