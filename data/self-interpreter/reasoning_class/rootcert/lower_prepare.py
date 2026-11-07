from probe import *
def bits(t,dep=0):
 if t[0]=='v':return '1'*(t[1]+1)+'0'
 if t[0]=='k':return '1'*(dep+dict(c=0,j=1,N=2,r=3)[t[1]]+1)+'0'
 if t[0]=='l':return '00'+bits(t[1],dep+1)
 return '01'+bits(t[1],dep)+bits(t[2],dep)
rs=json.loads((H/'lower_exceptions.json').read_text());out=[]
for r in rs:
 R=a.tup(r['source']);t=D.A(D.subst(R,0,D.Kc('c')),D.Z() if r['probe']=='zero' else D.U(1));r['wire']='00000000'+bits(t);out.append(r['wire'])
(H/'lower.blc').write_text('\n'.join(out)+'\n');(H/'lower_probes.json').write_text(json.dumps(rs,separators=(',',':'))+'\n');print(len(rs))
