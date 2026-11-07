**Adversarial review of the weighted reader floor 30 and class floor 146**

**Verdict: accepted as a handwritten proof with kernel-checked finite cases.**
I found no substantive mathematical error, missing source family, or hidden
extra hypothesis in the argument as stated in `reader30.md`. This is not a
claim that the universal 30/146 theorem has been checked by Lean: the
structural and coverage arguments remain handwritten.

| Claim | Verdict |
|---|---|
| (a) Two live source binders, at least one nonlinear | **Correct.** |
| (b) Minimum-counterexample reduction and the 3,484-layout exhaustion | **Correct**, through the minimum-counterexample reduction described below. |
| (c) Hoisting identity, depth reduction, and six residual depth-two pairs | **Correct.** |
| (d) The 146-bit lower bound for the stated interpreter class | **Correct.** |

No counterexample was found. No candidate search or external consultation
was performed. Fresh kernel checks and an audit of the supplied fixed
records are documented below.

**Scope and definitions.** I used the source frame and reader laws in
[Reader138.lean:21](/Users/a9lim/Work/blam/tmp/round3/lean138/Reader138.lean:21):
`FreeUnder 2 R`, free `c=0`, free `j=1`, rigid `N=2`, rigid `r=3`, and the
zero and first-unary beta joins. The single occurrence of free `j` is an
additional hypothesis, not a field of `Reader`. The handwritten lower
bound needs only these two instances, so it applies in particular to the
stronger all-unary-length reader class of `floor138.md`. It does not infer
the all-length interpreter contract from two successful probes.

**(a) The two-live-binder argument is sound.**

The existing nonlinear-binder argument is independent of the number of
source occurrences of `j`: the first-unary input contains one fresh `N`,
whereas its required normal output contains two. An affine source together
with the affine input cannot increase that occurrence count. Confluence
justifies passing from the beta join to the required normal form.

I checked the paired-head invariant in
[reader30.md:35](/Users/a9lim/Work/blam/tmp/round3/floor/reader30.md:35).
For a literal `lambda s.B` with every other binder vacuous, supplying either
stream leaves an affine term. The proposed relation is closed under
application:

- `P P` and `S S` give the constant pair `K r` and `K N`.
- Applying `P/S` to paired constants reduces to applying their paired
  bodies to `r/T`. Constant bodies erase these arguments, neutral bodies
  retain their paired heads, and the `P/S` body case gives `r K r / N T`.
- Applying a cell to a neutral retains that neutral's head; constant and
  neutral function cases have the stated behavior.

Vacuous abstraction also preserves the relation. This is a structural
argument on expressions, with terminating affine reductions, rather than a
bounded evaluation assumption. In particular, the only paired right head
for a left head `r` is `N`, never `c`.

The extension to arbitrary source syntax is valid. Use weak-head reduction
before exposing the first lambda. Contracting the only live binder would
leave an affine source, since its argument contains no other live binder.
This contradicts the nonlinear-source lemma for the reduct. Thus only
vacuous contractions can precede the exposed lambda. The exposed binder
must be live, since otherwise the fresh stream suffix could not affect the
zero result. Its remaining binders are vacuous, giving the contradiction
above. Copying `j` does not invalidate either lemma.

Consequently the source has at least three owned variable leaves. With
`f` free `c` leaves and one hole, `V >= f+4`. The accounting identity
`w = 2L + 4V - 4 + X + 4d` and the stronger lambda-rooted estimate (2)
then follow exactly. No three-lambda premise is being smuggled into this
argument.

**(b) The minimum-counterexample coverage argument is complete.**

The relevant coverage statement is: **if a reader of weight below 30
exists, a reader minimizing `(w,L)` is one of the 3,484 listed normal
layouts.** The generator itself is not a direct syntactic enumeration of
all arbitrary readers. This distinction is already respected by the
proof's structure and should be retained in summaries of it.

I checked the critical steps in
[reader30.md:89](/Users/a9lim/Work/blam/tmp/round3/floor/reader30.md:89):

1. Erasing redexes cannot occur in the chosen minimum. Erasing the only
   `j` would violate the zero law; otherwise contraction preserves the
   single hole and strictly lowers weight. All remaining index changes
   in an erasing contraction are downward.
2. A minimum non-lambda reader needs three live source binders. A linear
   first head contraction cannot copy a lambda and must leave two live
   binders. In the two-live, nonlinear-contractor case, the other live
   binder `D` must lie in the argument. Because the first head redex has
   no enclosing lambda, `D` then has no bound external parameter: all
   its other ancestors are vacuous, and its free names are only `c,j`.
   Weak-head evaluation can expose only an unchanged copy of `D` as its
   live first lambda. That would make the one-live term `D` itself a
   reader, contradicting (a). The absence of an enclosing lambda is
   essential here, and is justified at this first contraction.
