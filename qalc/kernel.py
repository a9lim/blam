"""qALC kernel machine — reference superposition evolver.
Current register: docs/quantum-algebraic/kernel.md (the register
carries the version; this file does not duplicate it).

H/T structural kernel. The real evaluator is exact Q[sqrt2] on h-only
sectors; ``dw_machine.py`` supplies exact Z[omega]/sqrt(2)^k coefficients for
the full H/T table.  The eight classical lam_iam rules plus:

  call     fresh invocation: gam_g . p . p . mu_g probe; classical
           transport delivers it; guarded by refire (dead-storage
           instance => typed) after recall/replay dispatch.
  fire     at a gam boundary, arrival P_b . mu_g . T: every arm
           appends EXACTLY ONE arm-typed storage head — certified
           erasure (pop slot-matched frames + erase cargo, leave
           one tagged ('KD', keys) decode bundle, emitted even
           when empty; sound under the fibre conditions (a)-(f)
           incl. cross-slot bundle equality) / alpha decode
           (bit-free ('K', g, i) record, or the inert ('KA', g, i)
           history head when a same-key frame/burial suppresses
           the record — W8 exclusivity by construction) /
           retain-whole ('K', l). Storage histories are
           prefix-free: incoming KS is the tail after stripping
           one head. H rows, k += 1.
  anshead/vb2/vvar   virtual boolean: consume the two question
           bullets, emit the balanced seek bullets^(b'+1) .
           alpha_g(i, b') — instance-tagged ticket.
  recall   head ticket: replace the matching frame with an
           unbounded predecessor-fibre epoch R_g(i,b',e); the new
           epoch stores (ticket epoch, optional old frame epoch),
           so first return, replay return, and certified-pop riders
           have distinct targets; conflicting bit => frame-conflict;
           dead key => key-alias.
  replay   frame anywhere in rs (deep keyed lookup): re-emit the
           seek off the recorded bit; dead key => key-alias.
  guards   no-instance, alien-ticket, frame-conflict,
           recall-err, replay-err, pop-err, species-mu,
           species-ans, species-binder, species-leaf,
           species-transport, refire, key-alias
           — every detectable misuse is typed, never silent.

State: Run(path, d, log, tape, vb, rs, ks) — rs a canonically
sorted record set, ks inert storage history. Instance = the invoking
occurrence's logged position (log head at the leaf). The current
register is docs/quantum-algebraic/kernel.md; the register alone
carries the version.

This is the authoritative Python reference for the Gate-1 kernel; the Rust
pillar must port and differentially pin it rather than copy it into the crate
unchecked.
"""
import sys
sys.path.insert(0, '.')
from lam_iam import (Var, Lam, App, Gate, show, subterm, level,
                     binder_path, BULLET, is_lp)
from dataclasses import dataclass
from fractions import Fraction

# tape/log marks beyond classical: tuples tagged by kind
def GAM(g):        return ('G', g)          # gate boundary marker
def MU(g):         return ('M', g)          # probe frame
def ANS(g, b):     return ('A', g, b)       # fired answer token
FRESH_EPOCH = ('F',)

def recall_epoch(ticket_epoch, old_frame_epoch):
    """Store the exact recall predecessor-fibre coordinate.

    The recursive tree is the runtime representation proved in
    ``RecallEpoch.lean``: ``EA`` means no old frame, while ``EP`` retains
    its exact epoch.  It is unbounded without numerical blow-up or a
    separate pairing-arithmetic proof.
    """
    if old_frame_epoch is None:
        return ('EA', ticket_epoch)
    return ('EP', ticket_epoch, old_frame_epoch)

FIRST_FRAME_EPOCH = recall_epoch(FRESH_EPOCH, None)

def ALPHA(g, i, b, epoch=FRESH_EPOCH):
    return ('AL', g, i, b, epoch)  # answer seek lp, instance + epoch
def FRAME(g, i, b, epoch=FIRST_FRAME_EPOCH):
    return ('R', g, i, b, epoch)   # replay frame, instance + epoch
RHO = ('R',)                                 # root frame (arity disambiguates)

