# Weighted reader floor 30 and elimination of deep NEXT holes

**Result.** Under exactly the reader hypotheses in `floor138.md`,

    w(R) = cost(R) + 4 depth(j) >= 30.

Consequently the interpreter class in that note has size at least **146**.
The classification argument is **handwritten, not independently reviewed**.
The 3,484 fixed refutations used at its final finite step are proved in Lean;
the coverage argument and source-count lemmas are not formalized.

There is also an exact, kernel-checked hole-hoisting identity. It shows that
any counterexample to `w>=46` has a counterexample of no greater weight with
hole depth **0, 1, or 2**. Depth 2 cannot simply be removed: hoisting there
costs one bit per source occurrence of c.

The 46 inequality is not proved or refuted. No new complete interpreter was
built. The remaining interval for the class is **[146,162]**.

## 1. Source accounting and a second live binder

A source binder is live if it has at least one bound occurrence. Let L be
the number of lambdas, V the number of leaves including the single j hole,
f the number of free c occurrences, d the hole depth, and X the sum of
0-based indices of every leaf except the j hole. Then

    w = 2L + 4V - 4 + X + 4d.                         (1)

Every reader has a nonlinear binder, two source lambdas, and a c occurrence,
by the arguments in `floor138.md`. Those two structural arguments also apply
to terms with more than one source occurrence of j.

### A reader cannot have only one live source binder

First consider a literal `lambda s.B` whose other source lambdas are all
vacuous. Substitute respectively

    P = cons K r,       S = U_1(N) = cons F (cons K N),
    T = cons K N.

The two evaluations of every expression built from s,c,j, application and
vacuous abstraction have paired head values of these kinds:

- P paired with S;
- constant functions `lambda _.A` paired with `lambda _.B`, whose bodies
  have paired head values;
- rigid heads c/j/r paired respectively with c/j/N. Their arguments need
  not be related.

This relation is preserved by application. For a cell applied to a cell,
`P P ->* K r` and `S S ->* K N`, a pair of constants. A cell applied to a
constant gives `P (lambda _.A) ->* A r` and
`S (lambda _.B) ->* B T`. If A/B are constants they erase r/T; if neutral
they retain paired heads; if they are P/S, then `P r -> r K r` and
`S T ->* N T`, again paired rigid heads. A cell applied to a neutral keeps
that neutral's head. Constants erase their arguments, and neutrals keep
their heads. These are all cases.

After s is supplied the terms are affine, so the head evaluations terminate.
Thus a zero result headed by r forces the one result to be headed by N,
contradicting the required head c. This is a joint-law obstruction; the
variable law alone would allow `s (lambda _.c) (s s s)`.

Now suppose an arbitrary reader has just one live source binder. It must be
nonlinear. If head reduction contracts that binder, it removes the only
live binder and copies only vacuous-binder terms, contradicting the needed
nonlinear binder in the reduct. Every head contraction preceding its weak
head lambda therefore contracts a vacuous binder. The exposed binder must
be live, since a vacuous first binder ignores the input stream. Its body
has only vacuous binders, reducing to the preceding contradiction.

Therefore every reader has **at least two live source binders**. The
argument does not require a single occurrence of j, and therefore also
applies to reducts that copy it. In particular there are at least three bound-variable leaves, and

    V >= f+4.

For a lambda-rooted reader the c leaves all have index at least one, so

    w >= 2 max(2,d) + 5f + 12 + 4d.                  (2)

The stronger statement that every reader needs three source lambdas is
false. The existing one-lambda correlated handler in
`docs/classical/self-interpreter/normal.md`, inserted into `s H (s s s)`,
gives a whole reader with only two lambdas. It is much larger than the
budgets below. The argument here counts live binders and leaves, not an
unjustified three-lambda requirement.

## 2. What a minimum non-lambda reader can look like

Choose a reader of minimum w, and among those choose one with the fewest
source lambdas. This is legitimate because the 162 supplies a reader and
both measures are natural numbers.

An erasing source redex is impossible in a minimum. Its argument cannot
contain the unique j, which must survive the zero law. Contracting it
strictly removes syntax and only lowers remaining free-variable indices;
the j depth charge, if affected, also decreases. The resulting reader
still has one j and is strictly lighter.

### A minimum non-lambda reader needs three live binders

Its first head redex is `(lambda x.B) A`, possibly with further arguments,
and has no enclosing reader lambda. It is not erasing. If x is linear,
contracting it removes one live binder and copies no source lambda. Hence
the original reader needs at least three live binders to leave the two
required in the reduct.

