import sys,time; sys.path.insert(0,'.')
from lc import *
from frag import gen
from nf2 import nf2, Abort
L=lambda b:('L',b); A=lambda f,a:('A',f,a); V=lambda i:('V',i)
B170="01000110100001000000011000000101110011000011111110000101110011111110000001111000000101110111001101111001111111100001111111100001011110100111010010111110100101101010011010"
FULL,_=decode(B170,0)
R = FULL[2]                # \a. F (a a)
E = FULL                   # the interpreter
def church(n):
    b=V(0)
    for _ in range(n): b=A(V(1),b)
    return L(L(b))
def cons_(x,y): return L(L(A(A(V(1),shift(2,0,x)),A(V(0),shift(2,0,y)))))
MARK=[church(1),church(2),church(3),church(4)]
TAILS=[church(5),church(6),church(7)]
ENV=cons_(MARK[0],cons_(MARK[1],cons_(MARK[2],MARK[3])))
def instantiate(t,m,d=0):
    if t[0]=='V':
        j=t[1]-d
        return m[j] if (t[1]>=d and j in m) else t
    if t[0]=='L': return ('L',instantiate(t[1],m,d+1))
    return ('A',instantiate(t[1],m,d),instantiate(t[2],m,d))
CASES=[]
for n in range(3):
    stream=bitlist('1'*n+'0',TAILS[n])
    CASES.append((stream,MARK[n],TAILS[n]))
CSEL=L(L(A(V(1),shift(2,0,ENV))))   # \t\r. t ENV
CRST=L(L(V(0)))                     # \t\r. r
def probe(C,fuel=400):
    for stream,sel,rest in CASES:
        base={1:FALSE,2:pair(FALSE,stream),0:stream}
        for cv,want in ((CSEL,sel),(CRST,rest)):
            m=dict(base); m[3]=cv
            try: r=nf2(instantiate(C,m),[fuel])
            except Exception: return False
            if enc(r)!=enc(want): return False
    return True
if __name__=='__main__':
    NMAX=int(sys.argv[1]) if len(sys.argv)>1 else 21
    t0=time.time(); tested=0; surv=[]
    def uses(t,i,d=0):
        if t[0]=='V': return t[1]-d==i and t[1]>=d
        if t[0]=='L': return uses(t[1],i,d+1)
        return uses(t[1],i,d) or uses(t[2],i,d)
    pruned=0
    for n in range(2,NMAX+1):
        for C in gen(6,n):
            tested+=1
            # necessary conditions: the fragment must mention cont (idx 3) and list1 (idx 0)
            if not (uses(C,3) and uses(C,0)): pruned+=1; continue
            if probe(C): surv.append((n,C))
        print(f"  size {n:2d}: tested {tested:6d} pruned {pruned:6d} surv {len(surv):3d} {time.time()-t0:7.1f}s",flush=True)
    print("\nSURVIVORS:")
    for n,C in surv: print(f"  {n:3d} bits  {show(C)}   {enc(C)}")
