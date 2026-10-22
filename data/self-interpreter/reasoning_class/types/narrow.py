#!/usr/bin/env python3
"""Demand-driven (needed-narrowing) search for readers: the computational form of
building the canonical intersection-type derivations of all laws at once.
A partial term has holes; every law is run by normal-order (Krivine) reduction to the
target normal form; a run that needs an unrefined hole asks for its refinement.
Unrefined holes at the end are dispensable for every checked law (untyped in every
law's canonical derivation) and are charged 2 bits as fillers.
Completeness (for the checked laws): any reader R* of weight <= B is reached along the
path that refines holes as in R*, since each partial term's runs coincide with R*'s up
to the first needed hole, and LB never exceeds w(R*). Fuel cut-offs are reported.
Usage: narrow.py B [--betanormal] [--laws 0,1,2] [--fuel F] [--max STATES]
"""
import sys, time
sys.setrecursionlimit(10000)

class Need(Exception):
    def __init__(self, h): self.h = h
class Fuel(Exception): pass
class Fail(Exception): pass

K = ('L', ('L', ('V', 1)))
Fb = ('L', ('L', ('V', 0)))
def cons(b, r): return ('L', ('A', ('A', ('V', 0), b), r))
ZIN = cons(K, ('C', 'r'))
def U(n):
    t = cons(K, ('C', 'N'))
    for _ in range(n): t = cons(Fb, t)
    return t
def target(law):
    if law == 0: return ('A', ('C', 'r'), ('C', 'j'))
    return ('A', ('A', ('C', 'c'), U(law - 1)), ('C', 'N'))
def inp(law): return ZIN if law == 0 else U(law)

class Cycle(Exception): pass
CERT = [False]
def rb(code, env, k, fills, budget):
    budget[0] -= 1
    if budget[0] < 0: raise Fuel()
    t = code[0]
    if t == 'V':
        if code[1] < k: return code
        e = env
        for _ in range(code[1] - k): e = e[1]
        c2, e2 = e[0]
        return rb(c2, e2, 0, fills, budget)
    if t == 'L': return ('L', rb(code[1], env, k + 1, fills, budget))
    if t == 'A': return ('A', rb(code[1], env, k, fills, budget), rb(code[2], env, k, fills, budget))
    if t == 'H':
        f = fills.get(code[1])
        return code if f is None else rb(f, env, k, fills, budget)
    return code
def whnf(code, env, stack, fills, fuel):
    snaps = [] if CERT[0] else None   # [head, stack readbacks bottom->top, low-water mark]
    while True:
        if snaps is not None and code[0] == 'L' and stack:
            b = [20000]
            hk = rb(code, env, 0, fills, b)
            cur = [rb(c, e, 0, fills, b) for c, e in stack]
            for h1, s1, m in snaps:
                if h1 == hk:
                    p1 = s1[m:]; p2 = cur[m:]
                    # (H P1) ->* (H P1) Y with the base below m untouched: diverges
                    if len(p2) >= len(p1) and p2[len(p2) - len(p1):] == p1: raise Cycle()
            snaps.append([hk, cur, len(stack)])
            if len(snaps) > 400: raise Fuel()
            # this beta pops one element: lower every low-water mark
            nl = len(stack) - 1
            for sn in snaps:
                if sn[2] > nl: sn[2] = nl
        t = code[0]
        if t == 'A':
            stack.append((code[2], env)); code = code[1]
        elif t == 'L':
            if stack:
                fuel[0] -= 1
                if fuel[0] < 0: raise Fuel()
                env = (stack.pop(), env); code = code[1]
            else:
                return ('lam', code[1], env)
        elif t == 'V':
            e = env
            for _ in range(code[1]): e = e[1]
            code, env = e[0]
        elif t == 'C':
            return ('neu', code[1], stack[::-1])
        else:  # hole
            f = fills.get(code[1])
            if f is None: raise Need(code[1])
            code = f

