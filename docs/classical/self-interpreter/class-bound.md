# The separated class: the 162 is its minimum

The separated class is every interpreter built the way the 162 and the 165
are built: an opaque fixed-point knot around a parser whose reader may fuse
dispatch, variable value, skip and return arbitrarily, with a separate NEXT
that builds the values. This document carries one result: **the 162 is the
minimum of the class**. §1 defines the class; §2 gives its exact price, the
kernel-checked 146-bit bound and the finite check behind `w ≥ 46`; §3
reduces every reader of weight at most 45, taken minimum, to that check's
finite set; §4 widens the class and §5 says what lies outside.

A result credited to a named lane was established in that lane's archive at
commit `703f50d` (`data/self-interpreter/reasoning_class/<lane>/`, round 3
under `reasoning_162/`). Data paths given without a directory are under
`data/self-interpreter/class-bound/`. Lean cited by a `Blc/` module builds
with `lake build Blc`; Lean credited only to a lane was kernel-checked in its
archive. "At the tag" means at tag `selfint-record-2026-11-25`.

## 1. The class

Streams, bits and unary codes are the record's: `cons b r = λf. f b r`,
`K = λx y. x`, `F = λx y. y`, `Z(r) = cons K r`, `U_n(N) = 1ⁿ0 ++ N`. All free
parameters are independent rigid variables. The canonical constructors are

```text
Abs(f)   = λe a. f (λb r. b a (r e))
App(f,g) = λe. f e (g e)
```

A member of the class is `E = T[H/h]` with

1. **NEXT** `Q`: a term in the frame `[c, p]` that is β-normal, uses its tag
   binder only as the head of exactly-two-argument spines, and satisfies
   the canonical rigid branch laws
   `Q K t =β p (λf. c Abs(f)) t` and
   `Q F t =β p (λf. p (λg. c App(f,g))) t`;
2. **reader** `R`: an arbitrary term with free variables among `c, j`,
   exactly one source occurrence of `j`, satisfying the independent rigid
   reader laws
   `R Z(r) =β r j` and `R U_n(N) =β c U_(n−1)(N) N` for every `n ≥ 1`;
   then `H = λp c. R[Q/j]`, inserted hygienically (Q cannot use R's
   binders, but R may sit Q under any of them and duplicate it through
   lets or redexes);
3. **knot**: any λ-context `T[h]` with `T[h] =β h T[h]` and `k` holes.

All sizes are of these literal source trees. The 162 is the member with
`R = λs. s I (λu. s (λq. c) (s s u)) j`; the 165 is the member with
`R = (λn s. s (λb. b (λu r. r n) c) (s s s)) j`. The separation, the
normality and the rigid laws are hypotheses: §4 says which of them can be
weakened, and §5 what lies outside. Every member is s-headed: the zero law
forces the reader's head normal form to be `λs. s A⃗`.

## 2. The exact price, the 146-bit bound and the finite check

Write `cost(R)` for R's BLC size with the `j` leaf priced at zero (and `c`
at its index in the frame `[c, j]`), `depth(j)` for the number of R's
λs above `j`, and `w(R) = cost(R) + 4 depth(j)`.

**Theorem (Lean, `Blc/SelfintClass.lean`).** Every member satisfies

```text
|E| ≥ 116 + w(R)    and    |E| ≥ 138,
```

and with the canonical NEXT and the 20-bit knot `(λx. x x) (λx. h (x x))`
the first is an equality. The 162 is `(cost, depth) = (42, 1)`,
`w = 46`; the 165 is `(49, 0)`, `w = 49`; both are proved to be the literal
assemblies.

The 116 is the knot 20, the binders `λp c` 4 and NEXT 92; NEXT's four free
`c`/`p` leaves each pay one index bit per reader λ above the hole, which is
the `4 depth(j)`. Its parts: NEXT costs at least 92 bits and has at least
four free `c`/`p` leaves (`next_bound_of_rigid_laws`, formalizing Codex's
handwritten nine-form classification); every reader has a nonlinear binder
and at least two λs (`reader_nonlinear`, `reader_two_lambdas`); and the
hole-depth charges `cost(R) ≥ 22 / 18 / 17` at depth 0 / 1 / ≥2
(`reader_depth_charges`) give `w(R) ≥ 22`, `|H| ≥ 118` and, with the knot
bound `18 + 2k` (`SelfintKnot`), `|E| ≥ 18 + 120k ≥ 138`.

