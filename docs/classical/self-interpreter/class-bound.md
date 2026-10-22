# The separated class: 162 is optimal iff one reader bound holds

This is the strongest lower bound near 162 bits. It covers every
interpreter built the way the 162 and the 165 are built — an opaque
fixed-point knot around a parser whose reader may fuse dispatch, variable
value, skip and return arbitrarily, with a separate NEXT that builds the
values — and it reduces 162-optimality within that class to a single
question about readers. That question is open; §3 says exactly how far it is
settled. §4 widens the class (NEXT of any syntax, any value representation,
any opaque recursion in a two-port model, continuation-headed analogues) and
derives part of its laws from the contract; §5 records what lies outside.
Lane archives: `data/self-interpreter/reasoning_162/` (round 3) and
`data/self-interpreter/reasoning_class/` (round 4).

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
weakened or derived, and §5 what lies outside. Two consequences of the
definition: every member is s-headed (the zero law forces the reader's
head normal form to be `λs. s A⃗`), and the record's dual-operand readers,
such as `λs. s I (s (λq. c)) (s K j (s s s))` (`w = 53`, the 169), meet the
rigid laws and are ordinary members.

## 2. The exact price and the 146-bit bound

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

**Theorem (Lean, `Blc/SelfintReader30.lean`, Codex).** Every one-hole
reader satisfying the zero law and the length-one unary law has
`w(R) ≥ 30` (`SelfintReader30Final.reader_weight_30`), so **every member has
at least 146 bits** (`SelfintReader30Final.class_bound_146`), with no
coverage or minimality hypothesis left. The proof formalizes Codex's
round-3 handwritten argument, which two reviews had found correct: a
minimum-weight counterexample, with the λ count as tie-break, exists and
has no erasing redex; it has two live source binders, and three when it is
not λ-rooted, which eliminates the non-λ case below 30; a λ-rooted one below
30 is β-normal, stream-headed and satisfies five count rows; and a Lean
enumerator, proved complete, produces exactly the 3,484 layouts those rows
admit, each refuted by a non-joinability certificate.

**Hoisting is exact** (Lean): for `f` free `c` leaves and depth `d`,
`w((λa. R[a/j]) j) = w(R) + 6 + f − 3d`, and the hoist reduces back to `R`.
So depth ≥ 5 already has `w ≥ 46`, and a hoist from depth `d ≤ 2` is never a
minimum (it contracts to a lighter reader).

The per-reader price `116 + w(R)` is exact only for the canonical NEXT and
knot: a let-bound NEXT pays one bit per reader λ for two leaves instead of
four, so at deep holes the same reader can assemble one bit cheaper
(a 233-bit witness against 234). That never lowers the class minimum (§4.1).

## 3. The open question: is every reader's weight at least 46?

By §2, **the 162 is optimal in the class if and only if `w(R) ≥ 46` for
every reader**, and any reader with `w ≤ 45` gives a sub-162 interpreter of
exactly `116 + w` bits. Every β-normal reader has `w ≥ 46` (below, by
computer-checked search), so such a reader must contain a source redex:
what is open is the sharing a redex allows between the zero and the unary
role.

Throughout this section a **minimum** reader is a global minimum among
readers that satisfy both laws at every unary length with one source `j`,
under the order weight, then source λ count, then the depth of `j`. An
argument that replaces a reader by a lighter one bounds only minimum
readers: "no minimum reader below 46 has shape X" leaves open a cheaper
reader of shape X, but then the minimum has another shape, so it suffices
for the bound. A replacement may leave the shape it starts from, as long as
it keeps both laws and one hole. No such reader has been found: the cheapest readers
other than the 162's weigh 47 (`λs. s I (λu. s (λq. c) (s s s)) j`), 48 (the
164's `λs. s (λb. b F c) (s I (s s) j)`) and 49 (the 165's). The defect a
cheaper reader has to repair is visible in the near misses (Claude, adv5
lane): `λs. s I (s (λq. c) (s s s)) j` (40) gives `r j` on a zero stream
but `c r N j` on unary, and `λs. s G (s s c) j` with `G = λt. t t c` (39)
gives `r j` and `c r N j` too. The zero run needs `j` as an extra argument
and the unary run must not see it; the 162 is the 40-bit near miss plus its
6-bit absorber, and every other repair priced costs at least 7 bits over
the 39-bit one.

**Settled by proof.**

- Two-λ readers have the shape `λs. s D ((s s) A)` and `w ≥ 50`; the serial
  form `λs. s D E j` with literal abstractions and at most four λs has
  `w ≥ 46` (sharp), with two λs in each operand `w ≥ 52` (handwritten,
  round 3).
- **Sharing in whole contexts** (Lean, Codex,
  `Blc/SelfintClosureBarrier.lean`). No application tree over
  `s`, `I`, `F`, rigid parameters, continuation towers `C_m = λ^m. c` and
  factories `H_m = λx. x C_m` — any number of copies, different
  specialization arguments, nonlinear lets — satisfies both laws: it fails
  at every unary length past its application count
  (`factories_cannot_read`, `sharing_cannot_read`). The invariant stops exactly at
  `Δ = λx. x x`: `s Δ I (s s) j` is `j` on a zero stream and `N` at every
  length ≥ 2, but `N j` at length 1, so any proof must carry `n = 1`
  separately.
