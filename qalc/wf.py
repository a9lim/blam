"""The well-formed configuration subtype, mechanized. (The
register carries the version; this file does not duplicate it.)

WF(term, s) for Run states — the state-grammar invariant W0, the
SORTED state language: exact-type purity (registers are exact
tuples of exact tuples/str/int, checked without hashing and
before any scan — impure states early-return ['W0'] so the lp
cache and key dicts never hash arbitrary content); exact-int bits
in {0,1}; gates in {h,t}; exact arities; lp productions
recursive with occurrences resolving to BOUND Vars of the CLOSED
term (1-indexed — Var(0) is no variable) and satisfying the
lambda-IAM logged-position equation len(slice) = level(occ) -
level(binder); the log a separate sort (lp-like entries only);
arrival-lp K(l) cargo; the KA suppressed-decode history head;
state coordinates d/path in language; VB phase exact-int in
domain — plus the nine invariants W1-W9 the
machine's rules preserve and its unitarity claims quantify over
(W3 is DEEP — one bit per key across frames, tape/log tickets
incl. slice cargo, and K(l) burials; W8 excludes bit-free storage
from coexisting with answerable representations AND bit-carrying
burials; W9 is live-ticket key uniqueness — full statements in
kernel.md §6):

  W1 (log discipline): len(log) == level(path). Every log entry —
     ordinary lp, gamma, alpha — corresponds to one 'a'-step of the
     current position.
  W2 (record uniqueness + canonicity): at most one frame per
     (gate, instance) in rs, and rs is canonically sorted (state
     identity is order-free). Gate 1's recall epoch makes an
     absent-frame return and an agreeing-frame return distinct targets;
     replacement remains set-like only at the instance-key coordinate.
  W3 (bit coherence, DEEP): all instance-keyed entries with one
     (g, i) carry one bit — frames in rs; tickets on tape and log,
     deep through slice cargo; tickets buried in retained-whole
     K(l) records.
  W4 (first-interrogation exclusivity): a
     vb-active state at instance i (= log head) holds NO other
     representation of its key in ANY of the four classes —
     frames in rs, live tickets deep through tape/log slice
     cargo, bit-free storage, and CONFLICTING-bit burials (an
     agreeing burial is admissible: its vvar target is WF). The
     guard chain forces this on reachable states: a ticket routes
     to recall, a frame to replay, dead storage to refire — none
     reaches call -> fire -> anshead -> vb. The four exclusions
     close vvar preservation BY ENUMERATION (the emitted ticket
     can only violate W3/W8/W9 in the target, each partner class
     excluded at the source);
     entry into the VB region (anshead) is guarded by the
     lifecycle on reachable states, and raw-entry closure is
     deliberately NOT claimed — see the version-controlled kernel register.
  W5 (probe pairing): #gamma_deep(log, tape, ks) ==
     #mu(tape) + #ANS(tape) — every in-flight probe's gamma is
     matched by its mu (pre-fire) or its answer token (post-fire);
     anshead consumes both sides together. The count is DEEP: a
     gamma captured into an lp's slice by a var step is suspended
     cargo (the conservation ledger's concept), still in flight —
     its probe cannot fire until bt2 releases it back to the log —
     and a fire's retained K(l) record moves a live lp (with any
     suspended cargo) into ks. Ticket/frame INSTANCE KEYS are
     frozen names, never counted: the live original is accounted
     where it lives, and keys would ghost-count stale slices.
  W6 (root frame): exactly one rho, at the tape bottom.

W7 (certificate fibre coherence) and W8 (representation
exclusivity) are defined below with the certificate machinery.
Reachable ⊆ WF (W0–W9, W7/W8 included) is verified exhaustively per program;
per-rule preservation is argued in the version-controlled kernel register and
validated by the same sweep. ``cert_disjointness`` is the actual
range-disjointness checker: it constructs fire targets through ``step()``,
compares decoded bundles across slots, and computes column inner products.
The permanent regression battery pins the accepted grammar, fibre, range, and
alias boundaries. This is the authoritative Python checker used by Gate 1 and
Gate 2's compiler-indexed extension.
"""
import sys
sys.path.insert(0, '.')
from lam_iam import BULLET, is_lp, level
from kernel import (Run, RunDone, Done, step, init, is_gam, is_mu,
                    is_ans, is_alpha, is_rho, FRAME, GAM, MU, RHO,
                    rs_insert)
import kernel as K
import lam_iam as L
from suite import PROGRAMS, CERTS
from collections import deque

