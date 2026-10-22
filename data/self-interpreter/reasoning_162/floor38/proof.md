# The thirteen 37-bit residuals are not interpreters

All thirteen exclusions are now Lean theorems against the repository's
actual `IsSelfInterpreter` definition. `Blc.Round3Floor38.residuals_excluded`
(in the module `Residuals.lean`) collects the
literal thirteen terms. The proof uses the normal closed program

    I = lambda x.x,       wire(I) = 0010.

With independent rigid C and R, the required result is

    C (lambda z.I) R = C F R.

Every residual's invocation has no normal form. In fact the constructions
below exhibit unbounded weak-head work; none uses a resource cap as a
divergence premise. All quotation and continuation conventions are the
repository's exact beta contract, with no eta conversion.

## Notation and the complete ledger

Write `D = lambda d.d d`. For a permutation T of the right-associated
three-leaf tree, put

    J(X) = lambda b c.T(X,b,c),
    A_T  = lambda a.a J(a) a,
    B_T  = lambda a.a (a J(a)).

The first twelve candidates are D applied to A_T or B_T. Stable IDs refer
to `../floor/four_lambda.json`, including its full source wire; the source
printed in `progress.json` alone is only the second operand. The thirteenth
has the different first operand displayed below.

| ID | Second operand / T | Exclusion | Lean theorem |
|---:|---|---|---|
| 448 | A, `a (b c)` | rank-zero invariant | `e448_not_selfinterpreter` |
| 449 | B, `a (b c)` | rank-zero invariant | `e449_not_selfinterpreter` |
| 454 | A, `a (c b)` | rank-zero invariant | `e454_not_selfinterpreter` |
| 455 | B, `a (c b)` | rank-zero invariant | `e455_not_selfinterpreter` |
| 460 | A, `b (a c)` | five-step parametric pump | `e460_not_selfinterpreter` |
| 461 | B, `b (a c)` | closed active terms and protected trailing arguments | `Protected461.e461_not_selfinterpreter` |
| 466 | A, `b (c a)` | eight-step closed-prefix pump | `e466_not_selfinterpreter` |
| 467 | B, `b (c a)` | explicit closed-prefix pump | `e467_not_selfinterpreter` |
| 472 | A, `c (a b)` | rank-zero invariant | `e472_not_selfinterpreter` |
| 473 | B, `c (a b)` | rank-zero invariant | `e473_not_selfinterpreter` |
| 478 | A, `c (b a)` | rank-zero invariant | `e478_not_selfinterpreter` |
| 479 | B, `c (b a)` | rank-zero invariant | `e479_not_selfinterpreter` |
| 572 | `(lambda d.d (d d)) (lambda a.a (lambda b c.a (c b)))` | explicit closed-prefix pump | `e572_not_selfinterpreter` |

The theorem names except the indicated nested one are in
`Blc.Round3Floor38`. `Checks.lean` separately proves each literal source
closed and exactly 37 bits. No engine-reported DIVERGE is a premise of any
of these Lean theorems, including the five previously reported divergers.

## Eight cases: one rank invariant

Fix either N=A_T or N=B_T. Work with finite macro terms

    X ::= N | J(X) | X X.

Every such term realizes a closed lambda term. Macro head rules are

    N X       -> X J(X) X                 (A),
    N X       -> X (X J(X))               (B),
    J(X) U V  -> T(X,U,V).

An N rule is one beta contraction. A saturated J rule is two. Define the
nonnegative integer rank

    r(N)     = 1,
    r(J(X))  = max(2, r(X)+1),
    r(X Y)   = max(r(X),r(Y)) minus 1, truncated at zero.

Both N rules preserve rank exactly. For the four permutations

    X (U V),  X (V U),  V (X U),  V (U X),

a J rule does not increase rank. For example, if the input has rank at
most k, then

    r(X) <= k+1,   r(U) <= k+2,   r(V) <= k+1.

Each displayed right side has rank at most k. In particular the head is
always X or V, never U; treating all six permutations alike would be an
error. Rank is monotone through an application context.

A rank-zero term always has a saturated head redex. More generally, if
`r(X) <= length(args)`, then `X args` has a macro head step. Induct on X:
N needs one argument, J needs two, and decomposing an application moves
one argument onto the pending list and increases the available bound by
one. Thus a head N with no argument and a head J with fewer than two are
both excluded at rank zero.

`r(N N)=0`. Repeated progress and preservation therefore give arbitrarily
many macro head steps. Appending C and `stream(I,R)` cannot interrupt
them. The invocation cannot have a normal form.

Checking boundary: the rank arithmetic, progress, arbitrary finite
iteration, realization as actual beta reductions, and final
`not IsSelfInterpreter` consequences are all kernel-checked in
`Proofs.lean` and `RankRealization.lean`.

## Case 461: the protected trailing-argument invariant

Here the exact definitions are

    J(X) = lambda u v.u (X v),
    N    = lambda x.x (x J(x)),
    F(X) = lambda u v.X (X u) (J(X) v).

