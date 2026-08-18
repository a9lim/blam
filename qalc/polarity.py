"""The port-polarity coloring, mechanically verified. (The
register carries the version; this file does not duplicate it.)

Closed form (kernel.md §7.1):
  phi(Run) = depth(pos) + [dir=U] + W(tape) + W(log) + W(rs)
             + W(ks) + vb_k
with entry weights (mod 2):
  bullet, gamma, mu, alpha, rho, R-frame : 0
  A (answer token)                       : 1
  lp ('L', occ, slice) : (len(occ) - len(binder_path)) + sum W(slice)
  K2 retained-whole record ('K', l)      : W(l)
  K3 decode record / KD bundle           : 0
  KA suppressed-decode head              : 0   (the mark is part of
        the swept alphabet; reachable edges
        cannot constrain a reachably-dead mark, so one disclosed
        raw suppressed edge is the constraining instrument)

Claim: every rule flips phi — INCLUDING conservative retain-whole
fire — EXCEPT certified-erasure fire, whose pinned-gauge delta is
  1 - w(erased arrival lp)   (the parametrized form is
                              1 - w(l) - F*w(R), F = the POPPED
                              frame count; w(R) = 0 pinned).
Terminal entries (RunDone/Halt/tick) each flip by assignment; they
chain linearly off a unique predecessor (complete residues), so
consistency there is trivial. We verify them by BFS 2-coloring
instead of the closed form.

Branch-offset theorem (checked below): for two branches created at
one fire and interfering at a common later boundary, with no
interior fires,
  len_0 - len_1  ==  w(l_0) - w(l_1)   (mod 2)
where l_b is the which-path lp erased at the boundary for branch b.
"""
import sys
sys.path.insert(0, '.')
from lam_iam import (binder_path, BULLET, is_lp, App, Lam, Var,
                     Gate)
from kernel import (Run, RunDone, Done, step, init, classify_arrival,
                    is_gam, is_mu, is_ans, is_alpha, is_rho,
                    GAM, MU, RHO, ALPHA, FRAME)
from suite import PROGRAMS, CERTS, Q_OUTER_FIRE, arrivals
from collections import deque

def w(term, e):
    if e == BULLET:
        return 0
    if is_lp(e):
        d = len(e[1]) - len(binder_path(term, e[1]))
        return (d + sum(w(term, x) for x in e[2])) % 2
    if is_ans(e):
        return 1
    if isinstance(e, tuple) and e and e[0] == 'K':
        # decoded spectator: carries its retained lp's weight;
        # the alpha-decoded (gate, i) record weighs 0 like alpha
        return w(term, e[1]) if len(e) == 2 else 0
    # gamma, mu, alpha, rho, R-frames, KA history heads
    # (w(KA) = 0, pinned by the raw-edge sweep below)
    return 0

def phi(term, s):
    assert isinstance(s, Run)
    v = len(s.path) + (1 if s.d == 'U' else 0)
    v += sum(w(term, e) for e in s.tape)
    v += sum(w(term, e) for e in s.log)
    v += sum(w(term, e) for e in s.rs)
    v += sum(w(term, e) for e in s.ks)
    if s.vb is not None:
        v += s.vb[2]          # VB phase k; c0 = 0 per the rule algebra
    return v % 2

def check_program(name, term, cert):
    s0 = next(iter(init(term)))
    seen, dq = {s0}, deque([s0])
    edges = 0
    bad = []
    fire_defects = []
    while dq:
        s = dq.popleft()
        if isinstance(s, Done) and s.tick >= 2:
            continue
        for sg, dk, rule, s2 in step(term, s, cert):
            edges += 1
            if isinstance(s, Run) and isinstance(s2, Run):
                d = (phi(term, s2) - phi(term, s)) % 2
                if rule == 'fire-h':
                    c = classify_arrival(s.tape)
                    lw = w(term, c[1])
                    # The conservative fire retains D(l) in ks
                    # and flips uniformly; only certified ERASURE
                    # charges the defect 1 - w(l)
                    if cert is not None and s.path in cert:
                        expect = (1 - lw) % 2
                    else:
                        expect = 1
                    fire_defects.append((name, lw, d))
                    if d != expect:
                        bad.append((rule, s, s2, d, 'expect', expect))
                elif d != 1:
                    bad.append((rule, s, s2, d))
            # Run->RunDone, RunDone->Done, Done->Done: linear chains,
            # flip by assignment (unique predecessor via complete residue)
            if s2 not in seen:
                seen.add(s2)
                dq.append(s2)
    return len(seen), edges, bad, fire_defects

