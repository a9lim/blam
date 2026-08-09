# qALC reference machine — formal draft v0

**Status: formal draft v0 — reviewed, verdict DO NOT BUILD ON v0.**
This document supersedes the pre-formal sketch (git history; provenance
in `../ledger/2026-08.md`) and is the working object for
`architecture.md` §9 item 1. The v0 review (thread `qalc-architecture`)
confirmed the invariant-sector construction and the H–NOT–H decoherence
trace, **refuted the universal forcing theorem and the linearity
conjecture** (corrected statements in §5), and found five table defects
(register in §7). v1 must rebuild the table around an explicit
rule-coloured forward/reverse control discipline; the v1 design fork is
stated in §7.3. The architecture contract wins wherever they disagree.

## 1. Syntax

### Terms and normal forms

```text
T  ::= Var(i) | Lam(T) | App(T, T) | h | t        (i ≥ 1, 1-indexed)
NF ::= Lam(NF) | Neu
Neu ::= Var(i) | h | t | App(Neu, NF)
```

Source programs contain no `h`/`t`; the constants enter only through
`init(p) = App(App(p, h), t)`. Canonical booleans: `0̂ = Lam(Lam(Var 2))`,
`1̂ = Lam(Lam(Var 1))`.

### Closures, environments, levels

```text
Bind ::= Clo(T, Env) | Level(l)                   (l ≥ 1, binder depth)
Env  ::= [Bind, …]                                 (index 1 = innermost)
```

**Canonical-closure discipline**: closures are structural values —
no allocation identity — and every constructed closure is trimmed to the
free-variable support of its term (a closed term's closure is
`Clo(T, ∅)`; in particular constants and canonical booleans always carry
the empty environment). Trimming at construction is not an erasure step:
the discarded entries were never part of the closure's identity.

### Frames, residue, configurations

```text
Frame ::= Arg(Clo)            — pending call-by-name argument
        | LamK                — readback re-entry for one binder
        | AppK(Neu)           — spine head held while an argument normalizes
        | Try_h | Try_t       — δ-argument normalization in flight

Res   ::= Look(i, Env∖i)      — lookup tag: index and origin env with hole
        | Jh | Jt | Jn_h | Jn_t   — δ landing tags (rule-indexed, content-free)
        | …                   — further tags only as §4 forces them

Config ::=
    Run(mode, S: [Frame], m: depth, R: [Res])
      where mode ::= Eval(Clo) | Ret(NF)
  | RunDone(nf: NF, R, c: TermCtl)
  | Halt(nf, R, c, k)
  | Error(kind, R, k)
```

`(p, τ)` are evaluator indices, not basis components (architecture §4.2,
machine choice ratified in review). `TermCtl` is the terminal control
value — for this table the constant `⊥` (the empty stack at depth 0),
retained explicitly per the architecture's halted factorization.

## 2. The transition table

Deterministic rows are basis-to-basis; the two δ rows carry the clean
gate fibres. `top(S) ∉ Arg` abbreviates "S is empty or its head is not an
`Arg` frame".

### Descent and binding

```text
A1  Eval⟨(App f a, e)⟩ | S            → Eval⟨(f, e)⟩ | Arg(Clo(a,e))::S
A2  Eval⟨(Lam b, e)⟩ | Arg(c)::S      → Eval⟨(b, c::e)⟩ | S
A3  Eval⟨(Lam b, e)⟩ | S, top∉Arg     → Eval⟨(b, Level(m+1)::e)⟩ | LamK::S   [m → m+1]
```

### Lookup (the charged rows)

```text
A4  Eval⟨(Var i, e)⟩ | S, e[i]=Clo c    → Eval⟨c⟩ | S      [R → R·Look(i, e∖i)]
A5  Eval⟨(Var i, e)⟩ | S, e[i]=Level l  → Ret⟨Var(m−l+1)⟩ | S
                                                            [R → R·Look(i, e∖i)]
```

### Constants

```text
A6  Eval⟨(g, ∅)⟩ | Arg(c)::S, g∈{h,t}  → Eval⟨c⟩ | Try_g::S
A7  Eval⟨(g, ∅)⟩ | S, top∉Arg          → Ret⟨g⟩ | S
```

### Readback