def wf(term, s):
    """Return [] if WF, else the violated invariant names."""
    # Exact type: a Run subclass is not a state of the machine
    # (init/evolve mint exact Runs), and overridden attribute
    # access could run arbitrary code before purity could see
    # anything. Field access below happens only on exact
    # dataclass instances.
    if type(s) is not Run:
        return []
    # An exact frozen dataclass can have fields removed via
    # object.__delattr__ — exact in type, hollow in body. For
    # the UNDEFAULTED fields (path/d/log/tape) every downstream
    # access would raise, so hasattr gates them out (['W0']);
    # the DEFAULTED fields (vb/rs/ks) keep hasattr True via
    # their class-level defaults and the state is extensionally
    # the default Run for every machine/checker observation: the fallback,
    # not a hole. hasattr on an
    # exact instance runs no user code (the exact-type dispatch
    # above precedes); a missing undefaulted field is out of
    # the language.
    if not all(hasattr(s, f) for f in
               ('path', 'd', 'log', 'tape', 'vb', 'rs', 'ks')):
        return ['W0']
    # The containers and every nested component are part of the
    # language. A list-valued tape passed WF (iteration checks
    # elements; nothing checked the tuple) and the fire's tuple
    # concatenation TypeError'd. The completion is EXACT-TYPE
    # PURITY — registers are exact tuples of exact
    # tuples/str/int, checked WITHOUT HASHING and before any
    # scan, because the lp cache and the W2/W3 key dicts hash
    # state content: a nested object with a custom __hash__
    # would otherwise crash the checker itself (the binder_path
    # lesson, one level down), and a custom __eq__ could poison
    # the lp cache. Impure states are not in the language's
    # carrier at all — W1-W9 are not adjudicated over them.
    def pure(e):
        # The explicit stack is depth-independent and non-hashing. The
        # id-visited set makes purity
        # intrinsic, shared subtrees check once, cost is
        # REPRESENTATION-linear (tuples cannot be cyclic).
        seen = set()
        stack = [e]
        while stack:
            x = stack.pop()
            if type(x) is tuple:
                k = id(x)
                if k in seen:
                    continue
                seen.add(k)
                stack.extend(x)
            elif not (type(x) is str or type(x) is int):
                return False
        return True
    # The register roots must
    # themselves be exact tuples — pure(0) is True because an
    # int is a valid pure LEAF, so a scalar root passed the gate
    # and the container iteration crashed — and `d` joins the
    # purity surface as an exact str (a custom __eq__ object in
    # d executed at the membership check).
    if (not all(type(x) is tuple and pure(x)
                for x in (s.path, s.log, s.tape, s.rs, s.ks))
            or type(s.d) is not str
            or not (s.vb is None or pure(s.vb))):
        return ['W0']
    bad = []
    # W0 (state grammar): every token is a
    # well-formed production with EXACT-INT bits in {0,1} — bool
    # is a subclass of int and is REFUSED, because rootval
    # string-formats the bit and 1.0/True would mint
    # out-of-alphabet terminal KINDS (halt1.0, haltTrue) — gates
    # in {'h','t'}, exact arities; lp productions are checked
    # RECURSIVELY everywhere they appear (slices, ticket
    # instances, frame instances, K/KD key instances) with path
    # components in {'f','a','b'} and every occurrence resolving
    # to a Var of the term; retained-whole K(l) cargo is an
    # ARRIVAL lp (L or AL production); the state coordinates are
    # in language (d in {'D','U'}, s.path resolving in the term);
    # the VB phase is exact-int in domain. Machine-PHASE placement
    # of well-formed tokens is the other invariants' job — W0 is
    # the language, not the protocol.
    def bit_ok(b):
        return type(b) is int and b in (0, 1)
    def epoch_ok(epoch):
        """Exact recursive epoch grammar, iteratively checked."""
        stack = [epoch]
        while stack:
            current = stack.pop()
            if not (isinstance(current, tuple) and current):
                return False
            if current == K.FRESH_EPOCH:
                continue
            if current[0] == 'EA' and len(current) == 2:
                stack.append(current[1])
                continue
            if current[0] == 'EP' and len(current) == 3:
                stack.extend((current[1], current[2]))
                continue
            return False
        return True
    def frame_epoch_ok(epoch):
        return epoch_ok(epoch) and epoch != K.FRESH_EPOCH
    def walk(path):
        t_ = term
        for c in path:
            if c == 'f' and isinstance(t_, L.App):
                t_ = t_.f
            elif c == 'a' and isinstance(t_, L.App):
                t_ = t_.a
            elif c == 'b' and isinstance(t_, L.Lam):
                t_ = t_.body
            else:
                return None
        return t_
    def closed(t_):
        # 1-INDEXED de Bruijn: Var(1) is the
        # innermost binder, so Var(0) is not a variable of any
        # term. The full term validator rejects cycles and computes
        # MAX-FREE per node: Var i → i,
        # Lam → max(0, body − 1), App → max(f, a) — by iterative
        # post-order with ONE memo entry per node id, so shared
        # term DAGs are representation-LINEAR (the old
        # (id, depth) memo was Θ(n²) on App/Lam chains: every
        # node reachable at many depths); closed ⟺
        # max_free(root) == 0. Node dispatch is EXACT-TYPE — a
        # term-node subclass is not a term node, and its custom
        # attributes are never touched because the type check
        # precedes every field access. Gate names must be
        # {'h','t'} as the language always said (Gate('x')
        # passed wf and broke W0-preservation one step later;
        # Gate([]) crashed the machine on an unhashable name).
        # Cycles: on-path rejection, as before.
        # Var(1<<n)
        # under n lambdas is a Θ(n)-representation input whose
        # max-free propagation did n subtractions on n-BIT
        # integers — Θ(n²). THE CLAMP: count the distinct Lam
        # objects first, then clamp every Var contribution at
        # cap = lam_total + 1. Sound because max-free descends
        # through each Lam on the Var's ancestor path once and
        # an upward path in a DAG cannot revisit nodes, so a
        # bound Var needs i ≤ lam_total; min(i, cap) preserves
        # the ==0 verdict exactly (clamped values stay positive
        # through every decrement), and all propagated values
        # are word-sized.
        # Term-node fields may be absent on
        # exact instances (object.__delattr__ on the frozen
        # dataclass) — getattr sentinels; a hollow node is not
        # a term. The pre-pass validates Lam/App fields for the
        # main pass too (same objects, frozen, single-threaded);
        # Var.i and Gate.name are guarded in the main pass by
        # their own exact-type value checks.
        _MISS = object()
        lam_total = 0
        seen0 = set()
        stack = [t_]
        while stack:
            t2 = stack.pop()
            k = id(t2)
            if k in seen0:
                continue
            seen0.add(k)
            if type(t2) is L.Lam:
                lam_total += 1
                b0 = getattr(t2, 'body', _MISS)
                if b0 is _MISS:
                    return False
                stack.append(b0)
            elif type(t2) is L.App:
                f0 = getattr(t2, 'f', _MISS)
                a0 = getattr(t2, 'a', _MISS)
                if f0 is _MISS or a0 is _MISS:
                    return False
                stack.append(f0)
                stack.append(a0)
        cap = lam_total + 1
        free = {}
        onpath = set()
        stack = [(t_, False)]
        while stack:
            t2, leaving = stack.pop()
            k = id(t2)
            if leaving:
                onpath.discard(k)
                if type(t2) is L.Lam:
                    free[k] = max(0, free[id(t2.body)] - 1)
                else:
                    free[k] = max(free[id(t2.f)], free[id(t2.a)])
                continue
            if k in free:
                continue
            if type(t2) is L.Var:
                i0 = getattr(t2, 'i', None)
                if not (type(i0) is int and i0 >= 1):
                    return False
                free[k] = i0 if i0 <= cap else cap
            elif type(t2) is L.Gate:
                nm0 = getattr(t2, 'name', None)
                if not (type(nm0) is str
                        and nm0 in ('h', 't')):
                    return False
                free[k] = 0
            elif type(t2) is L.Lam:
                if k in onpath:
                    return False
                onpath.add(k)
                stack.append((t2, True))
                stack.append((t2.body, False))
            elif type(t2) is L.App:
                if k in onpath:
                    return False
                onpath.add(k)
                stack.append((t2, True))
                stack.append((t2.f, False))
                stack.append((t2.a, False))
            else:
                return False
        return free[id(t_)] == 0
    occmemo = {}
    def occ_required(occ):
        """Required slice length for an occurrence tuple, or
        None if the occurrence is invalid (not resolving to a
        Var; unbound). ALL the expensive per-occurrence work
        lives here — the walk, the index-based backward binder
        scan, and the 'a'-count — computed ONCE per occurrence object.
        value-sharing without object-sharing defeated the
        per-LP memos — n distinct lp shells around ONE shared
        occurrence tuple paid the walk n times, Θ(n²) on a
        Θ(n) graph. The occurrence is where the work is, so the
        occurrence is where the memo is: total pre-gate work is
        Σ O(local size) over DISTINCT objects."""
        k = id(occ)
        if k in occmemo:
            return occmemo[k]
        r = None
        v = walk(occ)
        if isinstance(v, L.Var):
            crossed, bp_len = 0, None
            for j in range(len(occ) - 1, -1, -1):
                if occ[j] == 'b':
                    crossed += 1
                    if crossed == v.i:
                        bp_len = j
                        break
            if bp_len is not None:
                r = sum(1 for c in occ[bp_len:] if c == 'a')
        occmemo[k] = r
        return r
    def w0lp_shape(e):
        """LOCAL lp conditions only: shape, Var occurrence, the
        lambda-IAM logged-position equation (the slice
        captures exactly the log segment between occurrence and
        binder, len(slice) = level(occ) - level(binder), the
        occurrence BOUND). Nested slice tokens are validated by
        the caller's closure sweep; the per-occurrence work is
        memoized in occ_required."""
        if not (isinstance(e, tuple) and len(e) == 3
                and e[0] == 'L' and isinstance(e[1], tuple)
                and isinstance(e[2], tuple)):
            return False
        req = occ_required(e[1])
        return req is not None and len(e[2]) == req
    lpmemo = {}
    seen_slices = set()
    def w0tok(e):
        """Check the token grammar as a CLOSURE SWEEP: a token is valid iff every
        node of its closure satisfies its LOCAL predicate, which
        is exactly the recursive definition, iteratively. The
        memo is id-keyed and per-call (ids stable while the state
        holds its references) — NO HASHING of state content
        before or during W0. An lp's memo entry is set before its
        slice children are drained; a failing child fails THIS
        call, so the aggregate w0bad is unaffected by the
        optimistic entry."""
        stack = [e]
        while stack:
            x = stack.pop()
            if lpmemo.get(id(x)):
                continue
            if x == BULLET or x == RHO:
                continue
            if isinstance(x, tuple) and x:
                if x[0] == 'L':
                    if not w0lp_shape(x):
                        return False
                    lpmemo[id(x)] = True
                    # Extend once
                    # PER SLICE — n distinct shells sharing one
                    # slice tuple re-pushed its elements per
                    # shell (each an O(1) memo hit, but n pushes
                    # x n shells = quadratic). Soundness rides
                    # aggregate monotonicity: the
                    # call that first extends a slice either
                    # drains it fully (True) or fails and w0bad
                    # is already set.
                    sl = x[2]
                    if id(sl) not in seen_slices:
                        seen_slices.add(id(sl))
                        stack.extend(sl)
                    continue
                if x[0] in ('G', 'M'):
                    if len(x) == 2 and x[1] in ('h', 't'):
                        continue
                    return False
                if x[0] == 'A':
                    if (len(x) == 3 and x[1] in ('h', 't')
                            and bit_ok(x[2])):
                        continue
                    return False
                if x[0] == 'AL':
                    # the instance must be an LP production
                    # specifically (the recursive form's w0lp),
                    # not any token — the sweep enforces the kind
                    # here and the lp conditions at the node
                    if (len(x) == 5 and x[1] in ('h', 't')
                            and bit_ok(x[3])
                            and epoch_ok(x[4])
                            and isinstance(x[2], tuple) and x[2]
                            and x[2][0] == 'L'):
                        stack.append(x[2])
                        continue
                    return False
            return False
        return True
    lpfull = {}
    kdmemo = {}
    def w0lp(e):
        """An lp production in full: local shape AND its closure
        (frame/K/KD/KA instances and standalone lp checks).
        A full-lp id memo makes same-object repeats O(1).
        Memo doctrine:
        per-entry truth is NOT the invariant of these memos.
        An optimistic lpmemo entry can go stale within a call
        (a closure failure after the install), and a stale True
        can then be stored here. The soundness criterion is
        AGGREGATE MONOTONICITY: a stale-True entry exists only
        because some earlier check in THIS wf call returned
        False, which already OR'd w0bad to True — the verdict
        is ['W0'] regardless of every later memo reading. The
        memos are per-call, so no staleness crosses calls; the
        fresh-call isolation control in regression twenty-nine
        pins both facts."""
        k = id(e)
        r = lpfull.get(k)
        if r is None:
            r = w0lp_shape(e) and w0tok(e)
            lpfull[k] = r
        return r
    # The log is a
    # separate SORT — its alphabet is lp-like productions only
    # (lp/gamma/alpha; that is the log's grammar, not a phase
    # question: arg pushes lp_like heads and bt2 pushes slices,
    # nothing else ever enters). A bullet in the log passed every
    # invariant and bt1 transported it into a b1-collision
    # (norm 2). The term must be CLOSED (an open term's current
    # position crashes binder_path from inside WF).
    def w0log(e):
        return (is_lp(e) or is_gam(e) or is_alpha(e)) and w0tok(e)
    # The term gate comes first. Otherwise the rs/ks token loops below
    # ran even when the term had already failed, and their
    # w0lp → walk calls dereferenced the unvalidated term, so a
    # malformed term subclass could still execute. After this gate,
    # every downstream walk sees an exact, validated term.
    if not closed(term):
        return ['W0']
    # (containers are exact tuples here — the purity pre-pass
    # above early-returned otherwise)
    w0bad = (s.d not in ('D', 'U')
             or walk(s.path) is None
             or not all(w0tok(e) for e in s.tape)
             or not all(w0log(e) for e in s.log))
    for fr in s.rs:
        if not (isinstance(fr, tuple) and len(fr) == 5
                and fr[0] == 'R' and fr[1] in ('h', 't')
                and w0lp(fr[2]) and bit_ok(fr[3])
                and frame_epoch_ok(fr[4])):
            w0bad = True
    for e in s.ks:
        if isinstance(e, tuple) and len(e) == 3 and e[0] == 'K':
            if not (e[1] in ('h', 't') and w0lp(e[2])):
                w0bad = True
        elif isinstance(e, tuple) and len(e) == 2 and e[0] == 'KD':
            # The KD-keys sibling of the shared-slice
            # class, preempted — n KD entries sharing one keys
            # tuple would iterate it per entry; verified keys
            # tuples are id-memoized (both verdicts stored, so a
            # shared BAD tuple still flags on every reference).
            kt = e[1]
            if isinstance(kt, tuple) and id(kt) in kdmemo:
                if not kdmemo[id(kt)]:
                    w0bad = True
            else:
                r = (isinstance(kt, tuple)
                     and all(isinstance(k, tuple) and len(k) == 2
                             and k[0] in ('h', 't') and w0lp(k[1])
                             for k in kt))
                if isinstance(kt, tuple):
                    kdmemo[id(kt)] = r
                if not r:
                    w0bad = True
        elif isinstance(e, tuple) and len(e) == 2 and e[0] == 'K':
            if not (isinstance(e[1], tuple) and e[1]
                    and e[1][0] in ('L', 'AL') and w0tok(e[1])):
                w0bad = True
        elif isinstance(e, tuple) and len(e) == 3 and e[0] == 'KA':
            # The suppressed-decode HISTORY
            # head — a KS production, deliberately absent from
            # ks_dead_keys/ks_bitfree_keys (the key's answerable
            # representation survives in the frame/burial; W8,
            # W4-storage, key-alias, and refire stay blind to it).
            if not (e[1] in ('h', 't') and w0lp(e[2])):
                w0bad = True
        else:
            w0bad = True
    if s.vb is not None and not (
            isinstance(s.vb, tuple) and len(s.vb) == 3
            and s.vb[0] in ('h', 't') and bit_ok(s.vb[1])
            and type(s.vb[2]) is int and s.vb[2] in (0, 1, 2)):
        w0bad = True
    if w0bad:
        # The W0 gate keeps W1-W9 scans inside the language carrier.
        # Exact-pure malformed tuples — ('AL',), ('L',), an empty
        # () frame — passed purity, were correctly W0-flagged,
        # and then crashed the W1-W9 deep scans (IndexError from
        # inside the checker). W1-W9 are adjudicated only over
        # the language's carrier: the same argument that
        # justified the purity early-return, applied at the
        # grammar layer. After a clean W0, every token has exact
        # shape and the scans index safely.
        return ['W0']
    if len(s.log) != level(s.path):
        bad.append('W1')
    keys = {}
    seen_frames = {}
    for fr in s.rs:
        if not (isinstance(fr, tuple) and fr[0] == 'R' and len(fr) == 5):
            bad.append('W2-alien')
            continue
        k = (fr[1], fr[2])
        if k in seen_frames:
            bad.append('W2-dup')
        seen_frames[k] = fr[3]
        keys.setdefault(k, set()).add(fr[3])
    if s.rs != tuple(sorted(s.rs, key=repr)):
        bad.append('W2-order')
    # W3 is deep: one bit
    # per key across ALL bit-carrying representations — top-level
    # and slice-suspended tickets on tape and log, and tickets
    # buried in retained-whole K(l) records.
    for e in s.tape:
        K.alpha_bits_deep(e, keys)
    for e in s.log:
        K.alpha_bits_deep(e, keys)
    for e in s.ks:
        if isinstance(e, tuple) and len(e) == 2 and e[0] == 'K':
            K.alpha_bits_deep(e[1], keys)
    if any(len(v) > 1 for v in keys.values()):
        bad.append('W3')
    if s.vb is not None:
        g = s.vb[0]
        i = s.log[0] if (s.log and is_lp(s.log[0])) else None
        if i is not None:
            if (g, i) in seen_frames:
                bad.append('W4-frame')
            # A live
            # same-instance ticket suspended in slice cargo on tape
            # OR log violates first-interrogation exclusivity just
            # as a top-level one does — a vvar step re-emits it
            # beside the VB's fresh interrogation (two live
            # same-key tickets, the W9 alias state). Live alpha
            # keys only; frozen instance keys in frames/records
            # never count.
            if any((g, i) in K.alpha_keys_live(e)
                   for e in s.tape + s.log):
                bad.append('W4-ticket')
            # The last two representation classes join the exclusion,
            # closing vvar preservation BY ENUMERATION — the
            # emitted ticket can only violate W3/W8/W9 in the
            # target, and each violating partner class is excluded
            # at the source: frames (W4-frame), live tickets
            # (W4-ticket), bit-free storage (W4-storage: the target
            # would put a live alpha beside its own bit-free record
            # — W8), conflicting burials (W4-burial: two bits for
            # one key — W3). An AGREEING burial is admissible: its
            # vvar target is WF — the no-over-tightening control.
            if (g, i) in K.ks_bitfree_keys(s.ks):
                bad.append('W4-storage')
            bvb = s.vb[1]
            for e in s.ks:
                if (isinstance(e, tuple) and len(e) == 2
                        and e[0] == 'K'):
                    bb = {}
                    K.alpha_bits_deep(e[1], bb)
                    if any(x != bvb for x in bb.get((g, i), ())):
                        bad.append('W4-burial')
                        break
    def gam_deep(e):
        # Iterative; alpha/frame instance keys stay
        # frozen names, never traversed
        n, stack = 0, [e]
        while stack:
            x = stack.pop()
            if is_gam(x):
                n += 1
            elif is_lp(x):
                stack.extend(x[2])
            elif (isinstance(x, tuple) and x and x[0] == 'K'
                    and len(x) == 2):
                stack.append(x[1])
        return n
    ng = sum(gam_deep(e) for e in s.log) + \
         sum(gam_deep(e) for e in s.tape) + \
         sum(gam_deep(e) for e in s.ks)
    nm = sum(1 for e in s.tape if is_mu(e))
    na = sum(1 for e in s.tape if is_ans(e))
    if ng != nm + na:
        bad.append('W5')
    if sum(1 for e in s.tape if is_rho(e)) != 1 or not is_rho(s.tape[-1]):
        bad.append('W6')
    # W8 (representation exclusivity): per (g, i), ANSWERABLE
    # representations (live alpha tickets on tape/log incl.
    # suspended slice cargo; replay frames) never coexist with
    # BIT-FREE dead storage ('K', g, i) / ('KD', keys) — a live
    # representation shadows the record at the leaf, and the
    # bit-free record has discarded exactly the bit that would
    # detect divergent aliasing. Preserved on W9-clean sources
    # (decode skips the record when a frame exists; certified pop
    # removes the popped frames but records only the keys left
    # with NO surviving representation — the riding-ticket
    # control pops a frame into an empty bundle) and typed at
    # the leaf (key-alias). Preservation is not
    # unconditional — a duplicate-ticket alias source decodes into
    # a W8 violation, which is why W9 excludes it statically.
    def alpha_deep(e, out):
        # Iterative and depth-independent.
        stack = [e]
        while stack:
            x = stack.pop()
            if K.is_alpha(x):
                out.add((x[1], x[2]))
            elif is_lp(x):
                stack.extend(x[2])
    answerable = set()
    for e in s.tape:
        alpha_deep(e, answerable)
    for e in s.log:
        alpha_deep(e, answerable)
    answerable |= {(fr[1], fr[2]) for fr in s.rs
                   if isinstance(fr, tuple) and fr[:1] == ('R',)
                   and len(fr) == 5}
    # Exclusivity is scoped to
    # BIT-FREE dead storage — K(l)-buried tickets carry their bit
    # and coexist with frames/tickets under deep W3's adjudication.
    # Bit-free storage excludes burial keys too: a KD/K record
    # beside a same-key buried ticket has discarded the bit the
    # burial still carries, the coexistence the algebra types.
    # The fire and decode arms never create it (KD subtraction;
    # record-skip); this clause makes the hazard statically
    # visible.
    burial_keys = set()
    for e in s.ks:
        if isinstance(e, tuple) and len(e) == 2 and e[0] == 'K':
            burial_keys |= K.alpha_keys_live(e[1])
    if (answerable | burial_keys) & K.ks_bitfree_keys(s.ks):
        bad.append('W8')
    # W9: instance keys
    # name UNIQUE seeks — at most one live alpha ticket per (g, i)
    # across tape and log, deep through slice cargo. Two agreeing
    # live tickets are an alias state (the registered agreeing-alias
    # gap, made statically checkable on the ticket dimension):
    # decoding one leaves the other answerable beside the bit-free
    # record, so W8 preservation quantifies over W9-clean sources.
    # Frames (W2-dup) and K(l)-buried cargo (deep W3/W8) are the
    # other representation classes.
    tickets = {}
    def alpha_count(e):
        # Iterative and depth-independent.
        stack = [e]
        while stack:
            x = stack.pop()
            if K.is_alpha(x):
                k = (x[1], x[2])
                tickets[k] = tickets.get(k, 0) + 1
            elif is_lp(x):
                stack.extend(x[2])
    for e in s.tape:
        alpha_count(e)
    for e in s.log:
        alpha_count(e)
    if any(n > 1 for n in tickets.values()):
        bad.append('W9')
    return bad

