#!/usr/bin/env python3
"""Tabled needed-narrowing (see narrow.py for the base search and its completeness argument).
Tabling: the future of a partial term P depends only on its RESIDUAL PROBLEM:
  for every law, either its status ('ok') or the exact residual of its normal-order run at the
  first needed hole (needed-hole closure, Krivine stack, current target, pending comparisons),
  all read back to terms whose unrefined holes appear as closures ('HC', id, k, env readbacks);
  plus j/c-used flags and (depth, head) of every reachable hole.
Holes in no residual ("orphans") are never needed again: permanent 2-bit fillers.
Final cost = offset + future, offset = refined cost + 2*orphans, so a residual problem proven to
have no completion within remaining budget R = B - offset is infeasible for every partial term
with the same canonical residual problem and remaining budget <= R.  Only clean subtrees (no
uncertified cut-off) are tabled.
"""
import sys, time
sys.setrecursionlimit(20000)

class Fuel(Exception): pass
class Fail(Exception): pass
class Cycle(Exception): pass
class NeedAt(Exception):
    def __init__(self, h, env, stack): self.h, self.env, self.stack = h, env, stack
class NeedState(Exception):
    def __init__(self, h, env, stack, tgt, tenv, work):
        self.h, self.env, self.stack, self.tgt, self.tenv, self.work = h, env, stack, tgt, tenv, work

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

CERT = [False]
def rb(code, env, k, fills, meta, budget):
    budget[0] -= 1
    if budget[0] < 0: raise Fuel()
    t = code[0]
    if t == 'V':
        if code[1] < k: return code
        e = env
        for _ in range(code[1] - k): e = e[1]
        c2, e2 = e[0]
        return rb(c2, e2, 0, fills, meta, budget)
    if t == 'L': return ('L', rb(code[1], env, k + 1, fills, meta, budget))
    if t == 'A': return ('A', rb(code[1], env, k, fills, meta, budget), rb(code[2], env, k, fills, meta, budget))
    if t == 'H':
        f = fills.get(code[1])
        if f is not None: return rb(f, env, k, fills, meta, budget)
        d = meta[code[1]][0]
        ents = []; e = env
        for _ in range(d - k):
            ents.append(rb(e[0][0], e[0][1], 0, fills, meta, budget)); e = e[1]
        return ('HC', code[1], k, tuple(ents))
    return code

def whnf(code, env, stack, fills, meta, fuel):
    snaps = [] if CERT[0] else None
    while True:
        if snaps is not None and code[0] == 'L' and stack:
            b = [20000]
            hk = rb(code, env, 0, fills, meta, b)
            cur = [rb(c, e, 0, fills, meta, b) for c, e in stack]
            for h1, s1, m in snaps:
                if h1 == hk:
                    p1 = s1[m:]; p2 = cur[m:]
                    if len(p2) >= len(p1) and p2[len(p2) - len(p1):] == p1: raise Cycle()
            snaps.append([hk, cur, len(stack)])
            if len(snaps) > 400: raise Fuel()
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
        else:
            f = fills.get(code[1])
            if f is None: raise NeedAt(code[1], env, stack)
            code = f

def compare(code, env, tgt, fills, meta, fuel):
    work = [(code, env, tgt, ())]
    while work:
        code, env, tgt, tenv = work.pop()
        try:
            res = whnf(code, env, [], fills, meta, fuel)
        except NeedAt as e:
            raise NeedState(e.h, e.env, e.stack, tgt, tenv, work)
        if res[0] == 'lam':
            if tgt[0] != 'L': raise Fail()
            name = 'v%d' % len(tenv)
            work.append((res[1], ((('C', name), None), res[2]), tgt[1], (name,) + tenv))
            continue
        if tgt[0] == 'L': raise Fail()
        targs = []; t = tgt
        while t[0] == 'A': targs.append(t[2]); t = t[1]
        targs.reverse()
        head = t[1] if t[0] == 'C' else tenv[t[1]]
        if res[1] != head or len(res[2]) != len(targs): raise Fail()
        for (c, e), ta in reversed(list(zip(res[2], targs))):
            work.append((c, e, ta, tenv))

ROOT = ('H', 0)
def residual(ns, fills, meta):
    b = [50000]
    hc = rb(('H', ns.h), ns.env, 0, fills, meta, b)
    st = tuple(rb(c, e, 0, fills, meta, b) for c, e in ns.stack)
    wk = tuple((rb(c, e, 0, fills, meta, b), ta, te) for c, e, ta, te in ns.work)
    return (hc, st, ns.tgt, ns.tenv, wk)

