"""Small de Bruijn engine for the jn lane.

Terms: ('v', i) bound/free index (0 = innermost), ('k', name) rigid constant,
('l', body), ('a', f, x).  A term "over [s, c]" has free index 0 = s, 1 = c at
its top; j is the rigid constant ('k','j') priced 0.
"""
import sys
from functools import lru_cache
sys.setrecursionlimit(100000)

V = lambda i: ('v', i)
Kc = lambda n: ('k', n)
L = lambda b: ('l', b)
A = lambda f, x: ('a', f, x)


def shift(t, d, c=0):
    tag = t[0]
    if tag == 'v':
        return ('v', t[1] + d) if t[1] >= c else t
    if tag == 'k':
        return t
    if tag == 'l':
        return ('l', shift(t[1], d, c + 1))
    return ('a', shift(t[1], d, c), shift(t[2], d, c))


def subst(t, j, s):
    """t[j := s], s closed w.r.t. indices below the binder count handled by shift."""
    tag = t[0]
    if tag == 'v':
        if t[1] == j:
            return shift(s, j) if j else s
        return ('v', t[1] - 1) if t[1] > j else t
    if tag == 'k':
        return t
    if tag == 'l':
        return ('l', subst(t[1], j + 1, s))
    return ('a', subst(t[1], j, s), subst(t[2], j, s))


def size(t):
    n = 0; st = [t]
    while st:
        x = st.pop(); n += 1
        if x[0] == 'l': st.append(x[1])
        elif x[0] == 'a': st.append(x[1]); st.append(x[2])
    return n


SIZE_CAP = 20000


def beta(body, arg):
    return subst(body, 0, arg)


class Fuel(Exception):
    pass


def whnf(t, fuel):
    spine = []
    while True:
        if t[0] == 'a':
            spine.append(t[2]); t = t[1]; continue
        if t[0] == 'l' and spine:
            fuel[0] -= 1
            if fuel[0] < 0:
                raise Fuel
            t = beta(t[1], spine.pop())
            if fuel[0] % 64 == 0 and size(t) > SIZE_CAP:
                raise Fuel
            continue
        break
    for x in reversed(spine):
        t = ('a', t, x)
    return t


def nf(t, fuel):
    t = whnf(t, fuel)
    if t[0] == 'l':
        return ('l', nf(t[1], fuel))
    if t[0] == 'a':
        # head is neutral
        args = []
        while t[0] == 'a':
            args.append(t[2]); t = t[1]
        h = t
        for x in reversed(args):
            h = ('a', h, nf(x, fuel))
        return h
    return t


def normalize(t, fuel=4000):
    return nf(t, [fuel])


K = L(L(V(1)))
F = L(L(V(0)))
I = L(V(0))


def cons(b, r):
    return L(A(A(V(0), shift(b, 1)), shift(r, 1)))


def Z(r=Kc('r')):
    return cons(K, r)


def U(n, N=Kc('N')):
    t = cons(K, N)
    for _ in range(n):
        t = cons(F, t)
    return t


def inst(t, s, c=Kc('c')):
    """instantiate top free index 0 := s, 1 := c (both closed)."""
    return subst(subst(t, 0, s), 0, c)


# ---------- enumeration of all terms by cost ----------
# cost: lambda 2, app 2, var 2+idx, j 0 (+ 4 per lambda above it if JTAX)

def enum_terms(cmax, nfree, jmode):
    """yield (cost, term). jmode: None (no j), 'top' (j once, not under a lambda),
    'any' (j once anywhere; cost includes 4 per lambda above j)."""
    @lru_cache(None)
    def T(c, d, j):
        out = []
        if c < 0:
            return out
        if j == 0:
            for i in range(d + nfree):
                if 2 + i == c:
                    out.append(('v', i))
        else:
            if jmode == 'top' and d == 0 and c == 0:
                out.append(('k', 'j'))
            if jmode == 'any' and c == 4 * d:
                out.append(('k', 'j'))
        if c >= 2 and not (jmode == 'top' and j == 1):
            out.extend(('l', b) for b in T(c - 2, d + 1, j))
        for ca in range(0, c - 1):
            for ja in range(j + 1):
                fs = T(ca, d, ja)
                if not fs:
                    continue
                xs = T(c - 2 - ca, d, j - ja)
                for f in fs:
                    for x in xs:
                        out.append(('a', f, x))
        return tuple(out)
    jj = 0 if jmode is None else 1
    for c in range(cmax + 1):
        for t in T(c, 0, jj):
            yield c, t


def show(t, names=None):
    names = names or []
    tag = t[0]
    if tag == 'k':
        return t[1]
    if tag == 'v':
        i = t[1]
        return names[i] if i < len(names) else ['s', 'c'][i - len(names)] if i - len(names) < 2 else '?%d' % i
    if tag == 'l':
        x = 'x%d' % len(names)
        return '\\' + x + '. ' + show(t[1], [x] + names)
    f = show(t[1], names)
    a = show(t[2], names)
    if t[1][0] == 'l':
        f = '(' + f + ')'
    if t[2][0] in ('a', 'l'):
        a = '(' + a + ')'
    return f + ' ' + a


