"""List hygienic zero-r subterms of a reader body and classify their contexts.
Usage: python3 anchors.py  (runs on ex.EX).  Light: one normalization per subterm."""
import sys; sys.path.insert(0,'/Users/a9lim/Work/blam/tmp/round4/coord')
import rd, zc
from ex import EX
def subterms(t, path=(), bound=()):
    yield path, t, bound
    if t[0]=='L':
        yield from subterms(t[2], path+(0,), bound+(t[1],))
    elif t[0]=='A':
        yield from subterms(t[1], path+(0,), bound)
        yield from subterms(t[2], path+(1,), bound)
def replace(t, path, new):
    if not path: return new
    if t[0]=='L': return ('L', t[1], replace(t[2], path[1:], new))
    if path[0]==0: return ('A', replace(t[1], path[1:], new), t[2])
    return ('A', t[1], replace(t[2], path[1:], new))
def zero_value(Q):
    try: return rd.normalize(rd.subst(Q,'s',rd.Z('r')), 5000)
    except Exception: return None
def classify(R):
    R = rd.parse(R)
    assert R[0]=='L' and R[1]=='s', 'lambda-rooted only'
    M = R[2]; out=[]
    for path,Q,bound in subterms(M):
        if not path: continue
        if rd.fv(Q) - {'s','c'}: continue
        if 's' in bound: continue
        z = zero_value(Q)
        if z is None or not rd.alpha_eq(z, ('V','r')): continue
        ctx = replace(M, path, ('V','h'))
        # generic head reduction of ctx with s := cons b r
        g = rd.subst(ctx,'s',rd.cons(('V','b'),('V','r')))
        try: hn = rd.whnf(g,[5000])
        except Exception: hn=None
        # spine head
        def head(t):
            while t[0]=='A': t=t[1]
            return t
        hd = rd.show(head(hn)) if hn else '?'
        cls = '?'
        if hd=='h':
            args=[]; t=hn
            while t[0]=='A': args.append(t[2]); t=t[1]
            args.reverse()
            if len(args)==1:
                okz = rd.alpha_eq(rd.normalize(rd.subst(rd.subst(args[0],'b',rd.K),'r',('V','r')),5000),('V','j'))
                oku = all(rd.alpha_eq(rd.normalize(rd.subst(rd.subst(args[0],'b',rd.F),'r',rd.U(n-1,'N')),5000),('V','j')) for n in range(1,5))
                cls = 'G0' if (okz and oku) else ('G1' if okz else 'G?')
            else: cls='h-args%d'%len(args)
        elif hd=='b': cls='D'
        out.append((rd.show(Q), hd, cls))
    return out
if __name__=='__main__':
    extra = {'169': r'\s. s I (s (\q. c)) (s K j (s s s))',
             'btX': r'\s. s (\b t. b t (\u. c t (t t u))) j'}
    for k,v in list(EX.items())+list(extra.items()):
        if not v.startswith('\\s'): print(k,'(app-rooted, skipped)'); continue
        print(k, rd.check(v,nmax=5,verbose=False)[0], classify(v))
