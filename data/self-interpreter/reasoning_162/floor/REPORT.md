# Floor lane report

**Strongest result: a handwritten 138-bit lower bound for a precise class
containing both the 162 and the 165, plus an exact reduction of that class's
minimum-size problem to one weighted reader problem.** The unconditional
floor remains 37. No interpreter was constructed.

## 1. Complete interpreters

None. There is no new battery or polish claim. The existing 162 and 165
were parsed to verify class membership, exact source partition, and reader
laws with opaque NEXT. Their existing all-source Lean proofs were not rerun.

## 2. Exact identities and decomposition

Write R for the whole fused reader, with one opaque NEXT hole j. Let
`cost(R)` be its literal BLC source charge with that one hole priced at zero,
and let d count reader-local lambdas above the hole. For the standard
canonical NEXT and the attaining opaque knot, assembly has the exact price

    |E_R| = 116 + cost(R) + 4d.

Both coefficients are exact: 116 is 20 for the knot, 4 for the outer p,c
binders, and 92 for NEXT; NEXT has four free c/p references, each shifted by
d. There is no independent charge for the reader's first-tag dispatch,
variable value, skip, or return.

Conversely every member of the stated class has at least this price for its
reader. Hence

    min(class) = 116 + min_R [cost(R) + 4 depth(j)].

The references give `(cost,d)=(42,1)` for 162 and `(49,0)` for 165. Thus the
162's and 165's fusions are admitted by the same formula.

The application-only reader obstruction uses the exact algebra, with
S=U_1(N), P=U_0(N), W=lambda u.N and z rigid:

    S S ->* W;   S W ->* N P;   W X ->* N;
    S (z A...) ->* z A... F P.

Structural induction on an application tree over S,c,j proves its normal
result is S, W, or a c/j/N-neutral; a c-neutral's first argument cannot be
P. Therefore one source lambda cannot implement the reader. The proof and
all hypotheses are in [floor138.md](floor138.md).

The additional infinite-family identities used in the 37-bit investigation
are stated and proved in [floor37-progress.md](floor37-progress.md), section
4: twelve one-argument macro systems, twelve NN pumps, eighteen systems
preserving two pending arguments, four duplicated-argument wrapper systems,
and two boxed wrapper systems. These are handwritten parametric arguments;
`macro_checks.py` additionally checks 12 fixed macro instances, recorded in
[macro_checks.json](macro_checks.json).

## 3. Lower bounds, exact hypotheses, and checking boundary

### 138 for the class

An allowed interpreter is `T[H/h]`, where:

- T has only the free hole h and satisfies `T =beta h T`, with any number
  of h occurrences and arbitrary source redexes;
- H is `lambda p c.R[Q/j]`;
- R has free variables only c,j, exactly one j occurrence, arbitrary source
  syntax, and the independent rigid reader laws

      R (cons K r) =beta r j,
      R U_n(N)    =beta c U_(n-1)(N) N,        n>=1;

- Q is independent of R's local binders. It is beta-normal in [c,p], every
  tag use has exactly two arms, and it satisfies the canonical rigid NEXT
  laws

      Q K t =beta p (lambda f.c Abs(f)) t,
      Q F t =beta p (lambda f.p (lambda g.c App(f,g))) t,

  with literal `Abs(f)=lambda e a.f (lambda b r.b a (r e))` and
  `App(f,g)=lambda e.f e (g e)`.

The argument allows all reader fusions and reader lets. It assumes the NEXT
separator, normality, canonical rigid laws, and opaque recursion; it does
not establish those assumptions from the closed-source interpreter contract.

The new reader proof gives at least one nonlinear binder (the rigid suffix
must be copied) and two source lambdas (the algebra above). It then charges
source compression and the hole's position:

| hole depth | reader charge | NEXT charge | H charge |
|---|---:|---:|---:|
| 0 | >=22 | >=92 | >=118 |
| 1 | >=18 | >=96 | >=118 |
| >=2 | >=17 | >=100 | >=121 |

