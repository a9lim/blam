# qALC gate-instance identity

**Status: gate-copy theorem proved; executable per-sector RRI gate added
(2026-08-11).** The fixed qALC invocation makes `(gate, instance)` injective as
a **gate-copy address**. Raw idempotent `recall` remains noninjective, but v1.43
now checks reachable-recall injectivity directly on every complete finite
carrier before granting `machine_coverage`. The stronger uniform lifecycle
derivation remains open. The concrete Lean mirror now replays all 17 canonical
typed finite sectors, including certified-H reconvergence.

## 1. Definitions and scope

For a closed BLC program `p`, the immutable qALC invocation is

```text
P := (p h) t = App(App(p, Gate(h)), Gate(t)).
```

Program syntax contains no gate constants. Hence `P` has exactly two gate
leaves:

```text
q_h = fa,       q_t = a.
```

Here paths are rooted and `f`/`a` select an application's function/argument.
The λIAM level of a path is its number of `a` edges, so

```text
level(q_h) = level(q_t) = 1.
```

A λIAM **copy address** is `(q,L)`: the immutable code position `q` together
with its complete log `L`. This is the term presentation of the proof-net
address: the log is the boxes stack, whose recursively nested logged
positions correspond to exponential signatures and therefore record the
contraction-tree choices selecting a dynamic copy. This is the copy ontology
of the adopted IAM-lineage machine, not an additional operational history.

On the reachable state space the λIAM balance invariant is

```text
|L| = level(q).
```

This is an exact rule invariant, not an empirical premise. The four bullet
rules preserve path level and log length; `var` moves to the binder and drops
exactly `level(occ)-level(binder)` log entries; `bt2` restores that slice;
`arg` changes `f→a` while pushing one entry; and `bt1` changes `a→f` while
popping one. The qALC boundary rules preserve path and log, except `bt1g`,
which is the same `a→f`/pop balance move. The initial state has level and log
length zero.

At an instance-defined gate-leaf visit the kernel's `instance(s)` is the real logged
position `i` at the head of `L`; a non-logged-position head is instead the
typed `no-instance` sector. The runtime key is

```text
key(s) := (g, i),       g ∈ {h,t}.
```

## 2. The theorem

**Theorem (gate-copy address reconstruction).** On reachable,
instance-defined qALC gate visits in the invocation `P = (p h) t`, two runtime
keys `(g,i)` are equal if and only if their complete gate-copy addresses
`(q,L)` are equal.

**Proof.** Let `s` be an instance-defined visit to gate kind `g`.

1. Invocation syntax fixes the leaf position: `q = q_g`, where `q_h = fa`
   and `q_t = a`.
2. Both positions have level one. By the balance invariant the complete log
   at the leaf has length one.
3. An instance-defined visit has real logged-position head
   `i = instance(s)`.
   Therefore its complete log is exactly `L = (i)`.
4. Consequently the key reconstructs the full copy address:

   ```text
   (g,i) ↦ (q_g,(i)).
   ```

5. If two gate visits have equal keys, their gate kinds, fixed leaf
   positions, and singleton logs are equal. Their complete copy addresses
   are therefore equal. The converse is immediate. ∎

The proof is independent of typing, certificates, `h` versus `t` dynamics,
and the program's internal reduction behavior. It uses only the invocation
syntax, the λIAM balance invariant, and successful gate entry. In particular
it covers arbitrary closed `p`, not only the currently typed h-only kernel
fragment.

**Corollary (distinct-copy ownership).** Within one program sector, a current
gate visit and any ticket, frame, burial, or dead record carrying the same
`(g,i)` name one gate-copy address. A different copy address cannot silently
alias that key. Across program sectors the program itself is an additional
orthogonal coordinate, so the global address is `(p,g,i)`.

The key need not determine the rest of a branch-local `Run`, and the same
copy address may be revisited by `recall` and `replay`. General
logged-position uniqueness is neither needed nor true.

## 3. Why the tempting stronger statements are false

### 3.1 Arbitrary logged positions are not unique copy addresses