**Theorem (Lean, `Blc/SelfintReader30.lean`, Codex).** Every one-hole
reader satisfying the zero law and the length-one unary law has
`w(R) ≥ 30` (`SelfintReader30Final.reader_weight_30`), so **every member has
at least 146 bits** (`SelfintReader30Final.class_bound_146`), with no
coverage or minimality hypothesis left: a minimum counterexample below 30 is
λ-rooted, β-normal and stream-headed with five count rows, and a Lean
enumerator, proved complete, produces exactly the 3,484 layouts they admit,
each refuted by a non-joinability certificate.

**Hoisting is exact** (Lean, `Blc/SelfintWiden.lean`, `hoist_weight`): for
`f` free `c` leaves and depth `d`,
`w((λa. R[a/j]) j) = w(R) + 6 + f − 3d`, and the hoist reduces back to `R`.
So depth ≥ 5 already has `w ≥ 46`, and a hoist from depth `d ≤ 2` is never a
minimum.

**The floor by weight** (Codex). A reader of weight below 46, if one exists,
has a global minimum of weight below 46, and by §3 that minimum is a
nonlinear root let among the sources the minimality cuts leave: 3,219,594
of them, of weight 32 to 45, in 137 cells that a coefficient grammar
generates (`histogram.tsv`). A Python comparator puts each through the zero
law and the unary laws of lengths 1 to 3. All fail: 3,042,734 with a finite
mismatch (3,042,040 on the zero law, 694 at unary length one) and 176,860
normalizer exceptions, each refuted by a Lean theorem `¬ Reader r` about the
literal source (`proofs/`, rechecked by `pack.py recheck`). So **every
reader has `w ≥ 46`, every member has at least 162 bits, and the 162 is the
minimum of the class**; each weight `W` closed gives `116 + W + 1` on its
own. The comparator accepts the 162's and the 165's readers on every probe
(`positive-controls.json`).

This is not kernel-checked end to end. It is conditional on §3's reductions
and on the coverage of the coefficient grammar, both handwritten in part;
the finite mismatches rest on the Python comparator; and four exclusions the
chain builds on rest in part on the engine's divergence verdicts, 5,955
sources in all (3,508 of the 73,311 three-λ root lets and 1,511 of the
66,577 hand-offs `(λx. x x)(λz a. z M⃗) j`, §3.5; 560 cut-offs among the
depth-0 readers whose `j` is a λ's argument, §3.2; the 376 unresolved pairs
of the closed transport `Y j`, §3.4). Three fresh-context reviews by reading
(Codex on the first slice and on what changes from weight 42 to 45, Gemini
on the whole chain; `consult/`) found no omitted source shape, no invalid
transfer at a weight tie, and no cut that leans on another cell of the same
envelope.

## 3. Every reader's weight is at least 46

By §2 the 162 is optimal in the class **if and only if `w(R) ≥ 46` for
every reader**. Every β-normal reader has `w ≥ 46` (§3.1), so a cheaper
reader contains a source redex; the bound does not transfer through
normalization, since a reader need not have a normal form and contracting a
shared let can copy `j`. Instead, exact contraction prices under
minimality cut each branch to checks of at most 100,000 sources each, which
refute them completely.

A **minimum** reader is a global minimum among readers that satisfy both
laws at every unary length with one source `j`, under the order weight, then
source λ count, then the depth of `j`. "No minimum reader below 46 has shape
X" leaves open a cheaper reader of shape X, but then the minimum has another
shape, so it suffices. A replacement used against minimality may leave the
shape it starts from if it keeps both laws and one hole; a contraction that
copies `j` qualifies only once every copy is hoisted behind one `j`, or all
but the copy the zero output uses are replaced.

A **complete check** enumerates every term of every shape (redexes
included) within its budget under the exact cost model, tests both laws on
`n = 1, 2, 3`, and certifies every fuel or size cut-off (a head cycle on the
term or its η-normal form, a target constant absent, or a closed Ω
subterm). In the final envelope (§2) every normalizer exception is refuted
by a Lean theorem `¬ Reader r` about the literal source (the full laws imply
`Reader`, `ReaderLaws.probes`); each earlier step below states its own
cut-off evidence.

### 3.1 β-normal readers