The 92-bit theorem is the existing independently reviewed normal-NEXT
classification. Its pruning also forces at least four free c/p references.
The opaque knot theorem is existing Lean: with k holes its cost is at least
18+2k, k>=1. Thus `|E| >= 18+120k >= 138`.

The full theorem and source-count argument are **handwritten and not independently reviewed**. New
`Facts.lean` kernel-checks **18 beta reductions plus 18 size/free-occurrence
facts** for the nine NEXT forms. Its computed beta traces are connected to
`Betas` through proved stepper-soundness lemmas. `checks.py` checks the live
162/165 partitions. Lean completed successfully with two threads; the
Python fixed checks take about 0.003 seconds. See [checks.json](checks.json),
[Facts.lean](Facts.lean), and [lean.log](lean.log).

### 39 for a literal first continuation binder

Every exact interpreter literally `lambda c.B` costs at least 39, without
normality or parser assumptions. Substituting the closed continuation K in
the Statman-width argument puts the three-variable witness wholly inside B.
The incomparable nonlinear pair is also internal, so B has four live
binders and six owned leaves; the live c adds a binder and a leaf. Index sum
is at least three, giving `2*5+4*7-2+3=39`.

This is handwritten, using the existing Statman interface argument and
Lean incomparable-binder theorem. Full proof:
[literal-interface.md](literal-interface.md).

### Unconditional progress

The 39 excludes lambda-rooted 37-bit candidates. A further handwritten
classification reduces the remaining exact-size inventory to 676 layouts.
The supplied scripts finitely refute 615; the displayed infinite invariants
refute 48 more. Thirteen remain for symbolic adjudication. A focused run on
their identity-source invocations reports five engine divergers and eight
UNKNOWNs; no certificate extraction is claimed for those five. The global
floor has therefore **not** advanced beyond 37.

The only targeted layout computation was the analytically narrowed 652+24
cases, taking about 5.5 seconds in total. The 13-term engine check used two
threads and took about 0.013 seconds. Caps remain explicit. Exact remaining
sources and verdicts: [progress.json](progress.json). Coverage and proof
boundary: [floor37-progress.md](floor37-progress.md).

## 4. Precise next step and where a smaller interpreter could remain

For the class theorem, the next exact assertion is

    cost(R) + 4 depth(j) >= 46.

The new proof reaches 22; the 162 attains 46. Proving 46 gives 162 optimality
throughout this class. Refuting it gives a complete sub-162 construction
immediately via `|E_R|=116+cost(R)+4d`, followed by battery and polish.
This is a concrete whole-reader question with a capture cost, and retains
both known reader fusions.

Outside the class, the strongest openings remain a reader that shares
source syntax with NEXT, useful actual-parser calls that violate the rigid
NEXT equations, non-normal compression inside NEXT, or recursion that uses
the reader/input instead of treating the parser functional as opaque.
The theorem supplies no lower bound near 162 for those cases.

For an unconditional 38, the next task is to independently review the
inventory and prove the thirteen residual non-interpreters, especially the
eight engine UNKNOWNs. Their two main families are
`delta (lambda a.a J(a) a)` and `delta (lambda a.a (a J(a)))`, with J built
from the six right-associated permutations of three variables; the final
case is written explicitly in the progress note.

All writes are confined to `tmp/round3/floor/`. No repository source,
canonical data, other lane, or installed dependency was changed. No agent
or external model was consulted.

## 5. Follow-up: weighted reader floor 30; deep holes reduce to shallow ones

**The new bound is `cost(R)+4 depth(j)>=30`, raising the same class floor
from 138 to 146 bits. The target 46 remains open.** The complete proof and
coverage argument are in [reader30.md](reader30.md). The reader/NEXT/knot
hypotheses are unchanged; the 162 and 165 are still admitted.

The new source lemma is that a reader needs **two live binders**, one
nonlinear. A reader with only its stream binder live has a simple paired
head relation on `cons K r` and `U_1(N)`: a zero head r forces a unary head
N, while the law demands c. Head reduction extends the obstruction to
arbitrary source syntax. This lemma does not require j to occur only once,
so it remains applicable to reducts that copy j.

