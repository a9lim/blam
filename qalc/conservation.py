"""Executable invariant-level conservation proof instrument.

The lemma splits in two:

  Lemma A (attribution ledger).  In a pure lambda-IAM run from a
  k-probe start (pos, D, L0, bullets^k . base) that surfaces at
  (pos', U, L0, tape . base) with the log and the base restored,
  the step count satisfies

      t == k + b + 1        (mod 2)

  where b = ALL bullets on the surface tape — the surfacing lp
  recirculates tape->log->tape, so step-born bullets can sit BELOW
  it; only the total count matters (fresh-review correction: the
  earlier (k-r)+m+1 form, counting above-lp bullets only, is false
  on e.g. λ(1 1) at k=1: t=3, m=0, r=0).
  Proof: every step is the birth, death, or transport of EXACTLY ONE
  tape/log individual (bullet or logged position); captures (var) and
  releases (bt2) of slice cargo cost 0; per individual x the
  attributed count obeys  count(x) == B(x) + p(x)  (mod 2) while
  live (B = 1 iff step-born; p = 0 on tape, 1 on log, frozen under
  suspension) and  count(x) == B(x) + 1  once dead or suspended.
  Sum the ledger at the endpoint.

  Lemma B (the coloring in the version-controlled kernel register,
  proven and mechanized):
  every rule flips phi, so t == |pos'| - |pos| + 1 + w(l) (probe
  tapes weigh 0). The depth term is REAL (fresh-review catch): a
  probe launched at pos /= pos' picks it up — \1 probed from ('b')
  surfaces at root in one var step with w = 1, not k + b = 0.

  Theorem (conservation):  w(l) == k + b + |pos'| - |pos|  (mod 2).
  Root protocol and boundary probes have pos' == pos, so the used
  specializations are w(l) == k + b: boolean protocol k=2 gives
  w(l) == b == exit slot; the haltI sector gives w(l) == 1.

This file checks the LEDGER INVARIANT AT EVERY STEP (the inductive
content of Lemma A), in lockstep with the uninstrumented machine
(conformance: implementation drift is a hard error), across an
exhaustive enumeration of closed pure terms, then checks the
endpoint identities of Lemma A and of the Theorem.

This is a standing Gate-1 battery component for the reference machine.
"""
import sys
sys.path.insert(0, '.')
from lam_iam import (Var, Lam, App, show, subterm, level, binder_path,
                     BULLET, is_lp, State, step_classical)
from collections import deque
from itertools import count as _count

# ---- instrumented entries ----
# bullet:  ('B', id, born)        born in {'step', 'probe'}
# lp:      ('P', id, occ, slice)  slice = tuple of instrumented lps
RHO = ('RHO',)

def strip(e):
    if isinstance(e, tuple) and e[0] == 'B':
        return BULLET
    if isinstance(e, tuple) and e[0] == 'P':
        return ('L', e[2], tuple(strip(x) for x in e[3]))
    return e

class Ledger:
    def __init__(self):
        self.B = {}        # id -> 1 if step-born else 0
        self.count = {}    # id -> attributed steps
        self.loc = {}      # id -> 'tape' | 'log' | 'susp' | 'dead'
        self.kind = {}     # id -> 'bullet' | 'lp'
    def birth(self, i, kind, born, loc):
        assert i not in self.B
        self.B[i] = 1 if born == 'step' else 0
        self.count[i] = 1 if born == 'step' else 0
        self.loc[i] = loc
        self.kind[i] = kind
    def attribute(self, i):
        self.count[i] += 1
    def check(self):
        for i, b in self.B.items():
            c, l = self.count[i] % 2, self.loc[i]
            if l == 'tape':
                assert c == b % 2, (i, 'tape', c, b)
            elif l == 'log':
                assert c == (b + 1) % 2, (i, 'log', c, b)
            elif l in ('susp', 'dead'):
                assert c == (b + 1) % 2, (i, l, c, b)

