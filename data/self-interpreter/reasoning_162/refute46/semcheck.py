#!/usr/bin/env python3
"""Complete semantic check of the family

    R = \\s. s X1 ... Xk     (k >= 1, every Xi beta-normal, free names s,c,j,
                             j exactly once in R, cost(R) <= CMAX)

restricted to operands with |Xi| <= OPMAX.  Each operand's *meaning* is the
triple of normal forms of Xi under s := Z(r), U1(N), U2(N); spines are built
by a DP over meaning-states with the budget sum(2+|Xi|) <= CMAX-4 and the
pruning rule that a rigid-headed state must already be a prefix of its
target (appending operands never changes a rigid head or its arguments).
Fuel-exhausted normal forms are replaced by a rigid name BOT (sound: a
divergent operand can be erased but never equals a target).  Passing spines
are re-checked by rd.check at n=1..4.

usage: semcheck.py OPMAX KMAX [CMAX=41] [threads=2]
"""
import sys, time
from functools import lru_cache
sys.setrecursionlimit(100000)
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round3/refute46')
import rd

OPMAX = int(sys.argv[1]); KMAX = int(sys.argv[2])
CMAX = int(sys.argv[3]) if len(sys.argv) > 3 else 41
NMODE = len(sys.argv) > 4 and sys.argv[4] == 'n'   # R = (\n. \s. s X1..Xk) j, n anywhere
BUDGET = CMAX - (8 if NMODE else 4)   # sum over operands of (2 + |Xi|)
HOLE = 'n' if NMODE else 'j'
FUEL = 3000

# ---------- enumerate normal operands at depth 1 (names v0,v1,... for inner binders)
def gen_normal(size, depth, lam, juse):
    """yield normal terms of exactly `size` with `lam` inner lambdas, juse j's."""
    if size < 0 or lam < 0 or juse < 0: return
    if size >= 2 and lam >= 1 and (juse == 0 or NMODE):
        for b in gen_normal(size - 2, depth + 1, lam - 1, juse):
            yield ('L', f'v{depth}', b)
    yield from gen_spine(size, depth, lam, juse)

@lru_cache(maxsize=None)
def gen_spine_list(size, depth, lam, juse):
    return list(gen_spine(size, depth, lam, juse))

def gen_spine(size, depth, lam, juse):
    if size < 0 or lam < 0 or juse < 0: return
    # heads
    if lam == 0:
        for i in range(depth):           # bound var index i -> name v{depth-1-i}
            if size == 2 + i and juse == 0: yield ('V', f'v{depth-1-i}')
        if size == 2 + depth and juse == 0: yield ('V', 's')
        if size == 3 + depth and juse == 0: yield ('V', 'c')
        if NMODE:
            if size == 3 + depth and juse == 1: yield ('V', 'n')
        elif depth == 0 and size == 0 and juse == 1: yield ('V', 'j')
    for a in range(2, size - 2 + 1):
        b = size - 2 - a
        if b < 0: continue
        for la in range(lam + 1):
            for ja in range(juse + 1):
                lefts = gen_spine_list(a, depth, la, ja)
                if not lefts: continue
                for right in gen_normal_list(b, depth, lam - la, juse - ja):
                    for left in lefts:
                        yield ('A', left, right)

@lru_cache(maxsize=None)
def gen_normal_list(size, depth, lam, juse):
    return list(gen_normal(size, depth, lam, juse))

# ---------- canonical de Bruijn string for alpha-comparison
def canon(t, env=()):
    if t[0] == 'V':
        return str(env.index(t[1])) if t[1] in env else t[1]
    if t[0] == 'L':
        return 'L' + canon(t[2], (t[1],) + env)
    return '(' + canon(t[1], env) + ' ' + canon(t[2], env) + ')'

BOT = ('V', 'BOT')
def nfz(t):
    try: return rd.nf(t, [FUEL])
    except (rd.Fuel, RecursionError): return BOT

