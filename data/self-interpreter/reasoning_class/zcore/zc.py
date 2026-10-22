"""zcore helpers: unary-core check and body cost. Imports coord/rd.py."""
import sys; sys.path.insert(0,'/Users/a9lim/Work/blam/tmp/round4/coord')
import rd
def unary_ok(R, nmax=6, fuel=20000):
    R = rd.parse(R) if isinstance(R,str) else R
    for n in range(1,nmax+1):
        try:
            v = rd.normalize(('A',R,rd.U(n,'N')),fuel)
        except (rd.Fuel, RecursionError):
            return False
        want = rd.normalize(('A',('A',('V','c'),rd.U(n-1,'N')),('V','N')),fuel)
        if not rd.alpha_eq(v,want): return False
    return True
def zero_nf(R, fuel=20000):
    R = rd.parse(R) if isinstance(R,str) else R
    return rd.show(rd.normalize(('A',R,rd.Z('r')),fuel))
def unary_nf(R, n, fuel=20000):
    R = rd.parse(R) if isinstance(R,str) else R
    return rd.show(rd.normalize(('A',R,rd.U(n,'N')),fuel))
def w(R):
    R = rd.parse(R) if isinstance(R,str) else R
    return rd.weight(R)[0]
def core(body):
    """body M with free s,c,(j): returns (unary_ok(\\s.M), |M| = w(\\s.M)-6)."""
    R = r'\s. ' + body
    wt = rd.weight(rd.parse(R))
    cost, d = wt[1], wt[2]
    return unary_ok(R), cost - 2 + 4*max(d-1, 0)