def istep(term, path, d, log, tape, led, ids):
    """One instrumented pure step; mirrors lam_iam.step_classical
    rule-for-rule. Returns (rule, path, d, log, tape) or None."""
    t = subterm(term, path)
    if d == 'D':
        if isinstance(t, App):                                   # b1
            i = next(ids)
            led.birth(i, 'bullet', 'step', 'tape')
            return ('b1', path + ('f',), 'D', log, (('B', i, 'step'),) + tape)
        if isinstance(t, Lam) and tape and tape[0][0] == 'B':    # b2
            led.loc[tape[0][1]] = 'dead'
            led.attribute(tape[0][1])
            return ('b2', path + ('b',), 'D', log, tape[1:])
        if isinstance(t, Var):                                   # var
            bp = binder_path(term, path)
            n = level(path) - level(bp)
            assert len(log) >= n
            captured = log[:n]
            for e in captured:                    # suspension: 0 cost
                assert e[0] == 'P' and led.loc[e[1]] == 'log'
                led.loc[e[1]] = 'susp'
            i = next(ids)
            led.birth(i, 'lp', 'step', 'tape')
            lp = ('P', i, path, tuple(captured))
            return ('var', bp, 'U', log[n:], (lp,) + tape)
        if isinstance(t, Lam) and tape and tape[0][0] == 'P':    # bt2
            lp = tape[0]
            if binder_path(term, lp[2]) == path:
                led.loc[lp[1]] = 'dead'
                led.attribute(lp[1])
                for e in lp[3]:                   # release: 0 cost
                    assert led.loc[e[1]] == 'susp'
                    led.loc[e[1]] = 'log'
                return ('bt2', lp[2], 'U', lp[3] + log, tape[1:])
            return None
        return None
    else:
        if not path:
            return None
        parent, last = path[:-1], path[-1]
        if last == 'f':
            if tape and tape[0][0] == 'B':                       # b3
                led.loc[tape[0][1]] = 'dead'
                led.attribute(tape[0][1])
                return ('b3', parent, 'U', log, tape[1:])
            if tape and tape[0][0] == 'P':                       # arg
                led.loc[tape[0][1]] = 'log'
                led.attribute(tape[0][1])
                return ('arg', parent + ('a',), 'D', (tape[0],) + log,
                        tape[1:])
            return None
        if last == 'b':                                          # b4
            i = next(ids)
            led.birth(i, 'bullet', 'step', 'tape')
            return ('b4', parent, 'U', log, (('B', i, 'step'),) + tape)
        if last == 'a':                                          # bt1
            assert log
            e = log[0]
            led.loc[e[1]] = 'tape'
            led.attribute(e[1])
            return ('bt1', parent + ('f',), 'D', log[1:], (e,) + tape)
        return None

def classify_surface(tape):
    """tape == bullets^m . lp . bullets^n . RHO  -> (m, lp, n, r) or
    None, r = probe-born bullets among the n below the lp. (The lp
    recirculates tape->log->tape, so step-born bullets CAN sit below
    it; probe bullets sit at the bottom and never move.)"""
    m = 0
    while m < len(tape) and tape[m][0] == 'B':
        m += 1
    if m >= len(tape) or tape[m][0] != 'P':
        return None
    n = r = 0
    i = m + 1
    while i < len(tape) and tape[i][0] == 'B':
        n += 1
        r += 1 if tape[i][2] == 'probe' else 0
        i += 1
    if i == len(tape) - 1 and tape[i] == RHO:
        return (m, tape[m], n, r)
    return None

def w(term, e):
    """Sec 7.1 weight on STRIPPED entries (single source: mirrors
    polarity.w for the pure alphabet)."""
    if e == BULLET:
        return 0
    if is_lp(e):
        d = len(e[1]) - len(binder_path(term, e[1]))
        return (d + sum(w(term, x) for x in e[2])) % 2
    return 0

def probe(term, k, max_steps=4096):
    """Run the instrumented machine against bullets^k . RHO with the
    per-step ledger check + lockstep conformance vs step_classical.
    Returns dict verdict."""
    led, ids = Ledger(), _count()
    ptape = []
    for _ in range(k):
        i = next(ids)
        led.birth(i, 'bullet', 'probe', 'tape')
        ptape.append(('B', i, 'probe'))
    tape = tuple(ptape) + (RHO,)
    path, d, log = (), 'D', ()
    # lockstep reference state
    ref = State((), 'D', (), tuple(strip(e) for e in tape))
    t = 0
    for _ in range(max_steps):
        r = istep(term, path, d, log, tape, led, ids)
        rr = step_classical(term, ref)
        if r is None:
            assert rr is None, ('conformance: ref stepped, inst did not')
            surf = classify_surface(tape)
            if d == 'U' and not path and surf is not None:
                m, lp, n, rgot = surf
                b = m + n                # total surface bullets
                # ---- endpoint inventory (Lemma A's bookkeeping) ----
                for e in tape[:m]:
                    assert e[2] == 'step', 'above-lp bullet not step-born'
                assert log == ()
                led.check()
                assert sum(led.count.values()) == t, 'attribution leak'
                # ---- Lemma A endpoint:  t == k + b + 1  (mod 2) ----
                lemA = (t - (k + b + 1)) % 2 == 0
                # ---- Theorem:  w(l) == k + b  (mod 2) ----
                wl = w(term, strip(lp))
                thm = (wl - (k + b)) % 2 == 0
                return {'outcome': 'surface', 'k': k, 'm': m, 'b': b,
                        'r': rgot, 't': t, 'w': wl, 'lemA': lemA,
                        'thm': thm}
            return {'outcome': 'stuck', 'k': k, 't': t}
        rule, path, d, log, tape = r
        t += 1
        # lockstep conformance: same rule, same stripped state
        assert rr is not None, ('conformance: inst stepped, ref did not',
                                rule)
        rrule, ref = rr
        assert rrule == rule, ('conformance rule', rule, rrule)
        assert ref.path == path and ref.d == d, 'conformance pos'
        assert ref.log == tuple(strip(e) for e in log), 'conformance log'
        assert ref.tape == tuple(strip(e) for e in tape), 'conformance tape'
        # ---- THE INVARIANT, every step ----
        led.check()
        assert sum(led.count.values()) == t, 'attribution leak'
    return {'outcome': 'timeout', 'k': k, 't': t}

