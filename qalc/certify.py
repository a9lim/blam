"""Canonical certificates: discovery, admission, validation.
(The register carries the version; this file does not duplicate
it.)

discover(term): exploratory fixpoint — BFS the reachable graph
  under the current certificate, admit boundaries that satisfy the
  transparency conditions (a)-(f) (see transparent()), iterate.
discover_total(term): the CANONICAL, terminating, self-validating
  analysis — three phases under hard caps, ending in full
  validation with the GREEDY RESCUE over the complete candidate
  pool (see its docstring for the exact pipeline and the three-way
  None statement). No certificate is ever returned without passing
  full validate(). A None result IS the conservative fallback (the
  plain reading); its coverage verdict is validate(term, None),
  which runs the same reachable-WF sweep with an empty certified
  domain. Total on every program (h Omega witness).
validate(term, cert): the coverage verdict the claims quantify
  over; machine_coverage is the full conjunction (totality, guards,
  Gram, err mass, unconditional transparency, WF W0-W9, mechanized
  disjointness, position- and key-level non-vacuity) — machine
  soundness + clean execution, never physics agreement (that is
  suite.PHYSICS, program by program).

The certificate is frozen machine metadata: a deterministic
function of the program, fixed at initialization. Current register:
docs/quantum-algebraic/kernel.md §5.
"""
import sys
sys.path.insert(0, '.')
from kernel import (Run, RunDone, Done, step, init, classify_arrival,
                    is_gam, is_mu, is_alpha as is_alpha_e)
from lam_iam import is_lp as is_lp_e

def gam_free(e):
    """v1.7 condition (d): erased cargo must contain no suspended
    gamma — a certified erasure deleting an in-flight probe's gamma
    would break the W5 probe-pairing invariant (its mu survives,
    unpaired). Measured: zero certificate changes on the suite
    (no certified boundary erases gamma cargo). Suspended ALPHA
    cargo is permitted — HNH's earned coherence erases captured
    ticket copies at terminal interrogations — and as of v1.8 the
    no-reseek side condition is MECHANICALLY ENFORCED at runtime:
    the erasure leaves a decode record and the kernel's refire
    guard types out any post-erasure fresh call (kernel.md §3).
    The former compile-time obligation is discharged."""
    if is_gam(e):
        return False
    if is_lp_e(e):
        return all(gam_free(x) for x in e[2])
    return True
from suite import (PROGRAMS, CERTS, gram, run_dyn, frames_in_residues,
                   rule_inventory, GUARD_RULES)
from collections import deque
from rri_direct import direct_certificate

def dynamic_clean(term, cert, max_steps=3000, state_cap=200000):
    """The hybrid pipeline (working-review verdict): amplitude
    truth decides whether a structurally valid machine RUN SUCCEEDS
    — never whether the machine is an isometry (orbit-norm
    preservation does not give isometry; the T|0>=T|1>=|1>
    countermodel). Under the FINAL frozen candidate, evolve exactly
    from init and require the guard/err sector to hold exactly zero
    amplitude at EVERY step (residue-injectivity makes err states
    per-source, so cancellation cannot mask a guard fire), no stuck
    state, and termination within caps. Returns (ok, why)."""
    from kernel import astep, ZEROA, asq
    psi = init(term)
    for t in range(max_steps):
        if all(isinstance(s, Done) for s in psi):
            return True, 'halted t=%d' % t
        out = {}
        for s, amp in psi.items():
            succs = step(term, s, cert)
            if not succs:
                return False, 'stuck at t=%d' % t
            for sign, dk, rule, s2 in succs:
                a = astep(amp, sign, dk)
                cur = out.get(s2, ZEROA)
                out[s2] = (cur[0] + a[0], cur[1] + a[1])
        psi = {s: a for s, a in out.items() if a != ZEROA}
        for s in psi:
            if isinstance(s, (RunDone, Done)) and s.kind == 'err':
                return False, 'err mass at t=%d' % (t + 1)
        if len(psi) > state_cap:
            return False, 'cap'
    return False, 'no-termination'