The three uniform identities are

    N X       ->       X (X J(X)),
    N J(X)    ->^5     F(X),
    F(X) U V  ->^2     X (X U) (J(X) V).

The middle reduction may go under lambdas; it is used only as finite
beta simplification. It is not counted as an independent infinite-head
argument.

Define a class P of closed macro terms, represented canonically:

* N is in P;
* F(X) is in P when X is;
* X Y is in P when X,Y are;
* X J(Y) is in P when X,Y are and X is not the literal atom N.

When X=N in the last operation, use F(Y) instead, by the five-step
identity. Call this operation `smart(X, J(Y))`. An application `X Y`
with plain Y needs no canonicalization. Every application spine of a
canonical P term ends at N or F(X). A spine ending at N cannot have a
first argument J(Y), since precisely that subterm was canonicalized.

The invariant configurations are

    P Q Gamma,       P,Q in P,       Gamma a nonempty list of arbitrary terms.

Gamma may contain rigid C, the actual input stream, or any other term.
No closedness or normalization assumption is made about its members.

To take a step, decompose the application spine of P. Its internal
arguments are plain P terms or wrapped J(P) terms, and the final internal
argument Q is plain.

* If the head is N, its first argument X is plain, by canonicality.
  One head contraction gives `X (X J(X))`. Canonicalize the second
  component with `smart`; the result is again a P term applied to a P
  term. The nonempty trailing list is retained.
* If the head is F(X), take its first internal argument U. Its second
  argument V is either another internal argument or the first member
  of Gamma. Two head contractions give `X (X U) (J(X) V)`.
  Canonicalizing X U gives a P term, even when U=J(Y). The new trailing
  list begins with J(X) V and is therefore nonempty, including when
  V was the last supplied trailing argument.

Every invariant transition contains at least one actual weak-head
contraction, followed or interspersed with finitely many beta
contractions. It never evaluates a trailing term at the head. Initially
`D N -> N N`, and `N N C stream(I,R)` has this form.

The weak-head clock cannot increase during arbitrary beta contraction
and strictly decreases at a weak-head contraction. A finite clock is
therefore incompatible with endlessly regenerating the invariant.
The invocation has no normal form.

Checking boundary: `Protected461.lean` formalizes the canonical grammar,
smart application, closedness, all three identities for arbitrary terms
under their actual closed-capture hypotheses, the progress induction,
clock descent, and `e461_not_selfinterpreter`. The three open identities
also have independent fixed replay clauses in `Checks.lean`.

## Case 460: a parametric pump

Use its N and J, and set P=J(N), F=N P. Directly,

    F V = N P V
        -> P J(P) P V
        ->^2 J(P) (N P) V
        ->^2 N P (P V)
        = F (P V).

These are five head contractions for every V. Since
`D N ->^2 F N`, induction gives arbitrarily many head contractions,
uniformly in any trailing arguments. `Checks.lean` proves the universal
growth identity by substituting into its fixed open replay and derives
the complete non-interpreter theorem using `family_no_count`.

## Cases 466, 467 and 572: closed-prefix pumps

For 466, set `T=N J(N) N`. Its exact identities are

    D N ->^2 T,
    T   ->^8 T J(T) T.

For 467 and 572, the finite cores are written literally as `core467` and
`core572` in `Checks.lean`; their full wires and replay paths are in
`checks.json`. Every certificate consists of a finite reduction from the
identity invocation to a core with pending arguments, and a reduction
from that core back to the same literal core with extra pending arguments.

| ID | Core nodes | Prefix beta contractions | Cycle beta contractions | Added arguments |
|---:|---:|---:|---:|---:|
| 466 | 44 | 2 | 8 | 2 |
| 467 | 95 | 17 | 18 | 3 |
| 572 | 134 | 77 | 55 | 16 |

Each cycle starts with a weak-head contraction; the remaining finite
steps may simplify arguments. The generic `pump_no_count` theorem shows
why this suffices: a clock for the result bounds a clock for its unchanged
function prefix, while the first selected head contraction made that
clock strictly smaller. Hence no clock for the core can exist. The same
holds with any trailing arguments. Beta confluence transfers this failure
back along the checked invocation prefix.

All prefixes, cycles, core identities, clock reasoning, and final three
non-interpreter statements are kernel-checked. These certificates do not
rely on the diagnostic history reducer's correctness: only the explicit
beta paths replayed by `SelfintSharp.replay_sound` are trusted.

## Verification and global boundary

`python3 tmp/round3/floor38/check_lean.py` compiles these five modules and
the subsequent lane developments with two threads. `lean-validation.json` records the final run, and
`residuals-final.log` prints the complete list theorem's axiom dependency.
No `sorry`, `admit`, axiom declaration, or `native_decide` was added.

The exclusions of these thirteen are fully Lean. The statement that
they exhaust the cases not already excluded at size 37 is a separate
handwritten inventory argument, reviewed in `inventory-audit.md`.
Consequently the new global 38-bit floor is a handwritten theorem with
computer-checked and Lean components, not a fully formalized numeric
size theorem.