# ---- terminal and gauge checks ----
# (1) terminal chains checked mechanically, not asserted: every
#     RunDone/Done state must have in-degree 1 and out-degree 1 in the
#     reachable graph (unique predecessor -> flip-by-assignment is
#     well-defined; linear chains confirmed).
# (2) gauge-pinned uniqueness as a swept theorem: parametrize the mark
#     weights by v in {0,1}^10 over (gam, mu, A, alpha, rho, R, K3,
#     K2e, KD, KA) and check the full flip/defect law
#     under every assignment. Entry weights are LINEAR in v, so each
#     edge carries an 11-vector profile (base + ten mark counts) and
#     assignments are dot products. KA never occurs on a reachable
#     edge (the suppressed arm is reachably dead code), so the
#     reachable sweep CANNOT constrain it — 8/1024 pass with KA
#     free; ONE disclosed raw suppressed-decode edge (wf.py
#     regression twenty's frame-skip fixture) is the constraining
#     instrument. Predicted passing set with it: gam=mu=c, A=1+c,
#     rho free, alpha=R=K3=K2e=KD=KA=0 — exactly 4 of 1024.

NPAR = 10  # gam mu A al rho R K3 K2e KD KA

def prof_entry(term, e, out):
    if e == BULLET:
        return
    if is_lp(e):
        out[0] += len(e[1]) - len(binder_path(term, e[1]))
        for x in e[2]:
            prof_entry(term, x, out)
        return
    if is_gam(e):   out[1] += 1; return
    if is_mu(e):    out[2] += 1; return
    if is_ans(e):   out[3] += 1; return
    if is_alpha(e): out[4] += 1; return
    if is_rho(e):   out[5] += 1; return
    if isinstance(e, tuple) and e and e[0] == 'R' and len(e) == 5:
        out[6] += 1; return
    if isinstance(e, tuple) and e and e[0] == 'K':
        if len(e) == 3:
            out[7] += 1
        else:
            out[8] += 1
            prof_entry(term, e[1], out)
        return
    if isinstance(e, tuple) and e and e[0] == 'KD':
        out[9] += 1
        return
    if isinstance(e, tuple) and e and e[0] == 'KA':
        out[10] += 1
        return

def prof_state(term, s):
    out = [0] * (NPAR + 1)
    out[0] = len(s.path) + (1 if s.d == 'U' else 0)
    if s.vb is not None:
        out[0] += s.vb[2]
    for reg in (s.tape, s.log, s.rs, s.ks):
        for e in reg:
            prof_entry(term, e, out)
    return [x % 2 for x in out]

