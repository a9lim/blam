r"""Minimality price filters for narrowmin.py (rootnarrow lane).

Every filter below is a property that a GLOBAL MINIMUM reader (order: weight, then
source lambda count, then j depth; full laws at every unary length, one source j)
has at every source position.  On the narrowing path to such a minimum R*, every
COMPLETE subterm of a partial term is literally R*'s subterm at the same position
(holes are refined only as in R*), so pruning a partial term whose complete subterms
violate a filter never loses R*.  Filters never look inside an unrefined hole.

Term encoding (narrow.py): ('V', i) 0-based bound index, ('C','c'), ('C','j'),
('L', body), ('A', f, a), ('H', id) hole.  Weight: lambda/app 2, V i -> 2+i,
c at absolute depth d -> 2+d, j at absolute depth d -> 4d.

Filters (sources):
 ERASE  no redex (\x.B) A with x not in B          SelfintLocalCost.minimum_source_non_erasing [L]
 ETA    no \x. P x with x not in P                 rootcert minimum_no_eta [L]
 LIN    linear redex: (F-1)D >= 7+G               SelfintLocalCost.minimum_linear_source_charge [L]
 SHARE  j-free A, m>=2: S=(m-1)w(A)+(F-1)D-2m-4-G >= 0
                                                  SelfintLocalCost.minimum_source_sharing_charge [L]
 SHARE0 S == 0 and A lambda-free: contraction ties weight and removes a lambda
                                                  weighted_beta_at + lamCount_subst [L], lex order [H]
 ROOTJ  root redex (\x.b) a as, j in a: 3 d_A <= (m-1)(wire a - 3) + f (D+m) + f_C
                                                  SelfintSourceCost.minimum_argument_charge [L]
 PROF   root redex: w >= 4k + 22 + 4d + tax         rootnf RootProfile.root_weight_tax_charge [L]
"""

def mat(code, fills):
    t = code[0]
    if t == 'H':
        f = fills.get(code[1])
        return code if f is None else mat(f, fills)
    if t == 'L': return ('L', mat(code[1], fills))
    if t == 'A': return ('A', mat(code[1], fills), mat(code[2], fills))
    return code

JARG = [False]
SLACK = [None]; MCAP = [99]
NF = [False]

class Prune(Exception):
    def __init__(self, why): self.why = why