def compare(code, env, tgt, tenv, fills, fuel):
    res = whnf(code, env, [], fills, fuel)
    if res[0] == 'lam':
        if tgt[0] != 'L': raise Fail()
        name = 'v%d' % len(tenv)
        compare(res[1], ((('C', name), None), res[2]), tgt[1], (name,) + tenv, fills, fuel)
        return
    if tgt[0] == 'L': raise Fail()
    targs = []
    t = tgt
    while t[0] == 'A': targs.append(t[2]); t = t[1]
    targs.reverse()
    head = t[1] if t[0] == 'C' else tenv[t[1]]
    if res[1] != head or len(res[2]) != len(targs): raise Fail()
    for (c, e), ta in zip(res[2], targs):
        compare(c, e, ta, tenv, fills, fuel)

ROOT = ('H', 0)
def run_law(fills, law, fuel_n):
    fuel = [fuel_n]
    try:
        compare(('A', ROOT, inp(law)), None, target(law), (), fills, fuel)
        return ('ok',)
    except Need as e: return ('need', e.h)
    except Fail: return ('fail',)
    except (Fuel, RecursionError):
        # certify: rerun with exact cycle detection on every head reduction
        CERT[0] = True
        try:
            compare(('A', ROOT, inp(law)), None, target(law), (), fills, [fuel_n])
            return ('ok',)
        except Cycle: return ('fail',)
        except Need as e: return ('need', e.h)
        except Fail: return ('fail',)
        except (Fuel, RecursionError): return ('fuel',)
        finally: CERT[0] = False

def show(code, fills, names=()):
    t = code[0]
    if t == 'H':
        f = fills.get(code[1])
        return '_' if f is None else show(f, fills, names)
    if t == 'C': return code[1]
    if t == 'V':
        return names[code[1]] if code[1] < len(names) else '?%d' % code[1]
    if t == 'L':
        n = 'x%d' % len(names)
        return '(\\%s. %s)' % (n, show(code[1], fills, (n,) + names))
    return '(%s %s)' % (show(code[1], fills, names), show(code[2], fills, names))

FAILFIRST = '--failfirst' in sys.argv
PREFIX = sys.argv[sys.argv.index('--prefix') + 1] if '--prefix' in sys.argv else None
JLO, JHI = 0, 99
if '--jdepth' in sys.argv:
    _v = sys.argv[sys.argv.index('--jdepth') + 1]
    JLO, JHI = (int(_v[:-1]), 99) if _v.endswith('+') else (int(_v), int(_v))
