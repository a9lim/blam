"""One scalar-profile witness, explicitly not a reader; no search."""
import sys,json
sys.path.insert(0,'tmp/round4/rootnf')
# Do not import witnesses.py, whose top-level code runs other probes.
sys.path.insert(0,'tmp/round4/coord')
import rd
src=r'(\x. x x x x x) (\y. y y) I c j'
t=rd.parse(src);h=t;args=[]
while h[0]=='A':args.append(h[2]);h=h[1]
args.reverse();assert h[0]=='L'
b=h[2];a=args[0];u=rd.subst(b,h[1],a)
for c in args[1:]:u=('A',u,c)
print(json.dumps({'source':src,'source_weight':rd.weight(t)[0],
 'after_root_contraction_weight':rd.weight(u)[0],
 'profile':{'k':5,'a':8,'M':0,'T':0,'d':0,'S':18},
 'verdict':'not a reader: the head contains Delta Delta, so the zero probe has no head normal form'}))
assert rd.weight(t)[0]==42 and rd.weight(u)[0]==60