def sweep():
    print('%-9s %8s %6s  %s' % ('program', 'states', 'runs', 'WF'))
    allbad = 0
    for name, term in PROGRAMS.items():
        badhere = []
        nrun = tot = 0
        for cert in (None, CERTS.get(name)):
            s0 = next(iter(init(term)))
            assert wf(term, s0) == [], 'init not WF'
            seen, dq = {s0}, deque([s0])
            while dq:
                s = dq.popleft()
                tot += 1
                if isinstance(s, Done) and s.tick >= 2:
                    continue
                if isinstance(s, Run):
                    nrun += 1
                    v = wf(term, s)
                    if v:
                        badhere.append((v, s))
                for sg, dk, rule, s2 in step(term, s, cert):
                    if s2 not in seen:
                        seen.add(s2)
                        dq.append(s2)
        allbad += len(badhere)
        print('%-9s %8d %6d  %s' % (name, tot, nrun,
              'OK' if not badhere else 'VIOLATIONS %d' % len(badhere)))
        for v, s in badhere[:2]:
            print('   ', v, s)
    print('reachable-subset-of-WF violations TOTAL:', allbad)
    return allbad == 0

def cert_fibres(term, cert, within=None):
    """The certificate's frozen fibre map: retained key
    (pos, slot, T, log, ks, Q) -> erased value (l, P), where
    P/Q split rs by the boundary's popkeys (instance-directed
    erasure; set-valued certificates pop everything).
    Single-valuedness is discovery condition (b)."""
    from certify import boundary_arrivals
    arr, _, _ = boundary_arrivals(term, cert)
    fib = {}
    for pos, arrivals in arr.items():
        if pos not in cert:
            continue
        pk = cert[pos] if isinstance(cert, dict) else None
        for slot, l, T, log, rs, ks in arrivals:
            if pk is None:
                P, Q = rs, ()
            else:
                P = tuple(fr for fr in rs if (fr[1], fr[2]) in pk)
                Q = tuple(fr for fr in rs
                          if (fr[1], fr[2]) not in pk)
            key = (pos, slot, T, log, ks, Q)
            if key in fib and fib[key] != (l, P):
                fib[key] = 'MULTI'          # condition (b) violation
            else:
                fib.setdefault(key, (l, P))
    return fib

def wf7(term, cert, s, fib):
    """W7 (certificate fibre coherence): at a certified boundary,
    the erased tuple (l, P) must equal the certificate's fibre
    value at the retained key (which includes the spectator frames
    Q and incoming ks). States outside the fibre relation are
    outside the certified domain subtype."""
    from kernel import classify_arrival, is_gam
    # W7 quantifies over
    # WF states, and the register's "wf7 declines
    # out-of-language sources" is now ENFORCED BY wf() ITSELF —
    # exact-type dispatch (a Run subclass never runs),
    # then the total W0-safe precheck: a non-WF source is
    # declined before any hashing (the raw countermodels put a
    # list inside the path tuple and the fibre key; post-gate,
    # every component is exact-pure and hashable within the
    # structural-operation boundary).
    if type(s) is not Run:
        return []
    if wf(term, s) != []:
        return []
    if not (cert and isinstance(s.path, tuple) and s.path in cert
            and s.vb is None and s.d == 'U' and s.log
            and is_gam(s.log[0])):
        return []
    c = classify_arrival(s.tape)
    if c is None:
        return []
    slot, l, T = c
    pk = cert[s.path] if isinstance(cert, dict) else None
    if pk is None:
        P, Q = s.rs, ()
    else:
        P = tuple(fr for fr in s.rs if (fr[1], fr[2]) in pk)
        Q = tuple(fr for fr in s.rs if (fr[1], fr[2]) not in pk)
    key = (s.path, slot, T, s.log, s.ks, Q)
    if key not in fib:
        return ['W7-domain']
    if fib[key] == 'MULTI' or fib[key] != (l, P):
        return ['W7-fibre']
    return []