def safe_nf(t, fuel=3000):
    try:
        return normalize(t, fuel)
    except (Fuel, RecursionError):
        return None


def head_cycle_cert(t, maxsteps=20000):
    """Sound divergence certificate: head reduction revisits a head redex (f, a)
    with every spine element below it untouched in between, so the head
    reduction is periodic and the term has no head normal form."""
    spine_ = []
    seen = {}            # (f, a) -> (step, stack size before contraction)
    low = 10 ** 9        # minimum stack size since ... tracked per entry
    hist_min = []        # running minimum of stack size
    step = 0
    while step < maxsteps:
        if t[0] == 'a':
            spine_.append(t[2]); t = t[1]; continue
        if t[0] == 'l' and spine_:
            key = (t, spine_[-1])
            d = len(spine_)
            if key in seen:
                s0, d0, m0 = seen[key]
                # minimum stack size since s0 is tracked in m0 (updated below)
                if m0 >= d0 - 1 and d >= d0:
                    return True
            # update running minima of all seen entries
            for k2, (s0, d0, m0) in list(seen.items()):
                if d - 1 < m0:
                    seen[k2] = (s0, d0, d - 1)
            seen[key] = (step, d, d - 1)
            t = beta(t[1], spine_.pop())
            step += 1
            if step % 64 == 0 and size(t) > SIZE_CAP:
                return False
            continue
        return False      # reached head normal form
    return False


def hnf_or_cycle(t, maxsteps=1500):
    """Head-reduce t. Returns ('cycle', None) on a head-cycle certificate,
    ('hnf', (lams, head, args)) on reaching head normal form, ('cap', None)
    otherwise.  Certificate: the same head redex (f, a) recurs, the stack
    never dropped below its depth-1 in between, and the stack is no smaller."""
    lams = 0
    while t[0] == 'l':
        lams += 1; t = t[1]
    spine_ = []; seen = {}; hist = []; step = 0
    while True:
        if t[0] == 'a':
            spine_.append(t[2]); t = t[1]; continue
        if t[0] == 'l' and spine_:
            key = (t, spine_[-1]); d = len(spine_)
            if key in seen:
                s0, d0 = seen[key]
                if d >= d0 and min(hist[s0:]) >= d0 - 1:
                    return 'cycle', None
            seen[key] = (step, d)
            t = beta(t[1], spine_.pop()); hist.append(len(spine_)); step += 1
            if step > maxsteps or (step % 64 == 0 and size(t) > SIZE_CAP):
                return 'cap', None
            continue
        if t[0] == 'l':
            lams += 1; t = t[1]; continue
        return 'hnf', (lams, t, spine_[::-1])


def not_target_cert(t, target, depth=0):
    """True if t is certifiably NOT beta-equal to the normal form target."""
    kind, h = hnf_or_cycle(t)
    if kind == 'cycle':
        return True
    if kind == 'cap' or depth > 40:
        return False
    lams, hd, args = h
    tl = 0; tt = target
    while tt[0] == 'l':
        tl += 1; tt = tt[1]
    targs = []
    while tt[0] == 'a':
        targs.append(tt[2]); tt = tt[1]
    targs.reverse()
    if lams != tl or hd != tt or len(args) != len(targs):
        return True
    return any(not_target_cert(a, b, depth + 1) for a, b in zip(args, targs))


def free_in(t, i):
    tag = t[0]
    if tag == 'v': return t[1] == i
    if tag == 'k': return False
    if tag == 'l': return free_in(t[1], i + 1)
    return free_in(t[1], i) or free_in(t[2], i)


def eta(t):
    """full eta-reduction (bottom-up)."""
    tag = t[0]
    if tag in ('v', 'k'):
        return t
    if tag == 'a':
        return ('a', eta(t[1]), eta(t[2]))
    b = eta(t[1])
    if b[0] == 'a' and b[2] == ('v', 0) and not free_in(b[1], 0):
        return shift(b[1], -1)
    return ('l', b)


def no_beta_eq_cert(t, target):
    """Sound: True means t is not beta-equal to the beta-normal target.
    Uses a beta-NF exists <=> beta-eta-NF exists (Barendregt 15.1.5): an
    eta-reduct with a head cycle has no beta-NF, so neither has t."""
    return not_target_cert(t, target) or not_target_cert(eta(t), eta(target))


def consts_of(t, acc=None):
    acc = set() if acc is None else acc
    st = [t]
    while st:
        x = st.pop()
        if x[0] == 'k': acc.add(x[1])
        elif x[0] == 'l': st.append(x[1])
        elif x[0] == 'a': st.append(x[1]); st.append(x[2])
    return acc


def no_beta_eq_cert2(t, target):
    """adds: beta-reduction never creates a free constant, so a target constant
    missing from t certifies t != target."""
    if not consts_of(target) <= consts_of(t):
        return True
    return no_beta_eq_cert(t, target)
