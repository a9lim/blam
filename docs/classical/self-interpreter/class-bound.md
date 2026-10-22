# The separated class: 162 is optimal iff one reader bound holds

This is the strongest lower bound near 162 bits. It covers every
interpreter built the way the 162 and the 165 are built — an opaque
fixed-point knot around a parser whose reader may fuse dispatch, variable
value, skip and return arbitrarily, with a separate NEXT that builds the
canonical values — and it reduces 162-optimality within that class to a
single question about readers. That question is open; §4 says exactly how
far it is settled.

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
normality and the rigid laws are hypotheses: they are not derived from the
closed-source contract, and §5 records what lies outside them.

## 2. The exact price and the 138-bit bound

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
the `4 depth(j)`. The proof has three parts, all kernel-checked:

- **NEXT costs at least 92 bits and has at least four free `c`/`p` leaves**
  (`next_bound_of_rigid_laws`): structural pruning of tag tests, the four
  possible pruned branch pairs, and a common-head cost induction. This
  formalizes Codex's handwritten nine-form classification
  (`data/self-interpreter/reasoning_floor/next-proof-codex/`).
- **Every reader has a nonlinear binder and at least two λs**
  (`reader_nonlinear`, `reader_two_lambdas`). The first is an
  occurrence count: `N` occurs once in `R U_1(N)` and twice in the required
  normal output. The second is an application-tree algebra: with
  `S = U_1(N)`, `P = U_0(N)`, `W = λu. N`, every λ-free tree over `S, c, j`
  normalizes to S, W or a neutral whose `c`-headed spines never have `P`
  first (`S S →* W`, `S W →* N P`, `W X → N`, `S X → X F P`), so `c P N` is
  unreachable with one λ.
- **Hole-depth charges** `cost(R) ≥ 22 / 18 / 17` at depth 0 / 1 / ≥2
  (`reader_depth_charges`), hence `w(R) ≥ 22`, `|H| ≥ 118`, and with the
  Lean knot bound `18 + 2k` (`SelfintKnot`), `|E| ≥ 18 + 120k ≥ 138`.

The handwritten proof is Codex's (round 3); two independent reviews (a
fresh Codex consult and Gemini) found it correct, the Codex review noting
that the exact price is an equality only for the canonical NEXT and knot
(an unused redex in the knot adds 8 bits while keeping the fixed-point
equation).

## 3. The reader weight is at least 30: 146 bits

**Theorem (handwritten, finite cases in Lean).** Every reader has
`w(R) ≥ 30`; hence every member of the class has at least **146** bits.

- Every reader has two live source binders, one of them nonlinear (a
  paired-head invariant on the two inputs, extended to arbitrary source by
  weak-head reduction).
- A minimum-weight counterexample has no erasing redex, and a non-λ one has
  three live binders; the resulting count rows reduce every reader of
  weight below 30 to 3,484 β-normal source layouts, each refuted by an
  explicit non-joinability theorem in Lean. The coverage step is
  handwritten: it is a minimum-counterexample argument, not a listing of
  every reader.
- **Hoisting is exact** (Lean): for `f` free `c` leaves and depth `d`,
  `w((λa. R[a/j]) j) = w(R) + 6 + f − 3d`. So depth ≥ 5 already has
  `w ≥ 46`, and any sub-46 reader at depth 3 or 4 hoists to a depth-0 one
  of no greater weight.

Two independent reviews (a fresh Codex consult and Gemini) found the
argument correct.

## 4. The open question: is every reader's weight at least 46?

By §2, **the 162 is optimal in the class if and only if `w(R) ≥ 46` for
every reader**, and any reader with `w ≤ 45` gives a sub-162 interpreter of
exactly `116 + w` bits. What is settled beyond §3:

- **Two λs.** Every two-λ reader has the literal shape
  `λs. s D ((s s) A)` with its hole at depth two, and `w ≥ 50`
  (handwritten). So a sub-46 reader has at least three λs; the 162's has
  four.
- **Three λs.** At depth 1 a minimum λ-rooted three-λ counterexample is
  β-normal or has a nonlinear redex copying its other inner λ; at depth 0
  the first head contractor is nonlinear and `f ≤ 4`; at depth 2,
  `f ≤ 3` and two further count rows are excluded (handwritten, 42 fixed
  reductions and 92 callback normal forms in Lean). A minimum
  application-rooted reader with the fewest leaves has a linear first head
  contractor, and the exact contraction cost combined with hoisting removes
  every such profile at depth 1 with three λs and every one at depth 2:
  151 of the 1,098 count profiles go, 947 remain (handwritten;
  structural and arithmetic parts in Lean).