def boundary_arrivals(term, cert, tick_depth=2, cap=100000):
    """Structural BFS under cert; collect fire-boundary arrival
    states (slot, l, T, log, rs, ks). Admission is STRUCTURAL —
    amplitude support must never drive discovery (self-supporting
    certificate cycles); the frozen candidate's dynamic success is
    checked separately (dynamic_clean)."""
    s0 = next(iter(init(term)))
    seen, dq = {s0}, deque([s0])
    arr = {}
    poperr = 0
    while dq:
        s = dq.popleft()
        if isinstance(s, Done) and s.tick >= tick_depth:
            continue
        if (isinstance(s, Run) and s.vb is None and s.path
                and s.path[-1] == 'a' and s.d == 'U' and s.log
                and is_gam(s.log[0])):
            c = classify_arrival(s.tape)
            if c is not None:
                arr.setdefault(s.path, []).append(
                    (c[0], c[1], c[2], s.log, s.rs, s.ks))
        for sg, dk, rule, s2 in step(term, s, cert):
            if rule == 'pop-err':
                poperr += 1
            if s2 not in seen:
                seen.add(s2)
                dq.append(s2)
        if len(seen) > cap:
            raise RuntimeError('cap')
    return arr, poperr, len(seen)

def erased_keys(l, P, Q=(), ks=(), T=(), log=()):
    """The dead-key bundle a certified fire ACTUALLY leaves
    (mirrors the kernel exactly): live alpha keys nested in the
    erased cargo plus popped frames' keys, MINUS keys with a
    surviving bit-carrying representation — retained Q frames
    (answerable), retained-whole burials in incoming ks
    (bit-carrying dead), and live tickets riding in the surviving
    tape tail T or the log (answerable)."""
    from kernel import alpha_keys_live
    dk = alpha_keys_live(l) | {(fr[1], fr[2]) for fr in P}
    dk -= {(fr[1], fr[2]) for fr in Q}
    for e in ks:
        if isinstance(e, tuple) and len(e) == 2 and e[0] == 'K':
            dk -= alpha_keys_live(e[1])
    for e in T:
        dk -= alpha_keys_live(e)
    for e in log:
        dk -= alpha_keys_live(e)
    return frozenset(dk)

def popkeys_for(arrivals):
    """The instance keys this boundary may pop: those whose frame
    bit equals the arrival slot at EVERY arrival where the key is
    present (slot-correlation = the redundancy the erasure needs).
    Keys failing this are retained SPECTATORS (v1.10 — the W
    countermodel: an outer coin's frame around an inner
    interference is uncorrelated with the inner slot and must
    survive the pop)."""
    ok, bad = set(), set()
    for slot, l, T, log, rs, ks in arrivals:
        for fr in rs:
            k = (fr[1], fr[2])
            if fr[3] == slot:
                ok.add(k)
            else:
                bad.add(k)
    return frozenset(ok - bad)

def transparent(arrivals, popkeys=None):
    """The admission conditions for instance-directed certified
    erasure. popkeys=None means pop-everything (legacy reading).
    With P = rs ∩ popkeys (erased) and Q = rs minus popkeys (retained
    spectators):
      (a) every popped frame's bit equals the arrival slot;
      (b) the retained key (slot, T, log, ks, Q) determines the
          erased tuple (l, P) — the fibre is a function;
      (c) non-vacuous: something is actually erased;
      (d) erased cargo is gamma-free;
      (e) cross-slot decode-bundle equality per retained-spectator
          group (T, log, ks, Q);
      (f) deep bit coherence: cargo-nested alpha bits and frame
          bits agree per key."""
    from kernel import alpha_bits_deep
    has_data = False
    fibres = {}
    bundles = {}
    for slot, l, T, log, rs, ks in arrivals:
        if not gam_free(l):
            return False                        # (d) gamma cargo
        if popkeys is None:
            P, Q = rs, ()
        else:
            P = tuple(fr for fr in rs if (fr[1], fr[2]) in popkeys)
            Q = tuple(fr for fr in rs
                      if (fr[1], fr[2]) not in popkeys)
        for fr in P:
            if not (fr[0] == 'R' and len(fr) == 5 and fr[3] == slot):
                return False                    # (a) bit mismatch
        bits = {}
        alpha_bits_deep(l, bits)
        for fr in rs:
            bits.setdefault((fr[1], fr[2]), set()).add(fr[3])
        if any(len(v) > 1 for v in bits.values()):
            return False                        # (f) bit conflict
        if P or not (is_alpha_e(l) and l[3] == slot):
            has_data = True
        key = (slot, T, log, ks, Q)
        val = (l, P)
        if key in fibres and fibres[key] != val:
            return False                        # (b) fibre not a function
        fibres[key] = val
        bundles.setdefault((T, log, ks, Q), {})[slot] = \
            erased_keys(l, P, Q, ks, T, log)
    for slots in bundles.values():
        if len(slots) == 2 and slots[0] != slots[1]:
            return False                        # (e) bundle divergence
    return has_data                             # (c) non-vacuous

