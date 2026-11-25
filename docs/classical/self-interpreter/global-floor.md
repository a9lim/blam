# A kernel-checked 46-bit floor

**Theorem** (`Blc.SelfintSingleObject.selfintSizeBound_46`). Every
self-interpreter for the repository's closed-source, β-exact contract has a
BLC encoding of at least 46 bits.

The proof is kernel-checked, has no hypotheses, and uses only `propext`,
`Classical.choice` and `Quot.sound`. It is Codex's Lean, built on Claude's
single-object theorem (§3). Its final assembly,
`lean/Blc/SelfintKernelFloor46.lean`, and the generated modules it rests on
ship in `data/self-interpreter/global-floor.tar.xz` and are checked by
`scripts/global-floor.sh` (§9). With the 162 (`interpreter.md`;
`not_selfintSizeBound_163`), the minimum self-interpreter lies in 46..162.
The separated class, whose minimum is the 162, is `class-bound.md`.

## 1. Statement

Terms are de Bruijn terms and `|M|` is the length of `blcCode M` (`wire`).
With `L` abstractions, `A` applications, `V = A + 1` leaves and `X` the sum of
the leaves' zero-based indices, every term satisfies

```text
|M| = 2L + 4A + 2 + X = 2L + 4V − 2 + X          (wire_identity)
```

`IsSelfInterpreter E` (`Blc/SelfintProof.lean`) says that `E` is closed and
that for every closed `M`

```text
E C (⌜M⌝ ++ N)  =β  C (λz.M) N,
```

where `C` and `N` are distinct free variables (instances at arbitrary terms
follow by substitution), `=β` is β-joinability, and `⌜M⌝ ++ N` is the list of
`M`'s wire bits ending in `N`: cells `λz.z b t`, bit `0` as `λx y.x`, `1` as
`λx y.y`. `SelfintSizeBound n` says that every such `E` has `n ≤ |E|`. The
contract is stated in `interpreter.md`.

A binder is *live* if its variable occurs in its body and *dead* otherwise,
*nonlinear* if the variable occurs at least twice.
Two binders are *comparable* if one is an ancestor of the other. The *width*
of a term is the largest number of distinct variables free in one of its
subterms, counting those bound outside the subterm.

## 2. Minima

`MinimalInterpreter E` (`SelfintWireCost`) says that `E` is an interpreter
and none is shorter. `bound_of_minima` transfers a bound on minima to every
interpreter by strong induction on size, so no existence argument enters,
and each step from `SelfintSizeBound n` to `n + 1` shows that no minimum has
exactly `n` bits. Every β-reduct of an interpreter, by a
redex anywhere, is an interpreter (`selfInterpreter_beta`), so no redex of a
minimum shrinks it (`minimal_redex_nonshrinking`). Contracting `(λx.B) A`
changes the size by exactly `(k−1)|A| + (f−1)D − 2k − 4 − g`
(`wire_beta_delta`), where `x` occurs `k` times in `B` under `D` λs in all,
`A` has `f` free leaves and `g` leaves of `B` are bound outside the redex. So
a minimum has no erasing redex (`minimal_no_erasing`), and no linear redex
whose argument has at most one free leaf.

## 3. One object per closure

The base of the floor is a theorem about closures that hold one object
(Claude's argument; Codex's Lean, `Blc/SelfintSingleObject.lean`).

Call `λu.Q` *single-object* if `Q = Q'[R/r]` with `u ∉ FV(R)` and
`FV(Q') ⊆ {u, r}`: everything the body uses besides its own argument reaches
it through copies of one term `R`. A dead abstraction is single-object (`R` is
its body); `λu. u (a b) (a b)` is, with `R = a b`; `λu. u a b` is not. `SO` is
the hereditary predicate: variables are `SO`, an application is `SO` when
both sides are, and `λu.Q` is `SO` when `Q` is, the abstraction is
single-object, and its `R` is `SO`. Every term of width at most two is `SO`,
and `λa b u. a b u`, of width three, is `SO` too; so `¬SO` is strictly
stronger than width three.

**Proposition** (`single_object_unique`). Let `Z` be `SO` and let `G_A, G_B`
be terms whose only free variable is a hole `ζ`. If `G_A[Z/ζ] =β x` and
`G_B[Z/ζ] =β y` for variables `x, y`, then `x = y`.