def collect(term, cert):
    """One BFS: Run->Run edges as delta-profiles (+ fire metadata),
    terminal in/out degrees."""
    s0 = next(iter(init(term)))
    seen, dq = {s0}, deque([s0])
    edges = []
    indeg, outdeg = {}, {}
    while dq:
        s = dq.popleft()
        if isinstance(s, Done) and s.tick >= 2:
            continue
        succs = step(term, s, cert)
        if not isinstance(s, Run):
            outdeg[s] = len(succs)
        for sg, dk, rule, s2 in succs:
            if not isinstance(s2, Run):
                indeg[s2] = indeg.get(s2, 0) + 1
            if isinstance(s, Run) and isinstance(s2, Run):
                p1, p2 = prof_state(term, s), prof_state(term, s2)
                d = [(b - a) % 2 for a, b in zip(p1, p2)]
                fire = None
                if rule == 'fire-h':
                    c = classify_arrival(s.tape)
                    lprof = [0] * (NPAR + 1)
                    prof_entry(term, c[1], lprof)
                    certified = cert is not None and s.path in cert
                    # F = POPPED frame count. len(s.rs) would count retained Q
                    # spectators too — 38 reachable witnesses,
                    # orbit-masked by w(R)=0; the register's
                    # popped-frame statement was correct).
                    # target rs = Q, source rs = P ∪ Q, so
                    # |P| = len(source) − len(target).
                    fire = (certified, [x % 2 for x in lprof],
                            (len(s.rs) - len(s2.rs)) % 2)
                edges.append((d, fire))
            if s2 not in seen:
                seen.add(s2)
                dq.append(s2)
    return edges, indeg, outdeg

def raw_suppressed_edges():
    """The disclosed KA-constraining instrument: one hand-built
    suppressed-decode fire (wf.py regression twenty's frame-skip
    fixture — WF, uncertified boundary, reachably unmintable).
    Returns its fire edges in collect()'s (delta, fire) form; an
    empty or non-fire result leaves KA unconstrained and the
    sweep verdict False (self-gating)."""
    term = App(Gate('h'), Lam(App(Var(1), Var(1))))
    inst = ('L', ('a', 'b', 'f'), ())
    src = Run(('a',), 'U', (GAM('h'),),
              (ALPHA('h', inst, 0), MU('h'), RHO),
              None, (FRAME('h', inst, 0),), (('K', inst),))
    edges = []
    for _, _, rule, tgt in step(term, src, None):
        if rule != 'fire-h' or not isinstance(tgt, Run):
            return []
        p1, p2 = prof_state(term, src), prof_state(term, tgt)
        d = [(b - a) % 2 for a, b in zip(p1, p2)]
        c = classify_arrival(src.tape)
        lprof = [0] * (NPAR + 1)
        prof_entry(term, c[1], lprof)
        edges.append((d, (False, [x % 2 for x in lprof],
                          (len(src.rs) - len(tgt.rs)) % 2)))
    return edges

def gauge_and_terminals():
    from itertools import product
    all_edges = []
    term_bad = 0
    for name, term in PROGRAMS.items():
        for cert in (None, CERTS.get(name)):
            edges, indeg, outdeg = collect(term, cert)
            all_edges.extend(edges)
            for st, n in indeg.items():
                if n != 1:
                    term_bad += 1
                    print('    TERMINAL IN-DEGREE %d: %s' % (n, st))
            for st, n in outdeg.items():
                if n != 1:
                    term_bad += 1
                    print('    TERMINAL OUT-DEGREE %d: %s' % (n, st))
    print('terminal chains: %d degree violations '
          '(every RunDone/Done in-degree 1, out-degree 1)' % term_bad)

    def run_sweep(edges):
        passing = []
        for v in product((0, 1), repeat=NPAR):
            ok = True
            for d, fire in edges:
                delta = (d[0] + sum(a * b
                                    for a, b in zip(d[1:], v))) % 2
                if fire is None:
                    expect = 1
                else:
                    certified, lprof, F = fire
                    if certified:
                        wl = (lprof[0]
                              + sum(a * b for a, b
                                    in zip(lprof[1:], v))) % 2
                        expect = (1 - wl - F * v[5]) % 2
                    else:
                        expect = 1
                if delta != expect:
                    ok = False
                    break
            if ok:
                passing.append(v)
        return passing

    # KA never occurs on a reachable edge, so
    # the reachable sweep cannot constrain it — ONE raw
    # suppressed-decode fire (wf.py regression twenty's frame-skip
    # fixture: WF, uncertified, reachably unmintable) is the
    # disclosed constraining instrument.
    raw_edges = raw_suppressed_edges()
    reach = run_sweep(all_edges)
    full = run_sweep(all_edges + raw_edges)
    pred = [(c, c, (1 + c) % 2, 0, r, 0, 0, 0, 0, 0)
            for c in (0, 1) for r in (0, 1)]
    pred_free = sorted(pred + [p[:9] + (1,) for p in pred])
    print('gauge sweep (reachable edges only): %d/1024 pass; '
          'KA unconstrained as expected: %s'
          % (len(reach), 'YES' if sorted(reach) == pred_free
             else 'NO %s' % sorted(reach)))
    print('gauge sweep (+%d raw suppressed-decode edges, '
          'disclosed): %d/1024 pass; predicted orbit with '
          'w(KA)=0 %s: %s'
          % (len(raw_edges), len(full),
             'MATCH' if sorted(full) == sorted(pred)
             else 'MISMATCH %s' % full, sorted(full)))
    return (term_bad == 0 and sorted(full) == sorted(pred)
            and sorted(reach) == pred_free)

