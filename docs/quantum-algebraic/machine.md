# qALC reference machine — formal draft v0

**Status: formal draft, under adversarial review.** This document
supersedes the pre-formal sketch (git history; provenance in
`../ledger/2026-08.md`) and is the working object for
`architecture.md` §9 item 1. Sections marked **[open]** are stated
obligations, not results. The architecture contract wins wherever they
disagree.

Two findings made during this formalization stand out and are flagged
inline: the **witness-forcing analysis** (§5 — permanent lookup residue
makes the contract's H–NOT–H witness fail, so coherent popping is
load-bearing, not optional) and the **linearity observation** (§5.3 — the
coherent NOT is the linear λ-term; discarding selectors decohere by
exactly their erased content).

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
amplitudes cancel: final state `|0̂⟩` at mass 1. **HH passes, and the
δ tags' content-freeness plus A6′ are exactly what it needed.**

### 5.2 Permanent lookup residue fails H–NOT–H — the forcing theorem

Take `NOT := λb. b 1̂ 0̂` (the selector) and run
`h (NOT (h 0̂))`. After the inner δ, the branches carry `b̂ = 0̂` / `1̂`
and equal residue `R₀`. Evaluating `NOT b̂`: A1·A1·A2 bind `b`, then A4
looks up `b` — tag `Look(1, [_])`, *equal* across branches (the hole
excludes the differing entry). The boolean then consumes the two
argument closures — A2·A2 with environment `[Clo(0̂,∅), Clo(1̂,∅)]`
equal across branches by I3 — and then the selection fires:

```text
branch 0̂:  A4 on Var 2 → tag Look(2, [Clo(0̂,∅), _])
branch 1̂:  A4 on Var 1 → tag Look(1, [_, Clo(1̂,∅)])
```

The tags differ in both hole position and retained content, and the
retained content is the **unselected alternative**. No local pop can
erase them: the pop-legality condition (the post-pop configuration
determines the tag) fails, because after selection the configuration
holds only the selected value — the unselected closure is information
the branch no longer carries anywhere else. The branches therefore
reach the outer `D1` with unequal residue, the `1̂` amplitudes fail to
cancel, and the halting state is the (1/2, 1/2) mixture: **witness 7 of
the architecture's verification contract fails on any machine whose
lookup residue is permanent.** Coherent popping is not an optimization —
the frozen contract makes it a correctness requirement.

### 5.3 The linearity observation and the pop-at-Ret candidate

Run the same computation with the **linear** NOT,
`NOT′ := λb.λx.λy. b y x` — no duplication, no discard. The δ-argument
`NOT′ b̂` normalizes under two binders (A3·A3, branch-independent), the
lookup of `b` writes an equal tag as before, and the selection consumes
*level variables*, not literals:

```text
branch 0̂:  Look(2, [Clo(x̄), _])        result NF: 1̂
branch 1̂:  Look(1, [_, Clo(ȳ)])        result NF: 0̂
```

The tags still differ — the one selection bit must live somewhere — but
now the correspondence `result NF ↔ tag` is a *bijection in the
enclosing frame*: `1̂` says "the second binder was selected", which is
exactly `i = 2` and exactly which level closure the hole retains. A
**pop-at-Ret** rule that, when a `Try`/readback boundary returns an NF,
pops every residue tag whose content is determined by the returned NF
and the frame it returns into, is (i) locally legal (the tag is
re-derivable, so the pop is injective) and (ii) exactly what H–NOT–H
needs: both branches pop their selection tags at `Ret`, residues
equalize, and the outer `D1` cancels the `1̂` amplitudes. With the
*selector* NOT of §5.2 the bijection fails — the unselected literal is
not recoverable from the result — and the branches stay decohered.

Conjecture (the **linearity conjecture**): λ-terms that are linear in
the consumed boolean (every binder used exactly once — no discard, no
duplication) admit tag-balanced execution under pop-at-Ret and are
coherence-transparent; terms that *discard* decohere by exactly the
erased content. Erasure costs coherence — Landauer's principle
surfacing as decoherence structure, and precisely the Lineal intuition
that the linear fragment is the unitary one.

**[open — the crux]** Pop-at-Ret needs a deterministic schedule
(which tags, in which order, fused into which `Ret` rows) and must
preserve backward determinism (§4): a popped configuration's producing
rule must remain recognizable. This is the same mechanism as the
residue-freshness invariant and they must be solved together. Failure
mode to check: whether pop-at-Ret can be made forward-deterministic
without a phase counter that is itself unerasable garbage.

### 5.4 Contract implication

If pop-at-Ret (or an equivalent) works, witness 7 stands as frozen and
the machine earns H–NOT–H for the linear NOT — and the witness should
then *specify* `NOT′` (the linear term), since §5.2 shows the selector
NOT fails for reasons that are physically honest (it reads and
discards). If no sound pop schedule exists, witness 7 is unsatisfiable
as frozen and the contract needs an amendment tying it to the
clean-compilation theorem (architecture §6). Either way the resolution
must go back through the review thread before implementation.

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

## 7. Formalization checklist (live status)

| Item (architecture §9 / machine §6) | Status |
|---|---|
| Transition table, total on reachable `Config` | drafted (§2), A6′ and pop rows pending |
| Per-rule injectivity | proved rowwise (§4) |
| Range disjointness — clean pairs | proved via I1–I5 (§4) |
| Range disjointness — lookup family, freshness, pops | **open crux** (§4, §5.3) |
| Local predecessor-fibre minimality | stated; follows the crux |
| Invariant-sector lemma in-machine | done (§6) |
| HH witness by hand | done — passes given A6′ (§5.1) |
| H–NOT–H witness by hand | done both ways — forcing theorem (§5.2–5.3) |
| Effect-free projection lemma | **[open]**, expected routine |
| Clean compilation (architecture item 2) | untouched; §5.3 suggests the linear fragment as its substrate |