**Every β-normal reader has `w ≥ 46`, sharp at the 162**, with no
minimality assumption (Claude, types lane; computer-checked, rerunnable from
`types/` and `coord/rd.py`, five runs listed in `types/REPORT.md`). The
search is needed narrowing for the zero law and the unary laws at
`n = 1, 2`: each law runs on a normal-order machine against its target, a
hole is refined only when a run needs it, and a hole never refined is a
2-bit filler. A β-normal reader satisfying the zero law is an s-spine
`λs. s A₁ … A_k`; depth ≥ 2 is one run (99,562 states), and depth 1 splits
exactly by the root arity `k` into four runs of 45,497, 78,828, 59,550 and
32,810 states; each of the seven cut-offs has no head normal form for any
filling, proved by hand. Tabling is sound for the joint laws because both
force needed source occurrences — the zero run must reach the source `j` and
a unary run some source `c` — so a subterm the search has not placed can be
replaced by a 2-bit variable without breaking a law (Codex; with one law the
memo loses solutions). The shape lemma, the needed-occurrence lemma and the
lower bound's admissibility are kernel-checked (Codex,
`Blc/SelfintNormalReaderLemmas.lean`). The search finds the 162 at 46 and
the 164 at 48. So **a minimum reader below 46 has a source redex**.

### 3.2 The shape of a minimum reader

**Source structure** (Lean, Codex, `Blc/SelfintSourceCost.lean`,
`SelfintLocalCost`, `SelfintSourceFront`, `SelfintFlatMinimum`,
`SelfintRootFlat`, `SelfintLetSink`): exact weighted β balance at every
source position; no erasing redex; every surviving linear redex satisfies
the index tax `(F − 1)D ≥ 7 + G` (the hole charged as four captures);
contracting a nonlinear `j`-sharing let and hoisting all copies restores
one hole and preserves every law, at an exact price. η-contraction keeps
both laws and the hole and strictly lowers the weight (kernel-checked,
rootcert lane), so there is no η-redex. Every reader is literally an
**s-spine** `λs. s A⃗` (§3.3), or has its first source head redex directly
under its stream λ (§3.4) or at the root, a **root let** `(λx. B) A C⃗`
(§3.5), with at most six uses and explicit argument budgets
(`reader_source_head`).

**Depth** (Claude, depth02 lane: handwritten budget arithmetic and copy
lemmas, with complete checks). Every reader with its hole at depth ≥ 2, and
every depth-0 reader whose `j` is the direct argument of a λ, `(λa. B) j`, is
excluded under the minimality order, the latter at the budget of the deep
readers (up to weight 50) it contracts to, not by hoisting; 560 of its
cut-offs are certified by the engine's divergence verdict. So `j` is at
depth exactly 1 in a λ-rooted minimum reader below 46, and at depth at most
1 in a root let.

**Tools.** *Transfer* (handwritten, Claude): a position is
unary-dispensable when replacing it by Ω keeps the unary law for every `n`,
exactly when no residual of it is touched or survives on the normal-order
run; replacing leaves whose residuals are all erased replays every
reduction, which every "keep only the copy of `j` the zero output uses"
below relies on. *Self-headed lets* (Lean, Codex,
`Blc/SelfintNeededHead.lean`, `SelfintNestedLets`): in `(λx. x B₁ … B_k) A`,
keeping `A` once at the head and replacing every other use of `x` by the
nearest outer variable lowers the weight by exactly
`6 + (captured leaves of the B_i) + 3·(j occurrences in the B_i)`, so in a
minimum reader such a let has a use besides the head. *Rigid shielding*
(Lean, Codex, `Blc/SelfintLoopShield.lean`): a 16-bit operand can give `N`
on every unary stream and `r r j` on a zero one, and no `j`-free context can
extract that `j` to make `r j`.

### 3.3 s-spines

Let `λs. s H T₁ … T_q` be a minimum reader below 46: `j` is at depth 1, so
a literal-λ `H` is `j`-free, and a bare `H` that is `c`, `j` or `s` fails.