def run_law(fills, meta, law, fuel_n):
    for cert in (False, True):
        CERT[0] = cert
        try:
            compare(('A', ROOT, inp(law)), None, target(law), fills, meta, [fuel_n])
            return ('ok',)
        except NeedState as ns:
            try: key = residual(ns, fills, meta)
            except Fuel: key = None
            return ('need', ns.h, key)
        except (Fail, Cycle): return ('fail',)
        except (Fuel, RecursionError):
            if cert: return ('fuel',)
        finally: CERT[0] = False

def holes_in(x, out):
    if isinstance(x, tuple):
        if len(x) == 4 and x[0] == 'HC' and isinstance(x[1], int):
            if x[1] not in out: out.append(x[1])
            for y in x[3]: holes_in(y, out)
            return
        for y in x: holes_in(y, out)

def rename(x, m):
    if isinstance(x, tuple):
        if len(x) == 4 and x[0] == 'HC' and isinstance(x[1], int):
            return ('HC', m[x[1]], x[2], tuple(rename(y, m) for y in x[3]))
        return tuple(rename(y, m) for y in x)
    return x

def show(code, fills, names=()):
    t = code[0]
    if t == 'H':
        f = fills.get(code[1])
        return '_' if f is None else show(f, fills, names)
    if t == 'C': return code[1]
    if t == 'V': return names[code[1]] if code[1] < len(names) else '?%d' % code[1]
    if t == 'L':
        n = 'x%d' % len(names)
        return '(\\%s. %s)' % (n, show(code[1], fills, (n,) + names))
    return '(%s %s)' % (show(code[1], fills, names), show(code[2], fills, names))

JSPINE = '--jspine' in sys.argv
MINAR = int(sys.argv[sys.argv.index('--minarity') + 1]) if '--minarity' in sys.argv else 0
def jspine_ok(h, fills, d):
    # j (typed by an atom in zero) is never applied, and its parent spine is zero-typed,
    # so its head is never c (zero-untyped); at depth 1 it must be s or a still-open hole.
    def find(code):
        if code[0] == 'H':
            f = fills.get(code[1]); return None if f is None else find(f)
        if code[0] == 'L': return find(code[1])
        if code[0] == 'A':
            if code[2] == ('H', h): return code
            return find(code[1]) or find(code[2])
        return None
    app = find(('H', 0))
    if app is None: return True
    f = app[1]
    while True:
        if f[0] == 'H':
            g = fills.get(f[1])
            if g is None: return True
            f = g; continue
        if f[0] == 'A': f = f[1]; continue
        break
    if f[0] == 'C': return False          # c- or j-headed spine
    if f[0] == 'L': return True           # (only without --betanormal)
    return d != 1 or f == ('V', 0)
def search(B, laws, fuel_n, betanormal, maxstates, jlo, jhi, tabling, start):
    stats = {'states': 0, 'memo_hits': 0, 'sol': [], 'fuel': [], 'fails': 0, 'tabled': 0}
    memo = {}
    nexth = [max(start[1]) + 1 if start[1] else 1]
    def lbf(c, nopen, ju, cu, dmin):
        v = c + 2 * nopen
        if not ju: v += 4 * max(dmin, jlo) - 2
        if not cu: v += dmin
        return v
    def rec(fills, meta, open_, cost, jused, cused):
        stats['states'] += 1
        if stats['states'] > maxstates: raise OverflowError()
        res = []
        for law in laws:
            r = run_law(fills, meta, law, fuel_n)
            if r[0] == 'fail': stats['fails'] += 1; return
            res.append(r)
        needs = [r for r in res if r[0] == 'need']
        if not needs:
            lb = cost + 2 * len(open_)
            if any(r[0] == 'fuel' for r in res): stats['fuel'].append((lb, show(ROOT, fills)))
            else: stats['sol'].append((lb, show(ROOT, fills)))
            return
        key = None
        if tabling and all(r[0] != 'fuel' and (r[0] != 'need' or r[2] is not None) for r in res):
            reach = []
            for r in res:
                if r[0] == 'need': holes_in(r[2], reach)
            m = {h: i for i, h in enumerate(reach)}
            if all(h in open_ for h in reach):
                parts = tuple(('ok',) if r[0] == 'ok' else ('need', rename(r[2], m)) for r in res)
                key = (jused, cused, parts, tuple(meta[h] for h in reach))
                orphans = len(open_) - len(reach)
                remaining = B - (cost + 2 * orphans)
                if key in memo and remaining <= memo[key]:
                    stats['memo_hits'] += 1; return
        h = needs[0][1]
        d, head, sp = meta[h]
        spine_open = sp is not None and sp < MINAR
        rest = open_ - {h}
        choices = []
        if not spine_open:
            for i in range(d): choices.append((('V', i), 2 + i, [], jused, cused))
            choices.append((('C', 'c'), 2 + d, [], jused, True))
        if not spine_open and not jused and jlo <= d <= jhi and not (JSPINE and (head or not jspine_ok(h, fills, d))):
            choices.append((('C', 'j'), 4 * d, [], True, cused))
        if not (head and betanormal) and not spine_open:
            a = nexth[0]; nexth[0] += 1
            choices.append((('L', ('H', a)), 2, [(a, d + 1, False, None)], jused, cused))
        a1 = nexth[0]; a2 = nexth[0] + 1; nexth[0] += 2
        choices.append((('A', ('H', a1), ('H', a2)), 2, [(a1, d, True, None if sp is None else sp + 1), (a2, d, False, None)], jused, cused))
        before = len(stats['sol']) + len(stats['fuel'])
        for node, c, newh, ju, cu in sorted(choices, key=lambda x: x[1]):
            nc = cost + c
            nopen = len(rest) + len(newh)
            ds = [meta[x][0] for x in rest] + [nh[1] for nh in newh]
            dmin = min(ds) if ds else 99
            if (not ju or not cu) and not ds: continue
            if not ju and dmin > jhi: continue
            if lbf(nc, nopen, ju, cu, dmin) > B: continue
            f2 = dict(fills); f2[h] = node
            m2 = dict(meta)
            for nh in newh: m2[nh[0]] = nh[1:]
            rec(f2, m2, rest | {nh[0] for nh in newh}, nc, ju, cu)
        if key is not None and len(stats['sol']) + len(stats['fuel']) == before:
            if memo.get(key, -10**9) < remaining:
                memo[key] = remaining; stats['tabled'] += 1
    fills0, meta0, cost0, j0, c0 = start
    rec(fills0, meta0, frozenset(meta0), cost0, j0, c0)
    stats['memo_size'] = len(memo)
    return stats