- **Cross-operand sharing through one helper** (Lean, Codex,
  `Blc/SelfintStreamSpecializer.lean`, `SelfintClosedSpecializer`,
  `SelfintHelperPair`): every
  reader `λs. ((λg. s (g P) (g s)) A) j`, and its root form
  `(λg s. s (g P) (g s) j) A`, with any helper `A` and any specializer `P`
  whose free variables are among `g, s`, has `w ≥ 46`, with no minimality
  assumption. For closed `P` the zero law alone forces `|A| ≥ 10`, which
  below 46 forces `P = I` and leaves a complete 26-helper basis. It covers
  the capturing helper `G = λx u. x (λq. c) (x x u)`, which
  gives `G F = I` and `G s` = the 162's variable arm, one helper in both
  roles; shared, it weighs 67.
- **Minimum readers' source structure** (Lean, Codex,
  `Blc/SelfintSourceCost.lean`, `SelfintLocalCost`, `SelfintSourceFront`,
  `SelfintFlatMinimum`, `SelfintRootFlat`, `SelfintLetSink`): exact weighted β
  balance at every source position; no erasing redex; every surviving
  linear redex satisfies the index tax `(F − 1)D ≥ 7 + G` (the hole charged
  as four captures); contracting a nonlinear `j`-sharing let and hoisting
  all copies restores one hole and preserves every law, at an exact price.
  Every reader is literally an s-spine, or has its first source head redex
  at the root or directly under its stream λ (≤ 6 uses), with explicit
  argument budgets. A minimum root let `(λx. B) A C⃗` with `k` uses and `j`
  at depth `d` has `w ≥ 4k + 22 + 4d` plus its index tax, so below 46 it
  has at most five uses, four when `j` is under a λ
  (`reasoning_class/rootnf/RootProfile.lean`, Codex). In the tight
  profiles `k + d = 5`, about 240,000 sources fail a law with a certificate
  (32,743 normalizer exceptions refuted in Lean) and 580 remain, listed with
  their prices in `reasoning_class/rootlet/SURVIVORS.tsv`: normalizer
  exceptions not yet refuted, not readers (Codex, rootlet lane); a λ-free argument at the root must
  be `j` itself, and under `λs` one of `j`, `s s`, `s s s`, `s s s j`.
  Moving a let into the only operand that uses it never raises the weight,
  so a minimum reader's sharing reaches at least two operands. With `j` at
  depth 1, a minimum reader below 46 whose stream-λ body is a let
  `((λx. B) A) C⃗` uses `x` at most four times, has a λ inside `A`, and, if
  the let is linear, has `j` inside `A` (Codex, bodyredex lane: handwritten
  with the scalar bounds and the `A = (s s s) j` case in
  `reasoning_class/bodyredex/FlatRestHole.lean`, and complete checks of
  92,480 and 47,328 sources). Contracting such a linear let never yields a
  β-normal term directly (kernel-checked, `Followup.lean`), and a λ-headed
  linear `B` (13,296 sources) and the uniform helper family
  `λs. ((λx. s x … x) A) j` with two to four uses (14,150 sources) have no
  reader below 46. Nor does any other let with two to four uses: no
  minimum reader below 46 has such a body (Codex, bodylet lane: the
  handlerlet method over 52 complete cells, 746,914 sources, the 22,660
  normalizer exceptions refuted individually in Lean, most through a
  kernel-checked divergence theorem for growing helpers,
  `A_T A_S →β* A_S A_(S++W) T`). The last case, a linear let carrying `j`
  whose `B` holds a nested head redex, fails too (Codex, bodylin lane): the
  exact minimality conditions leave 569 sources over eleven bodies `B`,
  each of which has a strictly cheaper β-equivalent replacement for any `A`
  and any pending operands — it may copy `x`, but `A` stays once under the
  let, so the source keeps one `j` — kernel-checked, with the 569 zero-law
  refutations in Lean as well. So **no minimum reader below 46 has a let
  as its stream-λ body**.
- **Lets headed by their own variable** (Lean, Codex,
  `Blc/SelfintNeededHead.lean`, `Blc/SelfintNestedLets.lean`). In
  `(λx. x B₁ … B_k) A`, keeping `A` once at the head and replacing every
  other use of `x` by the nearest outer variable lowers the weight by exactly
  `6 + (captured leaves of the B_i) + 3·(j occurrences in the B_i)`, with no
  copy of `A`. So in a minimum reader that replacement breaks a law: every
  such let has a use besides the head, a first body redex below 46 has one
  to five, and if the zero law survives the replacement some unary length
  fails. A nested head redex `((λy. D) E) B⃗` can be displayed as adjacent
  lets at an exact capture charge, and independent adjacent lets
  interchange at the exact price `F(A) − F(E) + uses_y(D) − uses_x(D)`.
- **The 164's and the 165's families** (Codex; prices and shielding
  kernel-checked, `reasoning_class/loop/Prices.lean`, `Shield.lean`, the
  assembly handwritten with complete helper checks over 19,554 sources).
  `λs. s (λb. b A c) B` with any operands, redexes included, and one `j`
  has `w ≥ 48`, attained by the 164; its hoisted form
  `(λa s. s (λb. b A c) B) j` has `w ≥ 49` for any multiplicity of `a`,
  attained by the hoisted 165. The tool is rigid shielding: a 16-bit
  operand can give `N` on every unary stream and `r r j` on a zero one, and
  no `j`-free context can extract that `j` to make `r j`. The same pricing
  gives `R84`'s wrapper at least 70 and `R104`'s at least 49.
