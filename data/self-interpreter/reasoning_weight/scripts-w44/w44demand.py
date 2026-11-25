from w44hard import *
def render():
 name='Slice44Demand';s='''import Blc.SelfintRootLetBinaryOrbit
namespace Blc.Slice44Demand
open Term SelfintClass SelfintLowerBound
def I : Term := .lam (.var 0)
def D : Term := .lam I
def G (x : Term) : Term := .lam (.app (shift 1 0 x) (.app (shift 1 0 x) (.app (.var 0) D)))
def H : Term := .lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 0) D)))))
theorem stepH (x : Term) : Beta (.app H x) (.app x (G x)) := by
 simpa [H,G,D,I,contract,substDec] using Beta.beta (match H with | .lam b => b | _ => .var 0) x
theorem stepG (x y : Term) : Beta (.app (G x) y) (.app x (.app x (.app y D))) := by
 simpa [G,D,I,contract,substDec,substDec_shift] using Beta.beta (match G x with | .lam b => b | _ => .var 0) y
theorem stepD (x : Term) : Beta (.app D x) I := by rfl
theorem stepI (x : Term) : Beta (.app I x) x := by rfl
'''
 s=s.replace('I := by rfl','I := Beta.beta _ _').replace(' x := by rfl',' x := Beta.beta _ _')
 nodes=[];inv={};proofs0={};decl=[];stack=set();rs={}
 def node(x,*args):
  key=(x,*args)
  if key not in inv:
   i=len(nodes);nodes.append(key);inv[key]=i
   if x=='a':value=f'(.app n{args[0]} n{args[1]})'
   elif x=='G':value=f'G n{args[0]}'
   elif x=='v':value=f'.var {args[0]}'
   else:value=x
   decl.append(f'def n{i} : Term := {value}')
  return inv[key]
 H=node('H');D=node('D');I=node('I');A=lambda f,a:node('a',f,a)
 def head(t):
  while nodes[t][0]=='a':t=nodes[t][1]
  return t
 def ev(t):
  if t in proofs0:return proofs0[t]
  if t in stack or len(nodes)>5000:raise RuntimeError('unresolved')
  stack.add(t);x=nodes[t]
  if x[0]!='a':v=t;pf='.refl _'
  else:
   _,f,a=x;fv=ev(f);h=nodes[fv][0]
   if h=='H':z=A(a,node('G',a));step=f'stepH n{a}'
   elif h=='G':
    u=nodes[fv][1];z=A(u,A(u,A(a,D)));step=f'stepG n{u} n{a}'
   elif h=='D':z=I;step=f'stepD n{a}'
   elif h=='I':z=a;step=f'stepI n{a}'
   else:z=None
   if z is None:v=A(fv,a);pf=f'betas_appL n{a} ev{f}'
   else:v=ev(z);pf=f'betas_trans (betas_appL n{a} ev{f}) (.head ({step}) ev{z})'
  stack.remove(t);decl.append(f'theorem ev{t} : Betas n{t} n{v} := {pf}');proofs0[t]=v;return v
 for i,v,w in [(15938,1,0),(15939,0,1)]:
  t=A(A(A(H,H),node('v',v)),node('v',w));o=ev(t);a=o;pf='(.var _)'
  while nodes[a][0]=='a':a=nodes[a][1];pf=f'(.app _ {pf})'
  assert nodes[a]==('v',v);rs[i]=t,pf
 s+='\n'.join(decl)+'\n'
 for i,(t,pf) in rs.items():
  r=ad.tup(sources()[str(i)]['source']);s+=f'def r{i} : Term := {ex.lean(r)}\ntheorem reject{i} : ¬ Reader r{i} := by\n intro hr\n have h : Reader n{t} := hr.beta (.appL _ (.appL _ (.beta _ _)))\n exact reader_not_rigid (SelfintRootLetPowers.reader_betas h ev{t}) {pf}\n#print axioms reject{i}\n'
 s+='end Blc.'+name+'\n';(proofs/(name+'.lean')).write_text(s);print(len(nodes),'expressions;',len(proofs0),'reduction statements')
if __name__=='__main__':limit();render()
