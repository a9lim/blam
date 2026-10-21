r"""Micro-search (narrowed by hand): inside V = \u. B, frame [u, list, cont], which terms of <= S bits
normalize to `cont r` (resp. `N`) on the variable streams var1, var2, var3 with u, cont, N rigid?"""
import sys, functools; sys.path.insert(0, '.')
from lab import *
S = int(sys.argv[1]) if len(sys.argv) > 1 else 11

@functools.lru_cache(None)
def terms(n, k):
    """DB terms of exactly n bits with free indices < k."""
    res = []
    if n >= 2 and n - 2 < k:
        res.append(("V", n - 2))
    if n >= 4:
        res += [("L", b) for b in terms(n - 2, k + 1)]
        for i in range(2, n - 3):
            res += [("A", f, a) for f in terms(i, k) for a in terms(n - 2 - i, k)]
    return tuple(res)

# frame: index0 = u, 1 = list, 2 = cont ; beyond: rigid N (3)
Nv = ("V", 0)  # N at free index 0 in the stream; inst shifts it to the post-list frame
def var(n):  # 1^n 0 N
    t = cons(K, Nv)
    for _ in range(n): t = cons(F, t)
    return t
def subst_list(B, s):
    # B has free u(0), list(1), cont(2), N(3). Replace list by s (which has free N only, as index 0 -> shift).
    # do it via application: (\list. B') s where B' is B with list bound... simpler: build (\u \list \cont. B) applied.
    return B  # unused
def inst(B, s):
    # (\list. B) s with u, cont, N staying free: B's free: 0=u,1=list,2=cont,3=N.
    # abstract index 1: build \l. B[1 -> 0, 0 -> 1...]. Easier: swap indices 0 and 1 then abstract index 0.
    def swap(t, d=0):
        if t[0] == "V":
            i = t[1]
            if i == d: return ("V", d + 1)
            if i == d + 1: return ("V", d)
            return t
        if t[0] == "L": return ("L", swap(t[1], d + 1))
        return ("A", swap(t[1], d), swap(t[2], d))
    Bs = swap(B)  # now index0 = list, 1 = u
    lam = ("L", Bs)  # \list. ...  free: 0=u,1=cont,2=N
    s2 = s  # s has free N at index 0; in the new context N is index 2 -> shift by 2
    s2 = shift(2, 0, s)
    return app(lam, s2)

targets_contr = {}
total = 0; hits_contr = []; hits_N = []
for n in range(2, S + 1):
    for B in terms(n, 3):
        total += 1
        ok_c = True; ok_n = True
        for m in (1, 2, 3):
            s = var(m)
            r = s  # tail after the leading 1
            r = s[1][2]  # cons(F, r) -> ('L', ('A', ('A', V0, F'), r')) ; r' shifted by 1
            r = shift(-1, 0, r)
            t = inst(B, s)
            # context after inst: free 0=u,1=cont,2=N
            want_c = app(("V", 1), shift(2, 0, r))  # cont r   (r has free N at 0 -> index 2)
            want_n = ("V", 2)
            got = nf(t, 20000)
            if got != want_c: ok_c = False
            if got != want_n: ok_n = False
            if not ok_c and not ok_n: break
        if ok_c: hits_contr.append((n, B))
        if ok_n: hits_N.append((n, B))
print("terms checked:", total)
names = ["u", "list", "cont", "N"]
def sh(t):
    return show(t, free=names)
print("== normalize to cont r on var1..3:")
for n, B in hits_contr: print(n, sh(B))
print("== normalize to N on var1..3:")
for n, B in hits_N: print(n, sh(B))