- **Serial readers.** `λs. s D E j` with literal abstractions and at most
  four λs has `w ≥ 46` (sharp), and with exactly two λs in each operand
  `w ≥ 52` (sharp). Any application context with at most one flat source
  callback reduces, on long unary inputs, to data, a neutral or that same
  callback (Lean, unbounded), so a one-λ selector of any syntax forces the
  last arm itself to satisfy `E j =β c U_(n−1) N`. Roles cannot be separated
  in general: `H_c = λx. x (λq. c)` has `H_c F →* I`, `H_c I →* K c` and
  `H_c H_c →* c` (Lean), one term serving as selector, wrapper and
  continuation; the reader built from it has weight 75 and reduces to the
  canonical one.
- **The 162's own shape, inside the class.** With `j` and `c` rigid (NEXT
  opaque, as the class has it), every middle operand `A` of
  `λs. s I A j` up to 30 bits (1,313,478 terms over `[s, c]`), and every
  variable arm `λu. B` up to 32 bits with `u` free, meets the variable law
  only if it is the 162's family `λu. s (λq. c) (s s X)` (Claude's round-3
  handoff lane; probes on unary codes of length 1–3, every hit in the
  family whose law is proved for all lengths). So in the `s I` shape the
  162's reader is forced in shape, not only in size, through those budgets.
- **With the real NEXT and knot**, an enumeration of the same slot through
  27 bits found nothing, but its checker mis-binds the generator when it is
  applied to a non-generator argument and its comparison cache can reject
  β-equal terms (both reproduced in Lean); it is not a result
  (`interpreter.md` §3).
- **Constructive side.** No reader with `w ≤ 45` has been found. The
  cheapest readers other than the 162's weigh 47
  (`λs. s I (λu. s (λq. c) (s s s)) j`), 48 and 49 (the 165's). Three
  finite checks found none, each complete within its bounds: every s-headed
  reader with β-normal operands of at most 18 bits at depth 1 (a dynamic
  programme over operand meanings on `Z(r)`, `U_1`, `U_2`), the same at
  depth 0 with `j` let-bound, and the three-λ redex row
  `λs. (λx. M) (λy. A)` (1,251,361 pairs). The sharp remaining
  obstruction is one operand that is `j` on a zero stream and `N` on a
  variable: the 162 pays 6 bits for it (the absorber `λu` and `s s u`), and
  every standalone such operand found costs at least 25 (Claude's round-3
  refute46 lane).

The remaining count families (depth, root form, λ count, leaves, index
sum) are listed exactly in
`data/self-interpreter/reasoning_162/floor/STATE46.md`.

## 5. Outside the class

A sub-162 interpreter not in the class must break one of its hypotheses.
The cheapest known mechanism for each is priced below, with constructions in
`interpreter.md` §6 and the round-3 archive:

- **NEXT uses the stream.** Inside the reader's `λs`, NEXT can embed any
  closed interpreter `Q` as `λb t. Q c s` for `|Q| + 17` bits, so an
  unrestricted NEXT bound would itself be a global floor (`|NEXT| ≥ 96`
  unrestricted would imply every interpreter has at least 79 bits). The
  useful extra modes measured: a separately guarded variable mode, exact
  minimum 177 in its family; markers and second-tag selections 182–193.
- **Recursion not an opaque knot.** Deleting the knot and filling both
  recursive call sites with arbitrary terms needs a first head with two
  incomparable nonlinear binders, and under the ordinary first-child cut
  costs at least 165; keeping the generator without the `intL` let costs at
  least 167, attained (Lean, `Blc/SelfintRecursion.lean`). The cut is not
  forced by the contract: a first head can replay the whole parent (a
  312-bit witness), so the knotless case is open below that budget.
- **Values.** With raw-tail variable values and root transparency, the
  value modules are forced to the 162's shape and cost at least
  `28 + 34 + 19 = 81` (handwritten); whole-prefix values need a cell of at
  least 27 bits in the natural `λu r. r H` shape (110-case check).
- **Reader laws only for the actual NEXT.** Dual operands make the variable
  operand 10 bits but the dual itself dearer (172); every application of the
  canonical NEXT is a parser awaiting a stream, so it can never supply a
  bare continuation.
- **No CPS parser.** Pair returns, stream-first parsers, thunked
  remainders and direct evaluation all lose the remainder's η (≥ 8 bits a
  site) or pay a public adapter (13–21).