3. With `L>=3`, `V>=f+5`, and `w<=29`, the numerical possibilities are
   exactly `d=0,f=1,V=6`, with `L=3,X<=3` or `L=4,X<=1`. Four bound
   leaves over three live binders have multiplicities `2+1+1`. The first
   contractor cannot be the only nonlinear binder: its contraction would
   leave an affine source. Thus it is linear.
4. The affine size equation (4) is exact in this setting. Removing the
   lambda, application, and unique `x` leaf saves `6+D_x`; moving the
   argument beneath `D_x` binders adds `F_A D_x`; removing the old binder
   lowers the remaining free-`c` taxes by `F_B`. There is no `j` in the
   body because `d=0`. This yields
   `(F_A-1) D_x - 6 - F_B`, including the fourfold hole-depth charge.
   The possible zero change is handled by the secondary minimum in `L`.
5. The sole potentially increasing case has `L=3,D_x=2` and both `c,j`
   in an argument with no lambdas. That argument is precisely `c j` or
   `j c`. Its rigid application cannot expose the unique `j` as the bare
   argument of `r`; copying it preserves the obstruction and erasing it
   loses `j`. Thus it cannot be a reader.

The lambda-rooted classification in
[reader30.md:170](/Users/a9lim/Work/blam/tmp/round3/floor/reader30.md:170)
also holds. Formula (2) excludes `f>=2` and `d>=3`; the remaining five
count/index rows are correct. For `L=2`, any source redex consumes the
only inner lambda without another inner lambda available to copy. For
`V=5`, a live-inner-binder contraction leaves only the outer live binder,
and a vacuous contraction loses a required name or the leaves necessary
for two live binders and nonlinearity. These contradictions apply even
when a contraction duplicates `j`. Hence all successful sources in the
five rows would be beta-normal. Their sole initial lambda and stream head
are forced by the rigid zero law.

The recursive grammar matches this classification. Its lambda and
application cases partition the exact node, leaf, index, and free-name
counts. Its variable case uses the correct zero-based indices; the hole
has zero index tax and is allowed only at the specified depth. Excluding
a lambda as the left child enforces beta-normality. Saturating bound usage
at two preserves exactly the live/nonlinear predicates. The outer head
test is the stream-variable test. Every tree has a unique decomposition
into these cases; I found no unsound pruning condition.

The audited counts are `364, 1762, 1070, 230, 58`, totaling **3,484**.
Every JSON source is distinct and belongs to its advertised row. Aggregate
grammar counts match these counts. Every corresponding Lean statement
uses the intended rigid probe and target, and its recorded trace and
normal form match the JSON. **3,450** fail the zero law and **34** fail the
first-unary law; the largest refuting trace has **15** contractions.
`reject_by_nf` uses confluence and distinct normal forms correctly.

**(c) The exact hoisting and depth-two reduction are sound.**

For one hole at depth `d`, the change under
`H(R)=(lambda a.R[a/j]) j` is exactly

    +4          new lambda and application
    +(d+2)      old zero-priced hole becomes a bound variable
    +f          each free c moves one binder deeper
    -4d         old hole-depth charge disappears
    = 6+f-3d.

The new free `j` has depth zero and is still zero-priced. Hygiene leaves
all reader-local bound indices unchanged. `ReaderHoist.lean` checks the
contraction, hole count, and this equality in the subtraction-free form
`weight(hoist R)+3*depths R = weight R+6+cs R`. I checked its definitions
against `Reader138`'s `cost` and `depth`: on a single-hole source these
are the stated measures. There is no normality assumption.

For `d>=3`, `L>=d` and `V>=f+4` give `w>=6d+4f+12`, with another `f`
of index tax for a lambda-rooted source. Thus:

- `d>=5` gives `w>=46` because `f>=1`.
- At `d=4,w<=45`, `f<=2`, so hoisting saves at least four bits.
- At `d=3,w<=45`, `f<=3`, so hoisting does not increase weight.
- At `d=2`, hoisting increases weight by exactly `f`.