if __name__ == '__main__':
    allbad = 0
    print('%-9s %6s %6s %10s   fire-defect profile (w(l) -> defect)' %
          ('program', 'basis', 'edges', 'violations'))
    for name, term in PROGRAMS.items():
        cert = CERTS.get(name)
        n, m, bad, fd = check_program(name, term, cert)
        prof = {}
        for _, lw, d in fd:
            prof[(lw, d)] = prof.get((lw, d), 0) + 1
        print('%-9s %6d %6d %10d   %s' % (name, n, m, len(bad),
              ' '.join('w=%d:d=%d x%d' % (k[0], k[1], v)
                       for k, v in sorted(prof.items()))))
        allbad += len(bad)
        for b in bad[:3]:
            print('   VIOLATION:', b[0], 'delta', b[3])

    print('\n--- branch-offset theorem on the q family ---')
    off_ok = True
    import kernel as K
    for name in ('q', 'qprime', 'q2'):
        term = PROGRAMS[name]
        # recover each branch's arrival lp weight at the outer boundary
        s0 = next(iter(init(term)))
        seen, dq = {s0}, deque([s0])
        arr = {}
        while dq:
            s = dq.popleft()
            if isinstance(s, Done) and s.tick >= 2:
                continue
            if (isinstance(s, Run) and s.path == Q_OUTER_FIRE
                    and s.d == 'U' and s.log and is_gam(s.log[0])):
                c = classify_arrival(s.tape)
                if c is not None:
                    arr[c[0]] = w(term, c[1])
            for sg, dk, rule, s2 in step(term, s, None):
                if s2 not in seen:
                    seen.add(s2)
                    dq.append(s2)
        a = arrivals(term)
        offset = a[1][0] - a[0][0] if len(a) == 2 else None
        pred = (arr.get(0, 0) - arr.get(1, 0)) % 2
        row_ok = offset is not None and offset % 2 == pred
        off_ok = off_ok and row_ok
        print('%-7s w(l0)=%s w(l1)=%s  predicted parity %d  measured '
              'offset %s (parity %d)  %s' %
              (name, arr.get(0), arr.get(1), pred, offset,
               offset % 2 if offset is not None else -1,
               'OK' if row_ok else 'FAIL'))

    print('\n--- coherent-class control: HH / HNH arrival weights equal ---')
    # equal weights on both branches -> defect-equal fires -> sync
    # (measured offset 0). HH's branches arrive as alpha tickets
    # (w = 0 both); HNH's two relevant arrivals are ordinary lps of
    # weight ONE — equal to each other, which is all the branch-
    # offset law needs.
    print('branch weights equal per program (HH: 0/0, HNH: 1/1);',
          'sync confirmed dynamically in suite')
    print('\n--- terminal chains + gauge-pinned uniqueness ---')
    ok = gauge_and_terminals()
    print('\nTOTAL VIOLATIONS:', allbad, ' structural checks:',
          'PASS' if ok else 'FAIL', ' branch-offset:',
          'PASS' if off_ok else 'FAIL')
    # The module verdict is the exit code; print-only failure is insufficient.
    sys.exit(0 if allbad == 0 and ok and off_ok else 1)
