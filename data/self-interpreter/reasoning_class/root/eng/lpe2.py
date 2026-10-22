# lazy enumerator v2: v1 + survival pruning during the top-level head reduction.
# Sound: the steps before an Inspect are hole-independent (lemma); holes never contain j, r, N;
# so if j or r (zero run) or N (unary run) has no residual, no filling can recover it.
import sys
import lpe
from lpe import *
from dbe import subst
def occurs(t, name):
    st = [t]
    while st:
        x = st.pop()
        if x[0] == 'k' and x[1] == name: return True
        if x[0] == 'l': st.append(x[1])
        elif x[0] == 'a': st.append(x[1]); st.append(x[2])
    return False
def top_whnf(e, t, keep):
    spine = []
    while True:
        if t[0] == 'a': spine.append(t[2]); t = t[1]; continue
        if t[0] == 'l' and spine:
            e.fuel -= 1
            if e.fuel < 0: raise Cap('fuel')
            t = subst(t[1], spine.pop())
            if e.fuel % 4 == 0:
                whole = t
                for x in reversed(spine): whole = ('a', whole, x)
                for nm in keep:
                    if not occurs(whole, nm): return None          # a needed constant was erased
                if lpe.size_of(whole) > e.cap: raise Cap('size')
            continue
        if t[0] == 'h': raise Inspect(t[1])
        for x in reversed(spine): t = ('a', t, x)
        return t
def size_of(t):
    n = 0; st = [t]
    while st:
        x = st.pop(); n += 1
        if x[0] == 'l': st.append(x[1])
        elif x[0] == 'a': st.append(x[1]); st.append(x[2])
    return n
lpe.size_of = size_of
KEEP = {'zero': ('j', 'r'), 'u1': ('N',), 'u2': ('N',), 'u3': ('N',)}
def run2(P, fuel, cap):
    for name, mk, want in TESTS:
        e = LEng(fuel, cap)
        try:
            t = top_whnf(e, mk(P), KEEP[name])
            if t is None: return 'fail'
            if not lazy_eq(e, t, want): return 'fail'
        except Inspect as ex: return ('inspect', ex.h)
        except (Cap, RecursionError): return ('cap', name)
    return 'pass'
lpe.run = run2
search = lpe.search