# The emptiness conjunct makes the tag predicates total on empty tuples.
def is_gam(e):   return isinstance(e, tuple) and bool(e) and e[0] == 'G'
def is_mu(e):    return isinstance(e, tuple) and bool(e) and e[0] == 'M'
def is_ans(e):   return isinstance(e, tuple) and bool(e) and e[0] == 'A'
def is_alpha(e): return isinstance(e, tuple) and bool(e) and e[0] == 'AL'
def is_rho(e):   return e == RHO
def lp_like(e):  # entries the classical arg/bt1 machinery transports
    return is_lp(e) or is_gam(e) or is_alpha(e)

@dataclass(frozen=True)
class Run:
    path: tuple; d: str; log: tuple; tape: tuple
    vb: object = None      # None or (g, b', k) virtual-boolean phase
    rs: tuple = ()         # transport-inert replay-record SET,
                           # canonically sorted (order-free identity)
    ks: tuple = ()         # inert storage history: bit-free ('K',g,i)
                           # decode records, certified ('KD', keys)
                           # bundles, retained-whole ('K',l) burials,
                           # ('KA',g,i) suppressed-decode heads —
                           # every fire appends exactly one entry
@dataclass(frozen=True)
class RunDone:
    kind: str              # 'halt0' 'halt1' 'haltI' 'err'
    residue: tuple
@dataclass(frozen=True)
class Done:
    kind: str              # 'halt0' 'halt1' 'haltI' 'err'
    residue: tuple         # frozen full pre-entry state (injectivity)
    tick: int = 0

def arr_lp(e):
    return is_lp(e) or is_alpha(e)

def classify_arrival(tape):
    """At a gam-headed boundary: slot from tape shape, or error."""
    if tape and arr_lp(tape[0]) and len(tape) > 1 and is_mu(tape[1]):
        return (0, tape[0], tape[2:])                    # l . mu . T
    if (len(tape) > 2 and tape[0] == BULLET and arr_lp(tape[1])
            and is_mu(tape[2])):
        return (1, tape[1], tape[3:])                    # b . l . mu . T
    return None

def classify_root(tape):
    if tape and arr_lp(tape[0]) and len(tape) > 1 and is_rho(tape[1]):
        return 0
    if (len(tape) > 2 and tape[0] == BULLET and arr_lp(tape[1])
            and is_rho(tape[2])):
        return 1
    return None

def _mkrun(s):
    def R(path, d, log, tape, vb=None):
        return Run(path, d, log, tape, vb, s.rs, s.ks)
    return R

def instance(s):
    """The invoking occurrence's logged position — the dynamic
    instance identity of a gate visit. None if the log head is not
    an lp (no valid instance; callers must raise a typed error —
    the silent TOP fallback would alias instances)."""
    return s.log[0] if (s.log and is_lp(s.log[0])) else None

def rs_insert(rs, fr):
    """The replay RECORD is an instance-keyed set kept in
    a canonical sorted order (state identity must not depend on the
    order interleaved re-seeks happened to record in)."""
    return tuple(sorted(rs + (fr,), key=repr))

def alpha_keys_live(e):
    """(gate, instance) keys of LIVE alpha tickets nested in an
    entry: traverse lp slices only. Instance KEYS are frozen names
    (the W5 ghost-count lesson) and are never traversed. The explicit
    stack is depth-independent."""
    out, stack = set(), [e]
    while stack:
        x = stack.pop()
        if is_alpha(x):
            out.add((x[1], x[2]))
        elif is_lp(x):
            stack.extend(x[2])
    return out

def ks_bitfree_keys(ks):
    """Instances whose selection is recorded BIT-FREE: decoded
    records ('K', g, i) and certified bundles ('KD', keys). The
    bit is discarded, so a live same-key representation shadowing
    one of these could alias undetectably — the key-alias hazard
    class. K(l)-buried tickets are not in this class: they carry
    their bit, so deep W3 adjudicates
    them; W8 exclusivity is scoped to bit-free records).
    ('KA', g, i) history heads are DELIBERATELY excluded: a
    suppressed decode's key keeps its answerable representation
    in the frame/burial, so treating the head as a dead record
    would wrongly key-alias a replay-re-emitted ticket."""
    dead = set()
    for e in ks:
        if isinstance(e, tuple) and e:
            if e[0] == 'K' and len(e) == 3:
                dead.add((e[1], e[2]))
            elif e[0] == 'KD' and len(e) == 2:
                dead |= set(e[1])
    return dead