For a minimum reader below weight 30, the first head contraction excludes
all non-lambda sources. The exact affine beta size balance handles the
possibly expensive index movement; no assumption that affine contractions
always shrink is used. The lambda-rooted cases reduce by hand to five
rows of beta-normal, stream-headed syntax with L=2..4, V=5..6, and explicit
index budgets. Exactly **3,484** source layouts remain: **3,450** fail the
zero law, and **34** fail the first unary law. No fuel result is counted
as a refutation; every case reaches a distinct normal form in at most
15 beta steps.

- [reader29.py](reader29.py) / [reader29.json](reader29.json): the finite
  grammar and its complete source/probe/output inventory; about **0.08 s**,
  one thread. Only the analytically surviving 3,484 candidates are built.
- [ReaderChecks.lean](ReaderChecks.lean): **3,484 kernel-checked
  non-joinability theorems**, using the sound beta stepper and confluence.
  The final measured check took **25.28 s**, two threads, exit 0;
  [reader-kernel-check.json](reader-kernel-check.json) pins its source hash.
- The source-count proof and the coverage argument remain **handwritten and
  not independently reviewed**. The full 146-bit theorem is not in Lean.

The second result is an exact identity for the single hole. If f is the
number of free c leaves and `H(R)=(lambda a.R[a/j]) j`, then

    H(R) ->beta R,
    w(H(R)) = w(R) + 6 + f - 3 depth(j).

[ReaderHoist.lean](ReaderHoist.lean) proves the general substitution and
capture-weight identities, including that the hoisted source has one
free j. This works with arbitrary reader lets and redexes.

Together with the two-live-binder count, it gives the following reduction
of the **46** target:

- Depth >=5 already forces w>=46.
- Any sub-46 reader at depth 4 has f<=2; hoisting saves at least four bits.
- Any sub-46 reader at depth 3 has f<=3; hoisting never increases weight.
- At depth 2, hoisting costs exactly f bits, so this depth remains distinct.
  Cases with `w+f<=45` transfer to depth zero; only `w<=45<w+f` adds a new
  case beyond the depth-zero search.

Thus any counterexample to 46 has one of no greater weight at depth
**0, 1, or 2**. This retains the 165's cheap let and the 162's inline hole,
and does not assume separate dispatch, tail, or skip modules.

No new complete interpreter or sub-162 candidate was constructed, so there
is no new battery or polish claim. The known one-lambda correlated handler
in `normal.md` blocks an attempted stronger lambda-count premise; it was
used as an existing counterexample, not proposed as a new algorithm.
The remaining numerical gap is **30 to 46** for the weighted reader, or
**146 to 162** for the stated interpreter class. Larger normal source
shapes and nonlinear source compression remain unresolved.

All follow-up writes stayed under `tmp/round3/floor/`. No other lane,
external model, or agent was consulted, and no check exceeded two threads
or two minutes.

### Further reduction of the depth-two case

The same source counts force a minimum counterexample at d=2 to have at
most four c occurrences. The f=4 corner has exactly
`L=2,V=8,X=4 or 5,w=44 or 45`. Its two-live-binder structure reduces the
inner callback to five leaf multisets and **92** fixed application trees.
[Depth2Cases.lean](Depth2Cases.lean) checks their beta reductions, normality,
and head/free-name outcomes (two threads, about 0.48 s). Each outcome
fails the zero law in every possible surrounding application context.
The classification and context argument are handwritten in
[reader30.md §5](reader30.md).

Consequently, to prove the full weighted bound 46 it now suffices to
exclude **depths 0 and 1**, plus the following **six depth-2 pairs**,
where f counts free c occurrences:

    (f,w) = (1,45), (2,44), (2,45), (3,43), (3,44), (3,45).

This is a necessary-case reduction, not a claim that those six cases are
empty or that each contains only one term. The bound remains 30 and the
stated interpreter-class floor remains 146. The total new fixed checks
are 3,484 complete candidate refutations plus 92 callback clauses.

## 6. Shallow-reader follow-up: two-lambda floor 50 and compression reduction

