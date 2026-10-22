from probe import *
sys.path.insert(0,str(H.parent/'coord'))
import rd
sys.path.insert(0,str(H.parent/'rootlet'))
import boundary as b,check_filtered as check

def db(t,env=()):
 if t[0]=='V':return D.Kc('j') if t[1]=='j' else D.V(env.index(t[1]) if t[1] in env else len(env))
 if t[0]=='L':return D.L(db(t[2],(t[1],)+env))
 return D.A(db(t[1],env),db(t[2],env))
rs={'162':r'\s. s (\a. a) (\u. s (\q. c) (s s u)) j',
    '165':r'(\n s. s (\b. b (\u r. r n) c) (s s s)) j'}
out={}
for name,src in rs.items():
 R=db(rd.parse(src));got=[]
 for n in range(9):
  stream=D.Z() if n==0 else D.U(n)
  target=D.A(D.Kc('r'),D.Kc('j')) if n==0 else D.A(D.A(D.Kc('c'),D.U(n-1)),D.Kc('N'))
  answer=check.necessary(D.A(D.subst(R,0,D.Kc('c')),stream),target);assert answer=='pass',(name,n,answer);got.append(answer)
 out[name]=dict(weight=b.weight(R),zero_and_unary_1_to_8=got)
assert out['162']['weight']==46 and out['165']['weight']==49
(H/'controls.json').write_text(json.dumps(out,indent=2)+'\n');print(out)