- **Role supports from intersection types** (handwritten, Claude, types
  lane). Typing each law in a non-idempotent intersection system makes a
  position untyped exactly when it is dispensable, so a law's support is its
  core; the skeleton both laws use never contains `c` or `j`, and every
  branch one law alone uses hangs off an eraser in the other (a bit, the
  final `K` of `U₀`, or a binder that law never uses). The 162 shares only
  14 bits between its roles (26 unary-only, 2 filler), the 164 28. In a
  β-normal reader every shared `b X Y` gives `X` to the zero role and `Y` to
  the unary one, so `j` is never applied; and splitting a shared let into
  one per role costs exactly its argument's shared skeleton plus 4 and the
  index terms, which is all a shared let can save.
- **What a let can save** (handwritten, Claude). For `(λx. B) A` with `k`
  uses of `x`, the contraction changes the weight by
  `S = (k−1)|A| + (f_A − 1)M − 4 − 2k − T` (`M` the uses' depths under B's
  λs, `T` B's other outward leaves). A linear let pays only through the
  index tax, when `(f_A − 1)m > 6 + T` (`Blc/SelfintLambdaSink.lean` has a
  29-bit source whose contractum is 31, not a reader), and otherwise a let needs two uses that
  are productive. Counting alone allows a let-contracted
  reader of about 91 bits, whose cheapest shapes are pure self-application
  bodies `x x … x`: no bounded-sharing bridge follows from accounting, so
  the remaining step has to be semantic.

**Settled by complete finite checks.** These enumerate every term of every
shape (redexes included) within the stated budget under the class's exact
cost model, test both laws on `n = 1, 2, 3`, and certify every fuel or size
cut-off (a head cycle on the term or its η-normal form, a target constant
absent, or a closed Ω subterm). An empty result therefore refutes the
family; the lists are in the round-4 archive. Claude's lanes:

- minimal pieces: the unary core (one `j`, erased) costs at least 20 bits
  and through 28 bits the only core of at most 23 is `s (λq. c) (s s j)`;
  the zero core at least 12; an operand that is `j` on a zero stream and `N`
  on unary at least 25 (two minima, `s K j (s s s)` and
  `s (λx. s (λb. b F)) j`); a variable arm that need not absorb `j` at least
  22, uniquely `s (λq. c) (s s s)`;
- the **first dispatch**: substituting a generic cell `cons b r` and
  head-reducing, every reader's body reaches `b A B C⃗` (zero: `A C⃗ = r j`,
  unary: `B C⃗ = c r N`) or `r A`. The additive "dispatcher + zero part +
  unary part" decomposition is false — the 164's `c`, `N` and single `j`
  each serve two roles — so the families are closed by first-dispatch
  shape: selectors `I` and `K` for every operand shape; `λb. b X Y` with one
  or two trailing operands; general `λb. B` dispatchers with
  `|B|, |T| ≤ 21`, or `|B| ≤ 9`; every λ-rooted reader whose body is at most
  25 bits;
- **every β-normal reader: `w ≥ 46`, sharp at the 162**, with no
  minimality assumption (Claude, types lane; reviewed adversarially by
  Codex, who reproduced every run, and again by a fresh Claude reviewer).
  The search is computer-checked; the shape lemma below, the
  needed-occurrence lemma and the lower bound's admissibility are
  kernel-checked (Codex, `reasoning_class/leanbn/Foundations.lean`), and a
  proof-producing version of the whole search is designed, not built. The search is needed narrowing for the
  zero law and the unary laws at `n = 1, 2`: each law runs on a normal-order
  machine against its target, a hole is refined only when a run needs it,
  and a hole never refined is a 2-bit filler. A β-normal reader satisfying
  the zero law is an s-spine `λs. s A₁ … A_k`; depth ≥ 2 is one run (99,562
  states), and depth 1 splits exactly by the root arity `k` into four runs
  of 45,497, 78,828, 59,550 and 32,810 states; each of the seven cut-offs
  has no head normal form for any filling, proved by hand. Tabling is sound for the joint laws because both force needed
  source occurrences — the zero run must reach the source `j` and a unary
  run some source `c` — so a subterm the search has not placed can be
  replaced by a 2-bit variable without breaking a law (Codex's repair; with
  a single law the memo loses solutions, so single-law runs are not
  evidence). The search finds the 162 at 46 and the 164 at 48, and among
  β-normal readers the only core `λs. s A B j` with `w ≤ 46` is the 162's
  and the only `λs. s A (s B C D)` with `w ≤ 48` the 164's;
