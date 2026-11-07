r"""Two-sided residual checker for first-dispatch skeletons.

A skeleton fixes everything a reader does up to its first dispatch, with
source holes.  Each hole has a frame (roles of its free de Bruijn indices,
innermost first: 'bit' 'r' 's' 'c' 'T1'.. or 'H:name'), a j-tax base and a
size cap.  On zero the reader reduces to  zhead zargs..  (must be r j), on
unary to  uhead uargs..  (must be c U_(n-1) N).  w = overhead + sum of hole
costs (j-taxed) + sum |Ti|.  Unary stage: templates of uhead with
placeholders, brute force over the unary-side holes and the T's in budget;
zero stage: zhead (cap zbound) and the remaining holes.  Complete within
the stated budget for the skeleton.
"""
import time
from dbn import *
Us = [U(n) for n in (1, 2, 3)]
RV = [Kc('r')] + [normalize(U(n - 1)) for n in (1, 2, 3)]
SV = [Z()] + Us
BV = [K, F, F, F]
B2 = [Kc('bit2_zero_unused'), K, F, F]                 # second cell of the unary probes
R2 = [Kc('r2_zero_unused'), Kc('N'), normalize(U(0)), normalize(U(1))]
TGT = [A(Kc('r'), Kc('j'))] + [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
def rval(role, i):
    if role == 'bit': return BV[i]
    if role == 'r': return RV[i]
    if role == 's': return SV[i]
    if role == 'c': return Kc('c')
    if role == 'bit2': return B2[i]
    if role == 'r2': return R2[i]
    if role.startswith('T'): return Kc('t' + role)
    if role.startswith('H:'): return Kc('h_' + role[2:])
    raise ValueError(role)
def inst_f(t, frame, i):
    for role in frame: t = subst(t, 0, rval(role, i))
    return t
def csub(t, env):
    tag = t[0]
    if tag == 'k': return env.get(t[1], t)
    if tag == 'v': return t
    if tag == 'l': return ('l', csub(t[1], env))
    return ('a', csub(t[1], env), csub(t[2], env))
def consts(t, acc=None):
    acc = set() if acc is None else acc
    if t[0] == 'k': acc.add(t[1])
    elif t[0] == 'l': consts(t[1], acc)
    elif t[0] == 'a': consts(t[1], acc); consts(t[2], acc)
    return acc
def spine(t):
    a = []
    while t[0] == 'a': a.append(t[2]); t = t[1]
    return t, a[::-1]
def item_val(it, i):
    return Kc('h_' + it) if it in SK['holes'] else rval(it, i)
SK = None
CAPPED = {}
UNCERT = []
def hclose(names, holes):
    out = []; st = list(names)
    while st:
        h = st.pop()
        if h in out: continue
        out.append(h)
        for role in holes[h]['frame']:
            if role.startswith('H:'): st.append(role[2:])
    return out
def subst_all(t, env):
    for _ in range(5):
        cs = consts(t) & set(env)
        if not cs: return t
        t = csub(t, env)
    return t
def mkpool(h, cap, holes, jfree=False):
    fr = holes[h]['frame']; base = holes[h].get('jbase', 0)
    seen = {}; caps = 0; nterms = 0
    for mode in ((None,) if jfree else (None, 'any')):
        b0 = base if mode else 0
        for c0, t in enum_terms(cap - b0, len(fr), mode):
            nterms += 1
            ms = tuple(safe_nf(inst_f(t, fr, i)) for i in range(4))
            if None in ms:
                caps += 1; CAPPED[(len(fr), show(t))] = c0 + b0; continue
            key = (ms, mode == 'any')
            if key not in seen or seen[key][0] > c0 + b0: seen[key] = (c0 + b0, t)
    return sorted(((c, ms, hj, t) for (ms, hj), (c, t) in seen.items()), key=lambda q: q[0]), caps, nterms
def res(hs, holes):
    hs = list(hs)
    return max(0, 2 * len(hs) - (2 if any(holes[h].get('jbase', 0) == 0 for h in hs) else 0))
def run(sk, verbose=True):
    global SK; SK = sk
    t0 = time.time(); holes = sk['holes']; q = sk['q']
    WM = sk.get('wmax', 45); bud = WM - sk['overhead']
    Tn = ['T%d' % i for i in range(1, q + 1)]
    uh0, zh0 = sk['uhead'], sk['zhead']
    TCAP = bud - 2 - res([h for h in holes if h != uh0], holes)
    Tseen = {}
    for mode in (None, 'any'):
        for c, t in enum_terms(min(sk.get('tmax', bud), TCAP), 2, mode):
            ms = tuple(safe_nf(inst(t, SV[i])) for i in range(4))
            if None in ms: continue
            key = (ms, mode == 'any')
            if key not in Tseen or Tseen[key][0] > c: Tseen[key] = (c, t)
    Tl = sorted(((c, ms, hj, t) for (ms, hj), (c, t) in Tseen.items()), key=lambda x: x[0])
    uh, zh = sk['uhead'], sk['zhead']
    same = (uh == zh)
    zs = set(x for x in sk['zargs'] if x in holes) | {zh}; st = list(zs); seen_ = set()
    while st:
        h_ = st.pop()
        if h_ in seen_: continue
        seen_.add(h_); st += [r[2:] for r in holes[h_]['frame'] if r.startswith('H:')]
    ufeed = same or (uh in seen_)            # the unary head is also used on zero: it may carry j
    others = [h for h in holes if h not in (uh, zh)]
    nmin = res(others + ([] if same else [zh]), holes)   # one hole may be a bare j (0 bits at depth 1)
    pools = {}; totterms = 0; tcaps = 0
    for h in others:
        pools[h], cp, nt = mkpool(h, min(holes[h]['max'], bud - 2 - nmin + 2), holes); totterms += nt; tcaps += cp
    Ycap = min(holes[uh]['max'], bud - nmin)
    if ufeed:
        Ypool = []
        for mode in (None, 'any'):
            b0 = holes[uh].get('jbase', 0) if mode else 0
            Ypool += [(c + b0, t, mode == 'any') for c, t in enum_terms(Ycap - b0, len(holes[uh]['frame']), mode)]
        Ypool.sort(key=lambda x: x[0])
    else:
        Ypool = [(c, t, False) for c, t in enum_terms(Ycap, len(holes[uh]['frame']), None)]
    totterms += len(Ypool)
    if zh not in pools and not same:
        pools[zh], _, _ = mkpool(zh, min(sk['zbound'], bud), holes)
    if uh == zh: Zpool, cpz, ntz = [], 0, 0
    else: Zpool, cpz, ntz = mkpool(zh, min(sk['zbound'], bud), holes)
    totterms += ntz
    Uh = [h for h in hclose([x for x in sk['uargs'] if x in holes] +
                            [r[2:] for r in holes[uh]['frame'] if r.startswith('H:')], holes) if h != uh]
    PH = {'h_' + h for h in Uh} | {'t' + t for t in Tn}
    usurv = []; ucap = 0
    for cy, y, yj in Ypool:
        taus = []
        for i in (1, 2, 3):
            t = inst_f(y, holes[uh]['frame'], i)
            for it in sk['uargs']: t = A(t, item_val(it, i))
            v = safe_nf(t)
            if v is None:
                ucap += 1
                if hnf_or_cycle(t)[0] != 'cycle' and hnf_or_cycle(eta(t) if 'eta' in globals() else t)[0] != 'cycle': UNCERT.append(('u', sk['name'], show(y)))
                break
            hd, args = spine(v)
            if v[0] == 'l': break
            if hd[0] == 'k' and hd[1] not in PH | {'c'}: break
            if hd == ('k', 'c') and len(args) != 2: break
            taus.append(v)
        if len(taus) < 3: continue
        req = {}; dead = False
        for k, v in enumerate(taus):
            hd, args = spine(v)
            if not (consts(v) & PH):
                if v != TGT[k + 1]: dead = True
            elif hd == ('k', 'c'):
                for part, want in zip(args, (RV[k + 1], Kc('N'))):
                    if not (consts(part) & PH):
                        if part != want: dead = True
                    elif part[0] == 'k':
                        if req.get((part[1], k), want) != want: dead = True
                        req[(part[1], k)] = want
            elif hd[0] == 'k' and not args:
                if req.get((hd[1], k), TGT[k + 1]) != TGT[k + 1]: dead = True
                req[(hd[1], k)] = TGT[k + 1]
        if dead: continue
        order = Uh + Tn
        def cand(nm):
            pl = Tl if nm in Tn else pools[nm]
            ph = ('t' + nm) if nm in Tn else ('h_' + nm)
            return [it for it in pl if all(it[1][k + 1] == req[(ph, k)] for k in range(3) if (ph, k) in req)]
        cands = {nm: cand(nm) for nm in order}
        ZR = res([h for h in others if h not in Uh] + ([] if (same or zh in Uh) else [zh]), holes)
        left0 = bud - cy - ZR
        def rec(ix, left, nj, ch):
            if ix == len(order):
                for k in range(3):
                    env = {('t' + nm) if nm in Tn else ('h_' + nm): it[1][k + 1] for nm, it in zip(order, ch)}
                    if safe_nf(subst_all(taus[k], env), 2000) != TGT[k + 1]: return
                usurv.append((cy, y, dict(zip(order, ch)), left, nj, yj)); return
            for it in cands[order[ix]]:
                if it[0] > left: break
                if it[2] and nj: continue
                rec(ix + 1, left - it[0], nj + it[2], ch + [it])
        rec(0, left0, 1 if yj else 0, [])
    if verbose: print(f"[{sk['name']}] pools {totterms} terms ({tcaps} caps), unary survivors {len(usurv)}, ucaps {ucap}, {time.time()-t0:.1f}s", flush=True)
    hits = []
    Zh = [h for h in hclose([x for x in sk['zargs'] if x in holes] + [r[2:] for r in holes[zh]['frame'] if r.startswith('H:')], holes) if h not in Uh and h != zh and h != uh]
    Zh_ref = set(r[2:] for h in Zh + [zh] for r in holes[h]['frame'] if r.startswith('H:'))
    for cy, y, asg, left, nj, yj in usurv:
        left += res([h for h in others if h not in Uh] + ([] if (same or zh in Uh) else [zh]), holes)
        def recz(ix, left, nj, ch):
            if ix == len(Zh):
                if same: zlist = [(0, None, False, y)]
                elif zh in asg: zlist = [(0, None, False, asg[zh][3])]
                else: zlist = Zpool
                for cz, z, hj, zt in zlist:
                    if cz > left: break
                    if nj + hj != 1: continue
                    env = {('t' + nm) if nm in Tn else ('h_' + nm): it[1][0] for nm, it in list(asg.items()) + ch}
                    if uh in sk['zargs'] or uh in Zh_ref:
                        yz = safe_nf(inst_f(y, holes[uh]['frame'], 0))
                        if yz is None: continue
                        env['h_' + uh] = yz
                    t = inst_f(zt, holes[zh]['frame'], 0)
                    for it in sk['zargs']: t = A(t, item_val(it, 0))
                    if safe_nf(subst_all(t, env), 2000) == (Kc('j') if sk.get('ztarget') == 'j' else TGT[0]):
                        w = WM - left + cz
                        hits.append((w, show(zt), show(y), [(nm, show(it[3])) for nm, it in list(asg.items()) + ch]))
                return
            for it in pools[Zh[ix]]:
                if it[0] > left: break
                if it[2] and nj: continue
                recz(ix + 1, left - it[0], nj + it[2], ch + [(Zh[ix], it)])
        recz(0, left, nj, [])
    if verbose:
        print(f"[{sk['name']}] hits {len(hits)} {time.time()-t0:.1f}s")
        for h in sorted(hits)[:10]: print('   HIT', h)
    return hits, usurv, totterms
