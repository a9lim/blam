"""Pinned missing case: lambda s. s (lambda b. b X) A B, weight <=45.

No whole-reader enumeration and no X enumeration. Its minimum cost is two
without j or four with j (the extra handler binder taxes its hole). Thus
A+B<=23 with one j, <=21 with no j. A shared source pool is reused in both
operand roles. Unknown checks abort. Only the necessary unary law is used.
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
        if sys.platform != 'darwin': rss *= 1024
        if rss > 900 * 1024**2 or time.monotonic()-START > 110:
            os._exit(124)
        time.sleep(.1)
threading.Thread(target=watchdog, daemon=True).start()
sys.path.insert(0, '/Users/a9lim/Work/blam/tmp/round4/jn')
import dbn as D

J, C, N, R, Q = map(D.Kc, ('j', 'c', 'N', 'r', 'Q'))
STREAMS = [D.Z()] + [D.U(n) for n in (1, 2, 3)]
TAILS = [D.U(n-1) for n in (1, 2, 3)]
BITS2 = [D.K, D.F, D.F]
TAILS2 = [N, D.U(0), D.U(1)]
TARGETS = [D.A(D.A(C, r), N) for r in TAILS]

def app(t, *args):
    for a in args: t = D.A(t, a)
    return t

def contains(t, atom):
    return t == atom or any(contains(x, atom) for x in t[1:] if isinstance(x, tuple))

def replace(t, atom, value):
    if t == atom: return value
    if t[0] in ('v', 'k'): return t
    if t[0] == 'l': return D.L(replace(t[1], atom, value))
    return D.A(replace(t[1], atom, value), replace(t[2], atom, value))

def head_args(t):
    args = []
    while t[0] == 'a':
        args.append(t[2]); t = t[1]
    return t, args[::-1]

def inst_x(t):
    for value in (D.K, D.Z(), C): t = D.subst(t, 0, value)
    return t

SOURCE_COUNT = 0
def sources(cap, frame, has_j):
    global SOURCE_COUNT
    for cost, t in D.enum_terms(cap, frame, 'any' if has_j else None):
        SOURCE_COUNT += 1
        assert SOURCE_COUNT <= 100000
        yield cost, t

@lru_cache(None)
def universal_bad(t):
    """Return a source subterm with a certified symbolic head cycle.

    A head cycle that never reaches a free-variable head survives arbitrary
    substitutions. A minimum unary-pair solution cannot contain such a
    subterm: replace it by a nearest variable if j-free, or bare j if it
    contains the unique hole. Genericity preserves the normal output and
    the cost strictly decreases, while the j count remains unchanged.
    """
    if t[0] == 'l':
        return universal_bad(t[1])
    if t[0] == 'a':
        b = universal_bad(t[1]) or universal_bad(t[2])
        if b: return b
        if D.hnf_or_cycle(t, maxsteps=256)[0] == 'cycle': return t
    return None

@lru_cache(None)
def probe_bad(t):
    """A context-free source subterm unsolvable on all four required probes.

    Only application edges are descended: the source frame stays [s,c].
    For this reduction it suffices to minimize over four-probe solutions,
    a superset of full-law readers; no all-n pruning claim is required.
    """
    if all(D.hnf_or_cycle(D.inst(t, s), maxsteps=256)[0] == 'cycle' for s in STREAMS):
        return t
    if t[0] == 'a': return probe_bad(t[1]) or probe_bad(t[2])
    return None

def nf(t):
    return D.normalize(t, 400)

def match(t, want, fuel=None):
    """Compare only demanded normal-form positions, with shared fuel."""
    if fuel is None: fuel = [1000]
    t = D.whnf(t, fuel)
    if t[0] != want[0]: return False
    if t[0] in ('v', 'k'): return t == want
    if t[0] == 'l': return match(t[1], want[1], fuel)
    return match(t[1], want[1], fuel) and match(t[2], want[2], fuel)

# Positive control, outside the excluded budget: A=λb t.c(s F), B=s s j.
# r A B -> c(s F)(s s j) ->* c r N for every unary length.
control_a = D.L(D.L(D.A(D.V(3), D.A(D.V(2), D.F))))
control_b = app(D.V(0), D.V(0), J)
for i in range(3):
    assert match(app(D.inst(control_a, STREAMS[i+1]), BITS2[i], TAILS2[i],
                     D.inst(control_b, STREAMS[i+1])), TARGETS[i])
print('positive unary-pair control: PASS n=1,2,3; operand sum=31', flush=True)

pool = {}
certified = {}
for hj, cap in ((False, 23), (True, 21)):
    n = 0
    for cost, t in sources(cap, 2, hj):
        n += 1
        try:
            vals = tuple(nf(D.inst(t, s)) for s in STREAMS)
        except (D.Fuel, RecursionError):
            bad = universal_bad(t)
            kind = 'universal'
            if bad is None:
                bad = probe_bad(t)
                kind = 'four-probes'
            assert bad is not None, ('UNCERTIFIED operand', cost, t)
            certified[kind, bad] = certified.get((kind, bad), 0)+1
            continue
        key = (hj, vals)
        if key not in pool or cost < pool[key][0]:
            pool[key] = (cost, hj, vals, t)
    print('operand sources', hj, n, flush=True)

operands = sorted(pool.values(), key=lambda p: p[0])
print('distinct operand probe classes', len(operands), flush=True)

print('total sources', SOURCE_COUNT, 'X is not enumerated', flush=True)

template_count = pair_count = zero_count = 0
survivors = []
template_cycles = []
pair_certificates = []
zero_certificates = []
for ca, ja, av, at in operands:
    # X costs >=2, and a j-free B costs >=2 if A contains j.
    if ca > (21 if ja else 23): continue
    template_count += 1
    ts = []
    for i in range(3):
        raw = app(av[i+1], BITS2[i], TAILS2[i], Q)
        try:
            t = nf(raw)
        except (D.Fuel, RecursionError):
            assert D.head_cycle_cert(raw, maxsteps=1000), ('UNCERTIFIED template', ca, at, i)
            template_cycles.append((ca, at, i))
            break
        head, args = head_args(t)
        if t[0] == 'l' or head not in (C, Q): break
        if head == C:
            if len(args) != 2: break
            if any(not contains(a, Q) and a != w for a, w in zip(args, (TAILS[i], N))):
                break
        ts.append(t)
    if len(ts) != 3: continue
    for cb, jb, bv, bt in operands:
        if ja and jb: continue
        if ca+cb+2 > 25: break
        x_min = 4 if not (ja or jb) else 2
        if ca+cb+x_min > 25: continue
        # Exact argument constraints cheaply eliminate impossible B classes.
        impossible = False
        for i, t in enumerate(ts):
            head, args = head_args(t)
            if t == Q and bv[i+1] != TARGETS[i]: impossible = True
            if head == C:
                for arg, want in zip(args, (TAILS[i], N)):
                    if arg == Q and bv[i+1] != want: impossible = True
        if impossible: continue
        pair_count += 1
        assert SOURCE_COUNT+pair_count+zero_count <= 100000
        ok = True
        for i, t in enumerate(ts):
            raw = replace(t, Q, bv[i+1])
            if not contains(raw, C):
                ok = False
                break
            try:
                ok = match(raw, TARGETS[i])
            except (D.Fuel, RecursionError):
                assert D.not_target_cert(raw, TARGETS[i]), ('UNCERTIFIED unary pair', ca, at, cb, bt, i)
                pair_certificates.append((ca, at, cb, bt, i))
                ok = False
            if not ok: break
        if not ok: continue
        survivors.append((ca, at, cb, bt))
        raise AssertionError(('UNARY PAIR', ca, at, cb, bt))

print('symbolic unsolvable source certificates:', len(certified),
      'pruned sources:', sum(certified.values()))
for bad, count in sorted(certified.items(), key=lambda x: repr(x[0])):
    print('source-cycle', count, repr(bad))
print('template head-cycle certificates:', len(template_cycles))
for row in template_cycles: print('template-cycle', repr(row))
print('pair certificates', len(pair_certificates), 'zero certificates', len(zero_certificates))
for row in pair_certificates: print('pair-certificate', repr(row))
for row in zero_certificates: print('zero-certificate', repr(row))
print('templates', template_count, 'unary pairs', pair_count,
      'unary survivors', len(survivors), 'zero checks', zero_count)
for row in survivors: print('unary-survivor', repr(row))
print('NO READER; sources=', SOURCE_COUNT,
      'sources+tested-pairs+zero-checks=', SOURCE_COUNT+pair_count+zero_count,
      'uncertified-cutoffs=0')
print('elapsed=', time.monotonic()-START,
      'maxrss=', resource.getrusage(resource.RUSAGE_SELF).ru_maxrss)