- **every s-spine reader `λs. s A₁ … A_k` whose first operand reaches the
  first dispatch through stream expansions, λ-bindings and variable heads
  alone** — no β-redex on its head path; the pieces off that path are
  arbitrary terms. This covers `λb. b X Y` with any number of trailing
  operands, large `λb. B` dispatchers over a small `T`, general `λb. B`
  with two or more trailing operands, and stream-headed first operands
  `s (s P …) …` (the generator recovers the 164 at exactly 48 as a
  control). The one skeleton the check could not reach under the cap,
  `λs. s (λb. b X) A B`, has `w ≥ 46` with any source redexes and `j` at
  any depth (Codex: exact accounting `w = 20 + x + a + b` and a helper check
  over 89,511 operands giving `a + b ≥ 24` when `A` or `B` carries `j`,
  `≥ 22` otherwise). With the first operand a literal `λb. B` and `j`
  outside it, every redex inside `B` of a minimum reader below 46 has two
  to five uses, for any operands (Codex), and none of those survives
  (Codex, handlerlet lane: the exact price `w = 12 + 2q + |B| + Σ|T_i|`
  and minimality `Δ ≥ 0` for every let inside `B`, kernel-checked, leave
  117,059 sources over `q = 1 … 5`, all refuted, 1,868 normalizer
  exceptions individually in Lean). So **no minimum reader below 46 has a
  literal λ as its first handler**. When the first operand is not a literal
  λ but is free of `j`, every redex inside it still has two to five uses
  (the linear cases reduce to 727 sources, each refuted in Lean), a let of
  the form `s ((λx. λb. B) A) T⃗` must satisfy `occ_x(B) < F_A + occ_b(B)`
  (at equality sinking it gives another minimum with a literal handler),
  and the nonlinear cases fail in five complete cells: **no minimum reader
  below 46 has a `j`-free first operand** (Codex, firstop lane; 7,023
  normalizer exceptions refuted individually in Lean). The `j`-carrying
  first operand `((λx. D) j) P⃗` is excluded too (4,188 sources, each with a
  Lean refutation), and turning a stream-headed first operand into a
  literal handler costs exactly `18 + 2F + 6·occ_j(Q)` before contraction
  (kernel-checked). First operands that carry `j` fail as well (Codex,
  firstopj lane): contracting a `j`-sharing let while keeping only the copy
  of `j` the zero output uses changes the weight by exactly
  `(m−1)|A| + (s_A + c_A − 1)M + 4d − 2 − 4m − s_D − c_D` (the price
  kernel-checked, the law-preserving replay handwritten), which a minimum
  needs non-negative, and fourteen complete checks of 424,378 sources leave
  nothing, the 4,337 normalizer exceptions refuted in Lean. So **no minimum
  reader below 46 is an s-spine** (the composition of these pieces —
  depth, d1open, loop, handlerlet, firstop, firstopj — audited by Codex
  for exhaustiveness and consistent hypotheses); A handwritten deletion lemma underlies the budgets:
  replacing a subterm by a cheaper one with the same value on every unary
  probe leaves a unary core, and the only cores through 22 bits are
  `s (λq. c) (s s j)` and `s (λq. c) (s s s)`, so a reader carrying
  `|Q| − |Q'|` bits of zero-only material has `w ≥ 29 + |Q| − |Q'|`. The 162
  carries exactly 10 such bits (its `s I`) around a 30-bit unary core, the
  164 12 (its outer `b F`) around a 30-bit core that holds a 10-bit `s I`
  around `s (λq. c) (s s j)`;
- **dispatch sites** (Claude, zcore lane; handwritten with complete checks,
  every claim reviewed by Codex). Call `s I W` (saving 10), `x A W` with
  `λx. P` a direct argument of a stream occurrence (saving at least 8) and
  `s K A W` (at least 15) the sites a reader dispatches through; deleting a
  site keeps the unary law, through any let or redex. Exactly three unary
  cores have at most 23 bits: `s (λq. c) (s s j)`, `s (λq. c) (s s s)` and
  `s (λq. c) (s s c)`. If a closed `s I` anchor sits anywhere in the body,
  under any lets, the reader weighs at least 46, with equality only for the
  162 (Codex's repaired check through cost 28: of 376,730 candidates only
  `λu. s (λq. c) (s s u)` completes it). Two disjoint sites, or one saving
  at least 16, force `w ≥ 46`; so a λ-rooted reader below 46 dispatches
  through at most one site in its whole body, saving 8 to 15 bits, and the
  same holds for hoisted readers `(λa. λs. M) j`. The bound is joint: a
  cheap site is paid for by a large core, as correct readers of 52, 54 and
  61 with 9-, 19- and 8-bit sites show. A dispatcher shared through a let
  is a site of its own when every call that runs on a unary stream hands it
  the bit (or `F`, or `s K`): deleting it saves at least 8 bits once,
  however many calls there are, and with the reader's one site that is two
  sites. So below 46 a shared dispatcher needs a call that hands it
  something else, and a selector call (only `K` itself acts as `K` on unary
  among terms through 9 bits) costs at least 11 bits at its site; calls
  handing it `c`, `s` or a tail reuse both arms and are not priced
  (correct readers of 93 and 99 do this);
