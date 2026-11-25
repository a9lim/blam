import sys
sys.dont_write_bytecode=True
from pathlib import Path
H=Path(__file__).resolve().parent
sys.path.insert(0,str(H.parent/'coord'))
import rd
import importlib.util,json
spec=importlib.util.spec_from_file_location('rootnl_check',H/'check.py');ck=importlib.util.module_from_spec(spec);spec.loader.exec_module(ck)
d=ck.d

def convert(t,env=('c',)):
 if t[0]=='V':return d.Kc('j') if t[1]=='j' else d.V(env.index(t[1]))
 if t[0]=='L':return d.L(convert(t[2],(t[1],)+env))
 return d.A(convert(t[1],env),convert(t[2],env))

readers=[r'\s. s I (\u. s (\q. c) (s s u)) j',r'(\n s. s (\b. b (\u r. r n) c) (s s s)) j',r'(\a s. s I (\u. s (\q.c) (s s a)) a) j']
results=[]
for src in readers:
 R=convert(rd.parse(src));w=ck.weight(R);assert rd.weight(rd.parse(src))[0]==w
 checks=[]
 for n in range(9):
  arg=d.Z() if n==0 else d.U(n)
  target=d.A(d.Kc('r'),d.Kc('j')) if n==0 else d.A(d.A(d.Kc('c'),d.U(n-1)),d.Kc('N'))
  checks.append(ck.matches(d.A(d.subst(R,0,d.Kc('c')),arg),target,[5000]))
 assert all(checks)
 results.append(dict(source=src,weight=w,zero_and_unary_1_to_8=checks))
near=convert(rd.parse(r'\s. s I (s (\q.c) (s s s)) j'))
assert ck.matches(d.A(d.subst(near,0,d.Kc('c')),d.Z()),d.A(d.Kc('r'),d.Kc('j')),[1000])
assert not ck.matches(d.A(d.subst(near,0,d.Kc('c')),d.U(1)),d.A(d.A(d.Kc('c'),d.U(0)),d.Kc('N')),[1000])
(H/'controls.json').write_text(json.dumps(dict(positives=results,near_miss_weight=ck.weight(near),near_miss_unary_rejected=True),indent=2)+'\n')
print('three controls pass; 40-weight near miss fails unary')