def summ(t, delta, ctx):
    """bottom-up summary of subterm t at absolute depth delta.
    returns (complete, leaves, nodes2, lams) with leaves = list of (kind, val, l),
    l = lambda depth inside t.  Raises Prune on a violated local filter.
    ctx = dict with option flags."""
    k = t[0]
    if k == 'H': return (False, [], 0, 0)
    if k == 'V': return (True, [('V', t[1], 0)], 0, 0)
    if k == 'C': return (True, [('C', t[1], 0)], 0, 0)
    if k == 'L':
        c, lv, n2, la = summ(t[1], delta + 1, ctx)
        lv2 = [(a, b, l + 1) for a, b, l in lv]
        if c and t[1][0] == 'A':      # ETA: \x. P x, x not in P
            f, a = t[1][1], t[1][2]
            if a == ('V', 0) and not occurs(f, 0):
                raise Prune('eta')
        return (c, lv2, n2 + 2, la + 1)
    # application
    if t[1] == ('C', 'j'): raise Prune('japp')     # applied j: every residual stays applied [H]
    if JARG[0] and delta == 0 and t[2] == ('C', 'j') and t[1][0] == 'L':
        raise Prune('jarg')                          # depth02 Results B/C/E [C, minimality]
    cf, lf, nf, laf = summ(t[1], delta, ctx)
    ca, la_, na, laa = summ(t[2], delta, ctx)
    if any(kk == 'C' and v == 'j' for kk, v, l in la_):
        hd = t[1]
        while hd[0] == 'A': hd = hd[1]
        if hd == ('C', 'c'): raise Prune('jinc')     # j in an argument of rigid c: dead [H]
    if NF[0] and cf and ca: nfcheck(t, delta)
    if t[1][0] == 'L':
        # redex (\x.B) A; B leaves are lf with l counted from outside the \x
        bcomplete = cf
        if not cf and ca and SLACK[0] is not None:
            sharepartial(t, lf, la_, na, laa, delta)
        if t[2] == ('L', ('V', 0)): iapp(t, lf, cf)
        if bcomplete:
            xs = [l - 1 for (kk, v, l) in lf if kk == 'V' and v == l - 1]
            m = len(xs)
            if m == 0: raise Prune('erase')
            if m == 1 and xs[0] == 0: raise Prune('lin0')   # (F-1)*0 >= 7+G impossible
            if ca:
                D, F, G, wA, hasj, S = price(lf, la_, na, delta)
                if m == 1:
                    if (F - 1) * D < 7 + G: raise Prune('lin')
                elif not hasj:
                    if S < 0: raise Prune('share')
                    if S == 0 and laa == 0: raise Prune('share0')
                else:
                    # JCOPY: contract, keep the zero-output colour i, rename the other copies to c
                    # (rigid renaming of dead colours keeps every law); prune iff every choice of i
                    # gives a lexicographically smaller reader (w, L, d).
                    a = [l for (kk, v, l) in la_ if kk == 'C' and v == 'j'][0]
                    hs = [delta + Dk + a for Dk in xs]
                    dL = (m - 1) * laa - 1
                    dj0 = delta + a
                    allsmaller = True
                    tot = sum(3 * h - 2 for h in hs)
                    for h in hs:
                        Ei = tot - (3 * h - 2)
                        key = (S - Ei, dL, h - dj0)
                        if not key < (0, 0, 0): allsmaller = False; break
                    if allsmaller: raise Prune('jcopy')
    return (cf and ca, lf + la_, nf + na + 2, laf + laa)

def occurs(t, i):
    k = t[0]
    if k == 'V': return t[1] == i
    if k == 'L': return occurs(t[1], i + 1)
    if k == 'A': return occurs(t[1], i) or occurs(t[2], i)
    return k == 'H'   # an unrefined hole might contain it: be conservative

def spine(t):
    args = []
    while t[0] == 'A': args.append(t[2]); t = t[1]
    return t, args[::-1]

def holes(t):
    k = t[0]
    if k == 'H': return True
    if k == 'L': return holes(t[1])
    if k == 'A': return holes(t[1]) or holes(t[2])
    return False

def leaves_abs(t, d, out):
    """(kind, val, absolute depth) for every placed leaf"""
    k = t[0]
    if k == 'L': leaves_abs(t[1], d + 1, out)
    elif k == 'A': leaves_abs(t[1], d, out); leaves_abs(t[2], d, out)
    elif k in ('V', 'C'): out.append((k, t[1], d))
    return out

def xocc(b, l=0, out=None):
    """local lambda depths (inside b) of the occurrences of b's outer binder (index l at depth l)"""
    if out is None: out = []
    k = b[0]
    if k == 'V' and b[1] == l: out.append(l)
    elif k == 'L': xocc(b[1], l + 1, out)
    elif k == 'A': xocc(b[1], l, out); xocc(b[2], l, out)
    return out

def wire0(t, l=0):
    """plain BLC size of a root-level argument: c = var l, j = var l+1"""
    k = t[0]
    if k == 'L': return 2 + wire0(t[1], l + 1)
    if k == 'A': return 2 + wire0(t[1], l) + wire0(t[2], l)
    if k == 'V': return 2 + t[1]
    if t[1] == 'c': return 2 + l
    return 3 + l

def jdepth_in(t, l=0):
    k = t[0]
    if k == 'C' and t[1] == 'j': return l
    if k == 'L': return jdepth_in(t[1], l + 1)
    if k == 'A':
        r = jdepth_in(t[1], l)
        return r if r is not None else jdepth_in(t[2], l)
    return None