- **no reader with `w ≤ 45` and `j` under no λ but the stream's has a
  syntactic site at all** (Claude, single lane; reviewed by Codex, who
  reran the whole partition: 126 paths, 329,895 narrowing states, 76,845
  insertions, no reader). Enumerating unary cores by the unary laws rather
  than by cost — needed narrowing on `U₁, U₂` with `j`'s path pinned —
  lists every core of weight at most 37 as 110 templates; putting one site
  back into each in every way and testing both laws finds nothing, and
  brute force agrees with the narrowing at the costs where both run. The
  same holds for any deletable `E W` with `|E| ≥ 6` and `j ∉ E W`, and no
  `j`-free subterm can be replaced by `I`, `F` or `K` keeping the unary laws
  unless it costs at least 12, 14 or 15. With the depth results above,
  **no minimum reader below 46 has a syntactic site**;
- every reader with its hole at depth ≥ 2, and every depth-0 reader whose
  `j` is the argument of a λ, under the minimality order (weight, λ count,
  depth). This corrects round 3's reduction, which handed depth-2 rows to
  depth 0 by hoisting: such hoists are never minima, and a hoisted depth-0
  form contracts to a deep reader of weight up to 50;
- shared lets over the `s I` and `s K` spines, lets shared across a general
  λ-dispatcher and one or two operands, and the self-application families
  `λs. (λx. x x) A j` that maximise the counting bound;
- depth-0 readers whose `j` follows a shared top-level let,
  `(λx. B) A j`, and application-rooted readers with `j` a let-body
  operand, whenever the let argument's λ-chain binds every root argument
  and the stream: no minimum reader below 46 has this shape (Claude;
  complete checks of 32,228, 2,664 and 600 bodies after the forced-use
  filter). The root-let weight is exactly `w = 8 + 4k + 4t + Σ|B| + Σ|C| + |Σ|`
  (`k` root arguments, `t` pending ones), so the template body has at most
  27 bits, and the stream's, `j`'s and the let's variables and `c` must all
  occur in it. The same holds when `j`'s binder is the head λ-chain at any
  multiplicity (handwritten, through depth 0's chain swap), and for the
  self-application `(λx. x x)(λz a. z M⃗) j` whose chain stops before the
  stream (66,577 bodies). No reader `(λx. x x) A j` at all weighs at most
  37 (a lazy enumeration that only expands what the run inspects, sound by
  the transfer lemma; 23,504 nodes, every cut-off certified); the tree grows
  about 6.5× per 4 bits, so 45 is out of reach this way. Contracting the
  pre-stream computation of a hand-off is never lighter: the reduct keeps
  both the let argument and the value it hands on. The depth-0 window
  `(λx n s. M) A j` with one `c` in `A`, `x` used twice, `M` free of `c` and
  `9 ≤ |A| ≤ 16` — what a handwritten reduction leaves of that shape — has
  no reader (Codex and Claude, adv5 lane: 47,016 candidates, redexes
  included, 66 certified head-divergent on zero);
- the whole-cell opener `λs. s (λb t. B) j`, of which no minimum reader
  below 46 is an instance (Codex): a λ-headed `B` hoists its binder at a
  strictly lower price (kernel-checked), a linear redex does not fit in
  `|B| ≤ 29`, and every rigid-headed body (92,534 sources) and every body
  whose head let has two to four uses (18,640 sources, the 24 normalizer
  exceptions refuted in Lean) fails a law.

**Reduction of depth 1** (handwritten with checks through 25 bits, Claude;
reviewed adversarially by Codex). Call a position unary-dispensable when
replacing it by Ω keeps the unary law for every `n`; along the normal-order
run that holds exactly when no residual of it is touched or survives (the
transfer argument, joint dispensability and ancestor closure all survive
review), so the cores of the two laws are unique and `w` splits exactly into
core, fillers and the hole's depth tax. (The 162 is a 40-bit unary core, a
2-bit filler — its `u`, needed by neither law — and `j` at depth 1.)