*Sketch.* A term β-convertible to a variable weak-head-reduces to it; induct
on the combined length of the two weak-head reductions. `SO` is preserved by
substituting `SO` terms, since `Q'[R/r][N/v] = Q'[R[N/v]/r]`, hence by weak
head steps (`so_weak`); not by arbitrary β, but the proof never reduces under
a λ. The contexts do not mention `x` or `y`, so each reduction brings a copy
of `Z` to the head, `G[Z/ζ] ↠w Z M⃗[Z/ζ]`. If `Z` is headed by a variable,
that term is weak-head normal, so it is `x`, and likewise `y`. If `Z →w Z₁`,
continue with the `SO` term `Z₁`. If `Z = λu.Q` is dead, the next step
discards its argument; continue with `Q`. If `Z = λu.Q'[R/r]` is live, the
next step gives `Q'[M/u, R/r] N⃗`, where `x` and `y` can only come from copies
of `R`; continue with `R`, the hole now standing for `R` inside
`λu.Q'[ζ/r]`. The last three cases shorten the combined length, so the
descent ends at a variable-headed object, which delivers one variable. ∎

**Theorem R** (`theoremR`). If `T` is `SO`, then not both `T x y K =β x` and
`T x y F =β y` (`K = λa b.a`, `F = λa b.b`): take `Z = T x y`, `G_A = ζ K`,
`G_B = ζ F`. So no `SO` term is β-convertible to the pairing combinator
`P = λa b f. f a b` (`not_join_pair`).

**No interpreter is `SO`** (`selfInterpreter_not_so`). Take the contract at
`M = P` with `C := K`, `N := I`, and apply both sides to `I`:

```text
T = E K (⌜P⌝ ++ I) I  =β  K (λz.P) I I  →*  P.
```

`K`, `F`, `I` and every stream cell `λk.k b t` with closed `b, t` are `SO`,
so if `E` were, `T` would be an `SO` term β-convertible to `P`
(`specialized_not_so` covers every reduct of `E K`; §6 uses it).

**The witness** (`selfInterpreter_width`, `Blc/SelfintSingleObjectWidth.lean`).
A minimal non-`SO` subterm of `E` is a live `λu.Q` whose body uses two
distinct variables bound inside `E` by enclosing binders and does not factor
through one object (`Witness 0 E`). So `E` has width at least three: three
live binders on one ancestor chain, the inner two capturing, the outer two
variables occurring at zero-based indices at least 2 and 1.