def discover(term, max_rounds=8):
    """Exploratory structural fixpoint. Certificates are DICTS
    pos -> frozenset(popkeys) as of v1.10 (instance-directed
    erasure); position-set membership still works for the kernel."""
    cert = {}
    for _ in range(max_rounds):
        arr, poperr, _ = boundary_arrivals(term, cert or None)
        new = dict(cert)
        for pos, arrivals in arr.items():
            pk = popkeys_for(arrivals)
            if transparent(arrivals, pk):
                new[pos] = pk
            elif pos in new:
                del new[pos]
        if new == cert:
            return cert or None
        cert = new
    raise RuntimeError('certificate fixpoint did not converge')

def discover_total(term, state_cap=100000, round_cap=8):
    """The CANONICAL analysis (hybrid + validated-greedy spectator
    admission). Three deterministic phases, any cap or failure
    falling back to the sound conservative answer:

    1. LEGACY-CONSERVATIVE FIXPOINT: admit only boundaries whose
       every frame key is slot-correlated (pop-everything
       reading), iterated to a fixpoint under hard caps.
       Amplitude support never drives this phase.
    2. SPECTATOR ADMISSION, JOINT-FIRST THEN GREEDY: candidate
       boundaries admissible only in instance-directed mode (some
       keys retained as spectators) are tried jointly first
       (coherence may need several boundaries together), then
       accumulated greedily in sorted order; every trial runs
       per-key exclusion refinement (a poppable key that fails
       dynamically is retried as a retained spectator) and is
       kept only if the FULL validate() stays clean. Erasing a
       ticket whose instance is re-sought later makes the trial
       graph reach refire — loud — and the trial is dropped:
       validation, not amplitude, adjudicates admission.
    3. FINAL VALIDATION with GREEDY RESCUE: a failing assembled
       map is not discarded whole — the validated-greedy
       discipline is re-applied from scratch over the FULL
       candidate pool (phase-1 fixpoint positions plus every
       phase-2 candidate, including candidates rejected against a
       dirty base), joint-first then sorted singles. None arises
       in exactly three ways: a cap or nonconvergence exit in
       phases 1-2 (RuntimeError from an arrivals computation, or
       a phase-1 fixpoint that does not converge within
       round_cap — the conservative fallback, before any pool
       pass exists); an empty admission (no position was ever
       structurally admissible, so the map is empty and IS the
       plain reading); or the validated-greedy pass over the
       pool accepting nothing. Greedy, not complete over subsets
       of the pool.

    Deterministic throughout, so U stays total and well-defined on
    every program (h Omega witness) with the certificate as frozen
    machine metadata."""
    def allkeys(arrivals):
        ks = set()
        for slot, l, T, log, rs, ksn in arrivals:
            ks |= {(fr[1], fr[2]) for fr in rs}
        return frozenset(ks)

    # Phase 1: legacy-conservative fixpoint.
    cert = {}
    for _ in range(round_cap):
        try:
            arr, _, _ = boundary_arrivals(term, cert or None,
                                          cap=state_cap)
        except RuntimeError:
            return None
        new = {}
        for pos, arrivals in arr.items():
            if transparent(arrivals, None):
                new[pos] = allkeys(arrivals)
        if new == cert:
            break
        cert = new
    else:
        return None                           # no fixpoint
    # Phase 2: spectator admission — JOINT-FIRST (coherence may
    # need several boundaries together), then greedy accumulation,
    # each with PER-KEY EXCLUSION REFINEMENT: slot-correlation
    # makes a key poppable (redundancy) but not always SAFE — an
    # erased selection re-sought later reaches refire, loud — so
    # on dynamic failure the search retries with individual keys
    # excluded from popping (spectators instead), in sorted order.
    # Every acceptance requires the full validate() to stay clean.
    # Deterministic and bounded throughout.
    def settle(trial, excl):
        for _ in range(round_cap):
            arr3, _, _ = boundary_arrivals(term, trial,
                                           cap=state_cap)
            changed = False
            for p2 in list(trial):
                if p2 not in arr3:
                    return None
                pk2 = popkeys_for(arr3[p2]) - excl
                if not transparent(arr3[p2], pk2):
                    return None
                if trial[p2] != pk2:
                    trial[p2] = pk2
                    changed = True
            if not changed:
                return trial
        return None

    def try_positions(base, positions):
        """Settle+validate base∪positions, refining by excluding
        pop-keys one at a time (then all) on dynamic failure.
        Returns the accepted certificate or None."""
        seed = dict(base)
        for pos in positions:
            seed[pos] = frozenset()
        excls = [frozenset()]
        first = settle(dict(seed), frozenset())
        if first is not None:
            keys = sorted({k for pk in first.values() for k in pk},
                          key=repr)
            excls += [frozenset([k]) for k in keys]
            excls.append(frozenset(keys))
        for excl in excls:
            trial = settle(dict(seed), excl)
            if trial is None:
                continue
            try:
                if validate(term, trial)['machine_coverage']:
                    return trial
            except RuntimeError:
                continue
        return None

    try:
        arr, _, _ = boundary_arrivals(term, cert or None,
                                      cap=state_cap)
    except RuntimeError:
        return None
    candidates = sorted(
        (pos for pos, arrivals in arr.items()
         if pos not in cert
         and transparent(arrivals, popkeys_for(arrivals))),
        key=lambda p: ''.join(p))
    all_candidates = list(candidates)
    if candidates:
        try:
            got = try_positions(cert, candidates)
        except RuntimeError:
            got = None
        if got is not None:
            cert = got
            candidates = []
    for pos in candidates:
        try:
            got = try_positions(cert, [pos])
        except RuntimeError:
            got = None
        if got is not None:
            cert = got
    cert = cert or None
    # Phase 3: final validation — with GREEDY RESCUE (audit #5's
    # palpha countermodel; pool completed after audit #6): a
    # failing map is not discarded whole; the validated-greedy
    # discipline is re-applied from scratch over the FULL
    # candidate pool — phase-1 fixpoint positions plus every
    # phase-2 candidate, including candidates rejected against a
    # dirty base — joint-first, then sorted singles, so one bad
    # phase-1 boundary cannot veto the clean rest. Reaching this
    # phase at all is conditional on phases 1-2 exiting cleanly
    # (their cap/nonconvergence exits return the conservative
    # None first); given that, None exactly when this
    # validated-greedy pass over the pool accepts nothing
    # (greedy, not complete over subsets of the pool).
    if cert is not None:
        try:
            v = validate(term, cert)
        except RuntimeError:
            v = None
        if v is None or not v['machine_coverage']:
            positions = sorted(set(cert) | set(all_candidates),
                               key=lambda p: ''.join(p))
            try:
                got = try_positions({}, positions)
            except RuntimeError:
                got = None
            if got is None:
                got = {}
                for pos in positions:
                    try:
                        g2 = try_positions(got, [pos])
                    except RuntimeError:
                        g2 = None
                    if g2 is not None:
                        got = g2
            cert = got or None
            if cert is not None:
                try:
                    if not validate(term, cert)['machine_coverage']:
                        return None
                except RuntimeError:
                    return None
    return cert