Anchoring at `j`'s parent node `X`, which at depth 1 is context-free, covers
the readers whose `X` is rigid on a zero stream: each such λ-rooted
depth-1 reader with `w ≤ 45` lies in one of four families, the 162's own
`λs. Y j` with `Y[Z] =βη r`, `Y[U] j = c U N` and `31 ≤ |Y| ≤ 37` (the 162
has 38); a zero-only operand inside a 23–27-bit wrapper; the wrapper
`s I I x` with a 23-bit operand; and an operand that stays a λ on unary
inputs. Every other rigid combination is closed (a zero handoff of the
164's kind costs at least 48). `X` can instead return a λ that its context
applies: in
`λs. (λx. s (λb t. b (x t) (c t x))) (s (λb t. b (λa k. k a) (t t)) j)`
(`w = 84`, Codex) `X` gives `λk. k j` on a zero stream and `N` on every
unary one. Zero-λ parents are therefore outside the four families. Three
of their shapes are out of a minimum reader (Codex): a literal let parent
`(λa. B) j` (keeping the one `a` that supplies the zero output's `j` and
replacing the others by `s` preserves both laws, and then contracting or
hoisting the let is strictly lighter unless `w ≥ 49`; handwritten); a
closed transport `Y j` (a complete check of 47,392 `Y` and 11,620 context
pairs, every unresolved probe certified divergent by the frozen engine);
and a redispatch `λs. P D` with source-disjoint `P` (`r` / `c U`) and `D`
(`j` / `N`), which costs at least `6 + 2 + 20 + 25 = 53`, attained by
`λs. s I (s (λq. c)) (s K j (s s s))`. The rest, `Y j` with `Y` an
application containing `s` or `c` (the simplest is `s K j`), is unpriced.
At depth 1 every ancestor of `j` is an application, so the lowest one whose
zero value is rigid, `X*`, is context-free too; anchoring there keeps the
zero classification, the unary projection and the operand minima, and
recovers priced operands such as the `j`/`N` operand `s K j (s s s)` above.
But minimality then only gives `R = λs. X*`, and `X*` can be the whole
body: `λs. s (λb t. b (λx. x t) (c t)) (s (λb t. b (λa k. k a) (t t)) j)`
(`w = 75`, β-normal, Codex) has both halves λ-valued on a zero stream,
`λx. x r` and `λk. k j`.

Inside the first family, anchor again at the node `ν` that becomes the
unary output. When every binder above `ν` touches only unary-dispensable
positions in it (the absorber's variable always does), moving `ν`'s subterm
out past `k` binders saves exactly `k` bits per needed `s` or `c` leaf (the
index arithmetic is confirmed), the only arms of at most 23 bits are
`s (λq. c) (s s s)` and `s (λq. c) (s s c)`, and a wrapper check that tests
the unary law alone (Codex: all 6,089 wrappers of charged cost ≤ 18, no
cut-offs) leaves nothing below the 162's `s I (λu. x)`. So a *minimum*
reader of this shape has `w ≥ 46`, with equality only through the 162's
wrapper. The argument builds a lighter reader elsewhere, so it bounds
minimum readers, not every reader of the family; and the zero output need
not be rigid there (a `w = 104` reader with the binder hypothesis met has
`ν` returning `λq. r j` on zero). What remains of the family is a binder
above `ν` carrying a value the unary output needs — sharing between roles
again, through a let or through a cell part the bit opens. In the 162 the
binder `u` receives the rigid `j` on unary streams, so it is never needed;
but a binder can be: `λs. s (λb t v k. b (t k) (v (c t))) (λu. u (s s u)) j`
(`w = 75`, Codex) hands `u` the value `c r` and has a 16-bit body. For the
spine `λs. s A (λu. D) j` (Codex, complete checks): `λs. s (λb. b H) (λu. D) j`
has `w ≥ 46` for every `H` (6,113 bodies fail), a minimum reader below 46
has `|A| ≥ 11` and `|D| ≤ 18`, and `D = u (s s u)` is excluded for every
`A`. The checks have
at most 53,537 terms after the first pass; the review reproduced the small
ones, not the full 25-bit cut-off audit.

**Open.** Only readers with a source redex remain, and a minimum reader
below 46 is neither an s-spine nor a reader whose stream-λ body is a let,
so one branch of the source-head classification is left: **root lets**
`(λx. B) A C⃗` — depth-0 shared top-level lets and application-rooted
readers whose let argument hands control on before binding the stream,
with at most five uses of `x`; in the tight profiles `k + d = 5`, 580
listed sources remain to be refuted. Every λ-rooted minimum reader below
46 is excluded, so the zero-λ parents, needed binders, self-headed lets and
dispatch-free readers that the depth-1 analysis isolated matter only inside
a root let's argument. The space of all readers below 46 is far beyond
enumeration (the record's estimate is about 2×10⁹ λ-rooted depth-1 readers
alone), so the branches were closed by argument first: exact contraction
prices under minimality cut each branch to cells of at most 100,000
sources, which complete checks then refute with every normalizer
exception proved in Lean. The β-normal bound does not simply
transfer through normalization: a reader need not have a normal form, and
contracting a shared let can copy `j`, which leaves the one-hole class.
Where a normal form exists, replacing every copy of `j` that does not
survive by `c` restores one hole, so the normal form weighs at least
`46 + Σ (3·depth − 2)` over the replaced copies (handwritten, Codex); that
is a lower bound on the normal form, and closing the remaining cases with
it needs an upper bound on what normalization adds.

Where `j` dies does not price a reader (Codex, jerase lane). Every
residual of the source `j` is erased by a contraction whose λ comes from
the reader source, a unary cell's `F` or the terminal `K` (the occurrence
identity behind this is kernel-checked; the provenance argument is
handwritten), but the origin does not fix the cost: the 162 erases `j` at
the terminal `K` — its `λu` only transfers it,
`(λu. s (λq. c) (s s u)) j → s (λq. c) (s s j)` — the 165 with an input `F`
at 49, `λs. s (λb t n. b (t n) (c t (t t n))) j` (`w = 58`, β-normal) kills
two residuals of `j` by both mechanisms in one run, and
`λs. s I (s (λq. c)) (s (λb t. b K F) j (s s s))` (`w = 70`) erases it with
a source `F` that has no `s` or `c` leaves beneath it (all laws for every
`n` kernel-checked, `reasoning_class/jerase/Witnesses.lean`).

Periodicity of the unary run is not a pricing tool either. A reader's run on `U_n`
need not settle into a fixed period: `λs. s I (λu. s (λq. c) (G s O)) j`
with `G = W W`, `W = λg t k. t (λb r. b r (k I (g g r (S k))))` and Church
`O`, `S` is a correct reader (`w = 221`, both laws for every `n`
kernel-checked, Codex, `reasoning_class/loop/Slow.lean`) that carries a
growing counter and takes `2n² + 8n + 8` steps to skip. And in the 162 the
repeating skip `U_(m+1) U_(m+1) →⁴ U_m U_m` consists entirely of input-cell
redexes: the reader's `s s` only starts it, so a period charges no reader
source. What the remaining cases share is an overlap of the source that
two roles use, as in the 164's split operands and `R84`'s shared `x`.

## 4. The same minimum under weaker hypotheses

Each widening below either keeps the class minimum or bounds what the
widened members can cost, so a sub-162 outside the original class must
break something it does not cover.

### 4.1 NEXT of any syntax

**Theorem (Lean, `Blc/SelfintWiden.lean`, Codex).** Replace NEXT's normality
and tag-use restrictions by its rigid branch laws alone (`RigidNext`), and
write `q = |Q|` and `F` for its free `c`/`p` leaves. If

```text
q ≥ 92    and    q + 3F ≥ 104,
```

every assembly is at least as large as an original-class assembly with the
same reader, its hoist, or the 162's reader (`frontier_dominated_full`). In
this wider class the 162 is optimal **if and only if** every reader obeying
all unary laws has `w ≥ 46` (`frontier_optimal_iff_reader_floor`), and the
146 transfers.

The four-free-leaf property fails once normality goes: a NEXT whose `c` and
`p` are let-shared has two free leaves at 105 bits, and a β-normal NEXT with
a four-argument tag spine has two at 113. A NEXT that could lower the
minimum must lie in `32 ≤ q ≤ 91`, or `F = 2` and `q ≤ 97`, or `F = 3` and
`q ≤ 94`. Lean excludes the rest of the cheap end and two structured
families: every `RigidNext` has three live source binders and `q ≥ 32`;
every NEXT obtained from an original-class NEXT by `c`- or `p`-aliasing
clears the frontier (the cheapest cost 99 and 100 with `F = 3`); and NEXTs
with one designated let whose projections are β-normal after pruning and
that substitution cost `q ≥ 98` (let inside the tag binder), `q ≥ 99`
(outside), or `q ≥ 92` with `F ≥ 4`, after any cost-safe administrative
contractions (`OneLet.covered_admin_frontier`); this family strictly extends
the original class. The open remainder is shared functions whose
applications create further redexes after selection or substitution.

A constructive attempt on paper (Claude) found nothing in the open regions:
the cheapest NEXTs it could build are 92 bits with `F = 4`, 99 with `F = 3`
and 105 with `F = 2`, and every way of removing a free leaf cost at least 7
bits against the frontier's 3. Its 93-bit NEXT, which dispatches inside the
first parse's argument, assembles to a correct 163. With NEXT's restrictions
dropped entirely Lean proves `|E| ≥ 76` for the class
(`unrestricted_next_assembly_lower`) and `|E| ≥ 18 + k(26 + q)` for a knot
with `k` holes, so a sub-162 member has one hole, or two and `q ≤ 45`.

### 4.2 Value representations

**Theorem (Lean, `Blc/SelfintValues.lean`, Claude).** Let the reader return
`c V_n N` on unary input for any family `V_n`, keep the zero law, and let
NEXT be any source. If a converter `κ` with only `c` free satisfies
`κ V_n N =β c U_(n−1)(N) N`, the member is no smaller than an
original-class member whenever NEXT clears the frontier shifted by the
conversion cost `δ` (`transfer_dominated`: `q ≥ 92 + δ`,
`q + 3F ≥ 104 + δ`, `δ = f(|κ| − 2)` for `f` occurrences of `c`;
`share_dominated` when the reader is reused unchanged), so any raw reader
floor carries over (`floor_of_dominated`). The underlying transfer
(`Blc/SelfintValuesTransfer.lean`) substitutes `κ` for `c`.

For whole-prefix values `U_n` the converter is `λv. v (λq. c)`, 3 bits at an
applied occurrence of `c` and 10 at a bare one; stripping it from the
162-shape whole-prefix reader gives the 162's reader exactly
(`wp162_strip`). Every environment cell of the shape `λu. λr. B`, any body,
needs more than 26 bits (an exhaustive check of 1,764 bodies through 22
bits, with a handwritten completeness argument), which with `δ = 3` is
exactly the price at which a whole-prefix member is dominated; cells with
fewer leading λs reduce to that shape or fail (handwritten), and let-headed
cells are open. Not covered: values that use NEXT itself as their decoder,
which admit no `j`-free converter (Codex's review). The thirteen
representations priced on paper all lose to the 162's 81 bits of value
modules: applying the stream delivers only `s X = X F r`, so the only cheap
variable values are `s` and `r`.

### 4.3 Recursion

**Lemma B (Claude; steps in Lean, `Blc/SelfintKnotHeads.lean`; finite cases
computer-checked; two Codex reviews).** Model the parser body as one rigid
occurrence of `h` with two hygienic recursive ports, `h H J`, correctness
`t =β h t t`, and charge each port's outward references their depth taxes
`a` and `b`. Every recursion scheme then costs at least `26 + a + b` bits for
all `a ≥ 2`, `b ≥ 3` — 33 in the 162's frame, 31 in the 165's — and the
162's knot is the unique minimum. With three or more nonlinear binders this
is counting (no normal form, two nonlinear binders, no closed port, the bit
count); with at most two, any counterexample has at most six variable
occurrences and seven λs, and all fail (234,585 and 244,432 terms at the two
tax pairs, plus monotonicity). The model excludes lets inside the body,
several body copies, NEXTs with three recursive call sites, and schemes that
use what the body computes. The driver template `D G` with
`G = λx. (λp. B)(D' x)` costs at least 22 bits, uniquely Δ with `x x` (a
joint check of all 138 driver/fill pairs; a review refuted the first
proof). Knotless recursion needs its first head to be a complete parser of
at most 30 bits; every such head with three nonlinear binders fails (6,408
complete interpreters), and two-binder heads are open.

### 4.4 Continuation-headed analogues

The continuation-headed analogues cost more, independently of the reader
question (Claude):

- **Split class (Lean, `Blc/SelfintChead.lean`).** Members
  `T[λp c s. c (R_A[Q_A/j]) (R_B[Q_B/j])]` have separate value- and
  rest-mode readers and NEXTs under the class's NEXT hypotheses. Value-mode
  NEXT costs at least 86 bits and rest-mode at least 34, both attained, and
  every member has at least 165 bits (`split_class_165`; that the zero law
  forces each reader to be an application is handwritten).
- Sharing one body between the two modes costs at least 163, sharing one
  NEXT at least 165, other binder orders at least 164 (handwritten); mode
  sharing is never optimal, since removing the selector spine saves at least
  28 bits.
- Any interpreter `E` gives an s-headed one, `λc s. E (s (λx y. c)) s`, at
  `|E| + 23`; a conversion with no overhead would itself be the optimality
  theorem. A literal continuation-headed source below 162 needs a value
  decoder of at most 127 bits; the best known is 171 (`intL162 K`). The
  cheapest continuation-headed interpreter built is 199
  (`reasoning_class/chead/spec200.lam`).

### 4.5 Which laws the contract forces

The rigid laws are hypotheses, but part of them follows from the contract.
The tool is a divergent probe (Claude's argument, Codex's Lean): the
canonical value of `λy. Ω` is unsolvable, and a continuation `κ` with only
`C` free and `κ v N =β C X N` for an unsolvable `v` reduces to `C`, `λa. C B`
or `λa b. C B b`, so it forwards its second argument verbatim
(`Blc/SelfintProbe.lean`, `lemmaA`, `classify_continuation`). Under
syntactic separation, the actual zero handoff and two scoped control
conditions (NEXT hands the stream to the parser once; APP parses its second
operand from its first operand's rest), the contract forces the rest part of
the variable law at every unary length, with an abstract continuation and
the actual NEXT, and the ABS law and APP's second-operand law as data flow
(`Blc/SelfintProbeDerive.lean`, `derive_from_source_hypotheses`). The rest
does not follow: each of these passes the battery while violating one
hypothesis, none of them small — an inexact variable value (208 bits), APP's
second operand not parsed from the rest (194), NEXT handing the stream twice
(265, polished 241), a non-rigid parser (222), a reader correct only for the
actual NEXT (228). The zero law is a choice of split rather than a
property: one 171-bit tree splits both ways, and a reader that factors NEXT
re-separates exactly.

## 5. Outside the class

A sub-162 interpreter outside every class above must break one of the
remaining hypotheses: NEXT's separation from the stream binder, the
two-port opaque recursion model, an evaluator-style value representation
with a NEXT-free decoder, the CPS protocol with an exact two-argument
return. The cheapest known mechanism for each is priced below, with
constructions in `interpreter.md` §6 and the archives:

- **NEXT uses the stream.** Inside the reader's `λs`, NEXT can embed any
  closed interpreter `Q` as `λb t. Q c s` for `|Q| + 17` bits, so an
  unrestricted NEXT bound would itself be a global floor (`|NEXT| ≥ 96`
  unrestricted would imply every interpreter has at least 79 bits). The
  useful extra modes measured: a separately guarded variable mode, exact
  minimum 177 in its family; markers and second-tag selections 182–193.
- **No conversion into the class.** A first-bit guard,
  `G(E) = λc s. s K (E c s) s`, preserves the closed-source contract at
  `|E| + 30` but violates a law every member satisfies
  (`Blc/SelfintGlobalBarriers.lean`), so no β-preserving conversion takes
  every interpreter into the class; a conversion preserving only the
  contract with bounded overhead would itself be a lower-bound theorem.
- **Recursion outside the model.** Knotless two-head skeletons cost at
  least 165 under the ordinary first-child cut and the unshared generator
  at least 167, attained (`Blc/SelfintRecursion.lean`); the cut is not
  forced (a 312-bit parent-replay witness), and knotless first heads with
  two nonlinear binders are open (§4.3).
- **Returns that are not exact.** A continuation with only `C` free that
  receives a divergent value forwards its rest verbatim (§4.5), so a
  variable arm returning `c r NEXT` or a trailing argument fails whatever
  the continuations and NEXT do. Returning a suffix thunk and the pending
  NEXT as extra arguments is free at ABS but costs 19 bits at APP and 30 at
  the public boundary: 201 bits built, 199 and 211 for two variants priced
  on paper (`reasoning_class/arch/`).
- **No CPS parser.** Pair returns, stream-first parsers and direct
  evaluation lose the remainder's η (≥ 8 bits a site) or pay a public
  adapter (13–21).
