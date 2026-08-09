# qALC reference machine — formal draft v1

**Status: formal draft v1, submitted for adversarial review.** Working
object for `architecture.md` §9 item 1. v0's review verdict, refuted
claims, and defect register are in `../ledger/2026-08.md`; every v0
defect has a v1 resolution (§8.1). Fork (A) of the v0 register —
minimal-information residue with *earned* coherence — is ratified and
built in. The architecture contract wins wherever they disagree.

v1 is organized around three design commitments that answer the v0
review:

1. **A no-erasure forward machine** (§1): nothing is discarded in
   forward mode — no closure trimming, no environment drops. Erasure
   exists only as explicit, reversible discard-to-residue, and most of
   v0's injectivity defects dissolve because the information they lost
   is simply never lost.
2. **Rule-colored configurations with join charging** (§2): every
   running configuration carries the color (rule id) of its producer;
   every step charges a `Join` tag recording its predecessor's color.
   Ranges are pairwise disjoint by color, backward determinism is
   structural, and the local-minimality theorem becomes a monotone
   research program (§2.3) rather than a single fragile claim.
3. **The Try-boundary protocol** (§5): coherent gate application is
   implemented by forward–copy–reverse execution across δ-argument
   boundaries, with the reverse pass running *through* earlier δs as
   their adjoint columns. Coherence is earned exactly by uncomputation,
   interference requires path-length synchronization — reproducing the
   architecture's common-`T` clean-compilation requirement from machine
   structure — and witness 7 passes for the path-symmetric `NOT′`.

## 1. Syntax and state

```text
T  ::= Var(i) | Lam(T) | App(T, T) | h | t          (i ≥ 1, 1-indexed)
NF ::= Lam(NF) | Neu
Neu ::= Var(i) | h | t | App(Neu, NF)

Bind ::= Clo(T, Env) | Level(l)
Env  ::= [Bind, …]        — full lists; NEVER trimmed; index-stable
Clo  ::= (T, Env)         — structural identity, no allocation identity
```

Canonical booleans `0̂ = Lam(Lam(Var 2))`, `1̂ = Lam(Lam(Var 1))`.
Closures are untrimmed: a closure's environment is whatever was in
scope at capture, verbatim. Dead environment entries are a *coherence
cost*, not a correctness cost — they are removed only by reverse
execution (§5), never by a forward rule. (v0's trimming-at-construction
broke A2 injectivity on vacuous binders and is abandoned.)

```text
Frame ::= Arg(Clo)
        | LamK
        | AppK(Neu)
        | Try_g(Clo)              — δ boundary; RETAINS the argument closure
        | Try_g(Clo, b̂)          — after result copy (protocol, §5)

Res   ::= Join(color)            — predecessor color, charged every step
        | Look(i, Env∖i)          — lookup content (A4/A5 only)
        | Drop(Clo)               — explicit discard (δ-fire only, §5)

Color ::= Init | A1 | A2 | A3 | A4 | A5 | A6 | A6b | A7
         | R1 | R2 | R3 | D1 | D2 | D3 | CP | RV(c)

Config ::=
    Run(dir: Fwd | Rev, via: Color, mode: Eval(Clo) | Ret(NF),
        S: [Frame], m: depth, R: [Res])
  | RunDone(nf, R, c⊥)
  | Halt(nf, R, c⊥, k)
  | Error(kind, ctl: (S, m, NF, gate), R, k)
```

`(p, τ)` remain evaluator indices (frozen contract). `Error` retains
the complete discarded control `(S, m, offending NF, gate)` — v0's E1
defect.

## 2. The color discipline

### 2.1 Structure

Every forward row `r` fires from a source pattern (which does not
constrain `via` — any producer is acceptable), sets the target's
`via := r`, and pushes `Join(source.via)`. Reverse rows (§5) are the
formal inverses: they read their own color, pop the `Join`, and
restore the predecessor.

**Theorem shape (injectivity).** For forward rows: given a target
`(Fwd, via = r, core′, R·Join(v))`, rule `r` is identified by `via`,
its core inverse (§3, rowwise) reconstructs the source core from
`core′` plus `r`'s content tags, and the source color is `v`. Two
distinct sources cannot share a target: same `via` forces the same
rule, same `Join` forces the same predecessor color, and rowwise core
injectivity forces the same core. Range disjointness across rules is
immediate from `via`. δ fibres: the two outcomes of one `D1` firing
share `via`, `Join`, and spectators, differing only in the outcome
boolean — the fibre is `Q_q ⊗ J_q` with `J_q` realized by
(`via := Dq`, push `Join`), identical across input and output booleans,
and fibres from distinct sources are orthogonal because spectators or
`Join` content differ. Cross-gate orthogonality `J_h†J_t = 0` is the
color disjointness `D1 ≠ D2`. This realizes the architecture's clean
δ fibre clause exactly.

