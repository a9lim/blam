# lazy pre-stream enumerator (lazy narrowing): partial terms with hole atoms ('h', id);
# a run that never inspects a hole decides every filling (NOTES "(3) soundness").
import sys, time, signal
from dbe import Eng, Cap, L, A, V, Kc, Z, U, shift, subst
sys.setrecursionlimit(100000)
class Inspect(Exception):
    def __init__(self, h): self.h = h
class LEng(Eng):
    def whnf(self, t):
        t = Eng.whnf(self, t)
        h = t
        while h[0] == 'a': h = h[1]
        if h[0] == 'h': raise Inspect(h[1])
        return t
def lazy_eq(e, t, w):
    t = e.whnf(t)
    if t[0] == 'l':
        if w[0] != 'l': return False
        return lazy_eq(e, t[1], w[1])
    if w[0] == 'l': return False
    at = []
    while t[0] == 'a': at.append(t[2]); t = t[1]
    aw = []
    while w[0] == 'a': aw.append(w[2]); w = w[1]
    if t != w or len(at) != len(aw): return False
    for x, y in zip(reversed(at), reversed(aw)):
        if not lazy_eq(e, x, y): return False
    return True
def targets(nmax=3):
    ts = [('zero', lambda R: A(R, Z(Kc('r'))), Eng(10**6, 10**7).nf(A(Kc('r'), Kc('j'))))]
    for n in range(1, nmax + 1):
        ts.append((f'u{n}', (lambda n: lambda R: A(R, U(n, Kc('N'))))(n),
                   Eng(10**6, 10**7).nf(A(Kc('c'), U(n - 1, Kc('N')), Kc('N')))))
    return ts
TESTS = targets()
def run(P, fuel, cap):
    """'fail' | ('inspect', h) | 'pass' | ('cap', name)"""
    for name, mk, want in TESTS:
        e = LEng(fuel, cap)
        try:
            if not lazy_eq(e, mk(P), want): return 'fail'
        except Inspect as ex: return ('inspect', ex.h)
        except (Cap, RecursionError): return ('cap', name)
    return 'pass'
def cost(t, d=0):
    tag = t[0]
    if tag == 'v': return t[1] + 2
    if tag == 'h': return 2
    if tag == 'k': return d + 2 if t[1] == 'c' else 4 * d     # j priced 0 + 4·depth
    if tag == 'l': return 2 + cost(t[1], d + 1)
    return 2 + cost(t[1], d) + cost(t[2], d)
def replace(t, h, alt):
    tag = t[0]
    if tag == 'h': return alt if t[1] == h else t
    if tag == 'l':
        b = replace(t[1], h, alt); return t if b is t[1] else ('l', b)
    if tag == 'a':
        f = replace(t[1], h, alt); x = replace(t[2], h, alt)
        return t if (f is t[1] and x is t[2]) else ('a', f, x)
    return t
def search(root, hdepth, budget, fuel=1500, cap=20000, node_cap=100000, time_cap=110, log=None):
    """root: partial term; hdepth: dict hole->depth. Returns stats, passes, caps."""
    t0 = time.time(); nid = [max(hdepth) + 1 if hdepth else 0]
    stack = [(root, dict(hdepth))]; stats = {'nodes': 0, 'fail': 0, 'pass': 0, 'cap': 0, 'pruned': 0}
    passes = []; caps = []
    while stack:
        P, H = stack.pop(); stats['nodes'] += 1
        if stats['nodes'] > node_cap or time.time() - t0 > time_cap:
            stats['ABORTED'] = True; stats['left'] = len(stack) + 1; break
        r = run(P, fuel, cap)
        if r == 'fail': stats['fail'] += 1; continue
        if r == 'pass': stats['pass'] += 1; passes.append(P); continue
        if r[0] == 'cap': stats['cap'] += 1; caps.append((P, H, r[1])); continue
        h = r[1]; d = H[h]
        alts = [('v', i) for i in range(d)] + [Kc('c')]
        n1 = nid[0]; nid[0] += 1
        alts.append(('l', ('h', n1)))
        n2, n3 = nid[0], nid[0] + 1; nid[0] += 2
        alts.append(('a', ('h', n2), ('h', n3)))
        for alt in alts:
            P2 = replace(P, h, alt)
            if cost(P2) > budget: stats['pruned'] += 1; continue
            H2 = dict(H); del H2[h]
            if alt[0] == 'l': H2[n1] = d + 1
            if alt[0] == 'a': H2[n2] = d; H2[n3] = d
            stack.append((P2, H2))
    stats['time'] = round(time.time() - t0, 1)
    return stats, passes, caps