**The target 46 is still unproved and unrefuted.** The new handwritten
results narrow its shallow cases; the numerical global reader floor stays
30, and the stated interpreter-class interval stays [146,162]. Full proofs
and exact hypotheses are in [shallow-readers.md](shallow-readers.md).

### Every two-lambda reader has weight at least 50

A reader with two source lambdas must be beta-normal and lambda-rooted.
Its sole inner callback first activates at a literal `s D`. The complete
five-value algebra at U_1(N), together with the one-use surrounding-context
argument, forces its **literal whole-source shape** to be

    lambda s. s D ((s s) A).

This structural theorem permits multiple source j occurrences, which matters
when analyzing redexes. For the one-hole weighted problem, j must be inside
D and has depth exactly two. The one-lambda handler source argument gives
at least five applications in D, hence cost(D)>=24. The exterior costs at
least 18, yielding **w>=50**. A depth-one reader with just two lambdas is
impossible at any size. Every sub-46 reader therefore has **at least three
source lambdas**; all two-lambda cases in the six depth-two families are gone.

The known one-lambda correlated handler supplies a two-lambda reader of
weight 61 (cost 53, depth 2). It is an existing example used to check the
scope, not a new algorithm or evidence that the lower bound 50 is attained.

### Depth one: the exact remaining three-lambda compression case

In a minimum reader, application-only subtrees over the original s,c,j
can be restricted to

    s, c, j, s s, s s s, s s s j.

The actual zero/unary algebra supplies the exact equalities. Every other
neutral outcome is absent from both required normal outputs and is erased;
the existing Lean `SelfintInert.replace_inert_join` supplies the contextual
replacement principle. The classification/absence argument is handwritten.

For d=1,L=3, affine beta accounting excludes every linear source redex.
Every nonlinear redex with a lambda-free argument is also excluded:
arguments without j reduce to an impossible two-lambda depth-one reader;
arguments j and `s s s j` force at least ten applications in the original
source, already giving weight at least 48. Redexes are retained throughout
these arguments, including the possibility of copying j.

Consequently a minimum depth-one counterexample with three lambdas is
either beta-normal or has a nonlinear redex that **copies the other inner
lambda**. In that remaining form, the copied callback has no free j in its
source; j is outside both inner lambdas. This source-code sharing case,
normal three-lambda readers, and readers with four or more lambdas remain
open. The sharp cost>=42 theorem has not been established.

### Depth zero and the three-c depth-two corner

For a minimum depth-zero counterexample with L=3, its first head contractor
cannot be linear. The proof keeps the exact capture charge and handles the
potentially growing affine cases rather than asserting that normalization
shrinks. Thus its first head contractor is nonlinear; the source has two
nonlinear binders plus a third live binder, giving V>=f+6 and **f<=4**.
This nonlinear-head family and larger lambda counts remain unresolved.

At depth two, a normal-block argument on the zero input additionally
excludes

    (L,V,X,d,f,w) = (4,7,3,2,3,43), (5,7,3,2,3,45).

For f=3 the additional strip now has these eleven count rows:

| Root | L | V | X | w |
|---|---:|---:|---:|---:|
| lambda | 3 | 7 | 5,6,7 | 43,44,45 |
| lambda | 3 | 8 | 3 | 45 |
| lambda | 4 | 7 | 4,5 | 44,45 |
| application | 3 | 8 | 1,2,3 | 43,44,45 |
| application | 4 | 8 | 0,1 | 44,45 |

These are unresolved source families, not eleven individual candidates.
The f=1 and f=2 depth-two families remain open as well, with L>=3.

### Verification and deliverable boundary

[ShallowFacts.lean](ShallowFacts.lean) checks **42 fixed beta reductions
with normality, three general capture-cost inequalities, and two arithmetic
coverage theorems**. It passed in **1.35 seconds with two threads**. The
full source classifications and semantic lower bounds are handwritten and
not independently reviewed. In particular the arithmetic inventory theorems
take the source-count and semantic exclusion hypotheses explicitly; they
are not proofs of the full reader bound.