- **No β-redex on `H`'s head path** (Claude, jn and d1open lanes). Every
  body, fed a generic cell `cons b r`, head-reduces to `b A B C⃗` (zero:
  `A C⃗ = r j`, unary: `B C⃗ = c r N`) or `r A`. Complete checks by this
  first-dispatch shape (selectors `I` and `K` for every operand shape,
  `λb. b X Y` with one or two trailing operands, general `λb. B`
  dispatchers with `|B|, |T| ≤ 21` or `|B| ≤ 9`, every λ-rooted reader whose
  body is at most 25 bits) and a handwritten deletion lemma (a subterm
  replaced by a cheaper one with the same value on every unary probe leaves
  a unary core; a complete check, Claude's zcore lane, finds exactly three
  cores of at most 23 bits, `s (λq. c) (s s j)`, `s (λq. c) (s s s)` and
  `s (λq. c) (s s c)`, the first two the only ones through 22; a reader
  carrying `|Q| − |Q'|` bits of zero-only material around the reduced core
  `M'` has `w = 6 + |M'| + |Q| − |Q'|`, so `w ≥ 29 + |Q| − |Q'|` unless `M'`
  is one of those two, which are priced separately) give
  `w ≥ 46` whenever `H` reaches the first dispatch through stream
  expansions, λ-bindings and variable heads alone, the pieces off that path
  arbitrary (the 164 is recovered at exactly 48). The one skeleton out of
  reach, `λs. s (λb. b X) A B`, has `w ≥ 46` with any redexes and `j` at any
  depth (Codex, loop lane: `w = 20 + x + a + b` exactly, and a helper check
  over 89,511 operands gives `a + b ≥ 24` when `A` or `B` carries `j`,
  `≥ 22` otherwise).
- **A literal λ with a redex inside** (Codex). Every redex inside `B` of
  `H = λb. B` has two to five uses, for any operands (loop lane), and none
  survives (handlerlet lane: the exact price `w = 12 + 2q + |B| + Σ|T_i|`
  and minimality `Δ ≥ 0` for every let inside `B`, kernel-checked, leave
  117,059 sources over `q = 1 … 5`, all refuted, 1,868 normalizer exceptions
  in Lean).
- **A `j`-free `H` that is not a literal λ** (Codex, firstop lane). Every
  redex inside it has two to five uses (the linear cases reduce to 727
  sources, each refuted in Lean), a let `s ((λx. λb. B) A) T⃗` needs
  `occ_x(B) < F_A + occ_b(B)` (at equality, sinking it gives another minimum
  with a literal handler), and the nonlinear cases fail in five complete
  cells (7,023 normalizer exceptions in Lean); what remains is redex-free,
  the first case.
- **An `H` carrying `j`** (Codex, firstopj lane, with §3.1 for β-normal
  sources). Contracting a `j`-sharing let while keeping only the copy of `j`
  the zero output uses changes the weight by exactly
  `(m−1)|A| + (s_A + c_A − 1)M + 4d − 2 − 4m − s_D − c_D` (price
  kernel-checked, replay handwritten), which a minimum needs non-negative;
  fourteen complete checks of 424,378 sources leave nothing (4,337
  normalizer exceptions in Lean), and `((λx. D) j) P⃗` fails too (firstop
  lane: 4,188 sources, each refuted in Lean).

So **no minimum reader below 46 is an s-spine** (the composition of depth,
d1open, loop, handlerlet, firstop and firstopj audited by Codex for
exhaustiveness and consistent hypotheses). The loop lane also gives
`w ≥ 48` for the 164's family `λs. s (λb. b A c) B` (prices and shielding
kernel-checked, `Blc/SelfintLoopPrices.lean`, `SelfintLoopShield`; the
assembly handwritten, with complete helper checks over 19,554 sources).

### 3.4 Lets under the stream λ

A minimum reader's sharing reaches at least two operands, since moving a
let into the only operand that uses it never raises the weight. Three
exclusions enter this branch's inventories: a closed `s I` anchor anywhere
in the body forces `w ≥ 46`, with equality only for the 162 (Codex's check
through cost 28: of 376,730 candidates only `λu. s (λq. c) (s s u)`
completes it); and the parent of `j` at depth 1 in a minimum reader is
neither a literal let `(λa. B) j` (keep the one `a` that supplies the zero
output's `j`, replace the others by `s`, then contract or hoist, strictly
lighter unless `w ≥ 49`; handwritten, Codex) nor a closed transport `Y j`
(Codex: 47,392 `Y` and 11,620 context pairs checked, the 376 unresolved
pairs certified divergent by the frozen engine).

