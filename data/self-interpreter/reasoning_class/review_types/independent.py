"""Independent beta-normal grammar and capture-avoiding substitution evaluator.

Zero-based indices internally; c cost = 2 + binder depth; j cost = 4*depth.
No narrowing, closure machine, or memo residual code is used for enumeration/evaluation.
"""
from functools import lru_cache

@lru_cache(None)
def count(n, d, j, c, neutral=False):
    if n < 0 or j not in (0,1) or c not in (0,1): return 0
    total = 0
    if j == 0 and c == 0:
        total += sum(n == i+2 for i in range(d))
    if j == 0 and c == 1: total += n == d+2
    if j == 1 and c == 0: total += n == 4*d
    if not neutral and n >= 2: total += count(n-2, d+1, j, c)
    # At least 2 bits for a neutral head, except root j (0 bits).
    for nf in range(max(0, n-2)+1):
        na = n-2-nf
        if na < 0: continue
        for jf in range(j+1):
            for cf in range(2):
                for ca in range(2):
                    if (cf or ca) != c: continue
                    total += count(nf,d,jf,cf,True)*count(na,d,j-jf,ca)
    return total

def terms(n,d,j,c,neutral=False):
    if not count(n,d,j,c,neutral): return
    if j == 0 and c == 0:
        for i in range(d):
            if n == i+2: yield ('V',i)
    if j == 0 and c == 1 and n == d+2: yield ('C','c')
    if j == 1 and c == 0 and n == 4*d: yield ('C','j')
    if not neutral and n >= 2:
        for b in terms(n-2,d+1,j,c): yield ('L',b)
    for nf in range(max(0,n-2)+1):
        na=n-2-nf
        if na < 0: continue
        for jf in range(j+1):
            for cf in range(2):
                for ca in range(2):
                    if (cf or ca) != c: continue
                    if not count(nf,d,jf,cf,True) or not count(na,d,j-jf,ca): continue
                    for f in terms(nf,d,jf,cf,True):
                        for a in terms(na,d,j-jf,ca): yield ('A',f,a)

def shift(t,k,cut=0):
    if t[0]=='V': return ('V',t[1]+k) if t[1]>=cut else t
    if t[0]=='L': return ('L',shift(t[1],k,cut+1))
    if t[0]=='A': return ('A',shift(t[1],k,cut),shift(t[2],k,cut))
    return t

def subst0(t,a,d=0):
    if t[0]=='V':
        if t[1]==d: return shift(a,d)
        return ('V',t[1]-1) if t[1]>d else t
    if t[0]=='L': return ('L',subst0(t[1],a,d+1))
    if t[0]=='A': return ('A',subst0(t[1],a,d),subst0(t[2],a,d))
    return t

def step(t):
    if t[0]=='A':
        if t[1][0]=='L': return subst0(t[1][1],t[2])
        f=step(t[1])
        if f is not None: return ('A',f,t[2])
        a=step(t[2])
        if a is not None: return ('A',t[1],a)
    if t[0]=='L':
        b=step(t[1])
        if b is not None: return ('L',b)
    return None

def norm(t,limit=200):
    for _ in range(limit):
        s=step(t)
        if s is None: return t
        t=s
    raise RuntimeError('fuel')

K=('L',('L',('V',1)))
F=('L',('L',('V',0)))
def cons(b,r): return ('L',('A',('A',('V',0),shift(b,1)),shift(r,1)))
def stream(n):
    t=cons(K,('C','N'))
    for _ in range(n): t=cons(F,t)
    return t
def law(l):
    if l==0: return cons(K,('C','r')),('A',('C','r'),('C','j'))
    return stream(l),('A',('A',('C','c'),stream(l-1)),('C','N'))
def weight(t,d=0):
    if t[0]=='V': return t[1]+2
    if t[0]=='C': return 4*d if t[1]=='j' else d+2
    if t[0]=='L': return 2+weight(t[1],d+1)
    return 2+weight(t[1],d)+weight(t[2],d)
def show(t,env=()):
    if t[0]=='V': return env[t[1]]
    if t[0]=='C': return t[1]
    if t[0]=='L':
        s='x'+str(len(env)); return '(\\'+s+'. '+show(t[1],(s,)+env)+')'
    return '('+show(t[1],env)+' '+show(t[2],env)+')'

if __name__=='__main__':
    for B in range(16,29):
        print(B,sum(count(n,0,1,1) for n in range(B+1)),flush=True)
