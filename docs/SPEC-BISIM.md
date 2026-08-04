# SPEC-BISIM — Effect-trace self-interpretation: the bisimulation theorem

The precise statement and proof plan for DESIGN-QBLC.md proof
obligation 2: `E_q ⌜p⌝ σ⃗` and `p σ⃗` are equivalent up to pure
β-stuttering, in unbounded semantics.

**Provenance.** Skeleton by Codex (thread `qblc-selfint`, round 2,
job `cx-20260803-143431-3639`), responding to Claude's proposed shape
(event-labelled weak bisimulation, administrative τ = pure β).
Spec-form translation, the C-DESCEND case, L4, and the
selector-as-contract presentation are Claude's. Round 3 (job
`cx-20260803-155219-bc28`) ratified conditional on six corrections —
pair/cons' separation, FALSE = 6 bits, extensional L1, world-indexed
ℛ with runtime diagonals + full frame grammar, tightened L3,
signature-free base theorem — all incorporated below and marked
[Codex r3]. Everything here is **stated, not proved** — the measured
evidence (LEDGER.md 2026-08-03: 19,014/34/0 at effect-trace level
over 4..=24, poisoned-seed canary) is empirical support, and the
obligations index (§7) is the ground truth on status.

**Why bisimulation and not trace-set equality.** Plain trace-set
equality identifies silent divergence with silent termination: a
τ-only diverger and a silent halter both have empty visible trace.
The relation must be divergence-sensitive (clause B5). [Codex]

## 1. The unbounded labelled semantics

Configurations are pairs `(M, S)`: `M` a term of the reduction
grammar (BLC term whose positions may hold runtime values —
primitives, handles, Church booleans, the cnot pair), `S` an exact
branch-local store (`src/dw.rs` amplitudes; allocation ranks and
epochs as in DESIGN-QBLC.md). Reduction is the KN strategy of the
engines: normal order, reducing under binders.

Transitions:

- **τ** — one pure β-contraction (no primitive fires, store
  untouched): `(M,S) —τ→ (M',S)`.
- **Visible, non-branching** — `α ∈ {New(q), H(q,e), T(q,e),
  Cnot(q,e,r,f)}`, exactly the successful-firing labels of
  `qeval::Effect`, store updated deterministically:
  `(M,S) —α→ (M',S')`.
- **Measurement** — one *binary* transition
  `(M,S) —Meas(q,e)→ ⟨(M₀,S₀), (M₁,S₁)⟩` with successor edges
  labelled `0`/`1`. One transition with two labelled successors, not
  two unrelated nondeterministic steps: this makes preservation of
  the branch topology part of the relation, and corresponds exactly
  to the implementation's per-path `Meas(q,e,b)` events. [Codex]

Terminal observations: `Halt(N,S)` (N the residual normal form),
`Err(kind,S)`, `Diverge`. Two deliberate deltas from the
implementation: the mathematical `Err` **carries the store** (the
public `Leaf` discards it — a possible future pin, not a code change
this spec requires), and `Unknown`/`Capacity` **do not exist** — this
is the unbounded semantics; resource fates are a property of the
census ladder, not of the theorem.

Away from `Meas`, KN reduction is deterministic: each configuration
has at most one outgoing transition. The full behaviour of `(M,S)` is
therefore a deterministic tree branching only at measurements — the
*event tree*. Write `⇒` for `τ*` and `==α=>` for `⇒ —α→ ⇒`.

## 2. Quote, stream, and the parser translation

Two pairing constructors, deliberately distinct [Codex r3 — an
earlier draft conflated them; the distinction is load-bearing
because the unary raw-bit selector indexes `cons'`, not ordinary
pairs]:

```text
pair  A P = λz. z A P                (the input stream)
cons' A P = λzx. λzy. zx A (zy P)   (int.lam's environment
                                     constructor; equivalently
                                     cons' = λx y zx zy. zx x (zy y))
```

