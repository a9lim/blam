"""Targeted identities/cost checks only; no term enumeration or all-n claims.
Run with PYTHONDONTWRITEBYTECODE=1 to keep writes inside this lane.
"""
import sys
sys.dont_write_bytecode = True
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import rd
V = lambda n: ('V', n)
L = lambda n, b: ('L', n, b)
A = lambda f, a: ('A', f, a)
Y = r's I (\u. s (\q.c) (s s u))'
fixtures = {
 'canonical': rf'\s. {Y} j',
 'R59': rf'\s. ((\a t. t a) j) ({Y})',
 'dup_transport': r'\s. (\a. s I (\u. s (\q.c) (s s a)) a) j',
 'deep_transport': rf'\s. ((\a t u v. v a) j) c c ({Y})',
 'dual53': r'\s. s I (s (\q.c)) (s K j (s s s))',
 'R84': r'\s. (\x. s (\b t. b (x t) (c t x))) (s (\b t. b (\a k. k a) (t t)) j)',
}
for name, src in fixtures.items():
    print(name, rd.check(src, nmax=8, verbose=False))

# Read source paths in named AST; binder names in these fixtures are distinct.
def paths(t, name, path=()):
    if t[0]=='V':
        return [path] if t[1]==name else []
    if t[0]=='L':
        return paths(t[2],name,path+(2,)) if t[1]!=name else []
    return paths(t[1],name,path+(1,)) + paths(t[2],name,path+(2,))
def get(t,p):
    for i in p: t=t[i]
    return t
def put(t,p,u):
    if not p:return u
    ts=list(t); ts[p[0]]=put(ts[p[0]],p[1:],u); return tuple(ts)
def counts(t,name): return len(paths(t,name))
def depth_at(t,p):
    out=0
    for i in p:
        out+=t[0]=='L'; t=t[i]
    return out

def transforms(src):
    r=rd.parse(src); body=r[2]
    jp=paths(body,'j'); assert len(jp)==1
    parent_path=jp[0][:-1]; node=get(body,parent_path)
    assert node[0]=='A' and node[1][0]=='L' and node[2]==V('j')
    a=node[1][1]; b=node[1][2]
    aps=paths(b,a); k=len(aps)
    outside=put(body,parent_path,V('HOLE'))
    sb=counts(b,'s'); cc=counts(outside,'c'); T=sb+counts(b,'c')
    answers=[]
    # Pick the retained occurrence by both exact-reader probes; preservation
    # for all n is justified separately from origin tracking, not these tests.
    for retained in aps:
        bp=b
        for p in aps:
            if p!=retained: bp=put(bp,p,V('s'))
        contracted=L('s',put(body,parent_path,rd.subst(bp,a,V('j'))))
        hoisted=A(L(a,L('s',put(body,parent_path,bp))),V('j'))
        m=depth_at(b,retained)
        deltaA=rd.weight(contracted)[0]-rd.weight(r)[0]
        deltaB=rd.weight(hoisted)[0]-rd.weight(r)[0]
        assert deltaA==3*m-6-T,(src,deltaA,m,T)
        assert deltaB==cc-sb-3,(src,deltaB,cc,sb)
        okA=rd.check(rd.show(contracted),nmax=8,verbose=False)[0]
        okB=rd.check(rd.show(hoisted),nmax=8,verbose=False)[0]
        if okA and okB:
            answers.append((m,k,T,sb,cc,rd.weight(r)[0],rd.weight(contracted)[0],rd.weight(hoisted)[0]))
    print('transform columns: m,k,T,s_B,c_C,w,w_contract,w_hoist', answers)
    assert len(answers)==1
for name in ('R59','dup_transport','deep_transport'):
    print('transform',name);transforms(fixtures[name])

# Price R84's literal wrapper independently of X.
r=rd.parse(fixtures['R84'])
body=r[2]; X=body[2]
# With root outer stream and a zero-price leaf at X, weight=6+cost(C).
wr=L('s',A(body[1],V('j')))
xr=L('s',X)
print('R84 wrapper C, X costs',rd.weight(wr)[0]-6,rd.weight(xr)[0]-6)
# Both existing j/N operands; first has lambda-valued immediate j parent.
for src in (r'\s. s K j (s s s)',r'\s. s (\x. s (\b. b F)) j'):
    t=rd.parse(src); z=rd.normalize(A(t,rd.Z('r')))
    unary=[rd.normalize(A(t,rd.U(n,'N'))) for n in range(1,9)]
    assert rd.alpha_eq(z,V('j')) and all(rd.alpha_eq(u,V('N')) for u in unary)
    print('jN', rd.weight(t),src)
