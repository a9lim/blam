import sys,time; sys.path.insert(0,'.')
from lc import *
from frag import gen
from nf2 import nf2, Abort
L=lambda b:('L',b); A=lambda f,a:('A',f,a); V=lambda i:('V',i)
B170="01000110100001000000011000000101110011000011111110000101110011111110000001111000000101110111001101111001111111100001111111100001011110100111010010111110100101101010011010"
FULL,_=decode(B170,0)
# slot frame at ABS: [a,intL,cont,list,bit0,list1,bit1,exp] -> idx 0=exp,1=bit1,2=list1,3=bit0,4=list,5=cont,6=intL,7=a
_F=FULL[2][1][1]; _b=_F[1][1][1]; _K=_b[2]; _i=_K[1][1]; _X=_i[1][2]
_gl=_X[2]; _hl=_gl[1][2]; _core=_hl[1]
REF=_core[1][2]; APPREF=_core[2]
def church(n):
    b=V(0)
    for _ in range(n): b=A(V(1),b)
    return L(L(b))
def cons_(x,y): return L(L(A(A(V(1),shift(2,0,x)),A(V(0),shift(2,0,y)))))
M=[church(i) for i in range(1,6)]
ENV=cons_(M[0],cons_(M[1],cons_(M[2],FALSE)))
REST=church(9)
ID=L(V(0))
def instantiate(t,m,d=0):
    if t[0]=='V':
        j=t[1]-d
        return m[j] if (t[1]>=d and j in m) else t
    if t[0]=='L': return ('L',instantiate(t[1],m,d+1))
    return ('A',instantiate(t[1],m,d),instantiate(t[2],m,d))
# probes: cont := \t\r. t ENV M[3] S  (S selects from the extended env); and \t\r. r
CASES=[]
# stream S applied to the EXTENDED env (cons' arg args) must select: 0->arg, 1->args[0], ...
for k,want in [(0,M[3]),(1,M[0]),(2,M[1]),(3,M[2])]:
    S=bitlist('1'*k+'0', FALSE)
    cv=L(L(A(shift(2,0,S), A(A(V(1),shift(2,0,ENV)),shift(2,0,M[3])))))
    CASES.append((cv,want))
CASES.append((L(L(V(0))), REST))
def probe(C, fuel=600, cap=4000):
    for cv, want in CASES:
        m={0:ID, 5:cv}          # exp := identity, cont := probe; bit1/list1/bit0/list/intL/a free
        try: r = nf2(A(instantiate(C,m), REST), [fuel], cap)
        except Exception: return False
        if enc(r)!=enc(want): return False
    return True
if __name__=='__main__':
    print("reference ABS:", show(REF), "size", size(REF))
    print("probe accepts reference:", probe(REF))
    # a few perturbations should fail
    bad=L(L(A(V(2),L(L(A(A(V(1),V(3)),A(V(0),V(0))))))))   # swapped arg/args
    print("probe rejects a perturbation:", not probe(A(V(5),bad)))
    NMAX=int(sys.argv[1]) if len(sys.argv)>1 else 26
    def uses(t,i,d=0):
        if t[0]=='V': return t[1]-d==i and t[1]>=d
        if t[0]=='L': return uses(t[1],i,d+1)
        return uses(t[1],i,d) or uses(t[2],i,d)
    t0=time.time(); tested=probed=0; surv=[]
    for n in range(2,NMAX+1):
        for C in gen(8,n):
            tested+=1
            if not (uses(C,5) and uses(C,0)): continue
            probed+=1
            if probe(C): surv.append((n,C))
        print(f"  size {n:2d}: tested {tested:9d} probed {probed:8d} surv {len(surv):2d} {time.time()-t0:7.1f}s",flush=True)
    print("SURVIVORS:", [(n,show(C)) for n,C in surv])
    print(f"rate: {tested/(time.time()-t0):,.0f} cand/s, {probed/(time.time()-t0):,.0f} probes/s (single-threaded CPython)")
