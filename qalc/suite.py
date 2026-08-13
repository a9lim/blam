"""Regression suite: twenty programs, structural Gram + dynamic
marginals + guard/alias invariants + certificate controls.

Twelve sectors (HH, HNH, negative, selector, lone, pstar, 3coin,
q, qprime, q2, dup, Ccoll), the audit witnesses (buried, palpha,
dupcall, B, W), and the interleaving stressors (weave, hweave, qq).
V12_BASIS marks the owned v1.2->v1.7 basis drift (marginals never
moved). CERTS are the canonical discover_total outputs, frozen as
machine metadata and re-derived by certify.py on every run.
"""
import sys
sys.path.insert(0, '.')
from lam_iam import Var, Lam, App, Gate, show, BULLET, is_lp
from kernel import (Run, RunDone, Done, step, init, evolve, summarize,
                    is_gam, is_mu, is_ans, is_alpha, is_rho)
from fractions import Fraction
from collections import deque

ZERO = Lam(Lam(Var(2)))
ONE  = Lam(Lam(Var(1)))
I    = Lam(Var(1))
NOTP = Lam(Lam(Lam(App(App(Var(3), Var(1)), Var(2)))))   # \b.\x.\y. b y x
SEL  = Lam(App(App(Var(1), ONE), ZERO))                   # \b. b 1^ 0^
E    = Lam(App(I, Var(1)))                                # \z. I z
N    = Lam(App(App(Var(1), ONE), ZERO))                   # \z. z 1^ 0^

def prog(body):
    return App(App(Lam(Lam(body)), Gate('h')), Gate('t'))