A minimum reader below 46 whose stream-λ body is a let `((λx. B) A) C⃗` uses
`x` at most four times, has a λ inside `A`, and, if the let is linear, has
`j` inside `A` (Codex, bodyredex lane: handwritten, with complete checks of
92,480 and 47,328 sources). The scalar bounds and the flat argument
`A = (s s s) j` are in `Blc/SelfintFlatRestHole.lean`: `restJ_exclusion`
takes as its premise the three-core inventory of §3.3
(`TinyUnaryClassification`, cores of at most 23 bits; a finite check, not a
kernel theorem), reduces the preimages of the two `j`-free cores to five
sources, and refutes all five on the zero law. For a linear let, `minimum_linear_body_alternatives`
(`Blc/SelfintBodyLetLinear.lean`) leaves two heads for `B`: a λ with a
pending operand, or a nested head redex. An `x` head would need a second
use, and an `s` head puts the one use in a single operand, which let-sinking
excludes. Contracting such a let never yields a β-normal term directly
(kernel-checked), and a λ-headed linear `B` (13,296 sources) and the family `λs. ((λx. s x … x) A) j` with two to four uses
(14,150 sources) have no reader below 46. No other let with two to four uses
survives (Codex, bodylet lane: 52 complete cells, 746,914 sources, the
22,660 normalizer exceptions refuted in Lean, 21,937 by weak-head prefix
cycles and 16 by a kernel-checked divergence theorem for growing helpers).
A linear let carrying `j` whose `B` holds a nested head redex fails too
(Codex, bodylin lane): the exact minimality conditions leave 569 sources
over eleven bodies `B`, each with a strictly cheaper β-equivalent
replacement, for any `A` and pending operands, that keeps `A` once and so
one `j` (kernel-checked, with the 569 zero-law refutations in Lean).

So **no minimum reader below 46 has a let as its stream-λ body**, and with
§3.3 **no λ-rooted minimum reader below 46 exists** (both composites
audited by Codex for exhaustiveness and consistent hypotheses).

### 3.5 Root lets

What remains is the root let `(λx. B) A C⃗`: depth-0 shared top-level lets,
and application-rooted readers whose let argument hands control on before
binding the stream. A minimum root let with `k` uses and `j` at depth `d`
has `w ≥ 4k + 22 + 4d` plus its index tax, so below 46 it has at most five
uses, four when `j` is under a λ (Lean, Codex,
`Blc/SelfintRootProfile.lean`). Whole profiles fail:

- `k = 1` (Codex, rootlow lane): complete inventories of 135,652 sources,
  the 118 normalizer exceptions and 1,236 further failures refuted in Lean.
  Exposing the stream binder of `(λx y₁…y_t s. M) A C₁…C_t` changes the
  weight by exactly
  `F(A) + Σ F(C_i) + (t+1)·occ_s(M) − occ_x(M) − Σ occ_{y_i}(M)`
  (kernel-checked), but at depth 0 or 1 it moves `j` deeper, so an
  equal-weight exposure does not carry minimality across.
- `k + d = 5`: about 240,000 sources fail with a certificate, 32,743
  normalizer exceptions are refuted in Lean (Codex, rootlet lane), and the
  last 580 listed exceptions by Lean proofs from the zero law alone (Codex,
  rootcert lane; the final three, of weight 45, by one kernel-checked
  divergence family, Claude, `Blc/SelfintRootCertThree.lean`).
- `k = 4`, `d = 0`: all 188,718 sources fail, in 31 cells none over the cap
  (Codex, rootnl lane: 149,789 on the zero law and 38,271 by Lean
  refutations; the last 658 by Lean proofs, rootcert2 lane, the final five,
  of weight 44, by one kernel-checked cycle, `Blc/SelfintRootCertFive.lean`).
- The three-λ row `V = k + 5` of the lower profiles: 73,311 sources fail
  (69,793 with a finite mismatch, 3,508 by the engine's divergence verdict
  on the zero instance, ten by Lean proofs; rootcert lane).

What is left is nonlinear, with two or three uses of `x` and `j` at depth at
most 1. The rootnl lane also kernel-checks tools the grammar's cuts use: the
Lift transfer below, a self-feeding divergence theorem with arbitrary
payloads, and a repair of discarded `j` copies saving `4h − 2` each.

**Body heads** (Codex, pending lane). With pending operands, a literal-λ
body is excluded: exchanging adjacent prefix lets
`(λx y. D) A C ↦ (λy x. D') C A` costs exactly `uses(y) − uses(x)` and keeps
both laws, one `j` and the order's other coordinates, consuming a pending
`C` while keeping `A` once has an exact price (both kernel-checked), and the
residual cells (13,489 sources) fail, their 20 normalizer exceptions refuted
in Lean. Bodies headed by a nested redex fail as well (146,191 residual
sources, 3,577 normalizer exceptions refuted in Lean). If every shared use
of `x` receives the same independent argument `P`, specializing it saves
exactly `(k−1)(w(P) + 2) + F(P)(k + q) > 0`. A λ-free argument at the root
must be `j` itself, and under `λs` one of `j`, `s s`, `s s s`, `s s s j`.
Left are bodies headed by `x` and by the stream binder.

