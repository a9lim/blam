"""One hash-shared targeted head trace for residual 461; no candidate search."""
import sys
sys.dont_write_bytecode=True
import time,json
from functools import lru_cache
from exact_probe import HERE,lc,parse,invoke

class T(tuple):
    def __new__(cls,xs):
        self=tuple.__new__(cls,xs);self.h=hash(xs);return self
    def __hash__(self):return self.h

@lru_cache(maxsize=None)
def mk(*xs):return T(xs)
V=lambda n:mk('V',n)
L=lambda b:mk('L',b)
A=lambda f,a:mk('A',f,a)

def cv(t):
    if t[0]=='V':return V(t[1])
    if t[0]=='L':return L(cv(t[1]))
    return A(cv(t[1]),cv(t[2]))

@lru_cache(maxsize=None)
def free_max(t):
    if t[0]=='V':return t[1]+1
    if t[0]=='L':return max(0,free_max(t[1])-1)
    return max(free_max(t[1]),free_max(t[2]))

@lru_cache(maxsize=None)
def size(t):
    if t[0]=='V':return 1
    return 1+sum(size(a) for a in t[1:])

@lru_cache(maxsize=None)
def occ(t,n=0):
    if free_max(t)<=n:return 0
    if t[0]=='V':return int(t[1]==n)
    if t[0]=='L':return occ(t[1],n+1)
    return occ(t[1],n)+occ(t[2],n)

@lru_cache(maxsize=None)
def shift(d,c,t):
    if free_max(t)<=c:return t
    if t[0]=='V':return V(t[1]+d if t[1]>=c else t[1])
    if t[0]=='L':return L(shift(d,c+1,t[1]))
    return A(shift(d,c,t[1]),shift(d,c,t[2]))

@lru_cache(maxsize=None)
def subst(j,s,t):
    if free_max(t)<=j:return t
    if t[0]=='V':return s if t[1]==j else t
    if t[0]=='L':return L(subst(j+1,shift(1,0,s),t[1]))
    return A(subst(j,s,t[1]),subst(j,s,t[2]))

def beta(f,a):return shift(-1,0,subst(0,shift(1,0,a),f[1]))

def hstep(t):
    if t[0]=='L':
        u=hstep(t[1]);return None if u is None else L(u)
    if t[0]=='A':
        if t[1][0]=='L':return beta(t[1],t[2])
        u=hstep(t[1]);return None if u is None else A(u,t[2])
    return None

@lru_cache(maxsize=None)
def small_hnf(t):
    u=t
    for _ in range(40):
        if size(u)>1500:return t
        v=hstep(u)
        if v is None:return u
        u=v
    return t

@lru_cache(maxsize=None)
def simp(t):
    if t[0]=='V':return t
    if t[0]=='L':return L(simp(t[1]))
    f=simp(t[1]);a=t[2]
    if f[0]=='L' and (a[0]=='V' or occ(f[1])<=1):return simp(beta(f,a))
    r=A(f,simp(a))
    if free_max(r)==0 and size(r)<=1500:
        q=small_hnf(r)
        if q!=r:return simp(q)
    return r

@lru_cache(maxsize=None)
def bot_free(t,d=0):
    if free_max(t)<=d:return t
    if t[0]=='V':return V(1000000) if t[1]>=d else t
    if t[0]=='L':return L(bot_free(t[1],d+1))
    return A(bot_free(t[1],d),bot_free(t[2],d))

class Hit(Exception):pass
class Cap(Exception):pass

def probe():
    row=json.loads((HERE.parent/'floor/four_lambda.json').read_text())[461]
    e=lc.decode(row['wire'])[0];q=cv(invoke(e,parse('\\x.x'))[1][1])
    calls=0;start=time.monotonic();events=[]
    def nf(t,weak,seen):
        nonlocal calls
        calls+=1
        if calls>1800 or mk.cache_info().currsize>30000 or time.monotonic()-start>10:raise Cap()
        if t[0]=='L':return t if weak else L(nf(t[1],False,seen))
        if t[0]=='V':return t
        f=nf(t[1],True,seen if weak else {});a=simp(t[2]);ab=A(f,a);r=bot_free(ab)
        if r[1] in seen:raise Hit((seen[r[1]],ab,'function_repeat'))
        if f[0]=='L':
            if r in seen:raise Hit((seen[r],ab,'redex_repeat'))
            news=seen.copy();news[r]=ab;events.append(ab)
            return nf(beta(f,a),weak,news)
        if weak:return ab
        news=seen.copy();news[r]=ab
        return A(nf(f,False,news),nf(a,False,news))
    try:
        out=nf(q,True,{})
        head=out;args=[]
        while head[0]=='A':args.append(head[2]);head=head[1]
        result=dict(id=461,kind='finished',size=size(out),head=lc.show(head),arity=len(args),
                    argument_sizes=[size(a) for a in reversed(args)],
                    final_bits=lc.enc(out) if size(out)<15000 else None)
    except Hit as ex:
        old,new,kind=ex.args[0]
        result=dict(id=461,kind=kind,old_size=size(old),new_size=size(new),
                    old_bits=lc.enc(old) if size(old)<15000 else None,
                    new_bits=lc.enc(new) if size(new)<15000 else None)
    except (Cap,RecursionError):result=dict(id=461,kind='cap')
    result.update(calls=calls,interned_nodes=mk.cache_info().currsize,seconds=time.monotonic()-start)
    (HERE/'probe461.json').write_text(json.dumps(result,indent=2)+'\n')
    print({k:v for k,v in result.items() if not k.endswith('bits')})
    # Only a fixed, short set of tail events is retained for symbolic study.
    for t in events[-6:]:print('size',size(t),'head',lc.show(t)[:400] if size(t)<2000 else 'large')

if __name__=='__main__':probe()