H2 = Var(2)  # h under \h.\t
EP = Lam(App(App(Var(1), ZERO), ONE))     # \z. z 0^ 1^ — wire-balanced E
PROGRAMS = {
    'HH':       prog(App(H2, App(H2, ZERO))),
    'HNH':      prog(App(H2, App(NOTP, App(H2, ZERO)))),
    'negative': prog(App(App(App(H2, ZERO), I), I)),
    'selector': prog(App(SEL, App(H2, ZERO))),
    'lone':     prog(App(H2, ZERO)),
    'pstar':    prog(App(App(App(App(H2, ZERO), H2), H2), ZERO)),
    '3coin':    prog(App(App(App(H2, ZERO), App(H2, ZERO)), App(H2, ZERO))),
    'q':        prog(App(H2, App(App(App(App(H2, ZERO), E), N), ZERO))),
    'qprime':   prog(App(H2, App(App(App(App(H2, ZERO), EP), N), ZERO))),
    'q2':       prog(App(H2, App(App(App(H2, ZERO), ZERO), ONE))),
    # Codex's copy-discrimination probe (v1.3 review): two dynamic
    # instances of the same argument occurrence, distinct log slices
    'dup':      prog(App(Lam(App(Var(1), Var(1))), App(H2, ZERO))),
    # Codex's v1.4 fatal countermodel: C collapses both booleans to 1^
    # non-injectively; same-slot arrivals with distinct lps must stay
    # orthogonal at the outer fire (the conservative encoded fibre)
    'Ccoll':    prog(App(H2, App(Lam(Lam(Lam(App(App(Var(3), Var(1)),
                                              Var(1))))), App(H2, ZERO)))),
    # the v1.6 fresh-review boundary witness: ((h 0^) SEL SEL)(h 0^)
    # interleaves two live instances' re-seeks. Healed by the v1.7
    # replay record: runs total and clean to {1/2, 1/2}, support 4.
    'buried':   prog(App(App(App(App(H2, ZERO), SEL), SEL),
                         App(H2, ZERO))),
    # v1.7 stress set — pointed interleavings for the replay record.
    # weave: coin1 selects between two wire-identity occurrences;
    # the selected E feeds coin2's boolean to the root. Predict:
    # coin1 decoheres non-injectively, coin2 geometric: 1/2+1/2, sup 4.
    'weave':    prog(App(App(App(App(H2, ZERO), E), E),
                         App(H2, ZERO))),
    # hweave: an OUTER gate interrogates a woven core (coherence
    # attempted across an interleaving). Each coin1 branch hands the
    # outer h a literal 0^; branches stay orthogonal on coin1's
    # record: 1/2+1/2, sup 4 — the C-collapse class, correctly.
    'hweave':   prog(App(H2, App(App(App(App(H2, ZERO), E), E),
                                 ZERO))),
    # qq: Q nested inside Q's argument — three instances, re-seeks
    # double-crossed. SEL is classical NOT, so the value is coin3
    # twice-negated: 1/2+1/2 over 8 decohered terminals.
    'qq':       prog(App(App(App(App(H2, ZERO), SEL), SEL),
                         App(App(App(App(H2, ZERO), SEL), SEL),
                             App(H2, ZERO)))),
    # v1.8 regressions — the audit round-2 countermodels.
    # palpha (the auditor's Pα): C = h (h (NOT (h 0^))); C I h 1^.
    # Under v1.7, discover admitted a certificate whose alpha-cargo
    # erasure was followed by a fresh call of the erased instance
    # (stuck at t=180). v1.8: discover_total validates the certified
    # graph -> None; canonical dynamics is the plain run. Physics:
    # C = H H X H |0> = |+>; the zero branch applies I to 1^, the
    # one branch applies H: {halt0: 1/4, halt1: 3/4}, support 3.
    'palpha':   prog(App(App(App(App(H2, App(H2, App(NOTP,
                         App(H2, ZERO)))), I), H2), ONE)),
    # dupcall (the auditor's fuzz candidate 16): an instance's
    # ticket is consumed by the fire's alpha DECODE (bit-free
    # spectator), then the same instance is re-sought — neither
    # ticket nor frame exists, so v1.7 silently fired the same
    # copy twice. v1.8 types it out: the refire guard makes
    # one-fire-per-instance a machine invariant. UNTYPABLE
    # (typecheck.py: occurs check — NOT'/EP branches ununifiable),
    # so outside the fragment claim; the guard is defense-in-depth
    # (typed rejection, visible err mass, never silent).
    'dupcall':  prog(App(App(App(App(App(App(H2, ZERO),
                         App(H2, ONE)), ONE), NOTP), EP),
                         App(N, App(H2, ONE)))),
    # v1.10 regressions — the audit round-3 (fresh audit #2) pair.
    # B = C I h 1^ with C = h (NOT (h 0^)) = HXH|0> = |0>, so
    # B = I 1^ = 1^ deterministically — needs C's wire
    # interference. Audit #2's narrowing witness: v1.9 validation
    # rejected B's coherence-restoring certificate because refire
    # was STRUCTURALLY reachable on a branch of amplitude exactly
    # zero. The v1.10 hybrid (structural admission + dynamic
    # cleanliness) admits it: canonical {halt1: 1}.
    'B':        prog(App(App(App(App(H2, App(NOTP, App(H2, ZERO))),
                         I), H2), ONE)),
    # W = (h 0^) E E B — audit #2's fatal witness, healed. The
    # outer coin selects between identical E's (branch-equal
    # continuations), so the hand-computed circuit ideal is B's
    # {halt1: 1} — and the canonical certificate reaches it: the
    # inner boundary pops the inner coin's branch-dependent
    # instances while the outer frames ride through as retained
    # spectators.
    'W':        prog(App(App(App(App(H2, ZERO), E), E),
                         App(App(App(App(H2, App(NOTP,
                             App(H2, ZERO))), I), H2), ONE))),
}
V12_BASIS = {'HH': 82, 'HNH': 104, 'negative': 103, 'selector': 173,
             'lone': 53, 'pstar': 458, '3coin': 180}

Q_OUTER_FIRE = ('f', 'f', 'b', 'b', 'a')   # the outer-h boundary in q family

def _p(*ss):
    return {tuple(x) for x in ss}

def _c(*ss):
    """Canonical dict certificate: every listed position certifies
    the CARGO erasure and pops no frames (all spectators retained)."""
    return {tuple(x): frozenset() for x in ss}

def _L(path, *slices):
    return ('L', tuple(path), tuple(slices))