STREAMS = [rd.Z('r'), rd.U(1, 'N'), rd.U(2, 'N')]
TARGETS = [rd.parse('r ' + HOLE), nfz(('A', ('A', ('V','c'), rd.U(0,'N')), ('V','N'))),
           nfz(('A', ('A', ('V','c'), rd.U(1,'N')), ('V','N')))]
TARGET_C = tuple(canon(t) for t in TARGETS)

def spine_of(t):
    args = []
    while t[0] == 'A': args.append(t[2]); t = t[1]
    return t, args[::-1]

def prefix_ok(val, target):
    """val rigid-headed => must be head+args prefix of target; lambdas pass."""
    if val[0] == 'L': return True
    h, args = spine_of(val)
    th, targs = spine_of(target)
    if canon(h) != canon(th): return False
    if len(args) > len(targs): return False
    return all(canon(a) == canon(b) for a, b in zip(args, targs))

def meaning(op):
    return tuple(nfz(rd.subst(op, 's', st)) for st in STREAMS)

def main():
    t0 = time.time()
    ops = []   # (size, juse, term, meaning)
    for juse in ((0, 1, 2) if NMODE else (0, 1)):
        for sz in range(0, OPMAX + 1):
            for lam in range(0, 4):
                for t in gen_normal_list(sz, 0, lam, juse):
                    ops.append((sz, min(juse, 1), t))
    print(f'operands: {len(ops)}  ({time.time()-t0:.1f}s)', flush=True)
    means = {}
    bots = 0
    for sz, juse, t in ops:
        m = meaning(t)
        if any(x is BOT for x in m): bots += 1
        means[canon(t)] = m
    print(f'meanings computed ({time.time()-t0:.1f}s), fuel-outs: {bots}', flush=True)
    ops.sort(key=lambda o: o[0])
    # dedup operands by meaning (cheapest representative per meaning+juse)
    seen = {}
    dedup = []
    for sz, juse, t in ops:
        mk = (tuple(canon(x) for x in means[canon(t)]), juse)
        if mk in seen: continue
        seen[mk] = True; dedup.append((sz, juse, t))
    ops = dedup
    print(f'distinct meanings: {len(ops)}', flush=True)

    # DP over states: key (canon triple, juse) -> (cost, example operand list)
    start = (tuple(STREAMS), 0, 0, [])     # (values, cost, juse, ops)
    frontier = {(tuple(canon(v) for v in STREAMS), 0): start}
    found = []
    for k in range(1, KMAX + 1):
        nxt = {}
        for (key, ju), (vals, cost, _, hist) in frontier.items():
            for sz, juse, t in ops:
                if ju + juse > 1 and not NMODE: continue
                if k == KMAX and ju + juse == 0: continue
                ncost = cost + 2 + sz
                if ncost > BUDGET: break
                m = means[canon(t)]
                nv = []
                ok = True
                for v, x, tg in zip(vals, m, TARGETS):
                    if v is BOT: nv.append(BOT); continue
                    r = nfz(('A', v, x))
                    if r is not BOT and not prefix_ok(r, tg): ok = False; break
                    nv.append(r)
                if not ok: continue
                nju = min(ju + juse, 1)
                nkey = (tuple(canon(v) for v in nv), nju)
                if nkey[0] == TARGET_C and nju == 1:
                    found.append((ncost + (8 if NMODE else 4), hist + [t]))
                old = nxt.get(nkey)
                if old is None or old[1] > ncost:
                    nxt[nkey] = (tuple(nv), ncost, nju, hist + [t])
        frontier = nxt
        print(f'k={k}: live states {len(frontier)}  found so far {len(found)}  ({time.time()-t0:.1f}s)', flush=True)
    for cost, hist in sorted(found, key=lambda f: f[0]):
        src = '\\s. s ' + ' '.join('(' + rd.show(t) + ')' if t[0] != 'V' else rd.show(t) for t in hist)
        if NMODE: src = '(\\n. ' + src + ') j'
        print('CANDIDATE cost', cost, '::', src)
        rd.check(src, nmax=4)
    print('done', f'{time.time()-t0:.1f}s')

if __name__ == '__main__':
    main()