[shallow_facts.py](shallow_facts.py) regenerates the Lean file and fixed
identities. [shallow-kernel-check.json](shallow-kernel-check.json) records
the compilation result, two-thread setting, elapsed time and source hash.
No source-term sweep was run. No new complete interpreter was assembled,
so there is no new battery or polish claim. All writes stayed in this lane;
no other lane or external agent was consulted.

## 7. Role pricing: sharp four-lambda serial readers and a sharing obstruction

**The general bound 46 remains open.** The new sharp result is for the
162's literal reader form with at most four source lambdas. The new sharing
obstruction also excludes a four-lambda source that copies one two-lambda
callback into both serial positions. Full proofs and exact hypotheses are
in [role-pricing.md](role-pricing.md); the role/source arguments are
handwritten and not independently reviewed.

### Handoff state

[STATE46.md](STATE46.md) is self-contained: reader laws and prices, proved
claims with verification limits, the remaining depth/root/lambda families,
every necessary count range, and the proof techniques. The complete expanded
integer inventory is [STATE46-counts.md](STATE46-counts.md), generated by
[state_count_rows.py](state_count_rows.py). It has **1,098 necessary arithmetic
rows**, grouped by depth, root and c multiplicity. These are source-count
budgets, not candidate terms or a claim of realizability. The new structural
filters below do not remove entire integer rows. No lambda terms were
generated or evaluated to produce this inventory.

### A sharp price for the 162's four-lambda serial form

Consider the literal source

    R = lambda s. s D E j,

where D and E are literal abstractions, free only in s,c, and have at most
three source lambdas between them. Source redexes in the callback with two
lambdas are allowed; D is not assumed to be I.

1. A flat E (one lambda, application-only body) cannot work when D has one
   or two lambdas, at any size.
2. With one lambda in D and two in E, the variable law forces E j to return
   c V N on sufficiently long unary inputs. E costs at least **28**:
   the source needs three s occurrences and at least four applications;
   the four-application equality case pays at least six index bits.
3. D costs at least 4, and the outside binder/head/applications cost 10.
   Hence **cost(R)>=42 and w>=46**, attained by the 162. Direct depth-zero
   hole-hoists of this source class have w>=50.

The three-s charge uses the origin of the final *bare* N: after the sole
inner callback receives F, its source binder cannot duplicate N. Producing
the bare suffix through the unary diagonal erases at least one N, while
the required output retains two. This prices the roles together, without
postulating disjoint tail and skip subterms.

### Sharing one callback in both positions is impossible

For a literal abstraction D with at most two source lambdas and free names
s,c, the source

    lambda s. ((lambda h. s h h) D) j

cannot satisfy the variable law at all unary lengths, regardless of size.
With a two-lambda D it has four source lambdas and its j is at depth one.
The proof charges no duplicate code: after one unary argument, a sole
remaining source lambda cannot survive as a c-bearing function waiting
for the final j. The only possible identity forwarding case would force
both D j=c V N and D F=c V N, contradicting the earlier reduction to I.

Sharing under **different specialization arguments** or in another outer
context remains open. A shared callback with three or more lambdas is not
excluded by this result. The numerical serial price does not transfer from
an expanded normal form to an arbitrary compressed source.

### General Lean result and limits

[RoleAlgebra.lean](RoleAlgebra.lean) proves the mixed unary diagonal for
**every pair of lengths**, and the application-only value classification
for **every expression and every n above its source-dependent threshold**.
Its `expr_function_barrier` proves that surviving function values contain
no free parameter except the rigid suffix N. Extra rigid atoms, including
c and a callback marker, are allowed. It also proves the final arm,
serial-reader, and hoisting arithmetic inequalities.

The file passed in **0.30 seconds with two threads**; the source hash and
result are in [role-algebra-kernel-check.json](role-algebra-kernel-check.json).
The source-role arguments, bare-N provenance refinement and complete sharp
serial theorem remain handwritten. The full reader floor is still **30**,
and the interpreter-class interval is still **[146,162]**.

No new correct reader or complete interpreter was built; there is no new
battery or polish claim. There were no term sweeps or external consults,
and all writes stayed in this lane.