**The stream binder.** `(λg. λs. B) H` and `λs. (λg. B~) H` agree on every
stream, and the second weighs `u_s(B) − u_g(B) + f_c(H) + 4·occ_j(H)` more
(handwritten, Claude, shared lane: the Lift transfer), so results proved for
λ-rooted readers without minimality bound such root lets at that offset.
Two such results (Claude, shared lane, needed narrowing, every cut-off
certified): `λs. (λg. B) (λy. y A W)`, for any `B`, `A`, `W` with redexes and
`j` anywhere, has no reader with `w ≤ 45` (13,481 states), nor has
`λs. (λg. B) (λy. y A W) C` (47,591 states; its last four cut-offs are
closed combinators `H H` proved unsolvable in Lean,
`Blc/SelfintSharedCutoffs.lean`).

**Full-chain hand-offs** (Claude, root lane). When the let argument's
λ-chain binds every root argument and the stream, no minimum reader below 46
is a depth-0 reader `(λx. B) A j` or an application-rooted reader with `j` a
let-body operand. The root-let weight is exactly
`w = 8 + 4k + 4t + Σ|B| + Σ|C| + |Σ|` (`k` root arguments, `t` pending
ones; `+p` when a let-body prefix binds `p` pending operands), so the
template body has at most 27 bits. The inventory's forced-use filter
requires the stream's, `j`'s and the let's variables in the body, `c` in it
unless an operand already holds `c`, and a used parameter that receives an
operand containing a non-head `x`; complete checks of 32,228, 2,664 and 600
bodies after that filter leave nothing. Nor is a minimum reader one whose
`j`'s binder is the head λ-chain at any multiplicity (handwritten, through
depth 0's chain swap), or the self-application `(λx. x x)(λz a. z M⃗) j`
whose chain stops before the stream (66,577 bodies). Contracting a
hand-off's pre-stream computation is never lighter: the reduct keeps both
the let argument and the value it hands on.

**Hand-off simplifications** (Lean, Codex, simplify lane,
`Blc/SelfintSimplify*.lean`). Specializing a static hand-off
`(λx. T[x]) (λz. z M) C⃗` (`T` an application tree) keeps both laws and one
`j` at the exact price `7b − 6 − F(M)` for the `b` wrappers that remain; for
an idempotent helper such as `J = λx. x (λy. x)`, `J J →β³ J`, replacing a
use `x x` by `x` saves `q + 4` bits. Of their extensions (dependent and
several payloads, arbitrary bodies), the one that contributes besides the
single independent payload is constant helpers: in a pure `x` application
tree with two or three uses of a helper `λz. H` independent of `z`, the
replacement descends strictly. Together they mark 184,628 sources of
rootnl's over-cap cells non-minimum, leaving 2,343,026 there
(`simplify/`). The general hand-off is not covered. Its pre-stream
computation can expand without bound in the source weight, in a family of
correct readers that are not minimum (Codex, expand lane; at the tag), so no
expansion bound is known that would replace the exhaustion.

**x-headed bodies** (Codex, pending lane). Unbounded symbolic proofs in
`Blc/SelfintRootLet*.lean` (diagonal powers, orbits, rigid-head forcing,
positive-head self-embeddings, identity peeling, hereditary first-argument
forcing) refute the 51 listed sources, which
`Blc/SelfintRootLetPending.lean` holds literally (`pending/X_REMAINING.json`,
`.tsv`) with the aggregate theorem `archived_not_reader`;
`tools/self-interpreter/rootlet_pending.py --check` pins the archive. That
closes the cell they are the listed exceptions of, the control cell
`(2,0,Cs,x,3,1)` (98,442 sources, closed whole with its existing finite
coverage and not counted below); the other x-headed cells stay over the cap
(`pending/x_overcap.json`).