def ccount(t):
    k = t[0]
    if k == 'C': return 1 if t[1] == 'c' else 0
    if k == 'L': return ccount(t[1])
    if k == 'A': return ccount(t[1]) + ccount(t[2])
    return 0

def root_check(T, B, jlo, dmin, kmin, kmax, use_prof=True):
    """PROF, ROOTJ and the cell's root multiplicity range; raises Prune."""
    h, args = spine(T)
    if h[0] != 'L' or not args: return
    b = h[1]; a = args[0]; rest = args[1:]
    xs = xocc(b)
    k0 = len(xs)
    if k0 > kmax: raise Prune('kmax')
    bc = not holes(b)
    if bc and k0 < kmin: raise Prune('kmin')
    if use_prof:
        lv = leaves_abs(T, 0, [])
        tax = 0; dj = None
        for kk, v, d in lv:
            if kk == 'V': tax += v
            elif v == 'c': tax += d
            else: dj = d
        if dj is None: dj = max(jlo, dmin)
        if 4 * k0 + 22 + 4 * dj + tax > B: raise Prune('prof')
    if bc and not holes(a) and not any(holes(c) for c in rest):
        dA = jdepth_in(a)
        if dA is not None:
            rhs = (k0 - 1) * (wire0(a) - 3) + ccount(a) * (sum(xs) + k0) + sum(ccount(c) for c in rest)
            if 3 * dA > rhs: raise Prune('rootj')

def check(T, B, jlo, dmin, kmin, kmax, stats, slack=None):
    SLACK[0] = slack; MCAP[0] = min(kmax, 5)       # root multiplicity <= 5: rootnf root_multiplicity_five [L]
    node = T
    while node[0] == 'A' and node[1][0] == 'A': node = node[1]
    ROOTFLAG[0] = node if (node[0] == 'A' and node[1][0] == 'L') else None
    try:
        summ(T, 0, None)
        root_check(T, B, jlo, dmin, kmin, kmax)
        return True
    except Prune as p:
        stats[p.why] = stats.get(p.why, 0) + 1
        return False

def price(lf, la_, na, delta):
    """lf: leaves of (\\x.B) with l counting the \\x; la_: leaves of A; na: 2*(nodes of A)"""
    xs = [l - 1 for (kk, v, l) in lf if kk == 'V' and v == l - 1]
    m = len(xs); D = sum(xs)
    G = 0
    for kk, v, l in lf:
        if kk == 'V':
            if v >= l: G += 1
        else: G += 4 if v == 'j' else 1
    F = 0; hasj = False
    for kk, v, l in la_:
        if kk == 'V':
            if v >= l: F += 1
        elif v == 'j': F += 4; hasj = True
        else: F += 1
    wA = na
    for kk, v, l in la_:
        if kk == 'V': wA += 2 + v
        elif v == 'c': wA += 2 + delta + l
        else: wA += 4 * (delta + l)
    S = (m - 1) * wA + (F - 1) * D - 2 * m - 4 - G
    return D, F, G, wA, hasj, S

# ---- NF filter: R[X] =beta R[nf X]; prune if the (colour-repaired) replacement is lex-smaller ----
def _shift(t, s, c=0):
    k = t[0]
    if k == 'V': return ('V', t[1] + s) if t[1] >= c else t
    if k == 'L': return ('L', _shift(t[1], s, c + 1))
    if k == 'A': return ('A', _shift(t[1], s, c), _shift(t[2], s, c))
    return t
def _subst(t, a, j=0):
    k = t[0]
    if k == 'V':
        if t[1] == j: return _shift(a, j)
        return ('V', t[1] - 1) if t[1] > j else t
    if k == 'L': return ('L', _subst(t[1], a, j + 1))
    if k == 'A': return ('A', _subst(t[1], a, j), _subst(t[2], a, j))
    return t