# canonical certificates — the discover_total() output per program
# (certify.py asserts exact dict reproduction; these frozen values
# are the machine metadata the encoded-fibre amendment demands).
# Nineteen programs freeze dicts; dupcall is canonically None
# (its plain run carries typed err mass, so no certificate can
# reach machine_coverage; plain-reading fallback). Most
# boundaries pop nothing (cargo-only certification; frames
# retained as spectators); the q family, B, and W pop inner-coin
# instances; palpha's certificate exists via the phase-3 greedy
# rescue (its one poppable key is excluded to spectator). The
# canonical map is the deterministic validation-adjudicated
# greedy fixpoint — neither maximal nor minimal is claimed
# (register §5).
CERTS = {
    'HH':       _c('ffbbaa'),
    'HNH':      _c('ffbba', 'ffbbaaa'),
    'negative': _c('ffbbffa'),
    'selector': _c('ffbbaa'),
    'lone':     _c('ffbba'),
    'pstar':    _c('ffbba', 'ffbbfffa'),
    '3coin':    _c('ffbbaa', 'ffbbfaa', 'ffbbffa'),
    'q':        _c('ffbbafffa') | {tuple('ffbba'): frozenset(
                     {('h', _L('ffbbaffff', ('G', 'h')))})},
    'qprime':   _c('ffbbafffa') | {tuple('ffbba'): frozenset(
                     {('h', _L('ffbbaffff', ('G', 'h')))})},
    'q2':       _c('ffbbaffa') | {tuple('ffbba'): frozenset(
                     {('h', _L('ffbbafff', ('G', 'h')))})},
    'dup':      _c('ffbbaa'),
    'Ccoll':    _c('ffbbaaa'),
    'buried':   _c('ffbbaa', 'ffbbfffa'),
    'weave':    _c('ffbbaa', 'ffbbfffa'),
    'hweave':   _c('ffbba', 'ffbbafffa'),
    'qq':       _c('ffbbaaa', 'ffbbafffa', 'ffbbfffa'),
    # palpha (audit-2 witness): certified via the phase-3 greedy
    # rescue — its one poppable key at ffbba is excluded to
    # spectator, all three boundaries certify cargo-only.
    # Guard-silent, basis 275 (plain: 474), marginal unchanged.
    'palpha':   _c('ffbba', 'ffbbfffaa', 'ffbbfffaaaa'),
    'B':        _c('ffbbfffa', 'ffbbfffaaa') | {
                 tuple('ffbba'): frozenset(
                     {('h', _L('ffbbffff'))})},
    # W (audit #2's fatal witness, HEALED in v1.11): the inner
    # boundary pops the inner coin's two branch-dependent instance
    # names; the outer coin's frames ride through every inner
    # boundary as retained spectators. This is exactly the staged
    # uncomputation v1.10 registered as inexpressible — expressible
    # all along; the v1.10 measurement exercised the spectator-
    # transition defect, not the certificate language.
    'W':        _c('ffbbafffa', 'ffbbafffaaa', 'ffbbfffa') | {
                 tuple('ffbbaa'): frozenset(
                     {('h', _L('ffbbaffff',
                               _L('ffbbfaba', _L('ffbbfabfb')))),
                      ('h', _L('ffbbaffff',
                               _L('ffbbffaba', _L('ffbbffabfb'))))})},
}