def validate(term, cert):
    """The coverage verdict (the hybrid). STRUCTURAL side —
    mandatory, isometry-bearing: totality (no structural stuck),
    a complete-carrier direct reachable-recall certificate,
    Gram orthonormality on the structural reachable basis,
    unconditional transparency at certified positions, reachable ⊆
    WF (W0-W9), mechanized range disjointness, and position- and
    key-level non-vacuity. DYNAMIC side — the
    frozen candidate's run must be semantically clean: zero
    guard/err amplitude at every step, termination, zero final err
    mass. machine_coverage is the conjunction. It claims MACHINE
    soundness + clean execution — NOT agreement with any external
    ideal semantics; per-program physics expectations live in the
    suite's written-first regression table (working-review
    language corrections applied)."""
    arr, poperr, basis = boundary_arrivals(term, cert)
    if cert:
        fn_ok = all(transparent(a, cert.get(pos))
                    for pos, a in arr.items() if pos in cert)
        # NON-VACUITY (audits #7 and #8), position AND key level:
        # a certified position with no boundary arrival is never
        # consulted, and a popkey absent from every arrival frame
        # at its position can never pop anything — either way the
        # entry constrains nothing, and "validation-clean" must
        # not be satisfiable by inert entries. Canonical maps are
        # never vacuous, in two cases matching the two paths into
        # a frozen map: phase-1 fixpoint maps take positions and
        # keys directly from the converged arrivals; every other
        # acceptance goes through settle(), which rejects trials
        # whose positions leave the arrivals and recomputes
        # popkeys from them. Pure strengthening both times.
        vacuous = sum(1 for pos in cert if pos not in arr)
        vacuous_k = 0
        for pos, pk in cert.items():
            if pos not in arr:
                continue
            fk = {(fr[1], fr[2]) for (slot, l, T, log, rs, ks)
                  in arr[pos] for fr in rs}
            vacuous_k += len(pk - fk)
    else:
        fn_ok = True
        vacuous = 0
        vacuous_k = 0
    # RRI is checked from the complete structural carrier independently of
    # Gram.  Certificate discovery is untrusted search; this final direct gate
    # is unconditional and caps reject rather than certify.
    rri = direct_certificate(term, cert)
    g = gram(term, cert)
    rules, aliased = rule_inventory(term, cert)
    guards_struct = sorted(rules & GUARD_RULES)
    dyn_ok, dyn_why = dynamic_clean(term, cert)
    d = run_dyn(term, cert)
    err = d.get('final', {}).get('err', '0') if 'final' in d else 'n/a'
    import wf as _wf
    if cert:
        wfbad = _wf.cert_domain_sweep(term, cert)
        disbad, _ = _wf.cert_disjointness(term, cert)
    else:
        # v1.11 (audit #3 charge-2 gap): the no-certificate reading
        # owes the same reachable-WF sweep — an empty certified
        # domain makes W7 and disjointness vacuous, never the WF
        # check itself.
        wfbad = _wf.cert_domain_sweep(term, {})
        disbad, _ = _wf.cert_disjointness(term, {})
    return {'basis': basis, 'pop_err_reachable': poperr,
            'rri_direct_certified': rri['certified'],
            'rri_direct_reason': rri['reason'],
            'rri_direct_states': rri.get('states', 0),
            'rri_direct_recalls': rri.get('recalls', 0),
            'rri_direct_witnesses':
                rri.get('rri_witnesses', 0)
                + rri.get('target_rri_witnesses', 0),
            'rri_target_factorization_failures':
                rri.get('target_factorization_failures', 0),
            'rs_function': fn_ok, 'stuck': len(g['stuck']),
            'gram_defects': len(g['nonunit']) + len(g['nonorth']),
            'guards_structural': guards_struct,
            'dynamic_clean': dyn_ok, 'dynamic_note': dyn_why,
            'err_mass': err, 'aliased': len(aliased),
            'wf_violations': wfbad,
            'disjointness_violations': len(disbad),
            'vacuous_positions': vacuous,
            'vacuous_keys': vacuous_k,
            'machine_coverage':
            (poperr == 0 and fn_ok and rri['certified'] and not g['stuck']
             and not g['nonunit'] and not g['nonorth']
             and dyn_ok and err == '0' and wfbad == 0
             and not disbad and len(aliased) == 0
             and vacuous == 0 and vacuous_k == 0)}