For the ordinary λIAM run of

```text
(λx. x x) (λy. y)
```

the local logged position for `y` is constructed twice with the same value
`L[ab|0]`; at one reachable state one copy occurs inside another logged
position's slice and the other is on the tape. The two `y` binder copies are
distinguished by the outer dynamic context, which a logged position relative
to that copied level-zero-local binder deliberately omits.

That does not affect the theorem. The qALC gate leaves are unique invocation
leaves, not arbitrary local variables, and their **complete** log is the
singleton containing the instance key. No outer suffix is omitted.

### 3.2 No alias-tolerant theorem holds on the raw `WF` domain

The weaker proposed route also fails. In canonical `negative`, take a
reachable first-recall source `s₀` with head ticket `α_h(i,0)` and no replay
frame, and construct `s₁` by adding the agreeing frame `R_h(i,0)`. Both pass
`WF` and `W7`; both take `recall`; their targets are identical:

```text
RS = Q                 ↦ Q ∪ {R_h(i,0)}
RS = Q ∪ {R_h(i,0)}    ↦ Q ∪ {R_h(i,0)}.
```

Thus the two transition columns have inner product one. The collision follows
from idempotent frame insertion and proves that no rule-by-rule theorem over
all agreeing-key raw `WF∧W7∧W8∧W9` states can close the alias question.

The augmented source `s₁` is not in the canonical reachable graph. This pair
is a boundary witness for Gate 1: the complete machine proof must quantify
over the inductively reachable lifecycle subtype (or an equivalent
simulation), not over raw `WF` alone. It is not a distinct-copy alias: by the
theorem, the shared key denotes one copy address.

The exact surviving statement is **reachable-recall injectivity (RRI)**. Fix
a covered term, certificate, and key `k=(g,i)`. Among reachable sources taking
`recall`, delete only the matching `R_g(i,b)` frame, if present, and retain
every other coordinate. No frame-absent and frame-present recall sources may
then have the same projection. Equivalently, `recall` must be injective on the
reachable basis even though it is not injective on raw `WF`.

The tempting two-class ghost argument is **not** a rule invariant of the
unchanged v1.42/v1.43 transition surface.
`vvar` is the only fresh-ticket mint and `replay` is the only replay-ticket
mint, but a certified `fire` may pop `R_k` while a replay-emitted `alpha_k`
survives in the tape tail or log. The kernel deliberately omits `k` from the
dead bundle in that case, and `wf.py`'s permanent
`popped-frame/riding-ticket` regression requires the target to be WF-clean.
Thus frame absence at recall does not locally prove `vvar` ancestry.

A second local obstruction survives even if frame survival is assumed. From
canonical `negative`'s reachable `vvar` source, a raw WF replay source can be
formed at the same gate/log/storage control with the matching frame and the
three-bullet replay prefix. The `vvar` and `replay` steps then land at controls
which differ only by that frame. This source is not known reachable, but it
shows that W0--W9 do not themselves separate the lifecycle phases.

The honest proof decomposition is now:

1. **NR (no rider):** at every reachable certified fire, no popped frame key
   occurs in an `alpha` surviving in the tape tail or log;
2. **AT (alpha ancestry):** every reachable recall ticket has a unique last
   mint, and under NR a `vvar` mint reaches recall frame-free while a `replay`
   mint retains its matching frame; and
3. **CPS (cross-phase separation):** reachable `vvar`-born and
   `replay`-born recall sources cannot have equal non-frame controls after
   deleting the matching frame.

NR + AT + CPS implies RRI immediately. NR and CPS are global reachability
claims, not consequences currently proved by W0--W9 or certificate conditions
(a)--(f). Simple typing and strong normalization do not supply CPS: a finite
acyclic branching graph can merge two terminating histories at the same
projected control, and the Hadamard/certified-fire boundaries intentionally do
exactly that kind of quotienting. A cycle argument would first need the
stronger lifecycle-dominator fact that the colliding frame-free source is an
ancestor of the framed source; that fact is itself open across certified
fibres.

## 4. Direct finite certificate