Suppose x is nonlinear and that there is only one other live binder D.
If D is outside A, contracting x does not copy D, leaving at most one live
binder, impossible. If D lies in A, every other binder of A is vacuous.
Thus D has no bound free parameter: the only free variables of its lambda
subterm are c,j. Every surviving D lambda is an unchanged copy of this
same open source subterm. Contraction can copy it or consume it, but cannot
substitute into it; vacuous ancestors bind no variable it uses. Source
vacuous binders also remain vacuous.

A successful reader must expose a live first lambda. The only possible
origin after x is consumed is D, so head evaluation reaches an unchanged
copy of D. The reader would therefore be beta-equal to D itself. But D
contains just one live binder, already excluded. This proves the claim.

Consequently a minimum non-lambda reader has

    L >= 3,  V >= f+5.

If its weight is at most 29, formula (1) forces d=0, f=1, V=6, and exactly
one of these cases:

    L=3, X<=3;              L=4, X<=1.               (3)

Its four bound-variable leaves are distributed 2+1+1 among three live
binders. The first head contractor cannot be the nonlinear one: consuming
it would leave only affine binders. Therefore that contractor is linear.

### The remaining linear head redex improves the chosen minimum

Write D_x for the number of lambdas inside B above its single x occurrence.
The exact affine beta size balance, with the j hole carrying four free
references, is

    w(reduct)-w(source) = (F_A-1) D_x - 6 - F_B.     (4)

Here `F_A` counts free c leaves of A plus four if it contains j; `F_B`
counts the free c leaves of `lambda x.B`. There is no j in B because d=0.
If j occurs in another pending argument instead, A has at most its one
free c leaf. Formula (4) can also be obtained by substituting the canonical
92-bit NEXT and applying the existing `wire_beta_delta` theorem; its
constant size cancels because x is linear. No claim that all affine
contractions shrink is being made.

If A does not contain j, `F_A<=1`, so (4) is negative. If A contains j but
not c, `F_A=4`, `F_B>=0`, and `D_x<=2` in the L=3 case: the result is at
most zero. Equality can occur when c is in a later pending argument. The
contraction then still removes one source lambda without copying any,
contradicting the secondary minimum. In the L=4 case `D_x<=X<=1`, so the
weight change is strictly negative.

If A contains both j and c, `F_A=5`. For `D_x<=1` the result is negative.
The only remaining possibility is L=3, `D_x=2`, with no lambda in A. Since
c and j each occur once and there is no enclosing reader binder, A is
exactly `c j` or `j c`. Neither can satisfy the zero law: its unique j is
permanently inside an irreducible rigid-headed application, and cannot
become the bare argument in `r j`. Erasing that application loses j;
copying it never extracts j.

Thus every case (3) either fails the reader law, decreases w, or keeps w
fixed while removing one lambda, contrary to the chosen minimum. **A minimum reader below 30 cannot be non-lambda.**

## 3. The complete lambda-rooted inventory below 30

A lambda-rooted reader below 30 has at least three owned leaves, plus c,j.
Equation (2) gives d<=2. For d=1, equation (1) leaves exactly

| L | V | X at most | c count |
|---|---|---|---|
| 2 | 5 | 5 | 1 |
| 2 | 6 | 1 | 1 |
| 3 | 5 | 3 | 1 |
| 4 | 5 | 1 | 1 |

For d=2 the sole case is `L=2,V=5,X<=1,f=1`. In particular f>=2 is
impossible at these budgets: the extra leaf and c index exceed 29.

Every successful source in this table is beta-normal:

- With L=2, any source redex must consume the one inner lambda and cannot
  copy another inner lambda. Its reduct would be a one-lambda reader,
  excluded in `floor138.md`.
- With V=5, the bound leaves are exactly 2+1 in two live binders, one of
  which is the outer stream binder. Contracting the live inner binder,
  whether linear or nonlinear, leaves only that outer live binder: its
  argument contains no live lambda to copy. The stream binder may gain
  occurrences, but this does not create another live binder. A vacuous
  contraction erases at least one leaf; erasing c/j loses a required free
  name, while erasing an owned leaf removes either the sole nonlinear
  binder or the second live binder. All possibilities contradict the
  source lemmas.

A beta-normal reader has precisely one initial lambda, and its body's head
is s. A c or j head stays rigid on the zero input; another initial lambda
would survive application to the input stream. Thus the inventory is only
beta-normal, stream-headed source trees with the displayed counts, at least
two live binders and at least one nonlinear binder.

