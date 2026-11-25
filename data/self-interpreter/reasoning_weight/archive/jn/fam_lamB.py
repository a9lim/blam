r"""R = \s. s (\b. B) T  (k = 2), every lambda-rooted dispatcher.
zero : nf(B[b:=K][s:=Z] r T[Z])          = r j
unary: nf(B[b:=F][s:=U_n] U_(n-1) T[U_n]) = c U_(n-1) N
cost(R) = 10 + |B| + |T| (B at depth 2, frame [b,s,c]); w <= 45 iff
|B| + |T| <= 31 (j in B taxed +4 for \b).  This run covers the window
|B| <= BMAX, |T| <= TMAX inside that budget; complete inside the window.
"""
import sys, time, bisect
from dbn import *
BUD = int(sys.argv[3]) if len(sys.argv) > 3 else 31   # >31 only for validation
BMAX = int(sys.argv[1]) if len(sys.argv) > 1 else 21
TMAX = int(sys.argv[2]) if len(sys.argv) > 2 else 21
t0 = time.time()
T_ = Kc('t')
Us = [U(n) for n in (1, 2, 3)]
Um = [normalize(U(n - 1)) for n in (1, 2, 3)]
tgt = [normalize(A(A(Kc('c'), U(n - 1)), Kc('N'))) for n in (1, 2, 3)]
rj = A(Kc('r'), Kc('j'))
def inst3(t, b, s): return subst(subst(subst(t, 0, b), 0, s), 0, Kc('c'))
def tsub(t, m):
    if t[0] == 'k': return m if t[1] == 't' else t
    if t[0] == 'v': return t
    if t[0] == 'l': return ('l', tsub(t[1], m))
    return ('a', tsub(t[1], m), tsub(t[2], m))
def has_t(t):
    if t[0] == 'k': return t[1] == 't'
    if t[0] == 'v': return False
    if t[0] == 'l': return has_t(t[1])
    return has_t(t[1]) or has_t(t[2])
def spine(t):
    a = []
    while t[0] == 'a': a.append(t[2]); t = t[1]
    return t, a[::-1]
Tpool = {}
tcap = []
for mode in ('any', None):
    for c, t in enum_terms(TMAX, 2, mode):
        ms = tuple(safe_nf(inst(t, Us[k])) for k in range(3))
        if any(m is None for m in ms):
            tcap.append(show(t)); continue
        Tpool.setdefault(ms, []).append((c, t, safe_nf(inst(t, Z())), mode == 'any'))