# the written-first physics regression table (working-review
# language: per-program expectations, each marked 'hand'
# (hand-computed circuit reading, independently confirmed by
# audits where noted), 'machine-measured' (dupcall only: the typed
# err mass is the machine's own refusal — no circuit reading
# exists for an untyped program, so the row pins the measurement,
# not an ideal), or 'placement-open' (the canonical certificate
# does not reach the hand ideal; registered coverage limitation,
# not a soundness defect). machine_coverage never claims physics
# agreement — THIS table does, program by program.
PHYSICS = {
    'HH':       ({'halt0': '1'}, 'hand; audit-1 confirmed'),
    'HNH':      ({'halt0': '1'}, 'hand; certificate load-bearing'),
    'negative': ({'haltI': '1'}, 'hand'),
    'selector': ({'halt0': '1/2', 'halt1': '1/2'}, 'hand'),
    'lone':     ({'halt0': '1/2', 'halt1': '1/2'}, 'hand'),
    'pstar':    ({'halt0': '1/2', 'halt1': '1/2'}, 'hand'),
    '3coin':    ({'halt0': '1/2', 'halt1': '1/2'}, 'hand'),
    'q':        ({'halt0': '1/2', 'halt1': '1/2'}, 'hand; untyped'),
    'qprime':   ({'halt0': '1/2', 'halt1': '1/2'},
                 'hand; audit-1 confirmed'),
    'q2':       ({'halt0': '1/2', 'halt1': '1/2'}, 'hand'),
    'dup':      ({'halt0': '1/4', 'halt1': '1/4', 'haltI': '1/2'},
                 'hand; untyped copy regression'),
    'Ccoll':    ({'halt0': '1/2', 'halt1': '1/2'},
                 'hand; decoheres correctly'),
    'buried':   ({'halt0': '1/2', 'halt1': '1/2'},
                 'hand; audit-1 confirmed'),
    'weave':    ({'halt0': '1/2', 'halt1': '1/2'},
                 'hand; audit-1 confirmed'),
    'hweave':   ({'halt0': '1/2', 'halt1': '1/2'}, 'hand'),
    'qq':       ({'halt0': '1/2', 'halt1': '1/2'},
                 'hand; audit-1 confirmed'),
    'palpha':   ({'halt0': '1/4', 'halt1': '3/4'},
                 'hand; audit-2 confirmed; certified v1.13 '
                 '(greedy rescue), marginal unchanged'),
    'dupcall':  ({'err': '1/2', 'halt0': '1/4', 'halt1': '1/4'},
                 'machine-measured; untyped, typed rejection'),
    'B':        ({'halt1': '1'},
                 'hand; audit-2 decomposition witness, healed; '
                 'audits 3+4 confirmed'),
    'W':        ({'halt1': '1'},
                 'hand; audit-2 fatal witness, healed; audits 3+4 '
                 'confirmed (W = B: both selector branches are '
                 'E =beta I; refire amplitudes verified zero '
                 'per-step)'),
}

# programs where a guard rule is EXPECTED to be structurally
# reachable (with the guard set) — everything else asserts none.
# v1.7: the replay record gives the interleaved re-seek semantics;
# 'buried' (the v1.6 review witness) now runs to completion.
# v1.8: 'dupcall' — plain graph errs typed at alien-ticket (the
# re-seek's foreign ticket reaches the wrong leaf before the dead
# key is consulted); the refire guard fires in its CERTIFIED graph
# (under the v1.7-era cert {'ffbbaaa'}), which is the dedicated
# positive control in the invariants section below. Canonical
# cert: discover_total -> None (validation rejects), so the
# canonical pipeline never runs that graph.
EXPECTED_GUARDS = {'dupcall': {'alien-ticket'},
                   # B: refire is STRUCTURALLY reachable in its
                   # canonical certified graph — on a branch whose
                   # amplitude is exactly zero. That is the v1.10
                   # hybrid's core case: structural admission +
                   # dynamic cleanliness (zero guard/err mass at
                   # every step, verified) admit the coherence-
                   # restoring certificate the v1.9 structural veto
                   # rejected. The physics table asserts {halt1: 1}.
                   'B': {'refire'},
                   # W: same hybrid case as B — refire structurally
                   # reachable in the canonical certified graph on
                   # branches of amplitude exactly zero (the erased
                   # inner-coin instances are re-sought only on
                   # cancelled histories); dynamic mass zero at
                   # every step, physics {halt1: 1}.
                   'W': {'refire'}}

def arrivals(term, cap=600):
    """Outer-boundary arrival telemetry: (t, slot, frame-bits) per branch."""
    import kernel as K
    psi = K.init(term)
    arr = []
    for t in range(1, cap):
        for s in psi:
            if (isinstance(s, K.Run) and s.path == Q_OUTER_FIRE
                    and s.d == 'U' and s.log and K.is_gam(s.log[0])):
                c = K.classify_arrival(s.tape)
                if c is not None:
                    arr.append((t - 1, c[0], tuple(f[3] for f in s.rs)))
        if all(isinstance(s, K.Done) for s in psi):
            break
        out = {}
        for s, amp in psi.items():
            succs = K.step(term, s, None)
            if not succs:
                return arr + [('STUCK',)]
            for sign, dk, rule, s2 in succs:
                a = K.astep(amp, sign, dk)
                cur = out.get(s2, K.ZEROA)
                out[s2] = (cur[0] + a[0], cur[1] + a[1])
        psi = {s: a for s, a in out.items() if a != K.ZEROA}
    return arr