**The narrowing branch.** A separate needed narrowing over hand-offs
`(λg s. B) A` (Claude, adv6 and rootnarrow lanes; complete within its
coverage, not a classification of root lets) leaves 36 cut-offs, mostly
self-application dispatchers `Δ(λz. z A⃗)`, `Δ = λx.x x`. A
closure-and-stack certificate (Codex, certgen lane; checker and translation
to ordinary λ-reduction kernel-checked, `Blc/SelfintRegularCertificate.lean`,
`SelfintRegularSoundness`; its 49 code-table instances are not replayed as
source-level corollaries) certifies all but three. The lane's two-argument
self-feeding rule was unsound and is not used. `Blc/SelfintRootCutoffs.lean`
excludes the three and the family that rule was meant to cover (the fourth
schema below, by an independent protected-argument invariant), each by
unbounded symbolic head reduction with arbitrary scoped payloads:

```text
Δ (λz.z (λa b.b (z a)) (z W))
Δ (λz.z (λa b.z (z b)) (z W))
Δ (λz.z (λa b.z (z a)) W)
Δ (λz.z (λa b.z b U) (z V))
```

**The envelope.** No general argument closes the root-let branch; it is
closed by exhaustion. The minimality cuts leave 3,219,594 sources of weight
at most 45, generated by the coefficient grammar (`histogram.tsv`):
2,244,584 in the nine cells over the cap of 100,000 (eight x-headed,
`pending/x_overcap.json`, and one λ-headed, after the hand-off
simplifications) and 975,010 in 128 smaller cells of the same grammar. The
check of §2 refutes every one of them.

Several families are closed without a source-size cap but close no whole
cell, so the chain does not use them: hereditary first-argument forcing and
bounded λ-delay before a rigid pending block (`SelfintRootLetRigidPrefix`,
`SelfintRootLetBudgetDelay`), sources whose binders all have a shallow use,
with a shallow free `j` (`SelfintRound6ReaderShallow`), and binary-helper
slices and all-live sources of λ-nesting at most two before two rigid
pending operands (`SelfintRound6ReaderBinary`,
`SelfintRound8ReaderTwoLambda`). The weight check's certificates reuse
their lemmas; the other such families are at the tag.

## 4. The same minimum under weaker hypotheses