def cert_disjointness(term, cert, within=None):
    """Mechanically check range disjointness: collect every reachable certified-
    boundary source with its FULL state, build its fire targets and
    amplitudes via step(), and check the corrected case split:
      - different retained spectator (path, log, T, incoming ks,
        retained Q) => target sets disjoint;
      - same spectator, same slot => the SAME source (W7 fibre
        function + state identity);
      - same spectator, opposite slots => identical target pair
        (requires equal decode bundles — condition (e)) and
        orthogonal H-row columns, inner product COMPUTED.
    Returns (violations, same_boundary_pairs_checked).
    `within` restricts sources to the amplitude cone."""
    from kernel import classify_arrival
    from fractions import Fraction
    s0 = next(iter(init(term)))
    seen, dq, sources = {s0}, deque([s0]), []
    while dq:
        s = dq.popleft()
        if isinstance(s, Done) and s.tick >= 2:
            continue
        if (isinstance(s, Run) and s.path in cert and s.vb is None
                and (within is None or s in within)
                and s.d == 'U' and s.log and K.is_gam(s.log[0])):
            c = classify_arrival(s.tape)
            if c is not None:
                succ = step(term, s, cert)
                if succ and succ[0][2].startswith('fire'):
                    sources.append((s, c[0], c[2],
                                    tuple(x[3] for x in succ),
                                    tuple((x[0], x[1]) for x in succ)))
        for *_, s2 in step(term, s, cert):
            if s2 not in seen:
                seen.add(s2)
                dq.append(s2)
    bad, npairs = [], 0
    for a in range(len(sources)):
        for b in range(a + 1, len(sources)):
            s1, sl1, T1, t1, a1 = sources[a]
            s2, sl2, T2, t2, a2 = sources[b]
            if s1.path != s2.path:
                continue          # targets differ in path trivially
            npairs += 1
            def spec(src):
                pk = (cert[src.path] if isinstance(cert, dict)
                      else None)
                # Set-valued certificates pop everything: the
                # retained spectator frames are empty there.
                q = (() if pk is None else
                     tuple(fr for fr in src.rs
                           if (fr[1], fr[2]) not in pk))
                return (src.log, src.ks, q)
            if (spec(s1), T1) != (spec(s2), T2):
                if set(map(repr, t1)) & set(map(repr, t2)):
                    bad.append(('nondisjoint targets', s1, s2))
            elif sl1 == sl2:
                bad.append(('same spectator+slot, distinct sources',
                            s1, s2))
            else:
                if t1 != t2:
                    bad.append(('opposite-slot target mismatch '
                                '(decode bundles diverge?)', s1, s2))
                else:
                    ip = sum(Fraction(x[0] * y[0],
                                      2 ** ((x[1] + y[1]) // 2))
                             for x, y in zip(a1, a2))
                    if ip != 0:
                        bad.append(('non-orthogonal H columns',
                                    s1, s2))
    return bad, npairs

def cert_domain_sweep(term, cert, within=None):
    """Reachable ⊆ WF (W0–W9) under a certificate; returns the
    violation count (0 = the certified-domain-subtype lemma holds).
    `within` restricts the checked states to the amplitude
    cone — the subtype the physics actually inhabits."""
    fib = cert_fibres(term, cert, within=within)
    s0 = next(iter(init(term)))
    seen, dq, nbad = {s0}, deque([s0]), 0
    while dq:
        s = dq.popleft()
        if isinstance(s, Done) and s.tick >= 2:
            continue
        if isinstance(s, Run) and (within is None or s in within):
            if wf(term, s) or wf7(term, cert, s, fib):
                nbad += 1
        for *_, s2 in step(term, s, cert):
            if s2 not in seen:
                seen.add(s2)
                dq.append(s2)
    return nbad

def cert_sweep():
    """Reachable ⊆ WF∧W7 under every canonical certificate, plus
    the mechanized disjointness theorem and the extra-frame collision
    regression: the synthetic extra-frame source must be W7-excluded and
    decode records must no longer share
    targets with the reachable source."""
    from certify import boundary_arrivals
    print('\n--- W7 sweep + range disjointness (certified graphs) ---')
    allbad = 0
    for name, term in PROGRAMS.items():
        cert = CERTS.get(name)
        if not cert:
            continue
        fib = cert_fibres(term, cert)
        s0 = next(iter(init(term)))
        seen, dq, bad = {s0}, deque([s0]), []
        while dq:
            s = dq.popleft()
            if isinstance(s, Done) and s.tick >= 2:
                continue
            if isinstance(s, Run):
                v = wf(term, s) + wf7(term, cert, s, fib)
                if v:
                    bad.append((v, s))
            for sg, dk, rule, s2 in step(term, s, cert):
                if s2 not in seen:
                    seen.add(s2)
                    dq.append(s2)
        dis, npairs = cert_disjointness(term, cert)
        allbad += len(bad) + len(dis)
        print('%-9s states %5d  WF∧W7 %s  disjointness %s (%d pairs)' %
              (name, len(seen), 'OK' if not bad else 'BAD %d' % len(bad),
               'OK' if not dis else 'BAD %d' % len(dis), npairs))
    # Synthetic WF collision pair.
    term, cert = PROGRAMS['lone'], CERTS['lone']
    fib = cert_fibres(term, cert)
    s0 = next(iter(init(term)))
    seen, dq, src = {s0}, deque([s0]), None
    while dq and src is None:
        s = dq.popleft()
        if isinstance(s, Done) and s.tick >= 2:
            continue
        if (isinstance(s, Run) and s.path in cert and s.d == 'U'
                and s.log and K.is_gam(s.log[0])
                and K.classify_arrival(s.tape) is not None):
            src = s
            break
        for *_, s2 in step(term, s, cert):
            if s2 not in seen:
                seen.add(s2)
                dq.append(s2)
    slot, alp, _ = K.classify_arrival(src.tape)
    extra = FRAME(src.log[0][1], alp, slot)
    src2 = Run(src.path, src.d, src.log, src.tape, src.vb,
               rs_insert(src.rs, extra), src.ks)
    w7_1 = wf7(term, cert, src, fib)
    w7_2 = wf7(term, cert, src2, fib)
    t1 = [x[3] for x in step(term, src, cert)]
    t2 = [x[3] for x in step(term, src2, cert)]
    print('collision regression: source W7 %s, +frame W7 %s, '
          'targets %s' %
          (w7_1 or 'OK', w7_2 or 'VIOLATED?',
           'DISJOINT (decode record)' if not set(map(repr, t1))
           & set(map(repr, t2)) else 'SHARED — REGRESSION'))
    # With instance-directed certificates, the extra frame is a
    # retained-spectator
    # coordinate, so the source falls outside the certified fibre
    # DOMAIN (W7-domain) instead of violating the fibre function
    # (W7-fibre, the pop-everything mechanism). The theorem
    # the regression guards is "W7-excluded, targets disjoint";
    # accept either exclusion clause.
    ok = (not w7_1 and bool(w7_2)
          and not set(map(repr, t1)) & set(map(repr, t2)))

    # Cross-slot decode-bundle
    # divergence must be REJECTED by certification. Take HNH's real
    # certified arrivals at ffbba and substitute the slot-1 cargo's
    # nested alpha instance with a distinct valid lp — the doctored
    # fibre is per-slot-functional yet bundle-divergent.
    from certify import boundary_arrivals, transparent
    term_h = PROGRAMS['HNH']
    arr, _, _ = boundary_arrivals(term_h, CERTS['HNH'])
    pos = tuple('ffbba')
    real = arr[pos]
    def swap_alpha(e, newi):
        if K.is_alpha(e):
            return ('AL', e[1], newi, e[3], e[4])
        if is_lp(e):
            return ('L', e[1], tuple(swap_alpha(x, newi) for x in e[2]))
        return e
    newlp = ('L', ('f', 'f', 'b', 'b', 'f'), ())
    doctored = [(sl, swap_alpha(l, newlp) if sl == 1 else l, T, lg,
                 rs, ks)
                for sl, l, T, lg, rs, ks in real]
    ok_e = transparent(real) and not transparent(doctored)
    print('bundle-divergence regression: real arrivals transparent %s,'
          ' doctored REJECTED %s' % (transparent(real),
                                     not transparent(doctored)))

    # A live frame must not
    # shadow a dead record — reachable pstar replay source + K(h,i)
    # is W8-flagged and the kernel types it (key-alias).
    term_p = PROGRAMS['pstar']
    s0 = next(iter(init(term_p)))
    seen, dq, rsrc = {s0}, deque([s0]), None
    while dq and rsrc is None:
        s = dq.popleft()
        if isinstance(s, Done) and s.tick >= 2:
            continue
        succ = step(term_p, s, None)
        if (isinstance(s, Run)
                and any(r == 'replay' for _, _, r, _ in succ)):
            rsrc = s
            break
        for *_, s2 in succ:
            if s2 not in seen:
                seen.add(s2)
                dq.append(s2)
    fr = next(f for f in rsrc.rs if f[0] == 'R' and len(f) == 5)
    aliased = Run(rsrc.path, rsrc.d, rsrc.log, rsrc.tape, rsrc.vb,
                  rsrc.rs, (('K', fr[1], fr[2]),) + rsrc.ks)
    w8v = wf(term_p, aliased)
    rules = [r for _, _, r, _ in step(term_p, aliased, None)]
    ok_a = 'W8' in w8v and rules == ['key-alias']
    print('K+frame alias regression: WF flags %s, kernel rule %s'
          % (w8v or 'NOTHING — REGRESSION', rules))

    # Two WF,
    # transparent, same-slot certified-fire sources differing ONLY
    # in a retained-Q frame's bit must produce DISJOINT target
    # sets: the retained spectator embeds verbatim. Erasing Q into a bit-free
    # KD record would collapse the
    # columns (inner product 1, an isometry violation).
    from lam_iam import App as _App, Lam as _Lam, Var as _Var, \
        Gate as _Gate
    tterm = _App(_Gate('h'), _Lam(_App(_Var(1), _Var(1))))
    tpath, tlog = ('a',), (K.GAM('h'),)
    # The carrier must satisfy the lambda-IAM slice
    # equation (occ aba needs slice length 1); the valid
    # instance lp rides as slice cargo. Countermodel essence
    # (ordinary which-path cargo) unchanged.
    tcargo = ('L', ('a', 'b', 'a'), (('L', ('a', 'b', 'f'), ()),))
    tinst = ('L', ('a', 'b', 'f'), ())
    tsrc = [Run(tpath, 'U', tlog, (tcargo, K.MU('h'), K.RHO), None,
                (K.FRAME('h', tinst, b),), ()) for b in (0, 1)]
    tcert = {tpath: frozenset()}
    tcols = [{t for *_, t in step(tterm, s, tcert)} for s in tsrc]
    ok_q = (all(not wf(tterm, s) for s in tsrc)
            and not (tcols[0] & tcols[1]))
    print('retained-Q disjointness regression: sources WF %s, '
          'common targets %d (must be 0)'
          % (all(not wf(tterm, s) for s in tsrc),
             len(tcols[0] & tcols[1])))

    # Two agreeing live tickets for
    # one key are an ALIAS STATE — W9 flags the source statically,
    # so the W8-preservation theorem's WF hypothesis excludes it.
    talpha = K.ALPHA('h', tinst, 0)
    tdup = Run(tpath, 'U', tlog,
               (talpha, K.MU('h'), talpha, K.RHO), None, (), ())
    w9v = wf(tterm, tdup)
    ok_w9 = 'W9' in w9v
    print('duplicate-ticket regression: WF flags %s (needs W9)'
          % (w9v or 'NOTHING — REGRESSION'))

    # Certified
    # erasure must never record bit-free death for a key with a
    # surviving bit-carrying representation.
    # (1) alpha cargo + same-key RETAINED Q frame: the frame stays
    # the answerable representation; the KD bundle is EMPTY and the
    # targets are WF-clean.
    tcargo_a = K.ALPHA('h', tinst, 0)
    tsrcq = Run(tpath, 'U', tlog,
                (tcargo_a, K.MU('h'), K.RHO), None,
                (K.FRAME('h', tinst, 0),), ())
    succq = step(tterm, tsrcq, {tpath: frozenset()})
    # The bundle is always present for prefix-freeness; the theorem is that
    # no key with a surviving representation enters it — so
    # the target carries exactly the EMPTY bundle.
    ok_rq = (all(not wf(tterm, t) for *_, t in succq)
             and all(t.ks == (('KD', ()),) for *_, t in succq)
             and all(t.rs == tsrcq.rs for *_, t in succq))
    print('retained-Q KD regression: targets WF %s, bundle empty %s, '
          'frame retained %s'
          % (all(not wf(tterm, t) for *_, t in succq),
             all(t.ks == (('KD', ()),) for *_, t in succq),
             all(t.rs == tsrcq.rs for *_, t in succq)))
    # (2) alpha cargo + same-key agreeing BURIAL: the burial stays
    # the sole bit-carrying dead record; empty KD bundle;
    # extended-W8 clean (bitfree ∩ burial = ∅ in every target).
    # The carrier's occurrence must name a Var of tterm
    # (W0's semantic-lp check; the original fixture pointed at an
    # App). The countermodel's essence — the buried ticket's key —
    # rides in the slice cargo and is unchanged.
    tbur = ('K', ('L', ('a', 'b', 'a'), (tcargo_a,)))
    tsrcb = Run(tpath, 'U', tlog,
                (tcargo_a, K.MU('h'), K.RHO), None, (), (tbur,))
    succb = step(tterm, tsrcb, {tpath: frozenset()})
    def _overlap(ks):
        bur = set()
        for e in ks:
            if isinstance(e, tuple) and len(e) == 2 and e[0] == 'K':
                bur |= K.alpha_keys_live(e[1])
        return K.ks_bitfree_keys(ks) & bur
    # With the empty bundle explicit, the burial stays the sole
    # BIT-CARRYING record (the theorem), after the bundle.
    ok_bb = (all(not wf(tterm, t) for *_, t in succb)
             and all(t.ks == (('KD', ()), tbur)
                     for *_, t in succb)
             and all(not _overlap(t.ks) for *_, t in succb))
    print('bitfree-burial regression: targets WF %s, burial sole '
          'bit-carrying record %s, overlap empty %s'
          % (all(not wf(tterm, t) for *_, t in succb),
             all(t.ks == (('KD', ()), tbur) for *_, t in succb),
             all(not _overlap(t.ks) for *_, t in succb)))

    # Popping a frame
    # whose replay-re-emitted ticket survives in the tape tail
    # must NOT record the key dead — the riding ticket stays the
    # answerable representation; empty KD bundle; targets
    # WF-clean.
    # Slice equation, as with tcargo above.
    tcargo2 = ('L', ('a', 'b', 'a'), (('L', ('a', 'b', 'f'), ()),))
    tsrct = Run(tpath, 'U', tlog,
                (tcargo2, K.MU('h'), K.ALPHA('h', tinst, 0),
                 K.RHO), None,
                (K.FRAME('h', tinst, 0),), ())
    succt = step(tterm, tsrct,
                 {tpath: frozenset({('h', tinst)})})
    # With the empty bundle explicit, the popped key stays out of
    # it (the theorem — its re-emitted ticket survives in T).
    ok_pt = (all(not wf(tterm, t) for *_, t in succt)
             and all(t.ks == (('KD', ()),) for *_, t in succt)
             and all(any(K.is_alpha(e) for e in t.tape)
                     for *_, t in succt))
    print('popped-frame/riding-ticket regression: targets WF %s, '
          'popped key out of the bundle %s, ticket survives %s'
          % (all(not wf(tterm, t) for *_, t in succt),
             all(t.ks == (('KD', ()),) for *_, t in succt),
             all(any(K.is_alpha(e) for e in t.tape)
                 for *_, t in succt)))

    # A certificate
    # entry at a position with no boundary arrival is never
    # consulted, so nothing about it is ever checked —
    # machine_coverage must refuse it (non-vacuity) while the
    # canonical map stays clean.
    from certify import validate
    vac = validate(PROGRAMS['HH'],
                   dict(CERTS['HH']) | {('a',): frozenset()})
    can = validate(PROGRAMS['HH'], CERTS['HH'])
    ok_vc = (not vac['machine_coverage']
             and vac['vacuous_positions'] == 1
             and can['machine_coverage']
             and can['vacuous_positions'] == 0)
    print('vacuous-position regression: unreachable entry refused '
          '%s, canonical clean %s'
          % (not vac['machine_coverage'], can['machine_coverage']))

    # A popkey that
    # occurs in NO arrival frame at its certified position can
    # never pop anything — it constrains nothing, and key-level
    # non-vacuity must refuse it. HH's canonical boundary is
    # cargo-only (no arrival frames at all), so ANY popkey there
    # is a ghost; the key below is a genuinely reachable HH
    # instance key.
    ghost = ('h', ('L', ('f', 'f', 'b', 'b', 'f'), ()))
    pos_hh = next(iter(CERTS['HH']))
    vk = validate(PROGRAMS['HH'],
                  {pos_hh: CERTS['HH'][pos_hh] | {ghost}})
    ok_vk = (not vk['machine_coverage']
             and vk['vacuous_keys'] == 1
             and can['vacuous_keys'] == 0)
    print('ghost-key regression: inert popkey refused %s '
          '(vacuous_keys=%d), canonical vacuous_keys 0 %s'
          % (not vk['machine_coverage'], vk['vacuous_keys'],
             can['vacuous_keys'] == 0))

    # A live
    # same-instance ticket suspended in slice cargo must violate
    # W4 in a VB-active state — the top-level-only check let it
    # through, and the legal vvar step produced a two-live-ticket
    # W9 target (the subtype was not preserved). The stripped
    # control (same state, no slice ticket) stays WF-clean: the
    # deep check must not over-tighten.
    hh = PROGRAMS['HH']
    ilp = ('L', ('f', 'f', 'b', 'b', 'a', 'f'), (GAM('h'),))
    carrier = ('L', ('f', 'f', 'b', 'b', 'a', 'f'),
               (K.ALPHA('h', ilp, 0),))
    # The stripped control must satisfy the slice
    # equation (occ ffbbaf needs length 1) with gamma-free,
    # ticket-free cargo: an inner empty-slice-valid lp (ZERO's
    # variable at ffbbaabb). The control's point — same state,
    # no same-key ticket — is unchanged.
    cleanlp = ('L', ('f', 'f', 'b', 'b', 'a', 'f'),
               (('L', ('f', 'f', 'b', 'b', 'a', 'a', 'b', 'b'),
                 ()),))
    def w4src(lp):
        return Run(('f', 'a'), 'D', (ilp,),
                   (MU('h'), BULLET, BULLET, lp, RHO),
                   ('h', 0, 2), (), ())
    ok_w4d = ('W4-ticket' in wf(hh, w4src(carrier))
              and wf(hh, w4src(cleanlp)) == [])
    print('deep-W4 regression: slice-suspended ticket flagged %s, '
          'stripped control clean %s'
          % ('W4-ticket' in wf(hh, w4src(carrier)),
             wf(hh, w4src(cleanlp)) == []))

    # The last two representation classes join W4's exclusion. Same-key
    # BIT-FREE storage in a VB-active state let vvar emit a live
    # ticket beside its own dead record (W8 target); a same-key
    # burial with a CONFLICTING bit let it emit a second bit for
    # one key (W3 target). The agreeing burial is the
    # no-over-tightening control: admissible, and its vvar target
    # measured WF.
    def w4s_src(ks):
        return Run(('f', 'a'), 'D', (ilp,),
                   (MU('h'), BULLET, BULLET, cleanlp, RHO),
                   ('h', 0, 2), (), ks)
    def w4bur(b):
        return ('K', ('L', ('f', 'f', 'b', 'b', 'a', 'f'),
                      (K.ALPHA('h', ilp, b),)))
    w4cases = (((('K', 'h', ilp),), 'W4-storage'),
               ((('KD', (('h', ilp),)),), 'W4-storage'),
               ((w4bur(1),), 'W4-burial'))
    w4agree = w4s_src((w4bur(0),))
    w4atgt = step(hh, w4agree, None)[0][3]
    ok_w4s = (all(flag in wf(hh, w4s_src(ks)) for ks, flag in w4cases)
              and wf(hh, w4s_src(())) == []
              and wf(hh, w4agree) == [] and wf(hh, w4atgt) == [])
    print('W4 storage/burial regression: bitfree-K/KD + conflict '
          'flagged %s, clean + agreeing-burial WF %s (agree target '
          'WF %s)'
          % (all(flag in wf(hh, w4s_src(ks)) for ks, flag in w4cases),
             wf(hh, w4s_src(())) == [] and wf(hh, w4agree) == [],
             wf(hh, w4atgt) == []))

    # The anshead species check must type gamma/answer disagreement instead
    # of asserting and crashing. It also consults the leaf, so matched foreign
    # markers cannot enter VB('t',...). The rule requires leaf = gamma = answer;
    # otherwise it emits
    # species-ans. The retrace arm transports the mismatch and the
    # leaf types it one step later — no crash anywhere.
    spterm = _App(_Lam(_Var(1)), _Gate('h'))
    spinst = ('L', ('f', 'b'), ())
    def sprules(gg, ga):
        s = Run(('a',), 'D', (spinst,), (GAM(gg), K.ANS(ga, 0), RHO))
        return [r for _, _, r, _ in step(spterm, s, None)]
    rterm = _App(_Gate('h'), _Lam(_Var(1)))
    rsrc = Run(('a',), 'U', (GAM('h'),), (K.ANS('t', 0), RHO))
    rfirst = step(rterm, rsrc, None)[0]
    ok_sp = (sprules('h', 't') == ['species-ans']
             and sprules('t', 't') == ['species-ans']
             and sprules('h', 'h') == ['anshead']
             and rfirst[2] == 'bt1g'
             and [r for _, _, r, _ in step(rterm, rfirst[3], None)]
             == ['species-ans'])
    print('answer-species regression: mismatched/foreign markers '
          'typed %s, matched anshead intact %s, retrace chain typed '
          '%s'
          % (sprules('h', 't') == ['species-ans']
             and sprules('t', 't') == ['species-ans'],
             sprules('h', 'h') == ['anshead'],
             [r for _, _, r, _ in step(rterm, rfirst[3], None)]
             == ['species-ans']))

    # The answer-bit domain must be enforced: ANS('h',2) is not WF
    # and flowed through anshead to an out-of-alphabet halt2;
    # malformed tuples satisfied is_ans and crashed untyped
    # (ValueError); a gamma/answer pair meeting a binder stalled
    # silently. W0 excludes every grammar violation from the
    # subtype; the hardened anshead types them; the three stall
    # surfaces are typed guards. No-over-typing controls: the
    # matched anshead, the deeper-pair chain (typed stuck-vb one
    # step later), and the empty-tape classical final all
    # unchanged.
    def grrules(t_, s_):
        return [r for _, _, r, _ in step(t_, s_, None)]
    def gr_src(ans):
        return Run(('a',), 'D', (spinst,), (GAM('h'), ans, RHO))
    gr_bad = [K.ANS('h', 2), K.ANS('h', -1), K.ANS('h', 7),
              ('A', 'h'), ('A', 'h', 0, 'junk')]
    ok_gr = (all('W0' in wf(spterm, gr_src(a)) for a in gr_bad)
             and all(grrules(spterm, gr_src(a)) == ['species-ans']
                     for a in gr_bad)
             and 'W0' in wf(spterm, Run(('a',), 'D', (spinst,),
                                        (RHO,), ('h', 2, 0)))
             and grrules(_Lam(_Var(1)),
                         Run((), 'D', (),
                             (GAM('h'), K.ANS('h', 0), RHO)))
             == ['species-binder']
             and grrules(_Gate('h'),
                         Run((), 'D', (), (K.ANS('h', 0), RHO)))
             == ['species-leaf']
             and grrules(spterm,
                         Run(('f',), 'U', (),
                             (K.ANS('h', 0), RHO)))
             == ['species-transport']
             and step(_Lam(_Var(1)), Run((), 'D', (), ()), None)
             == []
             and grrules(spterm,
                         Run(('a',), 'D', (spinst,),
                             (GAM('h'), K.ANS('h', 0), GAM('h'),
                              K.ANS('h', 0), RHO)))
             == ['anshead'])
    print('grammar/stall regression: W0 flags + species-ans on all '
          'five bad answers %s, VB domain flagged %s, three stall '
          'arms typed %s, classical final + deeper pair intact %s'
          % (all('W0' in wf(spterm, gr_src(a))
                 and grrules(spterm, gr_src(a)) == ['species-ans']
                 for a in gr_bad),
             'W0' in wf(spterm, Run(('a',), 'D', (spinst,),
                                    (RHO,), ('h', 2, 0))),
             grrules(_Lam(_Var(1)),
                     Run((), 'D', (),
                         (GAM('h'), K.ANS('h', 0), RHO)))
             == ['species-binder']
             and grrules(_Gate('h'),
                         Run((), 'D', (), (K.ANS('h', 0), RHO)))
             == ['species-leaf']
             and grrules(spterm,
                         Run(('f',), 'U', (),
                             (K.ANS('h', 0), RHO)))
             == ['species-transport'],
             step(_Lam(_Var(1)), Run((), 'D', (), ()), None) == []
             and grrules(spterm,
                         Run(('a',), 'D', (spinst,),
                             (GAM('h'), K.ANS('h', 0), GAM('h'),
                              K.ANS('h', 0), RHO)))
             == ['anshead']))

    # W0's bit check uses exact types rather than Python equality, which
    # would admit 1.0/True and
    # rootval string-formats the bit, minting out-of-alphabet
    # terminal KINDS (halt1.0, haltTrue) from WF states; instance
    # fields and retained-whole cargo were never checked
    # recursively; the state coordinates (d, path) were never
    # checked at all, leaving silent stalls and AttributeError
    # crashes inside executable WF. Controls: exact-int bits and
    # the foreign-lp classical final stay accepted.
    def lang_src(ans):
        return Run(('a',), 'D', (spinst,), (GAM('h'), ans, RHO))
    alias_ok = all(
        'W0' in wf(spterm, lang_src(K.ANS('h', b)))
        and grrules(spterm, lang_src(K.ANS('h', b)))
        == ['species-ans']
        for b in (1.0, True, 0.0, False))
    base = Run(('a',), 'D', (spinst,),
               (GAM('h'), K.ANS('h', 0), RHO))
    prod_ok = all('W0' in wf(spterm, Run(
        base.path, base.d, base.log, base.tape, None, rs, ks))
        for rs, ks in (
            ((), (('K', BULLET),)),
            ((), (('K', K.ANS('h', 0)),)),
            ((('R', 'h', ('NOT_LP',), 0),), ()),
            ((), (('K', 'h', ('NOT_LP',)),)),
            ((), (('KD', (('h', ('NOT_LP',)),)),)),
        )) and 'W0' in wf(spterm, Run(
            ('a',), 'D', (spinst,),
            (('AL', 'h', ('L', 'not-a-path', 'not-a-slice'), 0),
             RHO)))
    coord_ok = ('W0' in wf(_Gate('h'), Run((), 'X', (), (RHO,)))
                and 'W0' in wf(_Lam(_Var(1)),
                               Run(('x',), 'U', (), (RHO,)))
                and 'W0' in wf(_Gate('h'),
                               Run(('f',), 'D', (), (RHO,)))
                and 'W0' in wf(spterm, Run(
                    (), 'U', (),
                    (('L', ('f',), ()), BULLET, RHO))))
    fterm = _Lam(_Lam(_Var(1)))
    fsrc = Run((), 'D', (), (('L', ('b', 'b'), ()), RHO))
    ctrl_ok = (wf(spterm, base) == []
               and grrules(spterm, base) == ['anshead']
               and wf(fterm, fsrc) == []
               and step(fterm, fsrc, None) == [])
    ok_lang = alias_ok and prod_ok and coord_ok and ctrl_ok
    print('state-language regression: numeric/bool aliases W0 + '
          'species-ans %s, malformed productions W0 %s, '
          'coordinates W0 %s, exact-int + lp controls intact %s'
          % (alias_ok, prod_ok, coord_ok, ctrl_ok))

    # The log is a separate sort (lp-like only: a
    # BULLET in the log passed every invariant and bt1 transported
    # it into a b1 collision, norm 2); the lambda-IAM
    # logged-position equation len(slice) = level(occ) -
    # level(binder) is part of the lp production (a bad slice
    # stepped to a W1-invalid target); the term must be closed
    # (an open term's current position crashed binder_path from
    # inside WF). Control: the corrected equation-valid fixtures
    # across this file pass the full sweep unchanged.
    def logsrc(x):
        return Run(('a',), 'U', (x,), (RHO,))
    ok_sl3 = (all('W0' in wf(spterm, logsrc(x))
                  for x in (BULLET, K.ANS('h', 0), MU('h'), RHO))
              and 'W0' in wf(spterm, Run(
                  ('a',), 'D', (spinst,),
                  (('L', ('f', 'b'), (GAM('h'),)), RHO)))
              and 'W0' in wf(L.Var(1), Run((), 'D', (), (RHO,)))
              and 'W0' not in wf(spterm, logsrc(spinst)))
    print('log-sort/slice-equation regression: bullet/answer/mu/'
          'rho log entries W0 %s, slice-length violation W0 %s, '
          'open-term state W0 %s, lp log entry intact %s'
          % (all('W0' in wf(spterm, logsrc(x))
                 for x in (BULLET, K.ANS('h', 0), MU('h'), RHO)),
             'W0' in wf(spterm, Run(
                 ('a',), 'D', (spinst,),
                 (('L', ('f', 'b'), (GAM('h'),)), RHO))),
             'W0' in wf(L.Var(1), Run((), 'D', (), (RHO,))),
             'W0' not in wf(spterm, logsrc(spinst))))

    # Omitting empty KD bundles makes storage histories non-prefix-free: a
    # fresh certified decode (cargo ticket, empty incoming KS) and
    # a carried-in record (ordinary cargo, KD({k}) incoming)
    # produced IDENTICAL targets, inner product 1, norm 2. The
    # fire now emits its bundle unconditionally: target storage is
    # always (new-bundle . incoming), and incoming KS is
    # recoverable by stripping the head. The t boundary is a typed
    # exact diagonal gate transition, not a scope fence.
    kpf_cert = {tpath: frozenset()}
    kpf_a = Run(tpath, 'U', tlog,
                (K.ALPHA('h', tinst, 0), MU('h'), RHO), None, (), ())
    kpf_b = Run(tpath, 'U', tlog, (tcargo2, MU('h'), RHO), None, (),
                (('KD', (('h', tinst),)),))
    ta = [x[3] for x in step(tterm, kpf_a, kpf_cert)]
    tb = [x[3] for x in step(tterm, kpf_b, kpf_cert)]
    tsrc_t = Run(tpath, 'U', (GAM('t'),),
                 (tcargo2, K.MU('t'), RHO), None, (), ())
    trules = [r for _, _, r, _ in step(tterm, tsrc_t, None)]
    ok_kpf = (not wf(tterm, kpf_a) and not wf(tterm, kpf_b)
              and not (set(map(repr, ta)) & set(map(repr, tb)))
              and all(t.ks[0] == ('KD', ()) for t in tb)
              and trules == ['fire-t0']
              and [r for _, _, r, _ in step(tterm, kpf_a, kpf_cert)]
              == ['fire-h', 'fire-h'])
    print('KS prefix-freeness regression: sources WF %s, targets '
          'disjoint %s, empty bundle explicit %s, t boundary typed '
          '%s (h fire control intact %s)'
          % (not wf(tterm, kpf_a) and not wf(tterm, kpf_b),
             not (set(map(repr, ta)) & set(map(repr, tb))),
             all(t.ks[0] == ('KD', ()) for t in tb),
             trules == ['fire-t0'],
             [r for _, _, r, _ in step(tterm, kpf_a, kpf_cert)]
             == ['fire-h', 'fire-h']))

    # The suppressed-decode arm must append one storage head. Appending zero
    # lets a suppressed decode (incoming KS already
    # [K(l)]) and a retain-whole fire (incoming [], prepending
    # K(l)) produced IDENTICAL targets — norm 2 — through both
    # the same-key-frame and the agreeing-burial suppression
    # variants. Every fire arm now appends EXACTLY ONE arm-typed
    # head; the suppressed arm's ('KA', g, i) CARRIES ITS KEY
    # because two different tickets suppressing over a shared two-frame RS
    # would otherwise collide. Control: the
    # decode-RECORDED arm is unchanged.
    fr1 = K.FRAME('h', tinst, 0)
    fr2 = K.FRAME('h', tcargo, 0)
    bur24 = ('K', ('L', ('a', 'b', 'a'), (K.ALPHA('h', tinst, 0),)))
    def fire24(cargo, rs, ks):
        src = Run(tpath, 'U', tlog, (cargo, MU('h'), RHO),
                  None, rs, ks)
        return src, [x[3] for x in step(tterm, src, None)]
    fa, ta24 = fire24(K.ALPHA('h', tinst, 0), (fr1,), (('K', tinst),))
    fb, tb24 = fire24(tinst, (fr1,), ())
    ba, tba = fire24(K.ALPHA('h', tinst, 0), (), (('K', tinst), bur24))
    bb, tbb = fire24(tinst, (), (bur24,))
    rs2k = tuple(sorted((fr1, fr2), key=repr))
    ka, tka = fire24(K.ALPHA('h', tinst, 0), rs2k, ())
    kb, tkb = fire24(K.ALPHA('h', tcargo, 0), rs2k, ())
    ca, tca = fire24(K.ALPHA('h', tinst, 0), (), ())
    pf_wf = all(wf(tterm, s) == [] for s in (fa, fb, ba, bb, ka, kb, ca))
    pf_frame = (not (set(map(repr, ta24)) & set(map(repr, tb24)))
                and all(t.ks[0] == ('KA', 'h', tinst) for t in ta24))
    pf_burial = (not (set(map(repr, tba)) & set(map(repr, tbb)))
                 and all(t.ks[0] == ('KA', 'h', tinst) for t in tba))
    pf_twokey = (not (set(map(repr, tka)) & set(map(repr, tkb)))
                 and all(t.ks == (('KA', 'h', tinst),) for t in tka)
                 and all(t.ks == (('KA', 'h', tcargo),) for t in tkb))
    pf_ctrl = all(t.ks == (('K', 'h', tinst),) for t in tca)
    ok_pf24 = pf_wf and pf_frame and pf_burial and pf_twokey and pf_ctrl
    print('fire prefix-freeness regression: sources WF %s, '
          'frame-skip disjoint + KA head %s, burial-skip disjoint '
          '+ KA head %s, two-key pair disjoint %s, recorded-arm '
          'control intact %s'
          % (pf_wf, pf_frame, pf_burial, pf_twokey, pf_ctrl))

    # closed() must reject Var(0) under the 1-indexed convention
    # (IndexError in binder_path one step inside WF), and nothing
    # sorted the CONTAINERS (a list-valued tape passed WF, then
    # the fire's tuple concatenation TypeError'd). W0 now checks
    # exact-type purity without hashing: a nested tuple subclass
    # with a failing __hash__ is flagged without invoking it.
    aterm = _App(_Gate('h'), _Lam(_Var(1)))
    alp = ('L', ('a', 'b'), ())
    class _BadHashTuple(tuple):
        def __hash__(self):
            raise RuntimeError('forbidden hash')
    w0t_var0 = 'W0' in wf(L.Var(0), Run((), 'D', (), (RHO,)))
    w0t_list = 'W0' in wf(aterm, Run(('a',), 'U', (GAM('h'),),
                                     [alp, MU('h'), RHO]))
    try:
        w0t_evil = wf(aterm, Run(('a',), 'U', (GAM('h'),),
                                 (_BadHashTuple(alp), MU('h'), RHO))) == ['W0']
    except Exception:
        w0t_evil = False
    w0t_ctrl = wf(aterm, Run(('a',), 'U', (GAM('h'),),
                             (alp, MU('h'), RHO))) == []
    ok_w0t = w0t_var0 and w0t_list and w0t_evil and w0t_ctrl
    print('W0 totality regression: Var(0) W0 %s, list tape W0 %s, '
          'bad-hash subclass W0 without crash %s, tuple '
          'control WF %s'
          % (w0t_var0, w0t_list, w0t_evil, w0t_ctrl))

    # Exact-pure malformed tuples — ('AL',), ('L',), an empty ()
    # frame — passed purity, were W0-flagged, and then CRASHED
    # the W1-W9 deep scans (IndexError inside the checker). The
    # W0 gate early-returns ['W0'] for out-of-language states;
    # W1-W9 are adjudicated only over the language's carrier.
    # Control: an in-language multi-violation state still lists
    # its W1-W9 flags — the gate must not over-collapse.
    def tot_probe(src):
        try:
            return wf(tterm, src) == ['W0']
        except Exception:
            return False
    tot_bad = (tot_probe(Run(tpath, 'U', tlog,
                             (('AL',), MU('h'), RHO)))
               and tot_probe(Run(tpath, 'U', tlog,
                                 (('L',), MU('h'), RHO)))
               and tot_probe(Run(tpath, 'U', tlog,
                                 (tinst, MU('h'), RHO),
                                 None, ((),), ())))
    tot_ctrl = (wf(tterm, Run(tpath, 'U', tlog,
                              (MU('h'), MU('h'))))
                == ['W5', 'W6'])
    ok_tot3 = tot_bad and tot_ctrl
    print('checker totality regression: bare-AL/bare-L/empty-frame '
          "states exactly ['W0'] without crash %s, in-language "
          'multi-flag control intact %s' % (tot_bad, tot_ctrl))

    # Cross-gate composition: an alpha tag names the producer gate,
    # while the gamma/mu pair names the consumer.  Both producer bits
    # must enter the H fibre; the producer key survives in the decoded
    # spectator and the H landing tag keeps the consumer range distinct.
    ag0 = Run(tpath, 'U', tlog,
              (K.ALPHA('t', tinst, 0), MU('h'), RHO))
    ag1 = Run(tpath, 'U', tlog,
              (K.ALPHA('t', tinst, 1), MU('h'), RHO))
    agc = Run(tpath, 'U', tlog,
              (K.ALPHA('h', tinst, 0), MU('h'), RHO))
    ag_cross = all(wf(tterm, s) == []
                   and [r for _, _, r, _ in step(tterm, s, None)]
                   == ['fire-h', 'fire-h'] for s in (ag0, ag1))
    ag_ctrl = ([r for _, _, r, _ in step(tterm, agc, None)]
               == ['fire-h', 'fire-h'])
    ok_ag = ag_cross and ag_ctrl
    print('cross-gate regression: foreign-producer tickets enter H '
          'at both polarities %s, same-gate decode control fires %s'
          % (ag_cross, ag_ctrl))

    # An exact-pure empty tuple in the log
    # crashed wf() BEFORE the W0 gate (w0log -> is_gam -> bare
    # e[0]); a 1,500-deep exact tuple blew recursive pure(); a
    # 1,500-lambda term blew recursive closed(). Every traversal
    # before and during W0 is now iterative and hash-free; the
    # deep TERM is legitimate and must pass in full (the
    # no-over-rejection control).
    def tot4(src, want):
        try:
            return wf(*src) == want
        except Exception:
            return False
    deep_t = ()
    for _ in range(1500):
        deep_t = (deep_t,)
    lam_t = _Var(1)
    for _ in range(1500):
        lam_t = _Lam(lam_t)
    tot4_empty = (tot4((tterm, Run(tpath, 'U', ((),), (RHO,))), ['W0'])
                  and tot4((tterm, Run(tpath, 'U', (),
                                       ((), RHO))), ['W0'])
                  and tot4((tterm, Run(tpath, 'U', (), (RHO,),
                                       None, ((),), ())), ['W0'])
                  and tot4((tterm, Run(tpath, 'U', (), (RHO,),
                                       None, (), ((),))), ['W0']))
    tot4_deep = (tot4((tterm, Run(tpath, 'U', (),
                                  (deep_t, RHO))), ['W0'])
                 and tot4((lam_t, Run((), 'D', (), (RHO,))), []))
    ok_tot4 = tot4_empty and tot4_deep
    print('totality-IV regression: empty tuple in each register '
          "exactly ['W0'] without crash %s, 1500-deep tuple W0 + "
          '1500-lambda term WF without crash %s'
          % (tot4_empty, tot4_deep))

    # Garbage terms must be rejected, cycles must terminate, and malformed
    # subclasses must not execute custom accessors. In particular, closed()
    # must have a
    # rejecting branch, the term walk must detect cycles, shared DAGs must be
    # visited by identity, and wf7 must decline malformed frames. closed() is a full term
    # validator (reject unknown kinds; on-path cycle detection;
    # (id,depth) memo), pure() is id-visited, dispatch is
    # exact-type, wf7 declines out-of-language rs. Controls: the
    # 1,500-lambda term and a genuine Run still adjudicate.
    def tot5(fn, want):
        try:
            return fn() == want
        except Exception:
            return False
    cyc = _Lam(_Var(1))
    object.__setattr__(cyc, 'body', cyc)
    class _MalformedRun(Run):
        def __getattribute__(self, name):
            if name == 'path':
                raise RuntimeError('forbidden path access')
            return super().__getattribute__(name)
    dag = ('L', ('a', 'b'), ())
    for _ in range(24):
        dag = (dag, dag)
    root = Run((), 'D', (), (RHO,))
    ok_tot5 = (tot5(lambda: wf('junk', root), ['W0'])
               and tot5(lambda: wf(object(), root), ['W0'])
               and tot5(lambda: wf(cyc, root), ['W0'])
               and tot5(lambda: wf(tterm, _MalformedRun(
                   tpath, 'U', tlog, (RHO,))), [])
               and tot5(lambda: wf(tterm, Run(tpath, 'U', tlog,
                                              (dag, RHO))), ['W0'])
               and tot5(lambda: wf7(tterm, {tpath: frozenset()},
                                    Run(tpath, 'U', tlog,
                                        (RHO,), None, ((),), ()),
                                    {}), [])
               and tot5(lambda: wf(lam_t,
                                   Run((), 'D', (), (RHO,))), [])
               and tot5(lambda: wf(tterm, Run(tpath, 'U', tlog,
                                              (tinst, MU('h'),
                                               RHO))), []))
    print('totality-V regression: junk/object/cyclic terms W0, '
          'malformed subclass declined, 2^24 DAG prompt, wf7 '
          'malformed-frame declined, deep-term + genuine-Run '
          'controls intact: %s' % ok_tot5)

    # Term subclasses, invalid Gate values, unhashable state coordinates,
    # and shared App/Lam chains exercise exact-type dispatch, total rejection,
    # and representation-linear validation. wf7 is gated by wf itself.
    class _MalformedLam(_Lam):
        def __getattribute__(self, name):
            if name == 'body':
                raise RuntimeError('forbidden body access')
            return super().__getattribute__(name)
    class _MalformedRun2(Run):
        def __getattribute__(self, name):
            if name == 'path':
                raise RuntimeError('forbidden path access')
            return super().__getattribute__(name)
    def tot6(fn, want):
        try:
            return fn() == want
        except Exception:
            return False
    chain = _Gate('h')
    for _ in range(800):
        chain = _App(chain, _Lam(chain))
    root6 = Run((), 'D', (), (RHO,))
    t6_term = (tot6(lambda: wf(_MalformedLam(_Var(1)), root6), ['W0'])
               and tot6(lambda: wf(_Gate('x'), root6), ['W0'])
               and tot6(lambda: wf(_Gate(object()), root6), ['W0'])
               and tot6(lambda: wf(_Gate([]), root6), ['W0'])
               and tot6(lambda: wf(chain, root6), []))
    t6_wf7 = (tot6(lambda: wf7(tterm, {tpath: frozenset()},
                               _MalformedRun2(tpath, 'U', tlog, (RHO,)),
                               {}), [])
              and tot6(lambda: wf7(tterm, {tpath: frozenset()},
                                   Run(([],), 'U', (), (RHO,)),
                                   {}), [])
              and tot6(lambda: wf7(tterm, {tpath: frozenset()},
                                   Run(tpath, 'U', tlog,
                                       (tinst, [1], RHO)), {}), []))
    # control: a WF raw source must still REACH the fibre logic
    # through the new gate (the synthetic cert's fibre map is
    # empty, so W7-domain is the correct preserved verdict —
    # the gate must not over-decline WF sources)
    fib6 = cert_fibres(tterm, {tpath: frozenset()})
    t6_ctrl = (wf(tterm, kpf_a) == []
               and wf7(tterm, {tpath: frozenset()}, kpf_a, fib6)
               == ['W7-domain'])
    ok_tot6 = t6_term and t6_wf7 and t6_ctrl
    print('totality-VI regression: malformed term subclass + '
          'invalid gates W0 %s, wf7 malformed/unhashable declined '
          '%s, WF-source-reaches-fibre + chain controls intact %s'
          % (t6_term, t6_wf7, t6_ctrl))

    # Register roots must be exact tuples, d must be an exact string, and the
    # binder walk must be index-based. The timing
    # bound is loose (8x size under 24x time — quadratic would
    # be ~64x) to stay robust under machine load.
    class _BadEqDirection:
        def __eq__(self, other):
            raise RuntimeError('forbidden direction comparison')
    def tot7(fn, want):
        try:
            return fn() == want
        except Exception:
            return False
    base7 = dict(path=(), d='D', log=(), tape=(RHO,),
                 vb=None, rs=(), ks=())
    def r7(**kw):
        a = dict(base7)
        a.update(kw)
        return Run(**a)
    t7_roots = all(tot7(lambda f=f: wf(_Gate('h'), r7(**{f: 0})),
                        ['W0'])
                   for f in ('path', 'log', 'tape', 'rs', 'ks'))
    t7_d = tot7(lambda: wf(_Gate('h'), r7(d=_BadEqDirection())), ['W0'])
    t7_wf7 = tot7(lambda: wf7(_Gate('h'), {(): frozenset()},
                              r7(path=0), {}), [])
    import time as _time
    def _walk_time(n):
        term7 = _Var(n)
        for _ in range(n):
            term7 = _Lam(term7)
        st7 = Run((), 'D', (), (('L', ('b',) * n, ()), RHO))
        t0 = _time.perf_counter()
        r = wf(term7, st7)
        return r, _time.perf_counter() - t0
    rA, tA = _walk_time(1000)
    rB, tB = _walk_time(8000)
    t7_lin = rA == [] and rB == [] and tB < 24 * max(tA, 1e-4)
    ok_tot7 = t7_roots and t7_d and t7_wf7 and t7_lin
    print('totality-VII regression: scalar roots W0 %s, malformed '
          'd W0 without executing %s, wf7 declines %s, deep-lp '
          'walk linear-band %s'
          % (t7_roots, t7_d, t7_wf7, t7_lin))

    # n frames sharing one valid deep lp must stay representation-linear;
    # four individually-linear parts composed quadratically
    # because w0lp_shape rescanned the occurrence before the
    # memo. The full-lp memo restores composition linearity;
    # the distinct-lps control proves no cross-object aliasing.
    def comp28(n, shared):
        term28 = _Var(n)
        for _ in range(n):
            term28 = _Lam(term28)
        if shared:
            lp28 = ('L', ('b',) * n, ())
            rs28 = tuple(K.FRAME('h', lp28, 0) for _ in range(n))
        else:
            rs28 = tuple(K.FRAME('h', ('L', ('b',) * n, ()), i % 2)
                         for i in range(n))
        st = Run((), 'X', (), (RHO,), None, rs28, ())
        t0 = _time.perf_counter()
        r = wf(term28, st)
        return r, _time.perf_counter() - t0
    rS, tS = comp28(250, True)
    rL, tL = comp28(2000, True)
    rD, _tD = comp28(64, False)
    # The timing family's 'X' isolates pre-gate cost from the W2 duplicate
    # scan. A sensitivity pair proves that the occurrence walk ran: an
    # in-language direction with one unbound, tuple-well-shaped lp must flip
    # from W0-free to exactly ['W0'].
    n28 = 12
    t28s = _Var(n28)
    for _ in range(n28):
        t28s = _Lam(t28s)
    lp28s = ('L', ('b',) * n28, ())
    fr28g = tuple(K.FRAME('h', lp28s, 0) for _ in range(n28))
    fr28c = fr28g[:-1] + (K.FRAME('h', ('L', ('b',) * (n28 + 1),
                                         ()), 0),)
    sg28 = wf(t28s, Run((), 'D', (), (RHO,), None, fr28g, ()))
    sc28 = wf(t28s, Run((), 'D', (), (RHO,), None, fr28c, ()))
    sens28 = 'W0' not in sg28 and sc28 == ['W0']
    ok_comp = (rS == ['W0'] and rL == ['W0'] and rD == ['W0']
               and sens28
               and tL < 24 * max(tS, 1e-4))
    print('composition-linearity regression: shared-lp family W0 '
          'at both sizes within the linear band %s, distinct-lps '
          'control %s, traversal-sensitivity pair %s'
          % (rS == ['W0'] and rL == ['W0']
             and tL < 24 * max(tS, 1e-4),
             rD == ['W0'], sens28))

    # Value-sharing without object-sharing: n distinct lp shells around one
    # shared occurrence tuple defeated the per-lp id-memos
    # (4x per doubling). The occurrence memo puts the work
    # where the sharing is. Plus the stale-memo interleaving
    # (verdict stays ['W0'] via aggregate monotonicity) and the
    # fresh-call isolation control (memos are per-call).
    def occ29(n, storage):
        term29 = _Var(n)
        for _ in range(n):
            term29 = _Lam(term29)
        # One shared occurrence object across all shells. A fresh ('b',)*n
        # per shell would itself be a genuinely quadratic representation.
        occ_sh = ('b',) * n
        shells = tuple(('L', occ_sh, ()) for _ in range(n))
        if storage:
            st = Run((), 'X', (), (RHO,), None, (),
                     tuple(('K', 'h', lp) for lp in shells))
        else:
            st = Run((), 'X', (), (RHO,), None,
                     tuple(K.FRAME('h', lp, 0) for lp in shells),
                     ())
        t0 = _time.perf_counter()
        r = wf(term29, st)
        return r, _time.perf_counter() - t0
    r29s, t29s = occ29(250, False)
    r29l, t29l = occ29(2000, False)
    r29k, _t29k = occ29(250, True)
    occ_lin = (r29s == ['W0'] and r29l == ['W0']
               and r29k == ['W0'] and t29l < 24 * max(t29s, 1e-4))
    sterm = _Lam(_App(_Gate('h'), _Var(1)))
    slp = ('L', ('b', 'a'), (('BAD',),))
    stale = wf(sterm, Run(('b',), 'U', (slp,),
                          (slp, MU('h'), RHO), None,
                          (K.FRAME('h', slp, 0),), ()))
    fresh = wf(sterm, Run(('b',), 'U', (slp,), (RHO,), None,
                          (K.FRAME('h', slp, 0),), ()))
    memo_ok = stale == ['W0'] and fresh == ['W0']
    # Sensitivity pairs for both storage variants gate traversal through the
    # public verdict.
    n29 = 12
    t29s = _Var(n29)
    for _ in range(n29):
        t29s = _Lam(t29s)
    sh29s = tuple(('L', ('b',) * n29, ()) for _ in range(n29))
    # The corrupt lp is tuple-well-shaped; its sole W0 defect is an unbound
    # occurrence one binder beyond the term.
    ub29 = ('L', ('b',) * (n29 + 1), ())
    fr29g = tuple(K.FRAME('h', x, 0) for x in sh29s)
    fr29c = fr29g[:-1] + (K.FRAME('h', ub29, 0),)
    ks29g = tuple(('K', 'h', x) for x in sh29s)
    ks29c = ks29g[:-1] + (('K', 'h', ub29),)
    sg29f = wf(t29s, Run((), 'D', (), (RHO,), None, fr29g, ()))
    sc29f = wf(t29s, Run((), 'D', (), (RHO,), None, fr29c, ()))
    sg29k = wf(t29s, Run((), 'D', (), (RHO,), None, (), ks29g))
    sc29k = wf(t29s, Run((), 'D', (), (RHO,), None, (), ks29c))
    sens29 = ('W0' not in sg29f and sc29f == ['W0']
              and sg29k == [] and sc29k == ['W0'])
    ok_occ = occ_lin and memo_ok and sens29
    print('occurrence-memo regression: distinct-shells families '
          'W0 inside the linear band %s, stale-interleaving + '
          'fresh-call verdicts W0 %s, traversal-sensitivity '
          'pairs %s' % (occ_lin, memo_ok, sens29))

    # Three shared-substructure families each use a timing band at 8x size
    # (24x limit; quadratic about 64x): (a) the shared-slice family in rs
    # (n shells, ONE n-entry slice), (b) the same in
    # K-storage, and (c) the shared-KD-keys family. Slice cargo is timed by
    # the occurrence-memo regression above.
    def shells30(n, kind):
        # Shape: term Lam(App(Var(1),
        # App(Var(1), ... Var(1)))) — path ('b','f') is a Var
        # with required slice 0 (the shared INNER lp), and path
        # ('b',) + ('a',)*(n-1) is the final Var with required
        # slice n-1 (the SHELLS). One shared occurrence, one
        # shared slice, n distinct shells: a Θ(n) graph.
        term30 = _Var(1)
        for _ in range(n - 2):
            term30 = _App(_Var(1), term30)
        term30 = _Lam(_App(_Var(1), term30))
        inner = ('L', ('b', 'f'), ())
        shell_occ = ('b',) + ('a',) * (n - 1)
        shared_slice = (inner,) * (n - 1)
        if kind == 'slice-rs':
            shells = tuple(('L', shell_occ, shared_slice)
                           for _ in range(n))
            st = Run((), 'X', (), (RHO,), None,
                     tuple(K.FRAME('h', lp, 0)
                           for lp in shells), ())
        elif kind == 'slice-ks':
            shells = tuple(('L', shell_occ, shared_slice)
                           for _ in range(n))
            st = Run((), 'X', (), (RHO,), None, (),
                     tuple(('K', 'h', lp) for lp in shells))
        else:  # 'kd': n KD entries sharing ONE keys tuple
            keys = tuple(('h', inner) for _ in range(n))
            st = Run((), 'X', (), (RHO,), None, (),
                     tuple(('KD', keys) for _ in range(n)))
        t0 = _time.perf_counter()
        r = wf(term30, st)
        return r, _time.perf_counter() - t0
    bands = []
    for kind in ('slice-rs', 'slice-ks', 'kd'):
        rs30, ts30 = shells30(100, kind)
        rl30, tl30 = shells30(800, kind)
        bands.append(rs30 == ['W0'] and rl30 == ['W0']
                     and tl30 < 24 * max(ts30, 1e-4))
    # Sensitivity pairs for all three kinds exercise the machinery through the
    # unconditional rs/ks loops (the early return isolates
    # pre-gate cost from the value-semantics W2 scan), and the
    # pairs gate that traversal through the public verdict: a
    # corrupted element must flip an in-language state to
    # exactly ['W0']. The walker is LIFO (extend, then pop from the end), so
    # the corrupt element sits at slice position 0 and is popped
    # LAST by the LIFO walker in the rs/ks kinds (the KD
    # kind's corrupt is the last key of a left-to-right all())
    # — and is a tuple-well-shaped lp whose sole W0 defect is
    # an unbound occurrence ('f' stepped at a Var). The pairs gate the stated
    # predicates rather than a particular implementation.
    n30 = 12
    t30s = _Var(1)
    for _ in range(n30 - 2):
        t30s = _App(_Var(1), t30s)
    t30s = _Lam(_App(_Var(1), t30s))
    inn30 = ('L', ('b', 'f'), ())
    o30 = ('b',) + ('a',) * (n30 - 1)
    sl30 = (inn30,) * (n30 - 1)
    sh30g = tuple(('L', o30, sl30) for _ in range(n30))
    deep30 = ('L', ('b', 'f', 'f'), ())
    sh30c = sh30g[:-1] + (('L', o30, (deep30,) + sl30[1:]),)
    kd30g = tuple(('h', inn30) for _ in range(n30))
    kd30c = kd30g[:-1] + (('h', deep30),)
    sg30f = wf(t30s, Run((), 'D', (), (RHO,), None,
                         tuple(K.FRAME('h', x, 0)
                               for x in sh30g), ()))
    sc30f = wf(t30s, Run((), 'D', (), (RHO,), None,
                         tuple(K.FRAME('h', x, 0)
                               for x in sh30c), ()))
    sg30k = wf(t30s, Run((), 'D', (), (RHO,), None, (),
                         tuple(('K', 'h', x) for x in sh30g)))
    sc30k = wf(t30s, Run((), 'D', (), (RHO,), None, (),
                         tuple(('K', 'h', x) for x in sh30c)))
    sg30d = wf(t30s, Run((), 'D', (), (RHO,), None, (),
                         (('KD', kd30g),)))
    sc30d = wf(t30s, Run((), 'D', (), (RHO,), None, (),
                         (('KD', kd30c),)))
    sens30 = ('W0' not in sg30f and sc30f == ['W0']
              and 'W0' not in sg30k and sc30k == ['W0']
              and sg30d == [] and sc30d == ['W0'])
    ok_sl = all(bands) and sens30
    print('shared-substructure regression: shared-slice rs/ks + '
          'shared-KD-keys families W0 inside the linear band %s, '
          'traversal-sensitivity pairs %s' % (bands, sens30))

    # The big-index family — Var(1<<n) under n lambdas, Θ(n) representation
    # with an n-BIT leaf — was quadratic through max-free's
    # big-int subtractions; the lam-count clamp makes every
    # propagated value word-sized. Plus the slice-cargo family
    # (n−1 distinct shells — one per 'a' of the carrier
    # occurrence, which is what the slice equation requires —
    # sharing one occurrence as the slice of ONE carrier on
    # tape) and the bound-big-index control. Each shell references a named
    # occurrence so CPython cannot constant-fold the displays into one object;
    # their distinctness is gated.
    def big31(n):
        term31 = _Var(1 << n)
        for _ in range(n):
            term31 = _Lam(term31)
        t0 = _time.perf_counter()
        r = wf(term31, Run((), 'D', (), (RHO,)))
        return r, _time.perf_counter() - t0
    def cargo31(n, corrupt=False):
        term31 = _Var(1)
        for _ in range(n - 2):
            term31 = _App(_Var(1), term31)
        term31 = _Lam(_App(_Var(1), term31))
        occ31 = ('b',) + ('a',) * (n - 1)
        occ_in31 = ('b', 'f')
        shells31 = tuple(('L', occ_in31, ())
                         for _ in range(n - 1))
        if corrupt:
            shells31 = (('L', ('b', 'f', 'f'), ()),) \
                + shells31[1:]
        distinct31 = len({id(sh) for sh in shells31}) == n - 1
        carrier = ('L', occ31, shells31)
        # Tape tokens sit inside the short-circuited W0 conjunction. Keeping
        # the state in-language ensures the carrier is traversed; the
        # WF-clean verdict is gated, and the corrupt control is
        # the positive traversal gate. The walker is LIFO, so the corrupt shell sits at slice
        # position 0 (popped LAST — a full drain is required to
        # reach it, measured n-1 of n-1 shells visited) and is
        # a tuple-well-shaped lp whose sole W0 defect is an unbound
        # occurrence. The pair gates the stated predicate, not an implementation.
        st = Run((), 'D', (), (carrier, RHO))
        t0 = _time.perf_counter()
        r = wf(term31, st)
        return r, _time.perf_counter() - t0, distinct31
    rb_s, tb_s = big31(4000)
    rb_l, tb_l = big31(32000)
    rc_s, tc_s, dc_s = cargo31(100)
    rc_l, tc_l, dc_l = cargo31(800)
    rc_x, _tc_x, _dc_x = cargo31(100, corrupt=True)
    kctl = 60
    tctl = _Var(kctl)
    for _ in range(kctl):
        tctl = _Lam(tctl)
    big_ok = (rb_s == ['W0'] and rb_l == ['W0']
              and tb_l < 24 * max(tb_s, 1e-4))
    cargo_ok = (rc_s == [] and rc_l == []
                and dc_s and dc_l
                and rc_x == ['W0']
                and tc_l < 24 * max(tc_s, 1e-4))
    ctl_ok = wf(tctl, Run((), 'D', (), (RHO,))) == []
    ok_big = big_ok and cargo_ok and ctl_ok
    print('big-index/slice-cargo regression: big-index family W0 '
          'inside the linear band %s, slice-cargo family WF-clean '
          'inside the linear band %s with shells distinct %s and '
          'corrupt-shell control W0 %s, bound-index control WF %s'
          % (big_ok, cargo_ok, dc_s and dc_l,
             rc_x == ['W0'], ctl_ok))

    # object.__delattr__ can make exact instances
    # hollow. The four UNDEFAULTED fields (path/d/log/tape)
    # vanish outright -> ['W0'] without raising; the three
    # DEFAULTED fields (vb/rs/ks) fall back to their
    # class-level defaults -> extensionally the default Run for
    # every machine/checker observation, honestly []. Hollow Lam/Var terms are
    # W0; wf7 declines them; constructor controls remain intact.
    def fld32(mutate):
        try:
            return mutate() == ['W0']
        except Exception:
            return False
    def nof(f):
        s32 = Run((), 'D', (), (RHO,))
        object.__delattr__(s32, f)
        return lambda: wf(tterm, s32)
    t32 = _Lam(_Var(1))
    object.__delattr__(t32, 'body')
    v32 = _Var(1)
    object.__delattr__(v32, 'i')
    sw32 = Run((), 'D', (), (RHO,))
    object.__delattr__(sw32, 'path')
    # fields WITHOUT class defaults vanish outright -> W0;
    # deleting a DEFAULTED field (vb/rs/ks) exposes the
    # dataclass's class-level default, so the state is
    # extensionally the default Run and adjudicates [] — pinned
    # as the documented fallback, not a hole (caught in-round:
    # the first draft expected W0 for all seven)
    fld_runs = all(fld32(nof(f)) for f in
                   ('path', 'd', 'log', 'tape'))
    def dflt(f):
        s32 = Run((), 'D', (), (RHO,))
        object.__delattr__(s32, f)
        try:
            return wf(tterm, s32) == []
        except Exception:
            return False
    fld_dflt = all(dflt(f) for f in ('vb', 'rs', 'ks'))
    fld_terms = (fld32(lambda: wf(t32, Run((), 'D', (),
                                           (RHO,))))
                 and fld32(lambda: wf(_Lam(v32),
                                      Run((), 'D', (),
                                          (RHO,)))))
    try:
        fld_wf7 = wf7(tterm, {(): frozenset()}, sw32, {}) == []
    except Exception:
        fld_wf7 = False
    fld_ctl = (wf(tterm, Run((), 'D', (), (RHO,))) == []
               and wf(_Lam(_Var(1)), Run((), 'D', (),
                                         (RHO,))) == [])
    ok_fld = (fld_runs and fld_dflt and fld_terms and fld_wf7
              and fld_ctl)
    print('fieldless regression: undefaulted hollow Runs W0 %s, '
          'defaulted fields fall back to class defaults %s, '
          'hollow Lam/Var terms W0 %s, wf7 declines %s, '
          'constructor controls intact %s'
          % (fld_runs, fld_dflt, fld_terms, fld_wf7, fld_ctl))

    print('W7/disjointness total:',
          'PASS' if allbad == 0 and ok and ok_e and ok_a and ok_q
          and ok_w9 and ok_rq and ok_bb and ok_pt and ok_vc
          and ok_vk and ok_w4d and ok_w4s and ok_sp and ok_gr
          and ok_lang and ok_sl3 and ok_kpf and ok_pf24
          and ok_w0t and ok_tot3 and ok_ag and ok_tot4
          and ok_tot5 and ok_tot6 and ok_tot7
          and ok_comp and ok_occ and ok_sl and ok_big
          and ok_fld else 'FAIL')
    return (allbad == 0 and ok and ok_e and ok_a and ok_q
            and ok_w9 and ok_rq and ok_bb and ok_pt and ok_vc
            and ok_vk and ok_w4d and ok_w4s and ok_sp and ok_gr
            and ok_lang and ok_sl3 and ok_kpf and ok_pf24
            and ok_w0t and ok_tot3 and ok_ag and ok_tot4
            and ok_tot5 and ok_tot6 and ok_tot7 and ok_comp
            and ok_occ and ok_sl and ok_big and ok_fld)

def collisions_under_wf():
    """Check the two raw-state collision regressions against current WF."""
    print('\n--- raw-state collision regressions under WF ---')
    term = L.App(L.Lam(L.Var(1)), L.Gate('h'))
    inst = ('L', ('f', 'b'), ())
    frames = (FRAME('h', inst, 0),)
    tail = (RHO,)
    sv = Run(('a',), 'D', (inst,), tail, ('h', 0, 2), frames, ())
    sr = Run(('a',), 'D', (inst,),
             (BULLET, BULLET, BULLET) + tail, None, frames, ())
    print('vvar source WF:', wf(term, sv) or 'OK',
          ' replay source WF:', wf(term, sr) or 'OK')
    cv, cr = step(term, sv, None), step(term, sr, None)
    print('targets equal:', cv[0][3] == cr[0][3],
          '(vvar source violates W4 -> excluded from the WF domain)')
    # the WF-repaired vvar source (no frame) no longer collides:
    sv2 = Run(('a',), 'D', (inst,), tail, ('h', 0, 2), (), ())
    print('WF vvar source WF:', wf(term, sv2) or 'OK',
          ' targets equal now:',
          step(term, sv2, None)[0][3] == cr[0][3],
          '(rs contents differ)')

    term2 = L.App(L.Gate('h'), L.Lam(L.Var(1)))
    lp = ('L', ('a', 'b'), ())
    sh = Run(('a',), 'U', (GAM('h'),), (lp, MU('h'), RHO))
    st = Run(('a',), 'U', (GAM('h'),), (lp, MU('t'), RHO))
    ch, ct = step(term2, sh, None), step(term2, st, None)
    rh = [r for _, _, r, _ in ch]
    rt = [r for _, _, r, _ in ct]
    print('mu-kind pair rules:', rh, 'vs', rt,
          '(species-mu types the mismatch; no shared fire targets)')
    shared = {id(x[3]) for x in ch} and any(
        a[3] == b[3] for a in ch for b in ct)
    print('shared targets:', shared)
    return (wf(term, sv) != [] and 'species-mu' in rt and not shared)

if __name__ == '__main__':
    ok1 = sweep()
    ok2 = collisions_under_wf()
    ok3 = cert_sweep()
    print('\nWF sweep:', 'PASS' if ok1 else 'FAIL',
          ' collision closure:', 'PASS' if ok2 else 'FAIL',
          ' W7/disjointness:', 'PASS' if ok3 else 'FAIL')
    # The module verdict is the exit code: the collision pair gates ok2,
    # the cert_sweep flags gate ok3, and any
    # single regression failure must fail THIS).
    sys.exit(0 if ok1 and ok2 and ok3 else 1)