`reader29.py` generates this finite grammar, not arbitrary readers up to
46. A term has the unique root decomposition var / lambda / application.
The generator partitions L,V,X and the exact c/j counts over its children;
allows a j leaf only at the specified depth; and excludes a lambda as an
application's left child. Bound usage counts are carried exactly up to two,
which suffices for live/nonlinear classification. At the outer lambda it
requires the body head to be the stream variable. Induction on that unique
root decomposition proves the generator's coverage; no semantic heuristic
or timeout is used to prune it.

Only the following 3,484 candidates are materialized:

| d | L | V | X maximum | candidates |
|---|---|---|---|---|
| 1 | 2 | 5 | 5 | 364 |
| 1 | 2 | 6 | 1 | 1,762 |
| 1 | 3 | 5 | 3 | 1,070 |
| 1 | 4 | 5 | 1 | 230 |
| 2 | 2 | 5 | 1 | 58 |

Of these, 3,450 have a normal form different from `r j` on `Z(r)`.
The other 34 have a normal form different from `c U_0(N) N` on `U_1(N)`.
All refutations terminate, with at most 15 beta contractions in the recorded
refuting trace. The script would abort on fuel exhaustion, excessive term
growth, or a survivor; none occurred. It took about 0.08 seconds on this run.
`reader29.json` records every literal source, probe, trace length and normal
form.

`ReaderChecks.lean` proves **3,484 explicit non-joinability theorems**.
Each uses a computed trace through a proved sound beta stepper, checks that
both compared terms are normal forms, and applies confluence plus their
syntactic inequality. This is stronger than treating a bounded normalizer's
answer as a refutation. The generated list's coverage still rests on the
handwritten classification and the stated recursive grammar.

Sections 2 and 3 exclude a minimum of weight below 30. Hence every reader
has `w>=30`, and the exact assembly from `floor138.md` gives **146 bits**.

## 4. Exact hoisting and the depth reduction for 46

Let f count the free c leaves of R. Replace its unique j by a new bound
variable a and form

    H(R) = (lambda a. R[a/j]) j.

The substitution is hygienic; all reader-local binders remain in place.
There is now one free j, at depth zero. Contracting the displayed redex
returns R. Source accounting gives the exact identity

    w(H(R)) = w(R) + 6 + f - 3d.                    (5)

The new lambda/application cost four, the old zero-priced hole becomes a
bound leaf costing d+2, every c reference moves one binder deeper, and the
old hole's 4d charge disappears. This accounts for every source node.

`ReaderHoist.lean` proves the general capture-weight identity, the beta
contraction back to R, and the fact that the hoisted source has one hole.
It permits arbitrary reader redexes and lets; no normality assumption enters.
Its functions use c=0 and j=1, matching the source frame in the size theorem.
For multiple holes the internal identity uses their count and sum of depths;
the displayed specialization assumes exactly one.

For every reader, the two-live-binder lemma gives `V>=f+4`. At d>=3,
`L>=d`, and (1) therefore gives

    every reader:      w >= 6d + 4f + 12,
    lambda-rooted:     w >= 6d + 5f + 12.

Since f>=1, **the target w>=46 already holds at every depth d>=5**.
If `w<=45` and d=4, then f<=2 (and f=1 when lambda-rooted); hoisting saves
at least four bits. If d=3, then f<=3, and hoisting is non-increasing.
Thus every counterexample to 46 yields a counterexample of no greater
weight with d in {0,1,2}. No minimum-source assumption is needed for this
hoisting argument.

At d=2, equation (5) instead reads **`w(H(R))=w(R)+f`**. Since f>=1,
hoisting always increases its weight. This is the concrete obstruction to
reducing the whole problem to depths zero and one.

A slightly finer consequence is that the depth-2 cases satisfying
`w+f<=45` also transfer to a sub-46 depth-0 reader. The genuinely additional
cases at depth 2 satisfy `w<=45<w+f`. This is a reduction of the target
case analysis, not an exclusion of that strip.

## 5. The depth-two corner with many c occurrences

Choose a minimum-weight counterexample to 46. At depth two, (2) gives
`w>=24+5f` for a lambda-rooted source. For a non-lambda minimum, section 2
instead gives `L>=3,V>=f+5`, hence `w>=30+4f`. Therefore f>=5 is impossible,
and f=4 can occur only in a lambda-rooted source with

    L=2, V=8, X in {4,5}, d=2, w in {44,45}.         (6)