def ks_dead_keys(ks):
    """ALL dead-storage instances — bit-free records plus tickets
    buried inside retained-whole ('K', l) cargo. None of these can
    be recalled or replayed (ks is inert), so a FRESH call of any
    of them would fire the same copy twice: the refire guard
    quantifies over this whole set. ('KA', g, i) heads are
    excluded — the suppressed key's frame/burial remains its live
    representation, and a replay off it must stay legal."""
    dead = ks_bitfree_keys(ks)
    for e in ks:
        if isinstance(e, tuple) and len(e) == 2 and e[0] == 'K':
            dead |= alpha_keys_live(e[1])
    return dead

def alpha_bits_deep(e, out):
    """Collect (g, i) -> bit for every alpha nested in an entry
    (lp slices traversed; instance keys not). The explicit stack
    is depth-independent."""
    stack = [e]
    while stack:
        x = stack.pop()
        if is_alpha(x):
            out.setdefault((x[1], x[2]), set()).add(x[3])
        elif is_lp(x):
            stack.extend(x[2])

def step(term, s, cert=None):
    """Return list of (amp_sign, k_incr, rule, state). Deterministic
    rules: [(1, 0, rule, s')]. H fire: two entries with k_incr=1.
    cert: per-program transparency certificate — a map from fire
    position to the frozenset of popkeys (instance-directed): P =
    RS ∩ popkeys is erased, Q = RS ∖ popkeys retained as
    spectators; an empty popkey set certifies cargo-only."""
    if isinstance(s, Run):
        RunT = _mkrun(s)
    if isinstance(s, Done):
        return [(1, 0, 'tick', Done(s.kind, s.residue, s.tick + 1))]
    if isinstance(s, RunDone):
        return [(1, 0, 'halt', Done(s.kind, s.residue, 0))]
    t = subterm(term, s.path)

    # --- virtual boolean automaton at a gate leaf ---
    if s.vb is not None:
        g, b, k = s.vb
        if k < 2:
            if s.tape and s.tape[0] == BULLET:           # vb2
                return [(1, 0, 'vb2', RunT(s.path, 'D', s.log, s.tape[1:],
                                          (g, b, k + 1)))]
            # fewer outer bullets than 2: the answer boolean is itself
            # the output (partially applied) -- root/probe classify:
            if s.tape and is_rho(s.tape[0]):
                return [(1, 0, 'rootval',
                         RunDone('halt' + str(b), (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
            if s.tape and is_mu(s.tape[0]):
                # inner probe sees a bare boolean VALUE answer:
                # this is exactly the literal-boolean exit, virtualized:
                # emit the arrival shape for slot b at the gam boundary…
                # (reached when a fired gate's value is itself probed)
                return [(1, 0, 'verr',
                         RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
            return [(1, 0, 'stuck-vb', RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
        # k == 2: emit balanced seek: bullets^(b'+1) . alpha_i(g,b')
        i = instance(s)
        if i is None:
            return [(1, 0, 'no-instance',
                     RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
        emitted = (BULLET,) * (b + 1) + (ALPHA(g, i, b),)
        return [(1, 0, 'vvar', RunT(s.path, 'U', s.log,
                                   emitted + s.tape, None))]
    # (pad completion handled via vb phase 3)
    # note: phase-3 pad:
    # fallthrough below never sees vb states; handle pad here:
    # -- implemented above by returning phase 3; catch it:
    # (kept simple: phase 3 emits the seek)

    # --- gate leaf rules ---
    if isinstance(t, Gate) and s.d == 'D':
        if s.tape and s.tape[0] == BULLET:
            i = instance(s)
            if i is None:
                return [(1, 0, 'no-instance',
                         RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
            j = 0
            while j < len(s.tape) and s.tape[j] == BULLET:
                j += 1
            nxt = s.tape[j] if j < len(s.tape) else None
            dead = ks_dead_keys(s.ks)
            bitfree = ks_bitfree_keys(s.ks)
            if nxt is not None and is_alpha(nxt) and nxt[1] == t.name:
                _, g, ti, bp, ticket_epoch = nxt
                if ti != i:
                    # a foreign instance's ticket probed here: species
                    return [(1, 0, 'alien-ticket',
                             RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
                if (t.name, i) in bitfree:
                    # A live ticket
                    # must never shadow a dead-storage record — the
                    # bit-free K has discarded exactly the bit that
                    # would detect divergent aliasing. Typed.
                    return [(1, 0, 'key-alias',
                             RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
                if j == bp + 1:
                    # recall: consistent transit replay off the ticket,
                    # no fire; the discriminator moves to the replay
                    # RECORD, an instance-keyed set:
                    # a re-seek cycle's re-recording is IDEMPOTENT,
                    # because the record is a function of the instance;
                    # a same-instance push with a different bit is the
                    # copy-identity failure, typed).
                    have = [fr for fr in s.rs if fr[0] == 'R'
                            and len(fr) == 5 and fr[1] == t.name
                            and fr[2] == i]
                    if (any(fr[3] != bp for fr in have)
                            or len(have) > 1):
                        return [(1, 0, 'frame-conflict',
                                 RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
                    old_epoch = have[0][4] if have else None
                    fr2 = FRAME(t.name, i, bp,
                                recall_epoch(ticket_epoch, old_epoch))
                    rs0 = tuple(fr for fr in s.rs
                                if not (fr[0] == 'R' and len(fr) == 5
                                        and fr[1] == t.name and fr[2] == i))
                    rs2 = rs_insert(rs0, fr2)
                    return [(1, 0, 'recall', Run(s.path, 'U', s.log,
                             (BULLET, BULLET, BULLET) + s.tape[j + 1:],
                             None, rs2, s.ks))]
                # malformed re-entry arity: species error, full state
                return [(1, 0, 'recall-err',
                         RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
            mine = [fr for fr in s.rs if fr[0] == 'R' and len(fr) == 5
                    and fr[1] == t.name and fr[2] == i]
            if mine and (t.name, i) in bitfree:
                # A live frame shadowing a BIT-FREE record is
                # the aliasing hazard (the record discarded the bit
                # that would detect divergence). Typed.
                return [(1, 0, 'key-alias',
                         RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
            if mine:
                # Replay uses DEEP KEYED LOOKUP: a fresh re-seek of
                # an instance whose ticket was consumed rederives its
                # selection from the instance's record wherever it
                # sits — the record is keyed by (gate, instance), and
                # LIFO position is not semantic. Q's literal interleaving
                # trace requires this lookup. The
                # buried-frame error class no longer exists. Same-
                # instance records with conflicting bits are typed.
                if len(mine) > 1:
                    return [(1, 0, 'frame-conflict',
                             RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
                bp = mine[0][3]
                frame_epoch = mine[0][4]
                if j >= 3:
                    return [(1, 0, 'replay', RunT(s.path, 'U', s.log,
                             (BULLET,) * (bp + 1)
                             + (ALPHA(t.name, i, bp, frame_epoch),)
                             + s.tape[3:]))]
                # under-applied re-seek: out of scope
                return [(1, 0, 'replay-err',
                         RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
            # The refire guard rejects an instance whose
            # ticket is dead storage in ks can never be recalled or
            # replayed — its selection was erased bit-free — so a
            # fresh call here would fire the same copy a second
            # time (the Pα / duplicate-fresh-call class). Typed,
            # never silent: one-fire-per-instance is a machine
            # invariant, not a compile-time obligation.
            if (t.name, i) in dead:
                return [(1, 0, 'refire',
                         RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
            # fresh invocation (no same-instance ticket or frame): call
            return [(1, 0, 'call', RunT(s.path, 'U', s.log,
                     (GAM(t.name), BULLET, BULLET, MU(t.name)) + s.tape[1:]))]
        if s.tape and is_gam(s.tape[0]) and len(s.tape) > 1 \
                and is_ans(s.tape[1]):                   # anshead
            # Gamma/answer disagreement is typed rather than asserted.
            # The check consults the leaf (matched foreign markers
            # gamma_t . A_t at an h leaf entered VB('t',...)), and
            # then an unpack that crashed on malformed tuples
            # (ValueError) while an out-of-range answer bit flowed
            # to an out-of-alphabet halt sector (halt2). Typed:
            # leaf = gamma = answer, exact arities, bit in {0,1}.
            g_t, a_t = s.tape[0], s.tape[1]
            if (len(g_t) != 2 or len(a_t) != 3
                    or g_t[1] != a_t[1] or a_t[1] != t.name
                    or type(a_t[2]) is not int
                    or a_t[2] not in (0, 1)):
                return [(1, 0, 'species-ans',
                         RunDone('err', (s.path, s.d, s.log, s.tape,
                                         s.vb, s.rs, s.ks)))]
            _, g, b = a_t
            return [(1, 0, 'anshead', RunT(s.path, 'D', s.log,
                                          s.tape[2:], (g, b, 0)))]
        if s.tape and (is_rho(s.tape[0]) or is_mu(s.tape[0])):
            # unapplied constant meets a classifier: neutral value
            if is_rho(s.tape[0]):
                return [(1, 0, 'rootneutral',
                         RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]  # NF, non-bool
            return [(1, 0, 'species-neutral',
                     RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
        if s.tape:
            # An answer,
            # ticket, or value meeting the leaf without its
            # classifier shape previously stalled silently. Typed.
            return [(1, 0, 'species-leaf',
                     RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
        return []                                        # bare final

    # --- boundary: U at 'a'-position with gam log head ---
    if (s.d == 'U' and s.path and s.path[-1] == 'a' and s.log
            and is_gam(s.log[0])):
        g = s.log[0][1]
        c = classify_arrival(s.tape)
        if c is not None:
            b, l, T = c
            # For range disjointness, the probe
            # frame's gate kind must match the boundary's gam — over
            # the raw state type, fires differing only in mu('h') vs
            # mu('t') would otherwise collide on identical targets.
            # Unreachable from init (bit-identity verified); typed.
            mu = s.tape[1] if b == 0 else s.tape[2]
            if mu[1] != g:
                return [(1, 0, 'species-mu',
                         RunDone('err', (s.path, s.d, s.log, s.tape,
                                         s.vb, s.rs, s.ks)))]
            # A ticket's gate tag names its PRODUCER, not the current
            # consumer.  Cross-gate composition (T after H and conversely)
            # therefore preserves that key in the decoded spectator; the
            # consumer gate is independently present in ANS(g, b') and in
            # the gate-indexed landing range.  Rejecting a foreign producer
            # here would make Clifford+T composition impossible.
            # A fire must
            # never silently erase or bury a bit disagreement — deep
            # W3 at the boundary: cargo-nested alpha bits and RS
            # frame bits, one bit per key, else typed.
            bits = {}
            alpha_bits_deep(l, bits)
            for fr in s.rs:
                if fr[0] == 'R' and len(fr) == 5:
                    bits.setdefault((fr[1], fr[2]), set()).add(fr[3])
            if any(len(v) > 1 for v in bits.values()):
                return [(1, 0, 'key-alias',
                         RunDone('err', (s.path, s.d, s.log, s.tape,
                                         s.vb, s.rs, s.ks)))]
            # The fire is an ENCODED fibre.
            # Conservative default — retain the decoded spectator
            # D(l): an alpha ticket whose bit matches the slot decodes
            # to its (gate, instance) — the bit is redundant with the
            # slot — so HH's branches land at equal spectators and
            # interfere; anything else (real lp, mismatched alpha) is
            # retained whole, so same-slot arrivals with different
            # which-path data stay orthogonal (the C-collapse
            # counterexample). At a certified boundary, literal
            # P/Q) — erase the cargo l and the POPPED frames P;
            # retained spectators Q embed verbatim: sound iff the
            # certificate proved l = G(b, kappa) and P = F(b,
            # kappa) at the retained coordinate (the corrected
            # fibre condition; discovery checks it).
            if cert is not None and s.path in cert:
                # INSTANCE-DIRECTED certified erasure blocks the W
                # counterexample: the certificate names the
                # keys it pops at this boundary — keys proven
                # slot-correlated at every cone arrival; other
                # frames are retained SPECTATORS (which-path data of
                # unrelated instances, e.g. an outer coin's frame
                # around an inner interference) and join the fibre's
                # retained side. A set-valued certificate
                # pops everything.
                popkeys = (cert[s.path] if isinstance(cert, dict)
                           else None)
                if popkeys is None:
                    P = s.rs
                    Q = ()
                else:
                    P = tuple(fr for fr in s.rs
                              if (fr[1], fr[2]) in popkeys)
                    Q = tuple(fr for fr in s.rs
                              if (fr[1], fr[2]) not in popkeys)
                if any(fr[3] != b for fr in P):
                    return [(1, 0, 'pop-err',
                             RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
                # Certified erasure leaves a DECODE BUNDLE:
                # one tagged ('KD', keys) entry naming every live
                # alpha nested in the erased cargo l and every
                # popped frame's instance. The fibre function property is PER-SLOT,
                # so branch consistency is not free — certification
                # now REQUIRES cross-slot bundle equality
                # (transparent condition (e)); under that condition
                # the bundle is branch-independent, coherence is
                # unaffected, and the erasure is injective on the
                # ticket/frame dimension. Feeds the guards.
                # The bundle names
                # only the POPPED frames' instances; retained
                # spectators Q are embedded verbatim in the target —
                # erasing them here converted every retained frame
                # into a bit-free dead record, collapsing columns
                # that differ only in a spectator bit.
                dk = alpha_keys_live(l) | {(fr[1], fr[2])
                                           for fr in P}
                # The bundle
                # names only keys with NO surviving bit-carrying
                # representation. A retained Q frame stays the
                # ANSWERABLE representation of its key (the decode
                # arm's frame-skip, extended to certified erasure);
                # a retained-whole burial stays the bit-carrying
                # dead record (refire still consults it via
                # ks_dead_keys). Recording either bit-free would
                # plant W8's exclusivity hazard in the target.
                dk -= {(fr[1], fr[2]) for fr in Q}
                for e in s.ks:
                    if (isinstance(e, tuple) and len(e) == 2
                            and e[0] == 'K'):
                        dk -= alpha_keys_live(e[1])
                # Live tickets
                # surviving in the tape tail or the log are
                # answerable representations too — a popped frame
                # whose replay-re-emitted ticket rides in T must
                # not be recorded dead beside it.
                for e in T:
                    dk -= alpha_keys_live(e)
                for e in s.log:
                    dk -= alpha_keys_live(e)
                # For prefix-freeness, the bundle is emitted
                # UNCONDITIONALLY: an empty
                # bundle is ('KD', ()) — so target storage is
                # always (new-bundle . incoming) and incoming KS is
                # recoverable by stripping the head. Omitting empty
                # bundles made a fresh decode and a carried-in
                # record collide on identical targets (norm 2).
                ks2 = (('KD', tuple(sorted(dk, key=repr))),) + s.ks
                rs2 = Q
            elif is_alpha(l) and l[3] == b:
                # D(alpha) = (gate, i). If a same-key frame
                # exists (this ticket was REPLAY-re-emitted), the
                # frame remains the answerable representation and no
                # dead record is created — the W8 exclusivity
                # invariant holds by construction. Same-key
                # BURIALS likewise suppress the record — the buried
                # ticket stays the bit-carrying dead record, and a
                # bit-free K beside it would be the exclusivity
                # hazard.
                if (any(fr[0] == 'R' and len(fr) == 5
                        and (fr[1], fr[2]) == (l[1], l[2])
                        for fr in s.rs)
                        or any(isinstance(e, tuple) and len(e) == 2
                               and e[0] == 'K'
                               and (l[1], l[2])
                               in alpha_keys_live(e[1])
                               for e in s.ks)):
                    # The suppressed arm must still append its ONE
                    # history head — appending zero let a
                    # suppressed decode (incoming KS already
                    # [K(l)]) impersonate a retain-whole fire
                    # (incoming [], prepending K(l)): identical
                    # targets, norm 2. ('KA', g, i) is inert
                    # HISTORY, not a dead record: the key's
                    # answerable representation survives in the
                    # frame/burial, so ks_dead_keys and
                    # ks_bitfree_keys exclude it by design —
                    # refire, key-alias, W8, and W4-storage stay
                    # blind, and a replay-re-emitted ticket still
                    # recalls and re-fires. The head CARRIES THE
                    # KEY because two different tickets can both
                    # suppress over a shared two-frame RS — a
                    # contentless marker would leave that pair
                    # colliding (norm 2, measured).
                    ks2 = (('KA', l[1], l[2]),) + s.ks
                else:
                    ks2 = (('K', l[1], l[2]),) + s.ks
                rs2 = s.rs
            else:
                ks2 = (('K', l),) + s.ks            # retain whole
                rs2 = s.rs
            a0 = Run(s.path, 'U', s.log, (ANS(g, 0),) + T, None, rs2, ks2)
            a1 = Run(s.path, 'U', s.log, (ANS(g, 1),) + T, None, rs2, ks2)
            if g == 'h':
                if b == 0:
                    return [(1, 1, 'fire-h', a0), (1, 1, 'fire-h', a1)]
                return [(1, 1, 'fire-h', a0), (-1, 1, 'fire-h', a1)]
            # T is diagonal on the same clean spectator fibre.  The
            # structural row names expose its exact scalar: fire-t0 has
            # coefficient 1, fire-t1 coefficient omega.  `step_dw` is the
            # exact cyclotomic evaluator; the real evaluator never
            # sees these rows in the canonical h-only sectors.
            if b == 0:
                return [(1, 0, 'fire-t0', a0)]
            return [(1, 0, 'fire-t1', a1)]
        if s.tape and is_ans(s.tape[0]):                 # bt1-gam (retrace)
            gam = s.log[0]
            return [(1, 0, 'bt1g', RunT(s.path[:-1] + ('f',), 'D',
                                       s.log[1:], (gam,) + s.tape))]
        # non-boolean arrival shapes at a gate boundary: species error
        return [(1, 0, 'species', RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]

    # --- root arrivals ---
    if s.d == 'U' and not s.path:
        rb = classify_root(s.tape)
        if rb is not None:
            return [(1, 0, 'rootdone',
                     RunDone('halt' + str(rb), (s.log, s.tape, s.rs, s.ks)))]
        # I-shaped output: one lambda consumed, head = its own binder,
        # unapplied: arrival l . bullet . rho
        if (len(s.tape) > 2 and arr_lp(s.tape[0]) and s.tape[1] == BULLET
                and is_rho(s.tape[2])):
            return [(1, 0, 'rootdone',
                     RunDone('haltI', (s.log, s.tape, s.rs, s.ks)))]
        return [(1, 0, 'rooterr', RunDone('err', (s.log, s.tape, s.rs, s.ks)))]

    # --- classical rules (mirrors lam_iam.step_classical, with
    #     lp_like transport and rho/mu-stuck error entries) ---
    if s.d == 'D':
        if isinstance(t, App):
            return [(1, 0, 'b1', RunT(s.path + ('f',), 'D', s.log,
                                     (BULLET,) + s.tape))]
        if isinstance(t, Lam):
            if s.tape and s.tape[0] == BULLET:
                return [(1, 0, 'b2', RunT(s.path + ('b',), 'D', s.log,
                                         s.tape[1:]))]
            if s.tape and is_lp(s.tape[0]):
                _, occ, sl = s.tape[0]
                if binder_path(term, occ) == s.path:
                    return [(1, 0, 'bt2', RunT(occ, 'U',
                             tuple(sl) + s.log, s.tape[1:]))]
            if s.tape and (is_mu(s.tape[0]) or is_rho(s.tape[0])):
                # too many head lambdas for the question: not a boolean
                return [(1, 0, 'shape-err',
                         RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
            if s.tape and (is_gam(s.tape[0]) or is_ans(s.tape[0])
                           or is_alpha(s.tape[0])):
                # A gate
                # token meeting a binder is a species failure, not
                # a classical final (bt2 never matches gamma/alpha
                # by design; an answer has no binder at all).
                # Foreign-lp and empty-tape finals stay [] — they
                # are the CLASSICAL substrate's own finals.
                return [(1, 0, 'species-binder',
                         RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
            return []                                    # classical final
        if isinstance(t, Var):
            bp = binder_path(term, s.path)
            n = level(s.path) - level(bp)
            lp = ('L', s.path, s.log[:n])
            return [(1, 0, 'var', RunT(bp, 'U', s.log[n:],
                                      (lp,) + s.tape))]
        return []
    else:
        if not s.path:
            return []                                    # handled above
        parent, last = s.path[:-1], s.path[-1]
        if last == 'f':
            if s.tape and s.tape[0] == BULLET:
                return [(1, 0, 'b3', RunT(parent, 'U', s.log, s.tape[1:]))]
            if s.tape and lp_like(s.tape[0]):
                return [(1, 0, 'arg', RunT(parent + ('a',), 'D',
                         (s.tape[0],) + s.log, s.tape[1:]))]
            if s.tape:
                # Mu, rho,
                # and answer heads have no transport rule here —
                # previously a silent stall. Typed.
                return [(1, 0, 'species-transport',
                         RunDone('err', (s.path, s.d, s.log, s.tape, s.vb, s.rs, s.ks)))]
            return []
        if last == 'b':
            return [(1, 0, 'b4', RunT(parent, 'U', s.log,
                                     (BULLET,) + s.tape))]
        if last == 'a':
            # ordinary bt1 (real lp OR alpha head; gam handled above)
            if s.log and not is_gam(s.log[0]):
                return [(1, 0, 'bt1', RunT(parent + ('f',), 'D',
                         s.log[1:], (s.log[0],) + s.tape))]
            return []
    return []


ZEROA = (Fraction(0), Fraction(0))

def astep(amp, sign, dk):
    """amp = (p, q) meaning p + q*sqrt2, exact in Q[sqrt2].
    Multiply by sign/sqrt2^dk: (p+q*sqrt2)/sqrt2 = q + (p/2)*sqrt2."""
    p, q = amp
    for _ in range(dk):
        p, q = q, p / 2
    return (sign * p, sign * q) if sign != 1 else (p, q)

def asq(amp):
    """|amp|^2 for real amp, exact in Q[sqrt2]: (p+q*sqrt2)^2."""
    p, q = amp
    return (p * p + 2 * q * q, 2 * p * q)

def evolve(term, psi, nsteps, watch=None, cert=None):
    """psi: dict state -> (p, q) with value p + q*sqrt2 — exact
    Q[sqrt2], with no monomial restriction. One global
    step: every basis state steps by its rules; amplitudes merge."""
    for i in range(nsteps):
        out = {}
        for s, amp in psi.items():
            succs = step(term, s, cert)
            if not succs:
                raise RuntimeError(f'stuck state (norm leak): {s}')
            for sign, dk, rule, s2 in succs:
                a = astep(amp, sign, dk)
                cur = out.get(s2, ZEROA)
                out[s2] = (cur[0] + a[0], cur[1] + a[1])
        psi = {s: a for s, a in out.items() if a != ZEROA}
        norm = ZEROA
        for a in psi.values():
            n = asq(a)
            norm = (norm[0] + n[0], norm[1] + n[1])
        assert norm == (1, 0), f'norm {norm} at step {i + 1}'
        if watch:
            watch(i + 1, psi)
    return psi

def init(term):
    return {Run((), 'D', (), (BULLET, BULLET, RHO)):
            (Fraction(1), Fraction(0))}

def summarize(psi):
    agg = {}
    for s, amp in psi.items():
        key = s.kind if isinstance(s, (Done, RunDone)) else 'running'
        n = asq(amp)
        cur = agg.get(key, ZEROA)
        agg[key] = (cur[0] + n[0], cur[1] + n[1])
    return {k: str(v[0]) if v[1] == 0 else '%s+%s*rt2' % v
            for k, v in agg.items()}

if __name__ == '__main__':
    # HH: (\h.\t. h (h 0^)) h t     0^ = \\2
    ZERO = Lam(Lam(Var(2)))
    body = App(Var(2), App(Var(2), ZERO))    # h (h 0^): h = Var(2) under \h.\t
    P = App(App(Lam(Lam(body)), Gate('h')), Gate('t'))
    psi = init(P)
    hist = []
    def watch(i, psi):
        done = summarize(psi)
        hist.append((i, len(psi), done))
    psi = evolve(P, psi, 120, watch)
    print('final sectors:', summarize(psi))
    print('support:', len(psi))
    for s, (m, k) in sorted(psi.items(), key=str):
        tag = s.kind if isinstance(s, Done) else 'run'
        print(f'  amp {m}/sqrt2^{k}  {tag}  '
              f'{s.residue if isinstance(s, Done) else s}')