class _Fuel(Exception): pass
def _size(t):
    k = t[0]
    if k == 'L': return 1 + _size(t[1])
    if k == 'A': return 1 + _size(t[1]) + _size(t[2])
    return 1
def normal(t, fuel=200, cap=400):
    f = [fuel]
    def nf(t):
        while True:
            h = t; args = []
            while h[0] == 'A': args.append(h[2]); h = h[1]
            args.reverse()
            if h[0] == 'L' and args:
                f[0] -= 1
                if f[0] < 0: raise _Fuel()
                t = _subst(h[1], args[0])
                for a in args[1:]: t = ('A', t, a)
                if _size(t) > cap: raise _Fuel()
                continue
            if h[0] == 'L': return ('L', nf(h[1]))
            r = h
            for a in args: r = ('A', r, nf(a))
            return r
    try: return nf(t)
    except (_Fuel, RecursionError): return None
def has_redex(t):
    k = t[0]
    if k == 'L': return has_redex(t[1])
    if k == 'A': return t[1][0] == 'L' or has_redex(t[1]) or has_redex(t[2])
    return False
def _w(t, d, l=0):
    k = t[0]
    if k == 'L': return 2 + _w(t[1], d, l + 1)
    if k == 'A': return 2 + _w(t[1], d, l) + _w(t[2], d, l)
    if k == 'V': return 2 + t[1]
    return 2 + d + l if t[1] == 'c' else 4 * (d + l)
def _lams(t):
    k = t[0]
    if k == 'L': return 1 + _lams(t[1])
    if k == 'A': return _lams(t[1]) + _lams(t[2])
    return 0
def _jdepths(t, l=0, out=None):
    if out is None: out = []
    k = t[0]
    if k == 'C' and t[1] == 'j': out.append(l)
    elif k == 'L': _jdepths(t[1], l + 1, out)
    elif k == 'A': _jdepths(t[1], l, out); _jdepths(t[2], l, out)
    return out
NFMEMO = {}
def nfcheck(t, delta):
    key = (t, delta)
    r = NFMEMO.get(key)
    if r is None:
        r = 'ok'
        if has_redex(t):
            j0 = _jdepths(t)
            n, vanished = _run(t) if j0 else (normal(t), False)
            if vanished: r = 'jvanish'
            elif n is None:
                if _nowhnf(t):
                    if j0: r = 'jdiv'
                    elif _w(t, delta) >= 2 + delta: r = 'divdisp'   # c costs 2+delta, X has a lambda
            if n is not None and not vanished:
                j1 = _jdepths(n)
                if j0 and not j1: r = 'jdead'
                elif j0 and _alldead(n): r = 'jdead2'
                else:
                    w0 = _w(t, delta); w1 = _w(n, delta); dL = _lams(n) - _lams(t)
                    if not j0:
                        if (w1 - w0, dL) < (0, 0): r = 'nf'
                    else:
                        tot = sum(3 * (delta + h) - 2 for h in j1)
                        smaller = True
                        for h in j1:
                            key2 = (w1 - w0 - (tot - (3 * (delta + h) - 2)), dL, h - j0[0])
                            if not key2 < (0, 0, 0): smaller = False; break
                        if smaller: r = 'nf'
        NFMEMO[key] = r
    if r != 'ok': raise Prune(r)

import sys as _sys
_sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/shared')
import cert as _cert
def _nowhnf(t):
    """certified: t has no weak head normal form (cert.py criterion C1, open terms allowed)"""
    try:
        r = _cert.whnf(t, 2000)
    except Exception:
        return False
    return r[0] == 'cycle'
def _alldead(n):
    """every j copy in the normal form n is applied or inside an argument of a c-headed spine"""
    live = [False]
    def go(t, dead):
        k = t[0]
        if k == 'C' and t[1] == 'j':
            if not dead: live[0] = True
            return
        if k == 'L': go(t[1], dead); return
        if k == 'A':
            hd = t
            args = []
            while hd[0] == 'A': args.append(hd[2]); hd = hd[1]
            hdead = dead or hd == ('C', 'c') or hd == ('C', 'j')
            if hd[0] == 'L': go(hd, dead)
            for a in args: go(a, hdead)
    go(n, False)
    return not live[0]