def search(B, laws, fuel_n, betanormal, maxstates):
    stats = {'look': 0, 'states': 0, 'sol': [], 'fuel': [], 'pruned_fail': 0}
    nexth = [1]
    # state: fills, meta{h:(depth,head)}, open set, cost, jused
    def rec(fills, meta, open_, cost, jused, cused):
        stats['states'] += 1
        if stats['states'] > maxstates: raise OverflowError()
        needs = None; fuelout = False; needset = []
        for law in laws:
            r = run_law(fills, law, fuel_n)
            if r[0] == 'fail': stats['pruned_fail'] += 1; return
            if r[0] == 'need':
                if needs is None: needs = r[1]
                if r[1] not in needset: needset.append(r[1])
            if r[0] == 'fuel': fuelout = True
        if needs is None:
            lb = cost + 2 * len(open_)
            (stats['fuel'] if fuelout else stats['sol']).append((lb, show(ROOT, fills)))
            return
        if FAILFIRST and len(needset) > 1:
            best = None
            for hh in needset:
                kids = children(hh, fills, meta, open_, cost, jused, cused)
                viable = []
                for k in kids:
                    stats['look'] += 1
                    if all(run_law(k[0], law, fuel_n)[0] != 'fail' for law in laws): viable.append(k)
                if best is None or len(viable) < len(best[1]): best = (hh, viable)
            for k in best[1]: rec(*k)
            return
        for k in children(needs, fills, meta, open_, cost, jused, cused): rec(*k)
    def children(h, fills, meta, open_, cost, jused, cused):
        out = []
        d, head = meta[h]
        base = cost; rest = open_ - {h}
        def lb(c, nopen, ju, cu, dmin):
            v = c + 2 * nopen
            if not ju: v += 4 * max(dmin, JLO) - 2
            if not cu: v += dmin
            return v
        choices = []
        for i in range(d): choices.append((('V', i), 2 + i, [], jused, cused))
        choices.append((('C', 'c'), 2 + d, [], jused, True))
        if not jused and JLO <= d <= JHI: choices.append((('C', 'j'), 4 * d, [], True, cused))
        if not (head and betanormal):
            a = nexth[0]; nexth[0] += 1
            choices.append((('L', ('H', a)), 2, [(a, d + 1, False)], jused, cused))
        a1 = nexth[0]; a2 = nexth[0] + 1; nexth[0] += 2
        choices.append((('A', ('H', a1), ('H', a2)), 2, [(a1, d, True), (a2, d, False)], jused, cused))
        for node, c, newh, ju, cu in choices:
            nc = base + c
            nopen = len(rest) + len(newh)
            ds = [meta[x][0] for x in rest] + [dd for _, dd, _ in newh]
            dmin = min(ds) if ds else 99
            if (not ju or not cu) and not ds: continue
            if not ju and dmin > JHI: continue
            if lb(nc, nopen, ju, cu, dmin) > B: continue
            f2 = dict(fills); f2[h] = node
            m2 = dict(meta)
            for (hh, dd, hd) in newh: m2[hh] = (dd, hd)
            out.append((f2, m2, rest | {hh for hh, _, _ in newh}, nc, ju, cu))
        return out
    if PREFIX is None:
        rec({}, {0: (0, False)}, frozenset({0}), 0, False, False)
    else:
        # prefix: named term with '_' holes; build fills/meta/cost
        sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
        import rd
        meta = {}; info = {'cost': 0, 'j': False, 'c': False}
        def conv(t, env, head):
            if t[0] == 'V':
                if t[1] == '_':
                    h = nexth[0]; nexth[0] += 1; meta[h] = (len(env), head); return ('H', h)
                if t[1] in env: info['cost'] += 2 + env.index(t[1]); return ('V', env.index(t[1]))
                if t[1] == 'c': info['cost'] += 2 + len(env); info['c'] = True; return ('C', 'c')
                assert t[1] == 'j'; info['cost'] += 4 * len(env); info['j'] = True; return ('C', 'j')
            info['cost'] += 2
            if t[0] == 'L': return ('L', conv(t[2], (t[1],) + env, False))
            return ('A', conv(t[1], env, True), conv(t[2], env, False))
        code = conv(rd.parse(PREFIX), (), False)
        rec({0: code}, meta, frozenset(meta), info['cost'], info['j'], info['c'])
    return stats

if __name__ == '__main__':
    B = int(sys.argv[1])
    betanormal = '--betanormal' in sys.argv
    laws = [0, 1, 2]; fuel_n = 2000; maxstates = 100000
    a = sys.argv
    if '--laws' in a: laws = [int(x) for x in a[a.index('--laws') + 1].split(',')]
    if '--fuel' in a: fuel_n = int(a[a.index('--fuel') + 1])
    if '--max' in a: maxstates = int(a[a.index('--max') + 1])
    t0 = time.time()
    try:
        st = search(B, laws, fuel_n, betanormal, maxstates)
        print(f"B={B} betanormal={betanormal} laws={laws} states={st['states']} "
              f"look={st['look']} fails={st['pruned_fail']} sols={len(st['sol'])} fuel={len(st['fuel'])} "
              f"time={time.time()-t0:.1f}s")
        for s in sorted(st['sol'])[:40]: print('SOL', s)
        for s in st['fuel'][:20]: print('FUEL', s)
    except OverflowError:
        print(f"B={B} OVERFLOW at {maxstates} states, time={time.time()-t0:.1f}s")