def parse_prefix(src):
    sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/coord')
    import rd
    meta = {}; info = {'cost': 0, 'j': False, 'c': False}; ctr = [1]
    def conv(t, env, head):
        if t[0] == 'V':
            if t[1] == '_':
                h = ctr[0]; ctr[0] += 1; meta[h] = (len(env), head, None); return ('H', h)
            if t[1] in env: info['cost'] += 2 + env.index(t[1]); return ('V', env.index(t[1]))
            if t[1] == 'c': info['cost'] += 2 + len(env); info['c'] = True; return ('C', 'c')
            assert t[1] == 'j'; info['cost'] += 4 * len(env); info['j'] = True; return ('C', 'j')
        info['cost'] += 2
        if t[0] == 'L': return ('L', conv(t[2], (t[1],) + env, False))
        return ('A', conv(t[1], env, True), conv(t[2], env, False))
    code = conv(rd.parse(src), (), False)
    return ({0: code}, meta, info['cost'], info['j'], info['c'])

if __name__ == '__main__':
    a = sys.argv
    B = int(a[1]); betanormal = '--betanormal' in a; tabling = '--notab' not in a
    laws = [int(x) for x in a[a.index('--laws') + 1].split(',')] if '--laws' in a else [1, 2, 0]
    fuel_n = int(a[a.index('--fuel') + 1]) if '--fuel' in a else 2000
    maxstates = int(a[a.index('--max') + 1]) if '--max' in a else 100000
    jlo, jhi = 0, 99
    if '--jdepth' in a:
        v = a[a.index('--jdepth') + 1]
        jlo, jhi = (int(v[:-1]), 99) if v.endswith('+') else (int(v), int(v))
    start = parse_prefix(a[a.index('--prefix') + 1]) if '--prefix' in a else ({}, {0: (0, False, None)}, 0, False, False)
    if MINAR:
        assert a[a.index('--prefix') + 1] == '\\s. _'
        (hh,) = list(start[1]); start[1][hh] = (1, False, 0)
    t0 = time.time()
    try:
        st = search(B, laws, fuel_n, betanormal, maxstates, jlo, jhi, tabling, start)
        print(f"B={B} bn={betanormal} tab={tabling} laws={laws} states={st['states']} memo_hits={st['memo_hits']} "
              f"tabled={st['tabled']} fails={st['fails']} sols={len(st['sol'])} fuel={len(st['fuel'])} "
              f"time={time.time()-t0:.1f}s")
        for s in sorted(st['sol'])[:20]: print('SOL', s)
        for s in st['fuel'][:20]: print('FUEL', s)
    except OverflowError:
        print(f"B={B} OVERFLOW at {maxstates} states, time={time.time()-t0:.1f}s")