This last corner is also impossible. As in section 3, a successful source
with two lambdas is beta-normal, has body head s, and its one inner lambda
D is live. The three bound-variable leaves are distributed as

    two s and one x,             or one s and two x,

where x is D's binder. There are four c leaves and one j, with j inside D.
The c leaves already contribute four to X. Thus at most one occurrence of
s or c can lie inside D; every such occurrence adds one further index bit.
There must be an s outside D, at the body's head.

Before D is activated, regard it as a rigid marker on the zero input
`P=cons K r`. Application-only contexts over P, c, and that marker have
functional values only P and `K r`; a nontrivial application subtree never
returns P or a bare marker. In a beta-normal source, the first activation
of D must consequently occur at a literal source subterm **s D**. It must
occur: the unique j is inside D and has to become the bare argument of r.
Data before this activation are affine, so D is not copied.

D's body is application-only. The complete leaf multisets and resulting
fixed callback classes are:

| Leaves in D's body | Number of binary trees/permutations | Zero result of s D |
|---|---:|---|
| x,j | 2 | j or `j K r` |
| x,x,j | 6 | loses j, loses r, or has rigid head c/j |
| c,x,j | 12 | rigid head c/j |
| s,x,j | 12 | rigid head j or exactly `r K r` |
| c,x,x,j | 60 | loses j, loses r, or has rigid head c/j |

The repeated-leaf counts include every distinct leaf ordering and every
full binary application tree. These are **92 fixed callback reductions**,
not an enumeration of the surrounding reader. `Depth2Cases.lean` proves
each reduction, normality of its result, and the displayed head/free-name
classification. The check took about 0.48 seconds with two threads; the
longest fixed trace has eight beta contractions.

The surrounding context cannot repair these outcomes:

- In the x,j and c,x,j rows exactly one unused P remains outside the
  callback. All other available values have rigid heads c/j. One affine
  P cannot pair with itself; applied to a neutral it preserves that
  neutral's head. Induction over the remaining application context gives
  only P or c/j-headed neutrals, never `r j`.
- In the two rows with two x leaves, there was only one s, consumed by
  the callback. The remaining context contains only applications and c
  leaves. It cannot regenerate a lost j or r, or turn a rigid c/j head
  into r.
- In the s,x,j row both s occurrences are in the callback, so again only
  c and application remain outside it. A j head stays j; an r head already
  carrying K,r cannot lose those two arguments to become `r j`.

This excludes (6). Thus a minimum counterexample at depth two has **f<=3**.
Combining this with the hoisting identity gives a sharper reduction of the
whole 46 problem: it suffices to exclude depths zero and one, together with
only the following depth-two count/weight pairs:

    (f,w) = (1,45),
            (2,44), (2,45),
            (3,43), (3,44), (3,45).                 (7)

Indeed, first take a minimum counterexample. Depths three and four transfer
to zero and depths at least five are impossible. At depth two the argument
above leaves f<=3. If `w+f<=45`, hoisting supplies a depth-zero
counterexample; otherwise exactly the six pairs (7) remain. This is a
reduction of the still-open cases, not a count of the source terms in them.
The coverage and surrounding-context argument remain handwritten.

## 6. Verification and remaining boundary

Reproduce from the repository root:

    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round3/floor/reader29.py --check
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round3/floor/reader29_lean.py
    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round3/floor/depth2_cases.py

Run Lean from `lean/` so its pinned toolchain is selected:

    LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
      lean -j2 /Users/a9lim/Work/blam/tmp/round3/floor/ReaderChecks.lean
    LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
      lean -j2 /Users/a9lim/Work/blam/tmp/round3/floor/ReaderHoist.lean
    LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
      lean -j2 /Users/a9lim/Work/blam/tmp/round3/floor/Depth2Cases.lean

All three Lean files passed. The 3,484-theorem check took 25.28 seconds;
`reader-kernel-check.json` records its exit code, timing and source hash.
The local Python check is single-threaded; the Lean checks used two threads. Nothing outside this lane was written.
No other lane or external agent was consulted.

This does not establish any of the desired sharp shallow bounds
`cost>=46` at d=0, `cost>=42` at d=1, or `cost>=38` at d=2.
The new universal weighted bound is 30. It closes the smallest source
shapes and removes all d>=3 placements from a minimum-counterexample
argument. Source nonlinear compression and normal readers with more than
six leaves remain substantive at the target budget. Those cases have not
been enumerated, assumed modular, or declared impossible.