def _step(t):
    """one leftmost-outermost beta step, or None if t is normal"""
    k = t[0]
    if k == 'A':
        if t[1][0] == 'L': return _subst(t[1][1], t[2])
        f = _step(t[1])
        if f is not None: return ('A', f, t[2])
        a = _step(t[2])
        return None if a is None else ('A', t[1], a)
    if k == 'L':
        b = _step(t[1])
        return None if b is None else ('L', b)
    return None
def _run(t, steps=300, cap=400):
    """normal-order run; (nf or None, True if some reduct has no j)"""
    for _ in range(steps):
        if not _jdepths(t) or _alldead(t): return None, True
        n = _step(t)
        if n is None: return t, False
        t = n
        if _size(t) > cap: return None, (not _jdepths(t)) or _alldead(t)
    return None, (not _jdepths(t)) or _alldead(t)

def _nholes(t):
    k = t[0]
    if k == 'H': return 1
    if k == 'L': return _nholes(t[1])
    if k == 'A': return _nholes(t[1]) + _nholes(t[2])
    return 0
def sharepartial(t, lf, la_, na, laa, delta):
    """SHAREP: j-free complete A with F <= 1, B incomplete. Every final multiplicity is excluded:
    m = 0 (ERASE), m = 1 (LIN: (F-1)D <= 0 < 7+G), m >= 2 (S increasing in m, non-increasing in
    D and G, so S <= S(mmax, D0, G0)); mmax = m0 + holes(B) + slack//4 (each extra use needs a
    leaf and an application), capped by MCAP at the root redex."""
    D0, F, G0, wA, hasj, _ = price(lf, la_, na, delta)
    if hasj or F > 1: return
    m0 = len([1 for (kk, v, l) in lf if kk == 'V' and v == l - 1])
    mmax = m0 + _nholes(t[1]) + max(SLACK[0], 0) // 4
    if delta == 0 and ROOTFLAG[0] is t: mmax = min(mmax, MCAP[0])
    if mmax < 2: raise Prune('sharep')   # m in {0,1}: ERASE / LIN (F <= 1) exclude both
    Smax = (mmax - 1) * wA + (F - 1) * D0 - 2 * mmax - 4 - G0
    if Smax < 0 or (Smax == 0 and laa == 0): raise Prune('sharep')
ROOTFLAG = [None]

def _xapplied(b, l=0):
    k = b[0]
    if k == 'L': return _xapplied(b[1], l + 1)
    if k == 'A':
        return (1 if b[1] == ('V', l) else 0) + _xapplied(b[1], l) + _xapplied(b[2], l)
    return 0
def iapp(t, lf, bcomplete):
    """IAPP: (lambda x.B) I with an applied use. Contracting and then every applied copy I P -> P changes
    the weight by exactly 2m - 8 - D - G - 6a (a applied uses); increasing in m only."""
    b = t[1][1]
    a0 = _xapplied(b)
    if a0 == 0: return
    xs = [l - 1 for (kk, v, l) in lf if kk == 'V' and v == l - 1]
    m0 = len(xs); D0 = sum(xs)
    G0 = 0
    for kk, v, l in lf:
        if kk == 'V':
            if v >= l: G0 += 1
        else: G0 += 4 if v == 'j' else 1
    if bcomplete: mmax = m0
    else:
        if SLACK[0] is None: return
        mmax = m0 + _nholes(b) + max(SLACK[0], 0) // 4
        if ROOTFLAG[0] is t: mmax = min(mmax, MCAP[0])
    if 2 * mmax - 8 - D0 - G0 - 6 * a0 < 0: raise Prune('iapp')