Each widening below either keeps the class minimum or bounds what the
widened members can cost, so a sub-162 outside the original class must break
something it does not cover. The rigid laws are partly forced by the
contract: a continuation `κ` with only `C` free and `κ v N =β C X N` for an
unsolvable `v` forwards its second argument verbatim (Claude's argument,
Codex's Lean, `Blc/SelfintProbe.lean`, `lemmaA`, `classify_continuation`).
Under syntactic separation, the actual zero handoff and two scoped control
conditions (NEXT hands the stream to the parser once; APP parses its second
operand from its first operand's rest), this yields the variable law's rest
part and NEXT's data flow, but not the rest of the laws: five interpreters of
194 to 265 bits pass the battery while violating one hypothesis each (the
derivation's Lean and the five are at the tag).

### 4.1 NEXT of any syntax

**Theorem (Lean, `Blc/SelfintWiden.lean`, Codex).** Replace NEXT's normality
and tag-use restrictions by its rigid branch laws alone (`RigidNext`), with
`q = |Q|` and `F` its free `c`/`p` leaves. If `q ≥ 92` and `q + 3F ≥ 104`,
every assembly is at least as large as an original-class assembly with the
same reader, its hoist, or the 162's reader (`frontier_dominated_full`); the
162 is optimal in the class whose NEXT satisfies that price frontier
(`FrontierPrice Q`) **if and only if** every reader obeying
all unary laws has `w ≥ 46` (`frontier_optimal_iff_reader_floor`), so by §2
it is the minimum there too, and the 146 transfers.

The price `116 + w(R)` is exact only for the canonical NEXT and knot: a
let-bound NEXT pays one bit per reader λ for two leaves instead of four (a
233-bit witness against 234 at a deep hole), which never lowers the class
minimum. A NEXT that could lower the minimum must lie in `35 ≤ q ≤ 91`, or
`F = 2` and `q ≤ 97`, or `F = 3` and `q ≤ 94` (`remaining_next_regions`).
Lean excludes there every `c`- or `p`-aliased original-class NEXT
(cheapest 99 and 100, `F = 3`; `shareC_next_frontier`,
`shareP_next_frontier`) and NEXTs with one designated let whose projections
are β-normal after pruning and that substitution (`q ≥ 98` with the let
inside the tag binder, `q ≥ 99` outside, or `q ≥ 92` with `F ≥ 4`, after
cost-safe administrative contractions; `OneLet.covered_admin_frontier`). A
knot with `k` holes gives `|E| ≥ 18 + k(26 + q)`
(`unrestricted_knot_multiplicity`), so a sub-162 member has one hole, or two
and `35 ≤ q ≤ 45`. The lower end is kernel-checked too: with NEXT unrestricted, `q ≥ 35` and the
assembly costs at least 79 (`Blc/SelfintRound6BoundNextPrice.lean`,
`SelfintRound6NextAbs`, `unrestricted_next_assembly_lower_79`). The 42-bit
literal-NEXT bound and the NEXT-sharing families that clear the frontier
are at the tag.

### 4.2 Value representations

**Theorem (Lean, `Blc/SelfintValues.lean`, Claude).** Let the reader return
`c V_n N` on unary input for any family `V_n`, keep the zero law, and let
NEXT be any source. If a converter `κ` with only `c` free satisfies
`κ V_n N =β c U_(n−1)(N) N`, the member is no smaller than an
original-class member whenever NEXT clears the frontier shifted by
`δ = f(|κ| − 2)` for `f` occurrences of `c` (`transfer_dominated`,
`share_dominated`), so any raw reader floor carries over
(`floor_of_dominated`, via `Blc/SelfintValuesTransfer.lean`).
Whole-prefix values convert by `λv. v (λq. c)` (`wp162_strip` recovers the
162's reader), and every environment cell `λu. λr. B` needs more than 26
bits (1,764 bodies checked, with a handwritten completeness argument),
exactly where `δ = 3` dominates; let-headed cells are open. Not covered:
values that use NEXT itself as their decoder, which admit no `j`-free
converter (Codex).

### 4.3 Recursion

**Lemma B** (Claude; finite cases computer-checked; reviewed by Codex; its
kernel-checked steps in `Blc/SelfintKnotHeads.lean`). Model the parser
body as one rigid occurrence of `h` with two hygienic recursive ports,
`h H J`, correctness `t =β h t t`, and charge each port's outward references
their depth taxes `a` and `b`. Every recursion scheme then costs at least
`26 + a + b` bits for all `a ≥ 2`, `b ≥ 3`, and the 162's knot is the
unique minimum: by counting with three or more nonlinear binders, and with
at most two because a counterexample has at most six variable occurrences
and seven λs and all fail (234,585 and 244,432 terms at the two tax pairs,
plus monotonicity). The model excludes lets inside the body,
several body copies, NEXTs with three recursive call sites, and schemes
that use what the body computes. Without the knot (Lean,
`Blc/SelfintRecursion.lean`), two-head skeletons cost at least 165 under the
ordinary first-child cut and the unshared generator at least 167, attained;
the cut is not forced (a 312-bit parent-replay witness), and knotless first
heads with two nonlinear binders are open (with three, all 6,408 complete
interpreters fail).

### 4.4 Continuation-headed analogues

**Split class (Lean, `Blc/SelfintChead.lean`, Claude).** Members
`T[λp c s. c (R_A[Q_A/j]) (R_B[Q_B/j])]` with separate value- and rest-mode
readers and NEXTs under the class's NEXT hypotheses have value-mode NEXT of
at least 86 bits and rest-mode of at least 34, both attained, and at least
165 bits in all (`split_class_165`; that the zero law forces each reader to
be an application is handwritten). Sharing one body between the modes costs
at least 163, sharing one NEXT at least 165, other binder orders at least
164 (handwritten).

## 5. Outside the class

A sub-162 interpreter outside every class above must break a remaining
hypothesis: the reader's independence from the recursive parser, NEXT's
separation from the stream binder, the two-port recursion model, a value
representation with a NEXT-free decoder, or the CPS protocol with an exact
two-argument return. No known construction through these exits is below
162: the
165-bit parser/continuation bundle changes only the 162's erased skip
operand; the exit survey of `interpreter.md` §5 built fifteen correct
interpreters of 164 to 199 bits; and a return protocol carrying a suffix
thunk and the pending NEXT measures 201, with two variants priced on paper
at 199 and 211. NEXT under the
reader's `λs` can embed any closed interpreter `Q` at `|Q| + 17`, so an
unrestricted NEXT bound would itself be a global floor; and the first-bit
guard `λc s. s K (E c s) s` keeps the closed-source
contract at `|E| + 30` but breaks a law every member satisfies (Lean, at the
tag), so no
β-preserving conversion takes every interpreter into the class.
`interpreter.md` lists these constructions; their proofs and measurements
are at the tag.
