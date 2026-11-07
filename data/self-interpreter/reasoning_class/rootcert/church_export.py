from probe import *
from export import ls,ps
TWO=D.L(D.L(D.A(D.V(1),D.A(D.V(1),D.V(0)))))
def pos(t):return t==TWO or (t[0]=='a' and pos(t[1]) and pos(t[2]))
rs=source_rows();engine=json.loads((H/'engine_results.json').read_text());out=[]
s='import Church\nnamespace Blc.Rootcert.ChurchCases\nopen Term SelfintClass SelfintLowerBound SelfintSourceCost HandlerLet RootcertChurch\nset_option maxRecDepth 10000\n'
for rec in engine:
 if rec['engine'][0]!='UNKNOWN' or 'x1 (x1 x2)' not in rec['helper']:continue
 i=rec['id'];R=a.tup(rs[i][1]['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z());p=weakpath(t);t=mx.rewrite(t,p);prep=[p]
 xs=[]
 while not pos(t):assert t[0]=='a';xs.append(t[2]);t=t[1]
 xs=xs[::-1];assert len(xs)>=2
 f,x,*rest=xs;h,ys=flat(f);assert h[0]=='k' and h[1]!='r';hi=dict(c=0,j=1,N=2,r=3)[h[1]]
 s+=f'\ndef r{i} : Term := {lean(R)}\ntheorem reject{i} : ¬ Reader r{i} := by\n exact positive_wrong_head {ps(prep)} {lean(t)} {lean(f)} {lean(x)} {ls(rest)} {hi} {len(ys)} (by decide) (by decide) (by decide) (by decide)\n#print axioms reject{i}\n'
 out.append(dict(id=i,kind='church',prep=prep))
s+='end Blc.Rootcert.ChurchCases\n';(H/'ChurchCases.lean').write_text(s);(H/'church_certificates.json').write_text(json.dumps(out)+'\n');print('wrote',len(out))