v1.43 resolves the actual finite acceptance claim without assuming NR, AT, or
CPS. For a fixed term and frozen certificate, `rri_direct.py` enumerates the
complete nonterminal structural carrier, rejects on caps, rechecks every
outgoing row for closure, and places `Done` in the universal forward-invariant
tick sector. It scans every actual recall row, rejects a mixed dispatch or
matching-frame multiplicity, and checks both `(key, erased projection)` and
`(key, actual recall target)` buckets. A phase collision or row-factorization
drift is noncoverage. The predicate imports only `kernel`; it does not consult
Gram or candidate discovery.

`RRIDirectCertificate.lean` proves the generic carrier and terminal lifting
theorems and the recall-target corollaries. The concrete replay is now separate
and stronger:

- `QalcConcreteKernel.lean` is an executable Lean mirror of the v1.42 state
  grammar and transition surface, including all eight IAM rows, virtual
  boolean dispatch, `vvar`/`recall`/`replay`, certified and uncertified H,
  both Hadamard arms, KD survivor subtraction, the `t` fence, and terminal
  ticks;
- `QalcConcreteCertificate.lean` proves complete- and terminal-carrier lifting,
  source-projection RRI, actual-target RRI, and the terminal-forward theorem;
- `QalcConcreteExport.py` is an untrusted exporter. Its generated theorems
  compare every Python successor row with the Lean transition relation, prove
  closure, then discharge the two RRI predicates by ordinary kernel `decide`.
  A wrong row, omitted successor, or incomplete carrier rejects. Fingerprint
  collisions only add full-equality comparisons and cannot create a false
  acceptance; and
- `QalcConcreteCertificateAudit.lean` pins the raw absent/present rejection,
  incomplete-prefix rejection, both certified-H arms, and qprime's distinct
  certified-H sources with one exact target.

No proof uses `sorry`, `admit`, `native_decide`, or a declared axiom. Lean's
axiom report contains only the standard `propext` and `Quot.sound` dependencies.
Accordingly the current claim is:

```text
Executable complete-carrier RRI is mandatory for every finite sector admitted
by machine_coverage. Concrete Lean RRI is proved for every canonical typed
sector; no uniform derivation from typing or W0--W9 is claimed.
```

The canonical replay covers all 17/17 typed sectors: 5,220 nonterminal `Run`
states, 5,279 outgoing transition rows, 142 recall sources, 59 H-fire sources
of which 53 are certified, and 18 exact H-reconvergent targets. The full
four-job rebuild takes about 156 seconds on the M5 Max. Separately, the
executable Python gate reads 73/73 on deterministic Boolean-100 typed sectors,
including the six rejected by the older aggregate coverage predicate; those
extra sectors have not been exported as durable Lean certificates. The
adversarial driver injects the registered raw
absent/present pair into one enumerated carrier and gets one RRI witness; it
also rejects frame multiplicity, broken target factorization, hidden/mixed
recall, non-singleton initialization, and a state cap. The Python checker names
the literal first `kernel.step` terminal clause as a source premise and pins an
escape mutant; the concrete Lean mirror proves that terminal-forward theorem
directly.

## 5. Executable falsification surface

The out-of-tree instrument
`~/Work/qalc-scratch/instance_identity.py` checks the structural conclusion
and freezes the raw-recall boundary. Its current output is
`out_instance_identity.txt`:

```text
canonical: programs=20 states=6392 gate_states=1196 keyed=1196 keys=55
closed<=11: programs=41272 states=1409843 completed=41262 truncated=10 calls=46220 keys=46220 recall=151 replay=4 max_visits=5 guard_hits=0 nonorthogonal_columns=0
raw-recall-boundary: wf_pair=yes same_column=yes clone_reachable=no path=fa
INSTANCE IDENTITY: PASS
```

The closed-program sweep uses every closed pure `p` through size 11 and the
literal invocation `(p h) t`. The ten capped prefixes crossed 30,000 states
without reaching a gate call. Exact one-step column Gram matrices were clean
on all 41,262 completed graphs. This is the complete evidence emitted by the
named current instrument. Earlier prose also quoted two larger transient
attacks, but no current script or output reproduces those counts, so they are
not part of the registered evidence.