The more delicate four-`c` corner in
[reader30.md:290](/Users/a9lim/Work/blam/tmp/round3/floor/reader30.md:290)
is also correctly reduced. For a minimum counterexample at depth two,
the non-lambda estimate is `w>=30+4f`; the lambda estimate is
`w>=24+5f`. The only possible `f=4` case is therefore the stated
lambda-rooted `L=2,V=8,X=4 or 5` corner. Its two live binders have owned
leaves `s,s,x` or `s,x,x`. Four `c` leaves already charge four index bits,
so at most one `s` or `c` can occur inside the inner lambda `D`. This
gives exactly the five displayed multisets, including the requirement
that a stream head remains outside `D`.

The context argument does not assume an extra modular reader shape.
With `D` treated as a rigid marker, application trees over `P,c,D` have
only `P` and `K r` as functional normal values; a nontrivial application
does not produce a bare `P` or bare marker. Since the source is normal,
the first activation of `D` must consequently come from a literal `s D`.
Before that activation all surrounding computation is affine, so `D`
cannot have been copied. The unique `j` must survive and leave `D`, so
activation is necessary.

The five multiset/tree counts are exactly `2,6,12,12,60`: all distinct
permutations and binary application trees. I checked the supplied **92**
records and their Lean statements. Their outcomes support the claimed
context exclusion: the one remaining external `P` in the linear rows
cannot produce an `r` head from a `c/j` neutral; the two-`x` rows have no
external stream left to replace a lost `r` or `j`; and the captured-`s`
row leaves only a `j` head or the immutable rigid spine `r K r`.
There is no missing `s,x,x,j` family: both `x` leaves already consume
the three-owned-leaf budget together with the mandatory external stream
head.

Thus the minimum-counterexample reduction to `f<=3` at depth two is
valid. Combining `w<=45<w+f` with `1<=f<=3` gives exactly

    (1,45), (2,44), (2,45), (3,43), (3,44), (3,45).

These are residual count/weight pairs in an existence reduction, not a
classification of all arbitrary sub-46 source trees. Cases with
`w+f<=45` supply a depth-zero counterexample even though its weight may
exceed that of the chosen minimum; this is sufficient for the stated
reduction. No exclusion of the six remaining pairs is claimed.

**(d) The class lower bound is 146.**

For the exact class of `floor138.md`, the prior NEXT bound gives
`|Q at the hole| >= 92+4d`. Hence

    |H| >= 4 + cost(R) + 92 + 4d = 96+w(R) >= 126.

If the opaque knot has `k>=1` holes, its ghost cost is at least `18+2k`,
so

    |E| >= 18+2k+k|H| >= 18+128k >= 146.

This agrees with the general `assembly_lower` inequality in
[Reader138.lean:666](/Users/a9lim/Work/blam/tmp/round3/lean138/Reader138.lean:666).
Equality `|E_R|=116+w(R)` uses the canonical attaining NEXT and knot;
the proof does not need to assume equality for arbitrary class members.
The separator, normal two-arm NEXT with rigid canonical laws, hygienic
single insertion, and opaque-knot hypotheses remain essential. This is
not an unconditional lower bound of 146 for all BLC self-interpreters.

**Fresh verification performed.**

I ran the three supplied Lean files directly from `lean/` under the pinned
Lean 4.32.2 toolchain, with `-j2`, sequentially and without producing
artifacts outside this review directory:

| File | Exit | Wall seconds |
|---|---:|---:|
| `ReaderHoist.lean` | 0 | 0.319 |
| `Depth2Cases.lean` | 0 | 0.732 |
| `ReaderChecks.lean` | 0 | 20.524 |

[kernel-check.json](kernel-check.json) records the file hashes, output,
and fresh timings. [source-hashes.json](source-hashes.json) pins all 13
primary reviewed inputs. The `ReaderChecks.lean` SHA-256 matches the supplied
`reader-kernel-check.json`. The three files contain no `sorry`, added
`axiom`, `unsafe`, or `native_decide` declarations. I inspected the
stepper soundness proof and the normal-form refutation argument.

[audit.py](audit.py) and [audit.json](audit.json) record a separate
single-thread audit of the fixed JSON inventory: source counts, scope,
hole depth, ownership, weights, normality, uniqueness, independent
normalizer replay, and correspondence with the literal Lean statements
and traces. Aggregate grammar counting matches the supplied inventory;
`emit()` and `candidates()` were never called. The audit took 0.419 s.
It also checks all 92 callback records, their complete multiset counts,
and their Lean correspondence. No supplied source or output was rewritten.

**Research-record wording.** The present “not independently reviewed”
metadata in `reader30.md` and the appended `REPORT.md` section can now be
replaced with a link to this review. Retain the distinction between the
handwritten universal coverage proof and the kernel-checked fixed cases.
I found no substantive repair required before recording the class bound
as **146**, with that proof-status qualification.