This implies Statman's theorem: a term β-convertible to `S` has the witness
(`join_s_width`), so no `SO` term is (`not_join_s`), nor any term whose live
abstractions each capture at most one variable (`narrow_not_join_s`, all in
`Blc/SelfintStatman.lean`), in particular none of width two (Statman, *Two
Variables Are Not Enough*, ICTCS 2005,
https://doi.org/10.1007/11560586_32). The width-two form,
`widthTwo_not_join_s`, is at tag `selfint-record-2026-11-25`. The floor does
not use Statman's theorem.

## 4. Two incomparable nonlinear binders

`Chain T` says that the nonlinear binders of `T` lie on one ancestor chain:
`Chain (F A)` requires both sides and that one of them has no nonlinear
binder. β preserves it (`chain_beta`, `chain_betas`,
`Blc/SelfintNonlinearChain.lean`): a redex with a nonlinear binder has an
argument without one, an argument with one is inserted at most once, and a λ
that becomes nonlinear is an ancestor of every nonlinear binder below it. Run the contract on
`Ω = Δ Δ`, `Δ = λx.x x`. Stream cells have no nonlinear binder, so `Chain E`
would make the invocation `Chain`; the required output `C (λz.Ω) N` has two
incomparable nonlinear binders and is its own only reduct, so the join is a
reduction to it, a contradiction (`selfInterpreter_not_chain`). For a literal
`λc s.B` the pair lies in `B` (`selfInterpreter_body_not_chain`).

## 5. Counting to 33, and the minima through 36

**`interpreter_counts`.** The witness supplies three live binders on one
chain, which cannot hold both incomparable nonlinear binders, so at least
four binders are live (`width_split_live`). Each live binder owns a leaf and
each nonlinear one a second (`leaves_bound`): six leaves. One occurrence of
each witness variable costs indices at least 2, 1 and 0 (`width_price`):
`X ≥ 3`. As `L` is at least the live count,
`|E| ≥ 2·4 + 4·6 − 2 + 3 = 33` (`selfintSizeBound_33`).

Counting alone stops here. Codex's `U = λa b c. a (λp q r t. c) c (b c)` is a
one-point applicative basis (`J = U U U →* K`, `U (J (J U)) J →* S`), and the
162 compiled over `U` and shared through one binder is a 7,625-bit
interpreter with four live binders, two nonlinear, two live captures and
width three: it attains every count above at once. Its Lean
(`SelfintFourLiveWitness`, `minimum_live`) and wire are at tag
`selfint-record-2026-11-25`.

**Through 36.** A minimum of at most 36 bits is `(λb)(λa)`: a closed copier
with two leaves and one live, nonlinear binder applied to a closed operand
with four leaves, three live binders and the witness
(`small_minimum_diagonal`). A verified enumerator lists every such operand
(`routes_complete`, `minimum_cells`), and the kernel evaluates on each layout
a Boolean test of necessary conditions (`minimum_passes`): no shrinking
redex, enough binders in each of the first four head reducts, no observed
mismatch with the identity source's normal output within 35 steps; a budget
reached keeps the layout. At 33 the two layouts that pass,
`Δ (λa. a (λb c. a b c))` and `Δ (λa. a (λb c. b a c))`, are `SO`
(`factoredLayout_so`): `selfintSizeBound_34`. Through 36 eight pass
(`minimum_residual`): those two and their variants with `c` boxed as `λu.c`,
all `SO`; two with exact head cycles on the identity call; and two whose
weak-head clock descends without bound (one appends a continuation to the
spine on every trip, the other peels and regrows a word of wrappers). This
is `selfintSizeBound_37`.

## 6. Literal interfaces

**`λc.B` costs at least 39** (`one_lambda_bound_39`). `E K →β B[K/c]`, so by
`specialized_not_so` the witness descends from a subterm of `B` with three
variables bound inside `B` (`one_lambda_width`); the pair is in `B` too, as
`c` is comparable with every binder; and `c` is live, or the identity source
could not produce the rigid `C`. Five live binders, seven leaves and index
sum at least three: `2·5 + 4·7 − 2 + 3 = 39`.

**`λc s.B` costs at least 46** (`two_lambda_bound_46`,
`Blc/SelfintLiteralWidth46.lean`). The witness lies inside `B` with its three
variables bound there (`two_lambda_width`), and so does the pair. Both `c`
and `s` occur in `B`, and each occurrence of `c` lies under `s` and costs an
index unit beyond the witness's. So `L ≥ 6`, `V ≥ 8`, `X ≥ 4`, and
`2·6 + 4·8 − 2 + 4 = 46`. `B` may begin with λ, so this covers every source
with two or more leading λs: below 46 a λ-rooted minimum is `λc.B` with one
leading λ, first possible at 39.

## 7. From 37: classification by live binders

With `ℓ` live binders, two nonlinear, a source has at least `ℓ + 2` leaves
and `L ≥ ℓ`, so `|E| ≥ 6ℓ + 9`: four live binders fit from 33, five from 39,
six from 45. Each class has a lemma that holds at every size, turned into
word grammars (resource totals and de Bruijn leaf words) proved complete for
each size's resource profiles `(L, V, X)`: every minimum is a member.

- **Four live** (`four_live_minimum`): a minimum is an application of two
  closed abstractions, the function with one live binder, which is
  nonlinear, the argument with three, the witness and at least four leaves
  (a λ root would need five live binders). Grammars: `four_live_row`,
  `four_live_marked_row`. Used from 43, `four_live_operator`: the copier's
  body is β-normal, headed by its own variable and without a live binder.
- **Five live, 39–42.** At 39 the width-bearing abstraction is closed and its
  body has at most three λs and five leaves (`width_local_price`,
  `closed_of_saturated_width`, `Saturated.five_live_shell`,
  `Saturated.five_live_source`). At 40 each binder binds at most twice
  (`atMostTwo_of_leaf_eq`), at most one reference leaves the width
  abstraction (`one_spare_capture`), and internal width on five or fewer
  leaves puts the nonlinear binders on one chain
  (`FiveLive.chain_of_small_width`), so the surrounding shell holds a
  nonlinear sibling (`FiveLive.bucket_mem`). At 41 and 42 the leaf count is
  seven and no binder binds more than twice; a redex operand with at most one
  free occurrence, under such a binder, costs eight bits
  (`FiveLive.small_operand`), so the marked body has at most five leaves
  (`FiveLive.small_atom`) and the shell holds a nonlinear binder
  (`SharedShell.complete`).
- **Five live on eight leaves, 43–44.** The profiles are `(5,7,7)`,
  `(6,7,5)`, `(7,7,3)` and `(5,8,3)` at 43 (`resources`, `five_complete` in
  `SelfintSize43Profiles`), `(5,7,8)`, `(6,7,6)`, `(7,7,4)`, `(5,8,4)` at 44
  (`ProfileGrid.resources`); the new class has eight leaves, all λs live.
  The leaf count no longer saturates, and two lemmas replace saturation.
  `occBound_of_slack`: with at most `q` more leaves than live binders,
  nonlinear binders and free leaves together, each binder has at most
  `2 + q` occurrences; here three. `EightLeaf.exterior`: then a nonempty shell
  around the width-bearing abstraction holds two leaves (a one-leaf sibling,
  the public variable or the identity, makes its redex shrink or gives a
  rigid head). So the marked body has at most six leaves, and with six both
  incomparable binders may lie inside it.
- **Size 45** (`Size45.resources`): four live; five live at `(5,7,9)`,
  `(6,7,7)`, `(7,7,5)`, `(8,7,3)`, `(5,8,5)`; and `(6,8,3)` with five or six
  live. *Six live* fit only there, with exactly two nonlinear binders, none
  bound more than twice, and the witness's two nearest enclosing binders
  each occurring once in its body under no further λ, their indices 1 and 2
  being the whole index sum (`Size45.six_exact`, `consecutive_of_saturated`).
  *Five live and one dead*: a one-leaf sibling can now also be
  `F = λx y.y`. As an operator `F` erases its argument; under a public λ the
  closed abstraction and `F` leave the public variable unused; as the operand
  of `λ.b`, a nonshrinking contraction needs three occurrences of the root
  variable in `b`, both incomparable nonlinear binders lie in `b`, and `b`'s
  three live binders need five leaves beside those three: eight, where seven
  fit (`SaturatedEight.constId_operand`, Codex's argument, which does not use
  the index sum). `SaturatedEight.exterior` then gives two exterior leaves
  (`Size45.expose_eight`, `eight_mem_grid`).

From 41 a static filter prunes the grammars: `FactorFilter.markedHere` keeps
a candidate witness only if a search for a one-object factorization of its
body fails (`factored_sound` checks each factorization), the true witness
survives (`markedHere_of_witness`), and every interpreter passes
(`FactorFilter.required`), so the test applies to reducts too.

The steps are `CoverGrids.advance` (for `n ≤ 42`: the bound at `n` and refuted
grids give `n + 1`), `Grammar43.advance`, `ProfileGrid.advance` (`n ≤ 44`)
and `Size45.advance`, which refutes three grids (four live, the five
profiles, `(6,8,3)`) and excludes two leading λs by `two_lambda_bound_46`.

## 8. Exclusions

Every listed source has a kernel-checked exclusion. Most are checked
certificates of a few kinds: a reduct that is shorter, has its nonlinear
binders on one chain or lacks the internal width; a single-object
factorization; a reduct in the `W/B` grammar (closed under head steps, each
closed member having one, so no head normal form); an exact head cycle; a
dead interface binder; a wrong head or normal output on an invocation; and
clock invariants (`TwoPending.no_count`). Through 39 they exclude every
source. From 41 rows are replayed by `RowReplay.discharge`: a row names a
slice of a grammar by resource counts and leaf-index words, a list of
integers picks a certificate for each source from a shared bank
(`rejects_sound`), a failing certificate keeps the source, and the kernel
computes what is kept and compares it with the row's explicit list, so
neither the lists nor their producer is trusted. What the certificates
leave, from 40, goes to direct proofs:

- *finite ordered application tables* (`SelfintFiniteChain.necessary`): a
  monotone grading that β cannot raise, so a call graded strictly below its
  required normal output cannot reach it;
- *recursive intersection-arrow types* (`SelfintRecursiveTypes`), preserved
  by β: a call gets a type its required result lacks, or the bottom type,
  which no term with a weak-head clock has (`noClock`);
- *regular invariants* of a Krivine machine (`SelfintRegularSoundness`): a
  finite state set containing the start and a successor of each state, so a
  call the contract forces to a weak-head normal form has no finite clock;
- *a weighted rank* (`Floor40.Weighted.no_clock`, in the archive): a λ ranks
  one more than its body, an application `max(0, rank f − 1, rank a − c)`;
  under a path condition weak head steps do not raise it, and a closed term
  of rank zero has no weak head normal form;
- single proofs: pumps, contextual reductions, head observations, dead
  continuations, single-object reducts, absent free variables.

| size | classes | sources listed | direct proofs |
|---:|---|---:|---:|
| 37 | four live | 1,522 | — |
| 38 | four live | 2,070 | — |
| 39 | four, five live | 6,680 (4,980 + 1,700) | — |
| 40 | four, five live | 11,610 (8,634 + 2,976) | 25 |
| 41 | four, five live | 18,104 | 306 |
| 42 | four, five live | 33,237 | 197 |
| 43 | + five live on eight leaves | 72,423 | 770 |
| 44 | same classes | 131,004 | 1,574 |
| 45 | + `(6,8,3)`: six live, or five and one dead | 297,599 | 4,079 |

From 41 the counts are after the factorization filter and, from 43,
`four_live_operator`; 42,564 of the sources at 45 are in `(6,8,3)` (28,260
with five live binders, 14,304 with six). They are evaluations of the
verified grammars outside the kernel; coverage is proved by membership, so
no proof depends on a count. Of the 6,926 sources left at 41–45, tables
exclude 5,023 and recursive types, from 43, 1,376; the rest fall to regular
invariants, weighted ranks and single proofs. At 40 the 25 are 14 regular
invariants, nine weighted ranks, one direct refutation and the parity of
iterated argument swaps for `Δ (λx. x (λy z. x z y) (λy. x))`.

## 9. Trust boundary and checking

`selfintSizeBound_38` to `_46` have no hypotheses; each assembly prints its
axioms, which are `propext`, `Classical.choice` and `Quot.sound`. Nothing
outside the kernel is trusted: the grammars are Lean definitions with
completeness theorems, hints and certificates are checked, no enumeration
outside Lean enters, no budget refutes anything, and no external theorem or
βη-conversion is used. The contract has rigid `C`
and `N`, which every stronger form implies, and the bound covers non-normal
sources with any number of leading λs.

Through `selfintSizeBound_37` and the literal-interface bounds the proof is
in `lake build Blc` (the nine `SelfintSingleObject*` modules build in about
20 seconds). The assemblies `lean/Blc/SelfintKernelFloor38.lean` … `46.lean`,
`SelfintCover43` and `SelfintSize45Cover` (which import them and hold
`Grammar43.advance` and `Size45.advance`), and the 9,577 generated modules
under `SelfintRows37/` … `SelfintRows40/`, `Selfint40Evidence/`,
`SelfintCompact41/` … `45/` and `SelfintResidual41/` … `45/` ship in
`data/self-interpreter/global-floor.tar.xz`, outside `lake build Blc`;
every other module they import is in `lake build Blc`.
`scripts/global-floor.sh` unpacks them into `lean/Blc/`, runs
`lake build Blc.SelfintKernelFloor46` and checks the axioms of
`selfintSizeBound_46` (`clean` removes the unpacked files). With a warm
`lean/.lake` it is quick; a cold build is many CPU-hours, each size costing
about twice the one before: excluding 44 takes 2,343 modules of
7.8 MB and 210 CPU-minutes, excluding 45 4,797 modules of 15.6 MB and 454
CPU-minutes, no module above 145 seconds or 2.5 GB. The job count of
`lake build Blc` is in STATUS.

## 10. What 47 would need

Excluding 46 bits needs three things the classes above lack. The literal
interface `λc s.B` first fits at 46: equality in `two_lambda_bound_46` gives
`(L,V,X) = (6,8,4)` with four live binders of `B`'s own, so the restriction
to at most one leading λ no longer holds. Six live binders also occur at
`(6,8,4)`, where the width-bearing abstraction may capture its nearest
exterior variable once (`one_spare_capture`). And the grids of the classes
already met must be refuted again. By the doubling above that is roughly
twice the Lean of size 45. Counts alone cannot help: the 7,625-bit witness
of §5 attains every one.

An independent route, Codex's handwritten classifications at 34–39 and
complete enumerations of the closed terms at 40–45 with kernel-checked
certificates, reaches the same 46 and is at tag `selfint-record-2026-11-25`.
