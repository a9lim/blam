"""Small exhaustive helper cases for the split-dispatch theorem.

All sources, including source beta-redexes, are generated. No whole readers
are enumerated. The unbounded reader laws imply the finite sample premises
used here. Unknown reductions fail the check, rather than reject a candidate.
"""
import os
import resource
import sys
import threading
import time
from functools import lru_cache

sys.dont_write_bytecode = True
resource.setrlimit(resource.RLIMIT_CPU, (100, 110))
START = time.monotonic()
def watchdog():
    while True:
        rss = resource.getrusage(resource.RUSAGE_SELF).ru_maxrss
        if sys.platform != 'darwin':
            rss *= 1024
        if rss > 900 * 1024**2 or time.monotonic() - START > 110:
            os._exit(124)
        time.sleep(0.1)
threading.Thread(target=watchdog, daemon=True).start()
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
import dbn as D

J, N, R, X, C = map(D.Kc, ('j', 'N', 'r', 'X', 'c'))
TOTAL = 0

def contains(t, atom):
    if t == atom:
        return True
    return any(contains(x, atom) for x in t[1:] if isinstance(x, tuple))

def shielded(t):
    """Every j lies below c, or below an r spine with at least 2 arguments.

    Such a rigid shell survives beta reduction unless erased altogether;
    the goal r j contains no shell. Abstractions may capture other variables.
    """
    if not contains(t, J):
        return True
    h, arity = t, 0
    while h[0] == 'a':
        arity += 1
        h = h[1]
    if h == C or (h == R and arity >= 2):
        return True
    if t[0] == 'l':
        return shielded(t[1])
    if t[0] == 'a':
        return shielded(t[1]) and shielded(t[2])
    return False

def instantiate(t, values):
    for value in values:
        t = D.subst(t, 0, value)
    return t

def enum(cmax, nfree, skip=None, jbase=0, jtax=4, jcount=1):
    """One marker j at cost jbase+jtax*depth; skip its encoded variable slot.

    Ordinary variables cost 2+index, abstractions/apps cost 2. For the
    hoisted frame the marker encodes the one occurrence of the a binder.
    """
    @lru_cache(None)
    def terms(c, depth, j):
        if c < 0:
            return ()
        out = []
        if j == 0:
            out.extend(D.V(i) for i in range(depth+nfree)
                       if (skip is None or i != depth+skip) and 2+i == c)
        elif j == 1 and c == jbase+jtax*depth:
            out.append(J)
        if c >= 2:
            out.extend(D.L(b) for b in terms(c-2, depth+1, j))
        for cf in range(c-1):
            for jf in range(j+1):
                out.extend(D.A(f, x)
                           for f in terms(cf, depth, jf)
                           for x in terms(c-2-cf, depth, j-jf))
        return tuple(out)

    for cost in range(cmax+1):
        yield from ((cost, t) for t in terms(cost, 0, jcount))

def take(gen):
    global TOTAL
    for pair in gen:
        TOTAL += 1
        assert TOTAL <= 100000
        yield pair

def nf(t):
    # Any Fuel/RecursionError exception aborts this entire run.
    return D.normalize(t, 10000)

def rest_check(label, cmax, *, hoisted=False, strict=False, multiple=False):
    opts = dict(nfree=3, skip=1, jbase=3, jtax=1) if hoisted else dict(nfree=2)
    seen = passed = 0
    examples = set()
    # Marker-free sources cannot yield j and already satisfy the shell
    # invariant by syntax; they need no evaluation (and may diverge).
    counts = range(1, cmax//3+1) if multiple else (1,)
    sources = (pair for count in counts for pair in enum(cmax, **opts, jcount=count))
    for cost, t in take(sources):
        seen += 1
        def ins(s):
            return instantiate(t, [s, J, C] if hoisted else [s, C])
        if not all(nf(ins(D.U(n))) == N for n in (1, 2, 3)):
            continue
        passed += 1
        if hoisted:
            assert cost >= 11
        z = nf(ins(D.Z()))
        assert z != J if strict else shielded(z), (label, cost, t, z)
        if strict and not hoisted:
            # Also closes the shared-x family's functional zero requirement.
            assert nf(D.A(z, R)) != D.A(R, J), (label, cost, t, z)
        examples.add((cost, D.show(z)))
    print(label, 'sources=', seen, 'unary-survivors=', passed,
          'zero-normal-forms=', sorted(examples))

def no_j_rest():
    seen = 0
    for cost, t in take(enum(9, 2, jcount=0)):
        seen += 1
        assert nf(D.inst(t, D.U(1))) != N, (cost, t)
    print('no-j-rest<=9', 'sources=', seen, 'no U1 -> N')

def stable_rejection(t):
    # Substitution X:=any j-free term preserves j absence. If j is present,
    # a lambda or a fixed rigid neutral head/arity cannot turn into r j.
    if not contains(t, J):
        return 'j-absent'
    if t[0] == 'l':
        return 'lambda'
    args = []
    while t[0] == 'a':
        args.append(t[2]); t = t[1]
    if t in (J, C):
        return 'wrong-rigid-head'
    if t == R and len(args) != 1:
        return 'wrong-r-arity'
    if t == R and len(args) == 1 and not contains(args[0], J):
        return 'j-absent-argument'
    return None

def arbitrary_x_rejection(t):
    if not contains(t, J) and not contains(t, X):
        return 'j-and-X-absent'
    if t[0] == 'l':
        return 'lambda'
    head, arity = t, 0
    while head[0] == 'a':
        arity += 1
        head = head[1]
    if head in (J, C):
        return 'wrong-rigid-head'
    if head == R and arity != 1:
        return 'wrong-r-arity'
    if t == D.A(R, X):
        return 'identity-route'
    return None

def arm_check(label, cmax, *, hoisted=False):
    opts = dict(nfree=4, skip=2, jbase=4, jtax=1) if hoisted else dict(nfree=3)
    seen = 0
    buckets = {}
    counts = range(1, cmax//4+1) if hoisted else (1,)
    sources = (pair for count in counts for pair in enum(cmax, **opts, jcount=count))
    for cost, t in take(sources):
        seen += 1
        values = [D.K, D.Z(), J, C] if hoisted else [D.K, D.Z(), C]
        z = nf(D.A(D.A(instantiate(t, values), R), X))
        why = arbitrary_x_rejection(z) if hoisted else stable_rejection(z)
        assert why, (label, cost, t, z)
        if why == 'identity-route':
            assert cost >= 12
        buckets[why] = buckets.get(why, 0)+1
    print(label, 'sources=', seen, 'rejections=', buckets)

rest_check('weighted-rest<=17', 17)
rest_check('weighted-rest<=19/strict-j', 19, strict=True)
no_j_rest()
arm_check('weighted-zero-arm<=9', 9)
rest_check('hoisted-rest<=20/any-marker-count', 20, hoisted=True, multiple=True)
rest_check('hoisted-rest<=11/strict-j/any-marker-count', 11,
           hoisted=True, strict=True, multiple=True)
arm_check('hoisted-zero-arm<=13/positive-marker-count', 13, hoisted=True)
print('TOTAL sources=', TOTAL, 'unknowns=0')
print('elapsed=', time.monotonic()-START,
      'maxrss=', resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
