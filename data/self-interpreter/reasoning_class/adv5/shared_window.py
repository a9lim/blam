"""Exact bounded shared-let window; writes only beside this script."""
import sys, signal, json, time
from functools import lru_cache
from pathlib import Path
sys.dont_write_bytecode = True
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
import rd
signal.alarm(105)
V = lambda n: ('V', n)
L = lambda n,b: ('L', n,b)
Ap = lambda f,a: ('A', f,a)

@lru_cache(None)
def ag(w,d,c):
    if w < 2 or c < 0 or c > 1: return ()
    out = [V('a'+str(d-1-i)) for i in range(d) if w==i+2 and c==0]
    if w==d+2 and c==1: out.append(V('c'))
    out += [L('a'+str(d),b) for b in ag(w-2,d+1,c)]
    for p in range(2,w-3):
        for v in range(c+1):
            out += [Ap(f,a) for f in ag(p,d,v) for a in ag(w-2-p,d,c-v)]
    return tuple(out)

@lru_cache(None)
def mg(w,d,x,n,s):
    if w<2 or min(x,n,s)<0: return ()
    if w<(d+4)*x+(d+3)*n+(d+2)*s+2*max(0,x+n+s-1): return ()
    out=[]
    if x+n+s==0:
        out += [V('b'+str(d-1-i)) for i in range(d) if w==i+2]
    if x==1 and n==s==0 and w==d+4: out.append(V('x'))
    if n==1 and x==s==0 and w==d+3: out.append(V('n'))
    if s==1 and x==n==0 and w==d+2: out.append(V('s'))
    out += [L('b'+str(d),b) for b in mg(w-2,d+1,x,n,s)]
    for p in range(2,w-3):
        for xx in range(x+1):
            for nn in range(n+1):
                for ss in range(s+1):
                    out += [Ap(f,a) for f in mg(p,d,xx,nn,ss)
                            for a in mg(w-2-p,d,x-xx,n-nn,s-ss)]
    return tuple(out)

def spine(t):
    args=[]
    while t[0]=='A': args.append(t[2]); t=t[1]
    return t, list(reversed(args))

def zero_check(t):
    f,args=spine(rd.whnf(Ap(t,rd.Z('r')),[256]))
    if f!=V('r') or len(args)!=1: return False
    return rd.whnf(args[0],[256])==V('j')

def unary_check(t,n):
    f,args=spine(rd.whnf(Ap(t,rd.U(n,'N')),[256]))
    if f!=V('c') or len(args)!=2: return False
    if rd.whnf(args[1],[256])!=V('N'): return False
    return rd.alpha_eq(rd.normalize(args[0],256),rd.normalize(rd.U(n-1,'N'),256))

# Each listed pair has no WHNF, even with arbitrary trailing operands:
# G_D G_D -> G_D G_D D, where G_D = lambda t. t t D.
# H (lambda u.H) -> (lambda u.H) c (lambda u.H) -> H (lambda u.H).
LOOPS=[('G_G',rd.parse(r'\t. t t c'),rd.parse(r'\t. t t c')),
       ('GD_GD',rd.parse(r'\t. t t (\u. c)'),rd.parse(r'\t. t t (\u. c)')),
       ('H_KH',rd.parse(r'\t. t c t'),rd.parse(r'\u t. t c t')),
       ('omega',rd.parse(r'\t. t t'),rd.parse(r'\t. t t'))]

def certify_zero_loop(t):
    term=Ap(t,rd.Z('r'))
    for steps in range(32):
        f,args=spine(term)
        if args:
            try:
                fn=rd.normalize(f,64); an=rd.normalize(args[0],64)
            except (rd.Fuel,RecursionError): fn,an=f,args[0]
            for name,lhs,rhs in LOOPS:
                if rd.alpha_eq(fn,lhs) and rd.alpha_eq(an,rhs): return name,steps
        if f[0]!='L' or not args: return None
        term=rd.subst(f[2],f[1],args[0])
        for a in args[1:]: term=Ap(term,a)
    return None

def main():
    started=time.monotonic(); counts={}; unknown=[]; passes=[]; rows=0; acounts={}
    dest=Path(__file__).with_suffix('.jsonl')
    with dest.open('w') as out:
        for a in range(9,17):
            aa=ag(a,0,1); acounts[a]=len(aa)
            mm=[m for w in range(2,36-a) for n,s in [(1,1),(1,2),(2,1)] for m in mg(w,0,2,n,s)]
            for arg in aa:
                for body in mm:
                    t=Ap(Ap(L('x',L('n',L('s',body))),arg),V('j'))
                    w=rd.weight(t)[0]; assert w<=45
                    result='pass'; fuel_cases=[]
                    for n in range(7):
                        try: ok=zero_check(t) if n==0 else unary_check(t,n)
                        except (rd.Fuel,RecursionError): fuel_cases.append(n); continue
                        if not ok: result='fails_zero' if n==0 else 'fails_unary_'+str(n); break
                    else:
                        if fuel_cases: result='unknown'
                    row={'w':w,'a':a,'result':result,'term':rd.show(t)}
                    if result=='unknown':
                        cert=certify_zero_loop(t)
                        if cert:
                            result='certified_zero_head_loop'
                            row.update(result=result,loop=cert[0],head_steps=cert[1])
                    if result=='unknown': unknown.append(row)
                    if result=='pass': passes.append(row)
                    counts[result]=counts.get(result,0)+1; rows+=1
                    assert rows<=100000
                    out.write(json.dumps(row)+'\n')
    summary={'candidates':rows,'arguments':acounts,'counts':counts,'unknown':unknown,'passes':passes,'seconds':time.monotonic()-started}
    Path(__file__).with_suffix('.summary.json').write_text(json.dumps(summary,indent=2)+'\n')
    print(json.dumps(summary,indent=2))

if __name__=='__main__': main()
