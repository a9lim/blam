"""Fixed instances of the handwritten infinite invariants; no fuel verdicts."""
import sys
sys.dont_write_bytecode=True
from pathlib import Path
import json
from checks import fact,FACTS,A,L,V,lc
p=Path(__file__).resolve().parent
four=json.loads((p/'four_lambda.json').read_text());five=json.loads((p/'five_lambda.json').read_text())
def app(*xs):
    t=xs[0]
    for a in xs[1:]:t=A(t,a)
    return t

def get_n(rows,i):return lc.decode(rows[i]['wire'])[0][2]
def box(t):return L(lc.shift(1,0,t))
def dup(t):return A(t,t)
for idx in (378,380):
    n=get_n(four,idx)
    def j(t):return lc.beta(n,t)[2]
    def jk(t,k):
        for _ in range(k):t=j(t)
        return t
    for k in (1,2,3):
        start=app(n,jk(n,k),V(0))
        if idx==378:
            val=V(0)
            for _ in range(k):val=dup(val)
            target=app(n,jk(n,k+1),val)
        else:target=app(n,jk(n,k+1),*([V(0)]*(k+1)))
        fact(f'wrapper_{idx}_k{k}',start,target)
for idx in (393,395):
    n=get_n(four,idx);jn=lc.beta(n,n)[2]
    start=app(n,jn,V(0))
    target=app(n,jn,dup(dup(V(0)))) if idx==393 else app(n,jn,V(0),V(0),V(0))
    assert fact(f'reverse_wrapper_{idx}',start,target)==5
# J_t(X)=lambda u.X u t
n=get_n(five,9)
def jt(x,t):return L(app(lc.shift(1,0,x),V(0),lc.shift(1,0,t)))
for k in (1,2,3):
    ts=[V(i+1) for i in range(k)];w=n
    for t in reversed(ts):w=jt(w,t)
    fact(f'boxed_forward_k{k}',app(n,w,V(0)),app(n,jt(w,box(V(0))),*reversed(ts)))
# Q(X,Y)=lambda u.u X (K Y)
n=get_n(five,19)
def pairbox(x,y):return L(app(V(0),lc.shift(1,0,x),lc.shift(1,0,box(y))))
w=pairbox(n,V(0))
assert fact('boxed_pair_pump',app(n,w,V(1)),app(n,w,box(V(1)),box(V(0))))==4
(p/'macro_checks.json').write_text(json.dumps([dict(name=name,steps=k) for name,_,k,_ in FACTS],indent=2)+'\n')
print('checked',len(FACTS),'fixed macros')