`stream(M,R)` is the `pair`-list carrying the exact BLC wire of `M`
('0' → true, per the repo's inverted polarity), with tail `R`. Our
quote is the instance `⌜p⌝ = stream(p, FALSE)` with `FALSE = λλ.1`
(6 bits). Sizes, for `R` a pure BLC-encodable term [Codex r3 — an
arbitrary runtime QTerm tail, e.g. the canary's, has no BLC size]:

```text
|stream(p,R)| = 14|p| + zeros(p) + |R|
|⌜p⌝|         = 14|p| + zeros(p) + 6
```

**The translation `P[·]` is a class of implementing closures, not a
syntax function.** [Codex r3 — int.lam's VAR branch passes
`cont list1 (skipvar list1)`: the produced closure carries the dead
post-variable wire suffix, so it is *not* a canonical closed
selector independent of the stream. Correctness is extensional.]
Write `Q ⊨ P[M]` for "Q implements the translation of M":

```text
Q ⊨ P[Var i]  iff  for every valid environment ρ_R(Δ̂) of depth
                   d ≥ i:  Q ρ_R(Δ̂) ⇒ Âᵢ, without inspecting the
                   post-variable suffix Q carries.
Q ⊨ P[λ.M]    iff  Q ⇒-behaves as λρ. λa. Q' (cons' a ρ)
                   for some Q' ⊨ P[M].
Q ⊨ P[M N]    iff  Q ⇒-behaves as λρ. Q₁ ρ (Q₂ ρ)
                   for some Q₁ ⊨ P[M], Q₂ ⊨ P[N].
```

**L1 (parser correctness, extensional form).** For every finite
well-formed BLC term `M` and every tail `R`:

```text
intL C stream(M,R)  ⇒  C Q R      for some Q ⊨ P[M]
```

with every step τ, terminating, store untouched. Corollary:
`E_q stream(M,R) ⇒ Q R` with `Q ⊨ P[M]`. Proof: induction on the
wire code, following int.lam's three-way dispatch; the VAR case
produces the suffix-carrying closure and discharges its contract via
L2. [Standard-result-shaped but never written down for this
artifact; an obligation, not a citation.]

## 3. The paired-environment invariant and the relation ℛ

Environments are **paired**, not shared. Let `Δ = (A₁,…,A_d)` be the
direct side's thunk environment (call-by-name closures), `Δ̂ =
(Â₁,…,Â_d)` the interpreted side's, with each pair `(Aᵢ, Âᵢ)` itself
related, and

```text
ρ_R(Δ̂) = cons' Â₁ (cons' Â₂ … (cons' Â_d R))
```

index 1 innermost, matching `Var 1`. Pairing is forced by β: a
direct β-step stores the source argument `N`; the interpreted β-step
stores an implementing closure of `P[N]` under `ρ`. Related, never
syntactically identical — a single shared environment is unsound
after the first source contraction. [Codex]

**L2 (selector / formal poisoned-seed).** Every closure the VAR
branch of intL produces satisfies its `P[Var i]` contract: applied
to `ρ_R(Δ̂)` with `d ≥ i`, it reduces to `Âᵢ`, and the reduction
neither evaluates nor inspects `R` or the closure's own dead wire
suffix. This is the lexical-depth invariant as a lemma: closed
programs never force the seed, and the effectful-tail canary
(`qselfint`, QTerm-level `new t` in the seed) is its empirical
shadow.

**The relation is world-indexed and generated, not co-defined.**
[Codex r3 — defining ℛ as a greatest bisimulation would let B4
equate distinct silent normal forms and L4 would fail; ℛ must be the
least compatible relation generated below, and B1–B5 are then
*proved* of it.] `ℛ_k` (k the current readback/world depth) is the
least relation containing:

- **translation pairs**: `(M[Δ], S) ℛ_k (Q ρ_R(Δ̂), S)` for `M`
  well-scoped at depth `d`, `Q ⊨ P[M]`, pointwise-related
  environments, arbitrary `R` — the **same** store `S` on both
  sides;
- **the runtime diagonal**: every primitive, handle, Church boolean,
  and cnot pair is related to itself [Codex r3 — without this, B2
  cannot even discharge the post-`New` obligation relating the two
  identical generated handles];
- **paired fresh neutrals**: at world depth `k`, a neutral level
  `ℓ = k+1` created on both sides is related at `k+1`;

closed under the **complete synchronized evaluator-frame grammar**
[Codex r3 — "application spines and under-binder positions" was a
hole]: operator-position application frames; normal-form
argument/readback frames; unary strict-primitive frames (`Prim1`
for h/t/meas); cnot first-argument frames holding related second
thunks; cnot second-argument frames holding the *identical* first
handle `(q,e)`; neutralized primitive/readback frames; and paired
measurement continuations on both successor branches.

## 4. The bisimulation clauses

The proof obligation is that the exhibited `ℛ` of §3 **is** a
divergence-sensitive, event-labelled weak bisimulation: for all
`(C, D) ∈ ℛ_k`,

- **B1 (administrative).** `C —τ→ C'` implies `D ⇒ D'` with
  `C' ℛ_k D'`; symmetrically.
- **B2 (visible).** `C —α→ C'` for `α ∈ {New,H,T,Cnot}` (labels
  including qubit, epoch, and for Cnot both handles) implies
  `D ==α=> D'` with `C' ℛ_k D'`; symmetrically.
- **B3 (measurement).** If `C ⇒ —Meas(q,e)→ ⟨C₀,C₁⟩` then
  `D ⇒ —Meas(q,e)→ ⟨D₀,D₁⟩` with `C_b ℛ_k D_b` for both `b`;
  symmetrically. Since related configurations carry identical stores
  and store operations are deterministic, the projected stores and
  the exact branch masses coincide immediately.
- **B4 (termination).** `C ⇒ Halt(N,S')` implies `D ⇒ Halt(N̂,S')`
  with `N ℛ_k N̂` as residual normal forms and the *same* store;
  `Err` matched with the same kind and store.
- **B5 (divergence).** Infinite τ-only reduction is reflected in
  both directions: if `C` has an infinite τ-run with no visible
  transition, so does `D`, and conversely. Infinite visible/
  measurement trees are coupled coinductively — B1–B3 applied
  productively forever. This is the clause ordinary
  divergence-insensitive weak bisimulation omits. [Codex]

## 5. Case ledger — the proof plan

Coinduction on the KN head decomposition, supported by structural
induction on `M`. Named obligations:

- **C-VAR.** Head is `Var i`: L2 returns `Âᵢ`; the direct side reads
  `Aᵢ`. Related thunks by the invariant; the seed and the dead
  suffix are unreachable.
- **C-APP.** Both sides expose the operator before the operand (the
  `P[M N]` contract mirrors the source spine) and neither forces the
  operand; paired environments are reused, not split.
- **C-ABS (consume).** With an argument on the spine, direct β
  stores the source thunk; interpreted β stores its implementing
  translation under `ρ`; extend `Δ`/`Δ̂` with the related pair. This
  is where pairing earns its keep.
- **C-DESCEND (opening rule).** λ-headed with no argument: at world
  depth `k`, open both bodies with the same fresh neutral level
  `ℓ = k+1` and prove the bodies related at world `k+1`. This is the
  rule used to prove binder compatibility, **not** an extra LTS
  transition [Codex r3]: qeval realizes it as syntactic under-λ
  descent, the KN machine as `Val::Rigid`/`Lvl`. [Claude's case;
  under-binder reduction is where P53-style fate divergence lives,
  so the case is load-bearing, not a formality.]
- **C-STRICT (h, t, meas)** and **C-CNOT** ride on **L3**:

  > **L3 (weak-head / ArgView preservation).** [Codex r3 — strict
  > argument evaluation may itself emit effects, branch, Err, or
  > diverge, so the species statement must be a full weak-head
  > decomposition.] Place related terms in paired strict-argument
  > frames over the same store. Their weak executions satisfy B1–B3
  > until one of:
  > 1. both expose the same `Handle(q,e)`;
  > 2. both expose matching canonical non-handle values —
  >    lambda/lambda, or the same bare/undersaturated primitive
  >    spine — so the enclosing primitive fires `Species` without
  >    descending into the value;
  > 3. both expose rigid-neutral spines with paired heads at the
  >    same neutral level and pairwise-related suspended arguments —
  >    the enclosing primitive stays neutral, readback continues in
  >    paired frames;
  > 4. both terminate with the same semantic Err and store, branch
  >    correspondingly, or diverge correspondingly.

  Frame consequences: h/t/meas retain paired `Prim1` frames; cnot
  evaluates argument 1 first; once it yields `(q,e)` both sides hold
  the identical handle in paired `Cnot2(q,e)` frames while argument
  2 runs; epoch validity, second-handle validity, SameQubit, and
  atomic consumption occur in that order on both sides.
- **C-MEAS.** The fork inserts *identical* Church booleans (runtime
  diagonal) into related evaluation contexts — giving exactly the
  two successor obligations of B3.

Once control correspondence is established, the quantum half is
nearly tautological: identical stores plus the same visible
primitive imply equal next stores, amplitudes, epochs, allocation
ranks, and masses — every store operation is a deterministic
function of `(label, S)`. [Codex]

## 6. The theorem

Stated base-first so the corollaries actually follow [Codex r3 — a
signature-applied-only statement does not yield the pure-NF
corollary]:

> **Theorem (base).** For every closed BLC term `p`, arbitrary
> stream tail `R`, and initial store `S`:
>
> ```text
> (p, S)  ℛ₀  (E_q stream(p,R), S)
> ```
>
> **Compatibility.** For any pairwise-related argument vector
> `(A⃗, Â⃗)`:
>
> ```text
> (p A⃗, S)  ℛ  (E_q stream(p,R) Â⃗, S)
> ```
>
> The empty vector plus L4 gives bit-exact pure-NF identity; the
> frozen signature `σ⃗` (related to itself by the runtime diagonal)
> gives the qBLC statement: τ-erased event trees coincide — same
> visible effects with the same qubit/epoch labels, in the same
> order, with the same measurement branch topology; same terminal
> fates with identical stores and exact masses; related residual
> values.

The measured pure-NF result is *bit-exact* NF identity, which B4's
"related residual" does not by itself deliver — the gap is closed by
**L4 (readback collapse)**, stated for the translation-generated
`ℛ_k` only [Codex r3 — for an arbitrary greatest bisimulation it is
false]: fully reading back `ℛ_k`-related normal forms at the same
final depth yields syntactically identical de Bruijn terms. By
induction on the finite readback tree: identical runtime atoms
reify identically; paired neutrals were created at the same level,
so reification at the same depth maps them to the same index;
lambda bodies use C-DESCEND and the induction hypothesis at `k+1`;
neutral-spine arguments collapse inductively; selector thunks
collapse by L2 before their dead suffix can be exposed. [Claude's
addition — the skeleton stops at relatedness; the sweep measures
identity, and the spec should owe what the measurement shows.]

Further corollaries: the poisoned-tail result (L2 instance, `R`
arbitrary — the canary is the case `R` effectful); and the resource
caveat stated correctly — parsing discarded source subterms can
change *bounded* fates (the interpreter can hit Unknown where the
direct run halts) without touching the unbounded semantics, which is
why census-ladder equivalence is deliberately NOT claimed.

## 7. Obligations index

| id  | statement                                   | status |
| --- | ------------------------------------------- | ------ |
| L1  | parser correctness, extensional form (§2)   | open   |
| L2  | selector / poisoned-seed contract (§3)      | open   |
| L3  | weak-head / ArgView preservation (§5)       | open   |
| L4  | readback collapse for ℛ_k (§6)              | open   |
| B1–B5 | the exhibited ℛ is a bisimulation (§4–§5) | open   |
| —   | empirical: 19,014/34/0 effect-trace ≤24, canary, witness45 | measured (LEDGER.md 2026-08-03) |

Falsifier: any effect-order, label, mass, or fate mismatch between
`p σ⃗` and `E_q ⌜p⌝ σ⃗` on any program — none observed at any size
swept. A Lean lane for L1/L2 is the natural first mechanization
(pure λ-calculus, no store); the quantum clauses ride on it.
**Seed landed 2026-08-04** (`lean/Blc/Selfint.lean`, statements
ratified in round 4, job `cx-20260804-155021-14ee`): intL
kernel-pinned by wire identity; |E_q| = 176 and the §2 size
identities kernel-checked; `Implements` under head reduction; the
machine-level parser target is `ParserResult M R Q U` — the r4
counterexample (int.lam's VAR branch passes
`cont list1 (skipvar list1)`; head reduction never enters argument
position) shows `C Q R` is unreachable as a machine execution, so
the statement exposes the residual tail `U ⇒ R`, continuation
quantified inside. The τ*-forms above (KN, which does normalize the
residual) are unchanged. Over pure terms the mechanized statement is
the β-non-forcing theorem; the effectful poisoned-seed remains its
qBLC lifting. Proofs open; proof order per r4: L2 by induction on
the unary selector, then `ParserStatement` by structural induction,
closed L1 as corollary.

## 8. The parked sub-176 lane

Codex round 2: the specialized-root search is parked until this spec
exists and is ratified (round 3 ratified it, conditional on the
corrections now incorporated) — but not until the full proof lands.
With `intL` opaque, sub-176 is impossible (any closed invocation
already pays the six-bit `App + I`); a winner must reorganize the
recursive knot and root entry jointly. The narrow lane, when opened:
freeze `cons'` and the three certified recursive branch meanings;
one generic recursive entry + one closed-root entry sharing a knot;
the root entry may assume root-non-VAR, continuation `I`, tail
arbitrary; enumerate compiled totals ≤175; probe both contracts;
splice survivors through the full `qselfint` battery. Hand-compile
the two-entry families and do bit accounting before any enumeration.
Expectation on record: 176 survives.