mins = {ms: min(x[0] for x in L_) for ms, L_ in Tpool.items()}
def okhead(m): return m[0] == 'l' or spine(m)[0] == ('k', 'c')
keys = sorted(Tpool, key=lambda ms: mins[ms]); kc = [mins[k] for k in keys]
fk = [k for k in keys if all(okhead(m) for m in k)]; fkc = [mins[k] for k in fk]
def upto(L_, C_, lim): return L_[:bisect.bisect_right(C_, lim)]
print('T with capped unary meaning (skipped):', tcap)
print('T meanings', len(keys), 'function/c-headed', len(fk), f'{time.time()-t0:.1f}s', flush=True)
hits = 0; nB = nv = ncx = 0
ncheck = 0; lastc = -1
capped = []
bcap = []
zcap = []
capm = set()
import collections
worst = collections.Counter()
for mode in (None, 'any'):
    for cb0, bt in enum_terms(BMAX - (4 if mode else 0), 3, mode):
        cb = cb0 + (4 if mode else 0); jB = mode == 'any'
        nB += 1
        zeta = safe_nf(A(A(inst3(bt, K, Z()), Kc('r')), T_))
        if zeta is None:
            zt = A(A(inst3(bt, K, Z()), Kc('r')), T_)
            if not (hnf_or_cycle(zt)[0] == 'cycle' or hnf_or_cycle(eta(zt))[0] == 'cycle'): bcap.append(show(bt, ['b']))
            continue
        hz, az = spine(zeta)
        if zeta[0] == 'l' or not (hz in (('k', 'r'), T_)): continue
        zreq = None; zdead = False
        if not has_t(zeta):
            zdead = zeta != rj
        elif hz == ('k', 'r'):
            if len(az) != 1: zdead = True
            elif az[0] == T_: zreq = Kc('j')
            elif not has_t(az[0]): zdead = az[0] != Kc('j')
        if zdead: continue
        taus = []
        for k in range(3):
            tau = safe_nf(A(A(inst3(bt, F, Us[k]), Um[k]), T_))
            if tau is None:
                ut = A(A(inst3(bt, F, Us[k]), Um[k]), T_)
                if not (hnf_or_cycle(ut)[0] == 'cycle' or hnf_or_cycle(eta(ut))[0] == 'cycle'): bcap.append(show(bt, ['b']) + ' @n%d' % (k + 1))
                break
            h, a = spine(tau)
            if tau[0] == 'l' or h not in (('k', 'c'), T_): break
            taus.append(tau)
        if len(taus) < 3: continue
        nv += 1
        req = [None] * 3; cx = False; dead = False; theaded = [False] * 3
        for k in range(3):
            tau = taus[k]
            if not has_t(tau):
                if tau != tgt[k]: dead = True
                continue
            h, a = spine(tau)
            if h == ('k', 'c') and len(a) == 2:
                for part, want in zip(a, (Um[k], Kc('N'))):
                    if not has_t(part):
                        if part != want: dead = True
                    elif part == T_:
                        if req[k] not in (None, want): dead = True
                        req[k] = want
                    else: cx = True
            elif h == ('k', 'c'):
                dead = True                     # rigid c with the wrong arity
            elif h == T_ and not a:
                if req[k] not in (None, tgt[k]): dead = True
                req[k] = tgt[k]
            else:
                cx = True; theaded[k] = True
        if dead: continue
        lim = BUD - cb
        if cx:
            ncx += 1
            allt = all(spine(x)[0] == T_ and x != T_ for x in taus)
            base = upto(keys, kc, lim)
            cand = [m for m in base if all(req[k] is None or m[k] == req[k] for k in range(3))
                    and all((not theaded[k]) or okhead(m[k]) for k in range(3))]
        else:
            cand = [m for m in upto(keys, kc, lim) if all(req[k] is None or m[k] == req[k] for k in range(3))]
        ncheck += len(cand); worst[show(bt, ['b'])] += len(cand)
        if cb != lastc:
            print('  cb', cb, 'checks so far', ncheck, f'{time.time()-t0:.1f}s', flush=True); lastc = cb
        for ms in cand:
            okk = True
            for k in range(3):
                if not has_t(taus[k]): continue
                v = safe_nf(tsub(taus[k], ms[k]), 2000)
                if v is None: capped.append((show(bt, ['b']), k)); capm.add((taus[k], ms[k], tgt[k])); okk = False; break
                if v != tgt[k]: okk = False; break
            if not okk: continue
            for (ct, t, mz, jT) in Tpool[ms]:
                if cb + ct > BUD or jT == jB or mz is None: continue
                if zreq is not None and mz != zreq: continue
                v = safe_nf(tsub(zeta, mz), 2000)
                if v is None and not no_beta_eq_cert2(tsub(zeta, mz), rj): zcap.append(show(bt, ['b']) + ' | ' + show(t))
                if v == rj:
                    hits += 1
                    print('HIT', 10 + cb + ct, 'B =', show(bt, ['b']), '| T =', show(t), flush=True)
print('worst', worst.most_common(8))
print('capped checks', len(capped), 'distinct (template, meaning) pairs', len(capm), flush=True)
heads0 = collections.Counter(show(m)[:50] for _, m, _ in capm)
print('capped T meanings (top):', heads0.most_common(10), flush=True)
print('capped templates (top):', collections.Counter(show(t)[:50] for t, _, _ in capm).most_common(8), flush=True)
cert = sum(1 for tau, m, tg in capm if no_beta_eq_cert2(tsub(tau, m), tg))
print('capped pairs with a not-target certificate (head cycle / head-arity mismatch):', cert, 'of', len(capm))
for tau, m, tg in capm:
    if not no_beta_eq_cert2(tsub(tau, m), tg): print('  UNCERTIFIED', show(tau)[:60], '|', show(m)[:80])
heads = collections.Counter(show(m)[:40] for _, m, _ in capm)
print('capped T meanings (top):', heads.most_common(6))
print('zero checks capped without certificate:', len(zcap), zcap[:10])
print('B templates capped without a head-cycle certificate:', len(bcap), bcap[:15])
print('B', nB, 'viable', nv, 'complex', ncx, 'hits', hits, f'{time.time()-t0:.1f}s')
