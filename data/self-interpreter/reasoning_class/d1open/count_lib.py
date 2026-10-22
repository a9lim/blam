from functools import lru_cache
@lru_cache(None)
def T(c, d, nfree):
    if c < 2: return 0
    n = 1 if c - 2 < d + nfree else 0
    n += T(c - 2, d + 1, nfree)
    for ca in range(2, c - 3):
        n += T(ca, d, nfree) * T(c - 2 - ca, d, nfree)
    return n
def count_upto(cap, nfree):
    return sum(T(c, 0, nfree) for c in range(cap + 1))
@lru_cache(None)
def TJ(c, d, nfree):
    if c < 0: return 0
    n = 1 if c == 4 * d else 0
    if c >= 2: n += TJ(c - 2, d + 1, nfree)
    for ca in range(0, c - 1):
        n += TJ(ca, d, nfree) * T(c - 2 - ca, d, nfree) + T(ca, d, nfree) * TJ(c - 2 - ca, d, nfree)
    return n
def count_upto_j(cap, nfree, jbase):
    return sum(TJ(c, 0, nfree) for c in range(0, cap - jbase + 1)) if cap >= jbase else 0
def res(hs, holes):
    hs = list(hs)
    return max(0, 2 * len(hs) - (2 if any(holes[h].get('jbase', 0) == 0 for h in hs) else 0))
def est_skel(sk):
    bud = sk.get('wmax', 45) - sk['overhead']; holes = sk['holes']
    uh, zh = sk['uhead'], sk['zhead']; same = uh == zh
    others = [h for h in holes if h not in (uh, zh)]
    nmin = res(others + ([] if same else [zh]), holes)
    tot = 0
    for h in holes:
        fr = len(holes[h]['frame']); jb = holes[h].get('jbase', 0)
        if h == uh:
            cap = min(holes[h]['max'], bud - nmin)
            tot += count_upto(cap, fr) + (count_upto_j(cap, fr, jb) if (same or ufeed(sk)) else 0)
        else:
            cap = min(sk['zbound'], bud) if h == zh else min(holes[h]['max'], bud - nmin)
            tot += count_upto(cap, fr) + count_upto_j(cap, fr, jb)
    if sk['q']:
        tc = bud - 2 - res([h for h in holes if h != uh], holes)
        tot += count_upto(tc, 2) + count_upto_j(tc, 2, 0)
    return tot

def ufeed(sk):
    holes = sk['holes']; zs = set(x for x in sk['zargs'] if x in holes) | {sk['zhead']}
    st = list(zs); seen = set()
    while st:
        h = st.pop()
        if h in seen: continue
        seen.add(h); st += [r[2:] for r in holes[h]['frame'] if r.startswith('H:')]
    return sk['uhead'] in seen