For any fixed finite term/certificate sector accepted by v1.43, RRI now follows
from the direct carrier predicate above, independently of the Gram gate. The
older observation that a collision would also violate exact column Gram is no
longer load-bearing and is not used to justify the Gram check.

The separate out-of-tree `rri.py` instrument makes the new no-rider,
ancestry, and projected-collision attacks rerunnable. Like every finite sweep,
its clean results are falsification evidence only; they do not prove NR, CPS,
or RRI.

Its registered `out_rri.txt` run reports:

```text
canonical: programs=20 states=6392 fires=67 surviving_ticket_fires=4 rider_fires=0 projected_collisions=0 complete=true
typed<=12: programs=21990 states=427033 fires=652 rider_fires=0 truncated=0 complete=true
overapprox<=12: programs=21990 states=452947 fire_boundaries=826 rider_sources=0 max_bit_compatible_frame_keys=0 truncated=0 complete=true
closed<=12: programs=173442 states=6850547 recall_absent=682 recall_present=16 present_unique_absent_ancestor=16 projected_collisions=0 truncated=71 truncated_with_recall=0 complete=false
```

The overapproximation tries the default fire and every locally bit-compatible
frame-pop subset at each boundary; at this bound no compatible frame was live
there at all. The all-closed attack is explicitly incomplete because 71
programs crossed the 30,000-state cap, although none of those explored
prefixes had reached a recall. All sixteen observed framed recalls had exactly
one same-key/bit frame-free ancestor. That supports the dominator route but
does not establish it across the unexamined graph or certified fibre merges.

`~/Work/qalc-scratch/RRI.lean` formalizes the proof boundary. With no axioms,
`sorry`, or `admit`, it checks the abstract recall-level
AT + NR + CPS => RRI implication, the raw idempotent-recall collision, the
certified-pop rider counterexample, and a finite ranked acyclic reconvergence
whose projected recalls collide. It also proves that acyclicity *would* rule
out a collision given the stronger target-back-ancestry/dominator hypothesis.
CPS and that dominator fact remain explicit kernel-specific premises, not
proved qALC theorems.

## 6. Dependencies and remaining boundary

The theorem depends on:

1. gate constants occurring only at the two invocation leaves;
2. rooted path/level conventions remaining fixed;
3. the λIAM balance invariant on reachable states; and
4. `instance(s)` accepting only a real logged-position head.

Changing the syntax to permit gate literals inside `p`, or changing instance
identity to a proper slice rather than the complete level-one log, would
reopen the theorem.

What this result does **not** discharge is the architecture's whole Gate 1.
Executable RRI is closed for every admitted finite sector, and concrete Lean
RRI is closed for the 17 canonical typed sectors; a future finite sector still
needs its generated certificate replayed if a durable Lean theorem is wanted.
The stronger uniform lifecycle theorem remains open. Full-normal-form
readback, the `t` table, error/halting adapters, the rest of the reachable
pairwise range proof, invariant sectors, and the local minimal-garbage theorem
also remain open.

An unconditional machine repair is available if RRI resists a global proof:
refine a replay frame to `R(g,i,b,n)` with an unbounded recall epoch. Fresh
recall writes `n=1`, repeated recall increments `n`, and replay preserves it.
The target then determines the unique source epoch. A finite phase bit cannot
encode arbitrarily many repeat recalls injectively. This would change the
machine, certificates, invariants, and frozen evidence, so it is a design
alternative, not part of the theorem above.

## 7. Source pin

The λIAM definitions, balance invariant, reversibility theorem, and the
correspondence between logs and proof-net exponential signatures are in
Accattoli, Dal Lago, and Vanoni, *The Abstract Machinery of Interaction*
([arXiv:2002.05649](https://arxiv.org/abs/2002.05649)), §§3–4 and §11. The
exact qALC table and conventions used above are pinned in `token.md` §2 and
`kernel.md` §§2–4,6.