def amp2(sign, dk):   # amplitude as (rational, root2) parts: sign*2^(-dk/2)
    if dk % 2 == 0:
        return (Fraction(sign, 2 ** (dk // 2)), Fraction(0))
    return (Fraction(0), Fraction(sign, 2 ** ((dk + 1) // 2)))
    # sign*2^(-dk/2) = sign*2^(-(dk+1)/2) * sqrt2 ... represent as
    # a + b*sqrt2 with amp = b*sqrt2 where b = sign/2^((dk+1)/2)

def mulamp(a, b):
    # (a0 + a1*sqrt2)(b0 + b1*sqrt2) = a0b0 + 2a1b1 + (a0b1+a1b0)sqrt2
    return (a[0] * b[0] + 2 * a[1] * b[1], a[0] * b[1] + a[1] * b[0])

def gram(term, cert=None, tick_depth=2, cap=100000):
    """Structural amplitude-blind BFS + exact column Gram."""
    s0 = next(iter(init(term)))
    seen, dq = {s0}, deque([s0])
    stuck, nonunit = [], []
    incoming = {}          # target -> list of (source, amp)
    while dq:
        s = dq.popleft()
        if isinstance(s, Done) and s.tick >= tick_depth:
            continue
        succs = step(term, s, cert)
        if not succs:
            if isinstance(s, Run):
                stuck.append(s)
            continue
        norm = sum(Fraction(sg * sg, 2 ** dk) for sg, dk, _, _ in succs)
        if norm != 1:
            nonunit.append((s, norm))
        for sg, dk, rule, s2 in succs:
            incoming.setdefault(s2, []).append((s, amp2(sg, dk)))
            if s2 not in seen:
                seen.add(s2)
                dq.append(s2)
        if len(seen) > cap:
            raise RuntimeError('cap')
    # pairwise inner products via shared targets
    dots = {}
    for tgt, ins in incoming.items():
        for a in range(len(ins)):
            for b in range(a + 1, len(ins)):
                s1, a1 = ins[a]
                s2, a2 = ins[b]
                if s1 == s2:
                    continue
                key = (id(s1), id(s2)) if id(s1) < id(s2) else (id(s2), id(s1))
                p = mulamp(a1, a2)
                cur = dots.get(key, (Fraction(0), Fraction(0), s1, s2))
                dots[key] = (cur[0] + p[0], cur[1] + p[1], s1, s2)
    nonorth = [(v[2], v[3], (v[0], v[1])) for v in dots.values()
               if v[0] != 0 or v[1] != 0]
    return {'basis': len(seen), 'stuck': stuck, 'nonunit': nonunit,
            'nonorth': nonorth}

def run_dyn(term, cert=None, max_steps=400):
    from kernel import astep, asq, ZEROA
    psi = init(term)
    for t in range(max_steps):
        if all(isinstance(s, Done) for s in psi):
            return {'t': t, 'final': summarize(psi), 'support': len(psi),
                    'residues': [(s.kind, s.residue) for s in psi]}
        out = {}
        for s, amp in psi.items():
            succs = step(term, s, cert)
            if not succs:
                return {'t': t + 1, 'STUCK': True, 'state': s}
            for sign, dk, rule, s2 in succs:
                a = astep(amp, sign, dk)
                cur = out.get(s2, ZEROA)
                out[s2] = (cur[0] + a[0], cur[1] + a[1])
        psi = {s: a for s, a in out.items() if a != ZEROA}
        norm = ZEROA
        for a in psi.values():
            n = asq(a)
            norm = (norm[0] + n[0], norm[1] + n[1])
        if norm != (1, 0):
            return {'t': t + 1, 'NORMLEAK': str(norm)}
    return {'t': max_steps, 'TIMEOUT': True, 'final': summarize(psi)}

GUARD_RULES = {'no-instance', 'alien-ticket',
               'frame-conflict', 'recall-err', 'replay-err',
               'pop-err', 'species-mu', 'species-ans',
               'species-binder', 'species-leaf',
               'species-transport', 'refire',
               'key-alias'}

def rule_inventory(term, cert, tick_depth=2, cap=100000):
    """v1.6: reachable-rule set + per-state (g,i) aliasing check.
    Aliasing: within one state, any two instance-keyed entries
    (alpha tickets on the tape, R frames on rs) with equal (g, i)
    must carry equal bits — equal lps naming different selections
    would be the copy-identity failure mode."""
    s0 = next(iter(init(term)))
    seen, dq = {s0}, deque([s0])
    rules = set()
    aliased = []
    while dq:
        s = dq.popleft()
        if isinstance(s, Done) and s.tick >= tick_depth:
            continue
        if isinstance(s, Run):
            keyed = {}
            for e in s.tape:
                if is_alpha(e):
                    keyed.setdefault((e[1], e[2]), set()).add(e[3])
            for e in s.rs:
                if e[0] == 'R' and len(e) == 5:
                    keyed.setdefault((e[1], e[2]), set()).add(e[3])
            for k, bits in keyed.items():
                if len(bits) > 1:
                    aliased.append((s, k, bits))
        for sg, dk, rule, s2 in step(term, s, cert):
            rules.add(rule)
            if s2 not in seen:
                seen.add(s2)
                dq.append(s2)
        if len(seen) > cap:
            raise RuntimeError('cap')
    return rules, aliased

def frames_in_residues(res):
    out = set()
    for kind, residue in res:
        def walk(x):
            if isinstance(x, tuple):
                if len(x) == 5 and x[0] == 'R' and isinstance(x[3], int) \
                        and isinstance(x[4], tuple) and x[1] in ('h', 't'):
                    out.add(x)
                for y in x:
                    walk(y)
        walk(residue)
    return out

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'all'
    controls_ok = physics_ok = True   # blocks may be mode-skipped
    gram_bad = 0
    print('%-9s %6s %6s %8s %9s   %s' %
          ('program', 'basis', 'stuck', 'nonunit', 'nonorth', 'dynamic'))
    for name, term in PROGRAMS.items():
        if mode != 'all' and mode != name:
            continue
        cert = CERTS.get(name)
        g = gram(term, cert)
        d = run_dyn(term, cert)
        v12 = V12_BASIS.get(name)
        mark = ''
        if v12 is not None:
            mark = 'OK(v1.2)' if g['basis'] == v12 else 'DRIFT(v1.2=%d)' % v12
        dyn = d.get('final', d)
        fr = frames_in_residues(d.get('residues', []))
        gram_bad += (len(g['stuck']) + len(g['nonunit'])
                     + len(g['nonorth']))
        print('%-9s %6d %6d %8d %9d   %s sup=%s t=%s %s %s' %
              (name, g['basis'], len(g['stuck']), len(g['nonunit']),
               len(g['nonorth']), dyn, d.get('support'), d.get('t'),
               mark, ('frames=%s' % sorted(fr)) if fr else 'no-frames'))
        for s in g['stuck'][:3]:
            print('    STUCK:', s)
        for s1, s2, ip in g['nonorth'][:3]:
            print('    NONORTH ip=%s' % (ip,))

    if mode in ('all', 'invariants'):
        print('\n--- v1.6 lp invariants: guard-rule reachability + '
              '(g,i) aliasing ---')
        bad = 0
        for name, term in PROGRAMS.items():
            fired_all = set()
            alias_all = []
            for cert in (None, CERTS.get(name)):
                rules, aliased = rule_inventory(term, cert)
                fired_all |= rules
                alias_all += aliased
            guards = fired_all & GUARD_RULES
            expect = EXPECTED_GUARDS.get(name, set())
            if guards != expect or alias_all:
                bad += 1
            print('%-9s guards-fired=%-4s%s aliased=%d   rules: %s' %
                  (name, sorted(guards) if guards else 'none',
                   ' (expected)' if guards == expect and guards else '',
                   len(alias_all),
                   ' '.join(sorted(fired_all - GUARD_RULES))))
        # negative control: the wrong certificate MUST reach pop-err
        term = PROGRAMS['pstar']
        s0 = next(iter(init(term)))
        seen, dq, fires = {s0}, deque([s0]), set()
        while dq:
            s = dq.popleft()
            if isinstance(s, Done) and s.tick >= 2:
                continue
            for sg, dk, rule, s2 in step(term, s, None):
                if rule == 'fire-h' and isinstance(s, Run):
                    fires.add(s.path)
                if s2 not in seen:
                    seen.add(s2)
                    dq.append(s2)
        wrongrules, _ = rule_inventory(term, fires)
        print('negative control (pstar, wrong cert): pop-err %s' %
              ('REACHED (correct)' if 'pop-err' in wrongrules
               else 'NOT REACHED (regression!)'))
        # v1.8 refire positive control: dupcall under the v1.7-era
        # certificate is the audit's duplicate-fresh-call graph; the
        # refire guard MUST be reachable there (typed, not silent),
        # and its certified dynamics must be all-err.
        rfr, _ = rule_inventory(PROGRAMS['dupcall'], _p('ffbbaaa'))
        rfd = run_dyn(PROGRAMS['dupcall'], _p('ffbbaaa'), 500)
        refire_ok = ('refire' in rfr
                     and rfd.get('final', {}).get('err') == '1')
        print('refire control (dupcall, v1.7-era cert): %s' %
              ('REACHED, all-err (correct)' if refire_ok
               else 'REGRESSION: %s %s' % (sorted(rfr & GUARD_RULES),
                                           rfd.get('final', rfd))))
        controls_ok = (bad == 0 and 'pop-err' in wrongrules
                       and refire_ok)
        print('lp-invariant regressions:',
              'PASS' if controls_ok else 'FAIL')

    if mode in ('all', 'physics'):
        print('\n--- the physics regression table (written-first) ---')
        pbad = 0
        for name, (want, prov) in PHYSICS.items():
            d = run_dyn(PROGRAMS[name], CERTS.get(name), 3000)
            got = d.get('final', d)
            if got != want:
                pbad += 1
            print('%-9s %-46s %s  [%s]' %
                  (name, got, 'OK' if got == want
                   else 'MISMATCH want %s' % want, prov))
        physics_ok = pbad == 0
        print('physics table:', 'PASS' if physics_ok else 'FAIL')

    if mode in ('all', 'qnocert'):
        print('\n--- q family WITHOUT certificate (frames + time decohere) ---')
        for name in ('q', 'qprime', 'q2'):
            g = gram(PROGRAMS[name], None)
            d = run_dyn(PROGRAMS[name], None, 500)
            fr = frames_in_residues(d.get('residues', []))
            print('%-7s basis %d stuck %d defects %d  %s sup=%s frames=%d'
                  % (name, g['basis'], len(g['stuck']),
                     len(g['nonunit']) + len(g['nonorth']),
                     d.get('final', d), d.get('support'), len(fr)))

    if mode in ('all', 'timing'):
        print('\n--- outer-boundary arrival telemetry (time register) ---')
        for name in ('q', 'qprime', 'q2'):
            a = arrivals(PROGRAMS[name])
            d = (a[1][0] - a[0][0]) if len(a) == 2 else None
            print('%-7s arrivals=%s  offset=%s' % (name, a, d))

    if mode in ('all', 'negctl'):
        print('\n--- negative control: p* with a WRONG certificate ---')
        # certify every 'a'-position fire in p*: unsound (mandatory frames)
        # find p*'s fire positions by structural scan first
        term = PROGRAMS['pstar']
        s0 = next(iter(init(term)))
        seen, dq, fires = {s0}, deque([s0]), set()
        while dq:
            s = dq.popleft()
            if isinstance(s, Done) and s.tick >= 2:
                continue
            succs = step(term, s, None)
            for sg, dk, rule, s2 in succs:
                if rule == 'fire-h' and isinstance(s, Run):
                    fires.add(s.path)
                if s2 not in seen:
                    seen.add(s2)
                    dq.append(s2)
        print('fire positions:', sorted(''.join(p) for p in fires))
        bad = gram(term, fires)
        dbad = run_dyn(term, fires)
        print('with wrong cert: stuck %d nonunit %d nonorth %d  dyn=%s'
              % (len(bad['stuck']), len(bad['nonunit']),
                 len(bad['nonorth']), dbad.get('final', dbad)))

    # The module verdict is the exit code (audit #11: forced FAIL
    # prints previously left exit 0). Mode-skipped blocks stay
    # vacuously true; the Gram table gates in every mode it ran.
    sys.exit(0 if gram_bad == 0 and controls_ok and physics_ok
             else 1)