### 2.2 What conservative charging costs, honestly

`Join` tags record the control path. Two branches of one program
re-merge in raw forward execution **iff they executed the identical
rule sequence with equal content tags** — control-path-identical
branches (HH's two δ outcomes) interfere freely; control-divergent
branches decohere until cleaned. Under fork (A) this is the honest
physics: raw forward execution never erases, so control divergence is
recorded, and interference across divergent control is *earned* through
the reverse machinery of §5. This is not the probabilistic
degeneration of the architecture's §4.5: content is not logged, and
same-control interference (HH) survives raw.

### 2.3 The minimality program

A row is *via-transparent* if its source color is derivable from the
rule plus target core on reachable configurations — then its `Join`
push can be soundly omitted. v1 charges every row (conservative,
sound). Each via-transparency lemma proved later removes a tag class
and **monotonically enlarges the class of raw-interfering programs**;
the true minimal-garbage machine is the maximal safe transparency set.
This replaces v0's single minimality claim with a program whose every
step is independently checkable — and every step *changes the measured
coherence economy*, so transparency lemmas must be ratified and pinned
like the machine itself before canonical data exists.

## 3. The forward table

Every row implicitly: `via := <row id>`, push `Join(source.via)`; all
rows are `dir = Fwd` except where stated. Content residue beyond
`Join` is noted per row.

### Descent and binding

```text
A1  Eval⟨(App f a, e)⟩ | S           → Eval⟨(f, e)⟩ | Arg(Clo(a,e))::S
A2  Eval⟨(Lam b, e)⟩ | Arg(c)::S     → Eval⟨(b, c::e)⟩ | S
A3  Eval⟨(Lam b, e)⟩ | S, top∉Arg∪Try → Eval⟨(b, Level(m+1)::e)⟩ | LamK::S   [m+1]
```

A2 is injective with no residue: the environment head is never trimmed
away, so A2⁻¹ pops it back into an `Arg` frame. Vacuous binders carry
their dead entry as live state (coherence cost, §5 removes it).

### Lookup (content-charged)

```text
A4  Eval⟨(Var i, e)⟩ | S, e[i] = Clo c   → Eval⟨c⟩ | S       [+ Look(i, e∖i)]
A5  Eval⟨(Var i, e)⟩ | S, e[i] = Level l → Ret⟨Var(m−l+1)⟩ | S  [+ Look(i, e∖i)]
```

### Constants and the δ boundary

```text
A6   Eval⟨(g, e)⟩ | Arg(c)::S, g∈{h,t}   → Eval⟨c⟩ | Try_g(c)::S
A6b  Eval⟨(b̂, e)⟩ | Try_g(c)::S          → Ret⟨b̂⟩ | Try_g(c)::S
A7   Eval⟨(g, e)⟩ | S, top∉Arg           → Ret⟨g⟩ | S
```

`Try_g(c)` retains the argument closure — the δ boundary is also the
protocol boundary of §5. A6b is the boolean short-circuit; its v0
collisions with A3 and R1 are resolved by color (`via = A6b`) and by
A3's explicit `Try` exclusion. A6's source keeps `e` in the closure
`c`'s captured environment; nothing is dropped.

### Readback

```text
R1  Ret⟨n⟩ | LamK::S                  → Ret⟨Lam n⟩ | S        [m−1]
R2  Ret⟨n⟩ | Arg(c)::S, n neutral     → Eval⟨c⟩ | AppK(n)::S
R3  Ret⟨n′⟩ | AppK(n)::S              → Ret⟨App n n′⟩ | S
```

### δ rows (protocol-mediated; see §5 for the full firing sequence)

```text
CP  Ret⟨b̂⟩ | Try_g(c)::S             → Run(Rev, …) | Try_g(c, b̂)::S
D1  fire on result register b̂ in Try_h(c, b̂), post-protocol:
      b̂=0̂ → (1/√2)(⟨0̂-continue⟩ + ⟨1̂-continue⟩)      [+ Drop(c)]
      b̂=1̂ → (1/√2)(⟨0̂-continue⟩ − ⟨1̂-continue⟩)      [+ Drop(c)]
D2  likewise with Q_t = diag(1, ω)                          [+ Drop(c)]
D3  Ret⟨n⟩ | Try_g(c)::S, n neutral   → Ret⟨App g n⟩ | S     [+ Drop(c)]
E1  Ret⟨n⟩ | Try_g(c)::S, n closed NF ∉ {0̂,1̂}
                                       → Error(Species(g), (S, m, n, g), R, 0)
```

`⟨b̂′-continue⟩` abbreviates `Eval⟨(b̂′, ∅)⟩ | S` — the boolean
literal is closed, so the empty environment is its verbatim capture,
not a trim. `Drop(c)` is the machine's only discard: the retained
`Try` closure is branch-independent by construction (captured before
the δ fired), so this tag never decoheres branches of one firing.

### Terminal sectors

```text
F1  Ret⟨n⟩ | ∅, m = 0                 → RunDone(n, R, ⊥)
F2  RunDone(n, R, c)                  → Halt(n, R, c, 0)
F3  Halt(n, R, c, k)                  → Halt(n, R, c, k+1)
F4  Error(kind, ctl, R, k)            → Error(kind, ctl, R, k+1)
```

## 4. Reachability invariants

- **I1**: `Ret⟨Lam n⟩` never meets an `Arg` frame.
- **I2**: `Level(l)` occurs in reachable environments only with
  `l ≤ m`, ordered by capture.
- **I3**: `Try_g(c)` frames appear only above a δ-argument evaluation;
  at most one `Ret` in flight per branch.
- **I4**: depth `m` equals the number of `LamK` frames in `S`.
- **I5** (new): in `Fwd` mode the residue is a faithful LIFO record —
  the top tag was pushed by the producing step.

**[open]** Induction proofs over the v1 table, after review.

## 5. The Try-boundary protocol

The δ boundary is where coherence is earned. The full sequence for a
δ-argument (entered at A6, `Try_g(c)` retaining the argument closure):

1. **Forward**: the argument evaluates under the `Try` frame,
   accumulating `Join`/`Look` tags; earlier δs inside the argument fire
   normally (branching the configuration).
2. **Copy (CP)**: on `Ret⟨b̂⟩ | Try_g(c)`, the machine basis-copies the
   result boolean into the frame — `Try_g(c, b̂)` — and flips to
   `dir = Rev`. Per basis configuration this is a CNOT into a fresh
   register: injective, branch-local, legal.
3. **Reverse**: `Rev` rows are the formal inverses of the forward rows,
   popping tags in LIFO order and restoring predecessor configurations.
   Crucially, reverse runs *through* interior δ firings as their
   adjoint columns (`Q_q†` acting on the configuration superposition) —
   reverse is always available because the machine is an isometry, and
   no code-supplied inverse function is needed. The reverse pass ends,
   by construction, at the unique `Try`-entry configuration whose
   color is `A6` — the frame itself is the entry marker.
4. **Fire**: the state is now the branch-independent entry
   configuration tensored with the result register carrying the
   argument's value superposition. The δ row (D1/D2) fires on the
   result register, `Drop(c)` charges the retained closure, and
   evaluation continues with the outcome literal.

**What this buys.** Across the whole protocol the argument evaluation
acts as one coherent linear map from the entry configuration to the
result register — Bennett compute–copy–uncompute with the input
retained by the frame, so injectivity of the *computed function* is
never needed (retaining the input makes `c ↦ (c, f(c))` injective for
every `f`). The tags written by divergent branch control are unwound
symmetrically, so post-protocol branches differ **only in the result
register and in global timing**.

**What it honestly does not buy.** Branches whose forward evaluation
took different numbers of transitions finish the protocol at different
global times and never interfere — the synchronization convention,
resurfacing as the machine-level residue of control divergence. A
δ-argument interferes coherently iff its branch paths are
transition-count-equal. This *derives* the architecture §6
clean-compilation requirement (single common `T`) from machine
structure instead of stipulating it, and defines the clean fragment
operationally: **code whose branch paths are length-balanced**.

**Witness 7.** `NOT′ = λb.λx.λy. b y x` is path-symmetric: both
booleans drive rule-for-rule identical control (`A3·A3`, the `b`
lookup, two `A2`s, one selection lookup, readback) with equal
transition counts, differing only in `Look` content that the reverse
pass pops. Hand trace (§6.2): the protocol returns the entry
configuration with result register `(1/√2)(|1̂⟩ ± |0̂⟩)` per branch
sign, the outer D1 fires, and the `1̂` amplitudes cancel — mass 1 on
`0̂`. The witness-pinning amendment (architecture witness 7 names
`NOT′` and the protocol) travels with this draft's review.

**[open — protocol determinism obligations]** (i) CP fires whenever a
basis boolean returns under `Try` — forward-deterministic; A6b's
short-circuit must be ordered before CP for already-literal booleans
(else HH's outcomes would pay a full protocol pass; ordering is a
determinism choice to pin, and either choice is sound — the
short-circuit is an optimization with identical amplitudes since a
literal's protocol is empty). (ii) `Rev` rows need their own
backward-determinism check: `dir`+color makes their ranges disjoint
from forward rows, and each `Rev` row's injectivity is its forward
row's. (iii) The direction flip at CP and the flip back at fire are
paired; neither "clears" anything — the v0 freshness defect does not
recur.

## 6. Witnesses by hand

### 6.1 HH — raw, no protocol

`h (h 0̂)`: shared prefix A1·A6(outer)·A1·A6(inner)·A3·A3·A5·R1·R1
(one `Look`, common), inner CP/trivial-protocol, D1 branches with
shared color and `Join`; each outcome short-circuits via A6b to the
outer `Try`, outer protocol is empty (literal), outer D1 fires per
branch, residues equal throughout, `1̂` cancels: mass 1 on `0̂`.
Control paths are rule-identical across branches — HH interferes raw,
as §2.2 promises.

### 6.2 H–NOT–H — protocol-mediated

`h (NOT′ (h 0̂))`: shared prefix through the inner D1; branches carry
`b̂ = 0̂/1̂` with equal residue; forward evaluation of `NOT′ b̂` runs
length-equal, rule-identical control with branch-divergent `Look`
content (`Look(2, [Clo(x̄), _])` vs `Look(1, [_, Clo(ȳ)])`); CP copies
`1̂`/`0̂`; reverse pops the `Look`s and `Join`s symmetrically and runs
back through the inner D1 adjoint; the entry configuration
re-materializes branch-independently with result register
`H·X`-transformed; outer D1 fires; `1̂` amplitudes cancel: **mass 1 on
`0̂`**. With the selector `NOT = λb. b 1̂ 0̂` the forward paths are
also length-equal in this table — the selector's decoherence in v0 came
from permanent tags, which the protocol now pops — so v1 predicts the
selector *also* passes; the pinned witness stays `NOT′` because its
symmetry is robust to table refinements, and the selector's fate is a
measurable, not a gate. **[open: both traces to be verified
step-indexed in review]**

## 7. Invariant sectors

Unchanged from v0 (review-confirmed): `RunDone`/`Halt`/`Error` are
typed constructors, F2/F3/F4 realize the normative halted dynamics and
its error twin, newly halting amplitude lies in the wandering subspace,
and the monotone-mass lemma instantiates verbatim.

## 8. Bookkeeping

### 8.1 v0 defect resolution map

| v0 defect | v1 resolution |
|---|---|
| A2 non-injective under trimming | no-erasure forward machine: trimming abolished (§1) |
| A1/A2 range collision | color discipline: ranges disjoint by `via` (§2.1) |
| A6′ domain/range collisions | A6b color + A3 `Try` exclusion (§3) |
| E1 drops `(S, m)` | `Error` retains full control (§1, §3) |
| D3/R3 stale-tag collision | color discipline (§2.1) |
| freshness flag non-reversible | no flags; paired CP/fire direction flips (§5) |

### 8.2 Formalization checklist (live)

| Item | Status |
|---|---|
| Transition table, total on reachable `Config` | v1 drafted (§3, §5); Rev rows schematic |
| Injectivity / range disjointness | theorem shape §2.1; rowwise inverses stated; full proof after review |
| Local minimality | reframed as the transparency program (§2.3) |
| Invariant-sector lemma | done (review-confirmed) |
| HH by hand | done raw (§6.1) |
| H–NOT–H by hand | done via protocol (§6.2); step-indexed verification open |
| Witness-7 pinning (NOT′ + protocol) | drafted; travels with this review |
| Effect-free projection lemma | open; expect: term projection = rigid-atom sequence, administrative rows are A6b/CP-free on effect-free runs |
| Clean compilation | operationally derived: length-balanced code + protocol (§5); formal statement open |
