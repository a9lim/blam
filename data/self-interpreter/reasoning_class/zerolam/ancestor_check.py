"""Named witnesses only. All-n claims are proved in REPORT.md, not by probes."""
import sys
sys.dont_write_bytecode=True
sys.path.insert(0,'/Users/a9lim/Work/blam/tmp/round4/coord')
import rd
V=lambda x:('V',x)
A=lambda f,x:('A',f,x)
L=lambda x,b:('L',x,b)
rows={
'R53':r'\s. s I (s (\q.c)) (s K j (s s s))',
'R59':r'\s. ((\a t. t a) j) (s I (\u. s (\q.c) (s s u)))',
'R84':r'\s. (\x. s (\b t. b (x t) (c t x))) (s (\b t. b (\a k. k a) (t t)) j)',
'R75':r'\s. s (\b t. b (\x. x t) (c t)) (s (\b t. b (\a k. k a) (t t)) j)',
}
def hole_path(t,path=()):
    if t[0]=='V':return [path] if t[1]=='j' else []
    if t[0]=='L':return hole_path(t[2],path+(2,))
    return hole_path(t[1],path+(1,))+hole_path(t[2],path+(2,))
def get(t,path):
    for i in path:t=t[i]
    return t
def normal(t):
    if t[0]=='V':return True
    if t[0]=='L':return normal(t[2])
    return t[1][0]!='L' and normal(t[1]) and normal(t[2])
for name,src in rows.items():
    term=rd.parse(src);body=term[2]
    ok,w=rd.check(src,nmax=8,verbose=False)
    print(name,'laws',ok,'weight',w,'source_beta_normal',normal(term))
    p,=hole_path(body)
    found=False
    for length in range(len(p)-1,-1,-1):
        x=get(body,p[:length]);assert x[0]=='A'
        z=rd.normalize(rd.subst(x,'s',rd.Z('r')))
        unary=[rd.normalize(rd.subst(x,'s',rd.U(n,'N'))) for n in (1,2,3)]
        rigid=z[0]!='L'
        print('  node',rd.show(x))
        print('    zero',rd.show(z),'unary',[rd.show(t) for t in unary])
        if rigid and not found:
            print('    LOWEST_RIGID; body_root',length==0,'literal_final_j',x[2]==V('j'))
            found=True
    assert found and ok
# Fixed R75 factor identities on the generic cell: two bit branches.
P=rd.parse(r's (\b t. b (\x. x t) (c t))')
Q=rd.parse(r's (\b t. b (\a k. k a) (t t)) j')
for label,t in [('P',P),('Q',Q)]:
    print(label,'cost_at_depth1',rd.weight(L('s',t))[1]-2)