```text
R1  Ret⟨n⟩ | LamK::S                   → Ret⟨Lam n⟩ | S    [m → m−1]
R2  Ret⟨n⟩ | Arg(c)::S, n neutral      → Eval⟨c⟩ | AppK(n)::S
R3  Ret⟨n'⟩ | AppK(n)::S               → Ret⟨App n n'⟩ | S
```

### δ fibres and species errors

```text
D1  Ret⟨0̂⟩ | Try_h::S  → (1/√2)·( Eval⟨(0̂,∅)⟩|S  +  Eval⟨(1̂,∅)⟩|S )   [R·Jh]
    Ret⟨1̂⟩ | Try_h::S  → (1/√2)·( Eval⟨(0̂,∅)⟩|S  −  Eval⟨(1̂,∅)⟩|S )   [R·Jh]
D2  Ret⟨0̂⟩ | Try_t::S  →      Eval⟨(0̂,∅)⟩ | S                          [R·Jt]
    Ret⟨1̂⟩ | Try_t::S  → ω ·  Eval⟨(1̂,∅)⟩ | S                          [R·Jt]
D3  Ret⟨n⟩ | Try_g::S, n neutral       → Ret⟨App g n⟩ | S               [R·Jn_g]
E1  Ret⟨n⟩ | Try_g::S, n closed NF, n∉{0̂,1̂}
                                        → Error(Species(g), R·⟨g,n⟩, 0)
```

`Jh`, `Jt`, `Jn_h`, `Jn_t` are rule-indexed and content-free: the two
outcomes of one `D1` firing receive the *same* tag, which is the clean
δ-fibre requirement — the landing `J_q` is one injective spectator
transition per gate, independent of input and output boolean, and the
distinct tags realize `J_q† J_r = δ_qr I` and orthogonality against the
neutral row.

### Terminal sectors

```text
F1  Ret⟨n⟩ | ∅, m = 0                  → RunDone(n, R, ⊥)
F2  RunDone(n, R, c)                   → Halt(n, R, c, 0)
F3  Halt(n, R, c, k)                   → Halt(n, R, c, k+1)
F4  Error(kind, R, k)                  → Error(kind, R, k+1)
```

## 3. Reachability invariants

The range-disjointness proofs of §4 are relative to the reachable set,
and these invariants carry them:

- **I1**: `Ret⟨Lam n⟩` never meets an `Arg` frame (a Lam over a pending
  argument would have fired A2 earlier under this strategy).
- **I2**: `Level(l)` occurs in a reachable environment only with
  `l ≤ m`, and the entries of any environment's Level-set are exactly
  the currently open binders above the closure's capture point.
- **I3**: constants and canonical booleans always appear as `Clo(·, ∅)`
  (canonical-closure discipline).
- **I4**: `Try_g` frames appear only above the evaluation of a δ
  argument; at most one `Ret` is in flight.
- **I5**: depth `m` equals the number of `LamK` frames in `S`.

**[open]** I1–I5 need induction proofs over the table once the residue
discipline of §4 is fixed; none is expected to be delicate.

## 4. The reversibility framework

**Definition (backward determinism).** A function
`φ : Reach → Rule ∪ {init}` assigning to every reachable configuration
the unique rule that produced it. `U` is an isometry on the reachable
span iff (a) each rule is injective on its domain, (b) rule ranges are
pairwise disjoint on `Reach` (`φ` well-defined), and (c) the δ fibres are
internally orthonormal and orthogonal to every other range. The
orthonormal-columns battery is the finite-range check of exactly this.

Per-rule inverses (giving (a)) are immediate from the table:

- A1⁻¹ re-forms `App` from focus and the `Arg` frame (their shared
  environment is part of A1's range condition);
- A2⁻¹ pops the environment head back into an `Arg` frame;
- A3⁻¹ / R1⁻¹ are inverse to each other's shape by I5;
- A4⁻¹/A5⁻¹ plug the focus (resp. the emitted variable) back into the
  hole of the `Look` tag — this is why the tag carries `(i, e∖i)`;
- R2⁻¹/R3⁻¹ re-form the spine state; D-rows and E1 are injective by the
  tags; F-rows by the typed constructors.

**(b) is the substantive obligation.** The clean pairs are separated by
mode, top frame, and the invariants (examples: A2-range has `Clo` at the
environment head where A3-range has `Level(m)` — disjoint by I2; R1/R3
ranges are separated by the returned NF's outer constructor plus I1).
The hard family is everything whose range lands in an unconstrained
`Eval` configuration: **A4 against A1/A2/A6/D1/D2** — a dereferenced
closure can look like anything. The `Look` tag does not by itself
separate these ranges (an A1 source whose stale residue happens to end
in a `Look` collides with a fresh A4 target), so the discipline is:

> **Residue-freshness invariant [open]**: the table is arranged so that
> for reachable configurations, whether the residue head was written by
> the producing step is determined by the configuration shape. The
> candidate mechanism is a one-bit `fresh` flag on `Run` set by charged
> rows (A4, A5, D·, E1) and cleared by the first uncharged row after —
> with the flag's own overwrite made lawful by the *pop schedule* below.

**[open]** This is the crux of item 1 and the first thing the review
should attack; §5 shows the pop schedule is forced independently, so the
freshness mechanism and the pop schedule must be designed together.

**Local minimality** is then the statement: `Look(i, e∖i)` is exactly
the predecessor-fibre content for A4/A5 (the round-1 KN witness shows
`i` and the origin environment are genuinely lost without it), the
δ tags are exactly the fibre separators, and no uncharged row retains
anything — each of its predecessor fibres is a singleton by (b).

## 5. The witness-forcing analysis

### 5.1 HH passes on this table

Hand computation of `h (h 0̂)` (= `App(h, App(h, 0̂))` after invocation
plumbing; the outer `t`-abstraction is administrative and shared):

all steps through the inner δ are common to both branches — A1, A6
(outer `h`), A1, A6 (inner `h`), A3·A3·A5·R1·R1 normalizing the literal
`0̂` (one `Look` tag, *common*), then `D1` branches with the shared `Jh`
tag. Each branch's boolean lands as `Ret`-adjacent `Eval⟨(b̂,∅)⟩` under
the outer `Try_h`; it is already a normal form, and its renormalization
(A3·A3·A5·R1·R1) writes `Look` tags whose content is
*branch-independent* — `0̂` and `1̂` share the index-to-hole shape only
when… **it is not branch-independent**: `0̂` looks up `Var 2`, `1̂` looks
up `Var 1`, so the second `Look` tags differ, and naively HH decoheres
too. The repair is already in the table: `D1`'s outcomes re-enter as
`Eval⟨(b̂,∅)⟩` — and a returned δ *value is already an NF*, so the table
must (and here does) route it back to the waiting `Try` frame without
renormalization when the outer frame is `Try_g`:

```text
A6′ Eval⟨(b̂,∅)⟩ | Try_g::S             → Ret⟨b̂⟩ | Try_g::S      [no tags]
```

**[open]** A6′ as stated is a recognition rule (boolean-valued focus
short-circuits to `Ret`); its range/injectivity interplay with A3 needs
the §4 treatment, and its generalization (any NF-valued closure
short-circuits) is a design choice with real consequences — as stated
it is deliberately minimal: booleans under `Try` only. With A6′, both
HH branches write no post-branch `Look` tags, residues stay equal, the
outer `D1` fires per branch with the common `Jh`, and the `1̂`
amplitudes cancel: final state `|0̂⟩` at mass 1. The amplitude
computation is review-confirmed; "HH passes" is conditional on the A6′
repair of §7.1 (distinct `ReadyBool` landing with branch-independent
provenance), since A6′ as displayed overlaps A3 and collides with
genuine readback.

### 5.2 Selector H–NOT–H decoheres under this table's permanent tags

Take `NOT := λb. b 1̂ 0̂` (the selector) and run `h (NOT (h 0̂))`. After
the inner δ, the branches carry `b̂ = 0̂` / `1̂` and equal residue `R₀`.
The `b`-lookup tag is equal across branches (the hole excludes the
differing entry); the selection then fires:

```text
branch 0̂:  A4 on Var 2 → tag Look(2, [Clo(0̂,∅), _])
branch 1̂:  A4 on Var 1 → tag Look(1, [_, Clo(1̂,∅)])
```

The tags differ, the branches reach the outer `D1` with unequal
residue, the `1̂` amplitudes fail to cancel, and the halting state is
the (1/2, 1/2) mixture. **Correct theorem (review-verified): permanent
`Look(i, e∖i)` residue in this table makes selector H–NOT–H decohere
unless a code-aware cleanup transition removes it.**

Two stronger claims made by v0 are **retracted**:

- *"No local pop is legal"* — false. The selector's tag *is* determined
  by its result once the decoder is known (`1̂ ↦ Look(2, [0̂,_])`,
  `0̂ ↦ Look(1, [_,1̂])`): the unselected literal is the complement of
  the selected one, fixed by the code. What is missing is live
  *provenance* — a marker that this decoder applies — which makes it a
  scheduling problem, not an information-theoretic impossibility.
- *"Any machine with permanent lookup residue fails"* — false.
  Counterdesign `LookFull(e, r)` with `r` the occurrence ordinal of the
  selected entry among equal entries of `e`: injective (recover `i` as
  the `r`-th occurrence of the returned closure in `e`), permanent, and
  *branch-independent* whenever the whole environment is — for the
  selector both branches write the identical `LookFull([0̂,1̂], 1)`. It
  violates the local-minimality economy by design, but it refutes the
  universal claim and marks a genuine machine-design axis (§7.3).

### 5.3 Coherence is operational injectivity, not syntactic linearity

v0 conjectured that terms linear in the consumed boolean are
coherence-transparent under a generic pop-at-Ret rule. **Both halves
are false** (review countermodels, verified):

- *Generic pop-at-Ret is unsound.* `N = λb.λx.λy. b y x` applied to
  `1̂` and `I' = λb.λx.λy. b x y` applied to `0̂` both return `0̂` at
  the same frame shape and depth, with *different* selection tags
  (`Look(1, [_,Clo(ȳ)])` vs `Look(2, [Clo(ȳ),_])`). A pop keyed only
  on the returned NF and frame would merge distinct configurations —
  non-injective — and since `p` is not a basis coordinate, the inverse
  cannot consult program identity. The NF ↔ tag bijection exists only
  relative to a retained code/call-site decoder.
- *Linearity is not sufficient.* `λb. b I I` uses `b` exactly once and
  maps both booleans to `I`: the computed function is non-injective, so
  by injectivity of `U` the consumed bit *must* persist somewhere, and
  no cleanup can produce equal residue. Conversely, syntactic
  duplication can be coherent — basis-copying `b ↦ (b, b)` is
  injective.

The correct notion: **coherence-transparency requires operational
injectivity of the computed map on the branch support, plus a
synchronized, code-aware cleanup schedule.** Erasure = non-injectivity
of the computed function, and *that* is what costs coherence — the
Landauer reading survives, attached to semantics rather than syntax.

### 5.4 The sound scheduling shape: explicit reversible uncomputation

The plausible construction (review round, unproved here) is Bennett
compute–copy–uncompute specialized to the machine:

1. push a branch-independent `CleanK(code, call-site)` frame;
2. evaluate forward, accumulating reversible tags;
3. copy the returned basis NF into a protected result zipper;
4. enter a distinct **reverse mode** and invert the forward transitions
   in LIFO order;
5. use the protected result to reconstruct and clear the input when the
   compiled map is injective;
6. return with a fixed direction state and branch-independent residual
   control.

The direction flag is safe only because reverse execution restores it —
it is never "cleared" by a forward row. Proving this schedule sound for
one pinned NOT term is **the smallest clean-compilation lemma**, and it
is the actual content behind witness 7.

### 5.5 Contract implication (review-ratified direction)

Witness 7 stands as a machine gate, in the satisfiable world: pin an
exact NOT wire term (`NOT′ = λb.λx.λy. b y x` is a reasonable choice —
easier for this machine, though the selector NOT is *not* intrinsically
incoherent: Boolean NOT is bijective and its alternatives are fixed
code, so a sufficiently code-aware reversible compilation can clean it
too); state that passing the witness requires a proved code-aware
reversible cleanup schedule; and treat the whole thing as the first
concrete lemma of clean coherent compilation rather than a theorem
about binder counts. The witness-pinning amendment goes back through
the review thread with v1.

## 6. Invariant sectors

`RunDone`, `Halt`, `Error` are basis constructors; F1–F4 are rows of the
same table. F2/F3 realize the architecture's normative halted dynamics
(`id_output ⊗ id_garbage ⊗ id_terminal-control ⊗ shift_tick`, entry at
tick 0); F4 is its error-sector twin. The monotone-halting-mass lemma
(architecture §4.3) instantiates directly: the halt sector is spanned by
`Halt(·)` configurations, F2 maps into it, F3 maps it into itself
injectively, no row maps out of it, and newly arriving amplitude lies in
the wandering subspace `S ⊖ V(S)` by the typed entry. The same argument
covers `Error` verbatim.

## 7. v0 defect register and the v1 direction

### 7.1 Confirmed table defects (review countermodels)

1. **A2 is not injective under canonical trimming.** For a vacuous
   binder, `Eval⟨(Lam I, ∅)⟩ | Arg(X)` and `| Arg(Y)` both land at
   `Eval⟨(I, ∅)⟩` once the constructed closure trims the unused entry.
   The discarded argument is genuine erased content: v1 must either
   route it to residue (the sketch's binding-erasure row, lost in v0)
   or abandon trimming-at-construction for bound entries. Separately,
   trimming must be suffix-only or `Env` must become a sparse indexed
   map — deleting interior entries shifts de Bruijn indices.
2. **A1 and A2 ranges collide** on unconstrained `Eval` targets:
   `((λx.x) X) Y` and `(λx. x Y) X` both reach
   `Eval⟨(Var 1, [X])⟩ | Arg(Y)::S`. The v0 "clean pairs" claim checked
   only marked-target rules; deterministic rows need producer marking
   too.
3. **A6′** overlaps A3's domain (needs explicit exclusion) and its
   target collides with genuine R1 readback of a non-literal
   normalizing to a boolean; it needs a distinct landing mode
   (`ReadyBool` with branch-independent provenance), which HH tolerates.
4. **E1 is not injective**: it drops `S` and `m` (`h I` vs `(h I) A`
   reach the same error with different discarded continuations). Error
   garbage must retain the complete discarded control: `(S, m, n, g)`.
   Error-sector coherence is irrelevant; norm preservation is not.
5. **D3/R3 collide** through stale `Jn_g` residue, and the one-bit
   freshness proposal is itself non-reversible — clearing a flag merges
   its prior values. Producer marking must be **rule-coloured landing
   modes removed only through explicit inverse/uncompute paths**, not
   flags cleared by forward rows.

### 7.2 What stands after review

The invariant-sector construction and wandering-subspace argument (§6);
the H–NOT–H decoherence trace and its corrected narrow theorem (§5.2);
the operational-injectivity reformulation (§5.3); the Bennett scheduling
shape (§5.4); I1/I5 provisionally, with induction proofs deferred until
the coloured-mode table exists.

### 7.3 The v1 design fork (machine-defining, to be settled before v1)

The canonical machine — and therefore the canonical `Ω_qALC` — depends
on a genuine choice surfaced by the `LookFull` counterdesign:

- **(A) Minimal tags + code-aware reversible cleanup**: residue is
  locally minimal (`Look(i, e∖i)` style), coherence is *earned* through
  explicit compute–copy–uncompute (§5.4), and the coherence economy is
  a rich measured object — programs that clean up interfere, programs
  that don't decohere.
- **(B) Symmetric redundant tags (`LookFull`-style)**: residue retains
  branch-independent context wherever possible, more coherence comes
  for free, the witness passes with less machinery — and the measured
  economy flattens, since redundancy substitutes for uncomputation.

These define *different canonical objects*, in the same way the frozen
signature order defines qBLC's: the choice must be made deliberately,
recorded, and then pinned. v0's working recommendation is (A), for
alignment with the architecture's local-minimality theorem and because
(B) hides exactly the erasure structure the pillar exists to measure —
but the fork is open until ratified.

### 7.4 Formalization checklist (live status)

| Item (architecture §9 / machine §6) | Status |
|---|---|
| Transition table, total on reachable `Config` | v0 drafted; **rebuild for v1** with coloured landing modes (§7.1) |
| Per-rule injectivity | v0 claims partially refuted (A2, E1); redo in v1 |
| Range disjointness | v0 claim false (A1/A2); needs producer marking throughout |
| Local predecessor-fibre minimality | blocked on the §7.3 fork |
| Invariant-sector lemma in-machine | **done** (§6, review-confirmed) |
| HH witness by hand | amplitude computation confirmed; conditional on A6′ repair |
| H–NOT–H witness by hand | decoherence trace confirmed; coherent path = smallest clean-compilation lemma (§5.4) |
| Witness-7 pinning amendment (NOT′) | drafted direction (§5.5); thread ratification with v1 |
| Effect-free projection lemma | open |
| Clean compilation (architecture item 2) | §5.4 is its smallest instance; substrate = operationally injective maps |