if __name__ == '__main__':
    print('--- discover_total: totality + frozen-CERTS agreement ---')
    tot_ok = True
    for name, term in PROGRAMS.items():
        dt = discover_total(term)
        hand = CERTS.get(name)
        if isinstance(hand, dict):
            ok = dt == hand                  # exact dict agreement
        else:
            ok = ((set(dt.keys()) if dt else None) == (hand or None))
        if not ok:
            tot_ok = False
            print('  %-9s discover_total DIFF: %s vs frozen %s'
                  % (name, dt, hand))
    print('discover_total == frozen CERTS on all %d programs:'
          % len(PROGRAMS), 'PASS' if tot_ok else 'FAIL')
    # totality witness: h applied to Omega — infinite kernel graph;
    # the budgeted analysis must REJECT (None), not hang or raise
    from lam_iam import Var, Lam, App, Gate
    OMEGA = App(Lam(App(Var(1), Var(1))), Lam(App(Var(1), Var(1))))
    homega = App(App(Lam(Lam(App(Var(2), OMEGA))), Gate('h')), Gate('t'))
    w = discover_total(homega, state_cap=20000)
    homega_ok = w is None
    print('totality witness h(Omega): discover_total ->', w,
          '(conservative reject)' if homega_ok else 'UNEXPECTED')

    print('\n%-9s %-28s %-8s %s' % ('program', 'EXPLORATORY discover()',
                                    'matches', 'validation'))
    print('(canonical certificates are discover_total above; a '
          'DIFF(hand=None) row is the v1.8 validation rejection '
          'working — the exploratory fixpoint exists but fails '
          'semantic coverage, so the canonical pipeline refuses it)')
    for name, term in PROGRAMS.items():
        cert = discover(term)
        hand = CERTS.get(name)
        match = 'HAND==AUTO' if (cert or None) == (hand or None) else \
                'DIFF(hand=%s auto=%s)' % (hand, cert)
        v = validate(term, cert) if cert else \
            validate(term, None) | {'note': 'no cert'}
        d = run_dyn(term, cert)
        fr = frames_in_residues(d.get('residues', []))
        print('%-9s %-28s %-8s %s dyn=%s frames=%d' %
              (name, sorted(''.join(p) for p in cert) if cert else '-',
               match, v, d.get('final', d), len(fr)))

    # The module verdict is the exit code (audit #11: forced FAIL
    # prints previously left exit 0).
    sys.exit(0 if tot_ok and homega_ok else 1)