# ---- closed-term enumeration ----
# size: Var=1, Lam=1+|body|, App=1+|f|+|a|  (stated measure; independent
# of the reviewer's enumeration)
def terms_of(size, depth):
    if size <= 0:
        return
    if size == 1:
        for i in range(1, depth + 1):
            yield Var(i)
        return
    for b in terms_of(size - 1, depth + 1):
        yield Lam(b)
    for fs in range(1, size - 1):
        for f in terms_of(fs, depth):
            for a in terms_of(size - 1 - fs, depth):
                yield App(f, a)

def sweep(max_size=10, ks=(1, 2, 3)):
    from collections import Counter
    stats = Counter()
    fails = []
    nterms = 0
    for size in range(1, max_size + 1):
        for term in terms_of(size, 0):
            nterms += 1
            for k in ks:
                v = probe(term, k)
                stats[(k, v['outcome'])] += 1
                if v['outcome'] == 'surface':
                    stats[(k, 'lemA_ok' if v['lemA'] else 'lemA_FAIL')] += 1
                    stats[(k, 'thm_ok' if v['thm'] else 'thm_FAIL')] += 1
                    if not (v['lemA'] and v['thm']):
                        fails.append((show(term), k, v))
    return nterms, stats, fails

# ---- battery cross-check: mark-free arrivals in the GATED twelve ----
def mark_free(e):
    """Ordinary lp whose ancestry (slice, recursively) is all-ordinary."""
    if not (isinstance(e, tuple) and e and e[0] == 'L'):
        return False
    return all(mark_free(x) for x in e[2])

def battery():
    from kernel import (Run, Done, step, init, classify_arrival,
                        classify_root, is_gam)
    from suite import PROGRAMS, CERTS
    from polarity import w as wk
    print('\n--- battery: every classifier arrival, by ancestry ---')
    print('%-9s %8s | mark-free: ok viol | marked: eq neq' %
          ('program', 'arrivals'))
    viol = 0
    for name, term in PROGRAMS.items():
        arr = {}
        for cert in (None, CERTS.get(name)):
            s0 = next(iter(init(term)))
            seen, dq = {s0}, deque([s0])
            while dq:
                s = dq.popleft()
                if isinstance(s, Done) and s.tick >= 2:
                    continue
                if isinstance(s, Run) and s.d == 'U':
                    if (s.path and s.path[-1] == 'a' and s.log
                            and is_gam(s.log[0])):
                        c = classify_arrival(s.tape)
                        if c is not None:
                            arr[(s.path, c[1], c[0])] = True
                    if not s.path:
                        rb = classify_root(s.tape)
                        if rb is not None:
                            arr[((), s.tape[rb], rb)] = True
                for sg, dk, rule, s2 in step(term, s, cert):
                    if s2 not in seen:
                        seen.add(s2)
                        dq.append(s2)
        mf_ok = mf_viol = mk_eq = mk_neq = 0
        bad = []
        for (pos, l, slot) in arr:
            wl = wk(term, l)
            if mark_free(l):
                if wl % 2 == slot % 2:
                    mf_ok += 1
                else:
                    mf_viol += 1
                    bad.append((pos, slot, wl, l))
            else:
                if wl % 2 == slot % 2:
                    mk_eq += 1
                else:
                    mk_neq += 1
        viol += mf_viol
        print('%-9s %8d |          %3d  %3d |        %3d %3d' %
              (name, len(arr), mf_ok, mf_viol, mk_eq, mk_neq))
        for b in bad[:3]:
            print('    MARK-FREE VIOLATION:', b)
    print('mark-free violations TOTAL:', viol)
    return viol

if __name__ == '__main__':
    import time
    ms = int(sys.argv[1]) if len(sys.argv) > 1 else 10
    t0 = time.time()
    nterms, stats, fails = sweep(ms)
    dt = time.time() - t0
    print('closed terms <= size %d: %d   (%.1fs)' % (ms, nterms, dt))
    for k in (1, 2, 3):
        surf = stats[(k, 'surface')]
        print('  k=%d: surface %5d  stuck %5d  timeout %3d   '
              'lemA ok/FAIL %d/%d   thm ok/FAIL %d/%d' %
              (k, surf, stats[(k, 'stuck')], stats[(k, 'timeout')],
               stats[(k, 'lemA_ok')], stats[(k, 'lemA_FAIL')],
               stats[(k, 'thm_ok')], stats[(k, 'thm_FAIL')]))
    for f in fails[:10]:
        print('  FAIL:', f)
    print('TOTAL FAILURES:', len(fails))
    viol = battery()
    # The module verdict is the exit code (audit #10 flagged the
    # print-only verdict).
    sys.exit(0 if not fails and viol == 0 else 1)
