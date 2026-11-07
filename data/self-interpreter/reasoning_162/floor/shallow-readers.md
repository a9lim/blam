# Shallow readers: two-lambda exclusion and the remaining compression cases

The target is still the reader problem in `floor138.md`:

    R Z(r) =beta r j,
    R U_n(N) =beta c U_(n-1)(N) N,       n >= 1,

with independent rigid c,j,r,N, one source occurrence of j, and
`w(R)=cost(R)+4 depth(j)`. Redexes and sharing are allowed.

**New results, handwritten unless marked otherwise:**

1. Every reader with exactly two source lambdas has **w >= 50**. Its hole
   is necessarily at depth two. Thus every sub-46 reader has at least three
   source lambdas, and a two-lambda depth-one reader is impossible at any size.
2. Application-only operands over s,c,j reduce to a six-member basis in a
   minimum reader. This is a contextual dominance theorem, with the existing
   Lean inert-replacement theorem supplying the replacement principle.
3. A minimum depth-one counterexample with three lambdas is either normal,
   or contains one nonlinear redex that copies its other inner lambda.
   Linear redexes and every nonlinear redex with a lambda-free argument are
   excluded. This keeps the difficult sharing case explicitly in scope.
4. A minimum depth-zero counterexample with three lambdas must have a
   nonlinear first head contraction. It has at most four c occurrences.
5. Two further depth-two, three-c rows are excluded. The remaining three-c
   strip has six lambda-rooted count rows and five application-rooted rows;
   their arithmetic completeness is checked in Lean.

These do **not** prove 46. The numerical reader floor remains 30, and the
interpreter-class interval remains [146,162]. No new complete interpreter
or sub-162 reader was constructed. The principal semantic arguments below
have not been independently reviewed or completely formalized.

## 1. A small exact algebra

For the first unary instance put

    S = U_1(N), P = U_0(N), F = lambda a b.b,
    I = lambda a.a, W = lambda a.N.

The complete functional-value table is:

| function / argument | S | F | P | I | W |
|---|---|---|---|---|---|
| S | W | P | N P | I | N P |
| F | I | I | I | I | I |
| P | I | N | W | W | N N |
| I | S | F | P | I | W |
| W | N | N | N | N | N |

Applying S or P to a rigid-headed neutral appends respectively F,P or K,N
to that neutral. I forwards it; F discards it and returns I; W discards it
and returns N. Applying a neutral appends the new operand. Consequently
every application-only term over S,F,c,j normalizes to one of these five
fixed functional values or a neutral headed by c,j,N.

This is a structural induction on an application tree. All expanded data
are affine, so every instance terminates. The table's **25 fixed beta
equalities and normality claims are kernel-checked** in `ShallowFacts.lean`.

For application-only code over just s,c,j, the smaller algebra works at
every unary length. Write T=U_n(N), V=U_(n-1)(N), n>=1. Its functional
values are only T and W, and

    T T ->* W,      T W ->* N V,      W A ->* N,
    T (z A...) ->* z A... F V.

For the zero input Z=cons K r the corresponding algebra has Z and K r:

    Z Z ->* K r,    Z (K r) ->* r r,  (K r) A ->* r,
    Z (z A...) ->* z A... K r.

The square identity is the existing unary diagonal induction. In particular,
within application-only source syntax:

- only the literal leaf s returns T (or Z);
- only literal `s s` returns W (or K r);
- a bare suffix N on the unary input is obtained exactly by source
  `(s s) A`, which returns bare r on the zero input;
- a bare c or j can only come from that literal leaf;
- a c-headed result on a unary input has first argument T, W, F, or a
  neutral; it never has first argument V.

These exact source classifications follow by inspecting the last
application in the displayed algebra; they are not inferred from a bounded
normalizer.

## 2. Two source lambdas force the old handler/skip shape

The structural statement in this section permits **any positive number of
source j occurrences**. The weighted conclusion later specializes to one.
This multiplicity extension is needed when a source redex copies j.

### No source redex or application root

A two-lambda reader must be literally lambda s.B and beta-normal. If its
inner lambda is a source redex, contraction removes it and copies no other
source lambda, leaving a one-lambda reader; `floor138.md` excludes that
class without a size or j-multiplicity restriction.

For an application-rooted reader with two lambdas, an affine first head
contraction likewise leaves at most one lambda. A nonlinear first head
contraction can copy only the other lambda D. If D is not in the argument,
it is not copied and the one-lambda obstruction applies. If D is in the
argument, it has no enclosing live parameter: the first contracted binder
does not bind in its argument, and there are no other source lambdas.
Every surviving lambda is therefore an unchanged copy of D, whose only
free names are c,j. Any eventual weak head lambda is precisely D, so the
whole reader is beta-equal to the one-lambda term D, again impossible.

The normal B must have head s, since c/j are rigid and an additional initial
lambda would survive the zero input. Write D=lambda b.T for its unique
inner lambda; T is application-only.

### The first callback is literal s D

On input S=U_1(N), temporarily regard D as a rigid marker. Application-only
contexts over S,c,j and that marker have functional values only S and W.
A nontrivial source subtree cannot return the bare marker. It can either
erase it, preserve its rigid head with arguments, or activate it first
through the literal callback `s D`, supplying F and P.

The callback must activate: without it, the one-lambda application algebra
cannot produce c P N. All code outside D is affine after s is supplied, so
D is not copied before its first activation. Its body has no lambdas and
receives F, so it cannot copy any source lambda then either.

Let Q be the normal value of `S D`. The five-value table gives

    Q is I, P, W, or a c/j/N-headed neutral.

It cannot be S or F: Q is the normal value of an application of a table
value to the pending P, and the P column has no S or F. If Q is c-headed,
its **last** argument is P, inherited from this pending application.
The entire source body is a one-hole, application-only context C[s D].

### A continuation outside the callback cannot work

If Q=I, adding one I to the smaller S algebra still cannot make P the
first argument of c: the functional values are S,W,I, and an S callback
puts F first. If Q=W, it can be replaced by `S S`, reducing to the smaller
algebra directly.

If Q=P, C has exactly one extra P marker. Its only new functional value is
I, produced by consuming that marker, for example P S -> I. A P-valued
subtree must therefore be the bare marker: every other route returning P
would need an I and a second P. A c-headed neutral can get P as its first
argument only at a literal source `c [s D]`. Calls through S append F
first, and calls through P append K first. The resulting c-headed subtree
is rigid on both inputs. An enclosing application-only zero/unary context
either keeps that c head in both evaluations or erases it in both; it
cannot yield zero head r while retaining variable head c.

Finally, if Q is neutral, its contents cannot be extracted by the surrounding
application-only context. A c occurrence outside Q still cannot acquire P
as its first argument. Hence a successful c head must originate inside Q.

### The whole source shape is forced

The callback's c-headed normal value ends in P. To become exactly c P N,
it must consequently be exactly c P before one more argument is supplied.
No outer S call can supply that one argument: calling S on the neutral
would append two arguments F,P. A W call erases it. Thus its entire outer
context is literally one function application, and the source is

    R = lambda s. s D E,

where E is application-only over s,c,j and must normalize to bare N on the
first unary input. The smaller algebra now forces the **literal** form

    R = lambda s. s D ((s s) A).                   (1)

For every zero/unary input the diagonal erases A completely. In particular
all j occurrences in A are irrelevant, and at least one j must occur in D.
With one source j, it is inside D and has depth exactly two. This proves
the all-size impossibility at depth one.

Replacing A by s preserves both laws at every unary length, so D satisfies
the whole-stream correlated handler laws from `handler-bound.md`:

    D[Z(r)] K r r =beta r j,
    D[U_n(N)] F U_(n-1)(N) N =beta c U_(n-1)(N) N.

This derives the fixed handler/skip shape for two source lambdas; it does
not impose that shape on readers with more lambdas.

## 3. The two-lambda floor is 50

The one-abstraction handler argument in `handler-bound.md` requires D to
have at least five applications. Its short source-accounting proof applies
with multiple j occurrences as well: on zero input the application-only
body must expose `K (K (r j))` before its two remaining r arguments.
Three distinct surviving source applications have j-bearing right subtrees.
At least two further source applications must have been consumed to expose
r as a head. A single consumed application can only start with the Scott
cell rule, and the possible first functional operands Z,K give K r or K,
not an r-headed application. Thus A(D)>=5.

For a single hole, D has one lambda, at least six leaves including j, and
a c leaf at reader depth two. Its charged index sum is at least two, so

    cost(D) >= 2 + 4*5 + 2 = 24.

Outside D, (1) costs at least 18: the stream lambda, head and applications,
and the least application-only diagonal `(s s) s`. Therefore

    cost(R) >= 18+24 = 42,
    depth(j)=2,
    w(R) >= 50.                                   (2)

The existing correlated one-lambda handler gives a two-lambda whole reader

    lambda s. s (lambda b. b (b (b (s s s j))) c) (s s s),

with cost 53, depth 2, weight 61. This is an existing construction, not a
new algorithm or a claim that 50 is attained. Its zero law and n=1,2,4,9
instances are among the new fixed Lean checks.

## 4. Six application-only operands suffice in a minimum

Let A be a source subtree with no lambdas, using only s,c,j, in an arbitrary
lambda-rooted reader. All occurrences of s here denote the original input.
Use a minimum-weight reader and then minimize its number of lambdas.

The smaller algebra proves the following replacements.

| Source behavior | Minimum source representative |
|---|---|
| original stream | s |
| bare continuation | c |
| bare hole | j |
| constant returning the suffix | s s |
| suffix itself | s s s |
| zero result r j, variable result N j | s s s j |

The last two rows arise only as `(s s) U` or `(s s) U j`; replace U by s.
These replacements preserve the two actual-domain equations exactly,
including every unary length. A single j cannot occur in an erased U in
a successful reader.

Every other A has a rigid normal value on both inputs that does not occur
as a shifted subterm of either required output. On zero the possible
allowed neutral subterms are only r, j, r j; their source forms are already
listed. On a unary input the allowed free-headed subterms are c, N, c V,
c V N. The first two source forms are listed; the latter two are excluded
by the first-argument invariant of the smaller algebra. The remaining
subterms of V have bound heads and cannot be these free-headed neutrals.

Therefore all residuals of this A must be erased. Replacing A by s preserves
each law, by `SelfintInert.replace_inert_join`, applied after the indicated
normalization. This works for an arbitrary surrounding context, including
redexes and duplication; it is not restricted to a final operand. Such an
A cannot contain the unique j, or the zero output would lose j entirely.
For a nontrivial application tree this replacement strictly saves size.

Thus every application-only subtree over s,c,j in a minimum belongs to the
six displayed forms. The normalization/absence classification is
handwritten; the inert-replacement principle is existing Lean.

## 5. Depth one with three lambdas: which redexes remain

Suppose a minimum counterexample has d=1 and exactly three reader lambdas.
The outer lambda is the stream binder; j lies outside both inner lambdas.
At this hole depth **w equals ordinary wire length** in the frame [c,j].

Erasing source redexes cannot occur in a minimum. For a linear redex
`(lambda x.B) A`, let D_x be the number of inner binders above its unique
x, F_A the argument's free-reference count with j counting four, and F_B
the corresponding outer-reference count in the function. The exact balance is

    w(reduct)-w(source) = (F_A-1) D_x - 6 - F_B.     (3)

One can insert canonical NEXT and apply `SelfintWireCost.linear_beta_delta`;
its fixed size cancels because the substituted occurrence is linear.
If D_x=0 the contraction strictly shrinks. If D_x=1, the last inner lambda
is in B, so A is application-only over s,c,j. Section 4 makes F_A at most
seven, attained only by `s s s j`. Equation (3) is then nonpositive.
Equality still removes one reader lambda. This contradicts the secondary
minimum. All linear redexes are excluded. The general wire inequalities
for one capture level and seven free references are new Lean theorems in
`ShallowFacts.lean`.

Now consider a nonlinear source redex with **no lambda in A**. If it lies
under both remaining reader binders, j is outside it; contraction gives a
two-lambda depth-one reader, impossible by section 2. Otherwise it is at
depth one and section 4 applies to A.

For A=s,c,s s, or s s s, j is outside the redex. No lambda is copied, so
the reduct is again a two-lambda depth-one reader, impossible.

For A=j or s s s j, the reduct has two lambdas but can have several source
j occurrences. The multiplicity-permitting structural theorem of section 2
still forces its literal form to be `lambda s.s D ((s s) T)`, with a j
occurrence inside D. The four applications outside D must already have
been present in the source: substituting bare j creates none; substituting
`s s s j` cannot create its leading callback or a two-argument diagonal,
because that argument has an application-only head s with **three** operands.

- With A=j, D must already have its five handler applications. Adding the
  four exterior applications and the source redex gives at least ten.
- With A=s s s j, the source D contains its live bound variable, a c, and
  an x that supplies j. It therefore has at least two applications.
  The exterior four, the source-redex application, and A's three give ten
  applications again.

Three lambdas and ten applications cost at least `6+40+2=48` even before
index charges. Since w is wire length here, neither case can have w<46.

Consequently the only possible source compression in a minimum d=1,L=3
counterexample is

    lambda s. C[(lambda x.B) A],

where x is nonlinear, A contains the other inner lambda D, and C and B
are application-only. The callback D has no free j in its source; j is
outside both inner lambdas. A has no source redex, since such a redex would
be one of the lambda-free-argument cases just excluded. This case can copy
code and must not be replaced by a normal-form price. It remains open,
as do normal three-lambda readers and readers with at least four lambdas.

## 6. Depth zero: a linear first head contraction is excluded at L=3

Let a minimum sub-46 reader have d=0,L=3. The earlier three-live-binder
lemma gives V>=f+5. Hence `w>=22+4f`, and f<=5. Its first head contraction
is not erasing. Suppose it is linear. The j hole is in its argument A or
in a later pending argument, never inside its function body B.

Equation (3) applies with D_x<=2. For D_x=0 it shrinks.

For D_x=2, both remaining lambdas lie inside B, so A is application-only
over c,j. If it contains j, its neutral normal form must be bare j:
no r is yet available inside A, and a rigid application containing j cannot
be unpacked to supply the bare argument in r j. Therefore A=j and F_A=4;
the change is nonpositive. If A contains only c, let a count its leaves.
For a<=4, (3) is again nonpositive. The sole potential a=5 case uses all
five possible c leaves. This nontrivial application tree has a c-headed
neutral as the first argument of its rigid c head. That first argument
cannot become the Scott cell V in c V N, and the surrounding context cannot
extract an internal c leaf from the neutral. This case is impossible.

For D_x=1, if j is outside A then F_A<=5 and the change is negative. If j
is in A and A has at most three c leaves, the change is nonpositive. The
remaining cases would put j and at least four c leaves in a term A having
at most one lambda, with j outside that lambda. Such an A cannot expose a
lambda in weak head form: its sole lambda would have to be consumed before
a new one appeared. Nor can it reduce to bare j. To do that its sole
contraction would have to forward an argument containing j; there is then
no second eraser to remove a c occurrence, and j cannot occur in the lambda's
body. Its resulting rigid application cannot be unpacked by the rest of R.
The zero law fails.

Every surviving case reduces weight or removes a lambda at unchanged
weight, contradicting the chosen minimum. Thus the first head contractor
must be nonlinear. Its reduct still needs a nonlinear binder, so the source
has two nonlinear binders and a third live binder. Therefore V>=f+6 and

    w >= 26+4f,      f<=4.                         (4)

This leaves an explicit nonlinear-head family at depth zero; it does not
prove the requested cost>=46. It does not apply the depth-one hole-hoisting
identity in reverse or assume that head normalization is inexpensive.

## 7. Two additional depth-two, three-c rows

For a lambda-rooted minimum with d=2,f=3,V=7, exactly three leaves belong
to binders. Its two live binders have multiplicities 2+1; every other binder
is vacuous. It is beta-normal: a vacuous redex shortens the minimum, and
contracting the sole live inner binder leaves only the outer stream binder
live, even if vacuous lambdas are copied. That contradicts the two-live
source lemma.

Consider X=3, where the three c leaves spend all index charge. No s or c
can lie under an inner lambda, and no bound occurrence crosses another
binder. The j hole lies under precisely one inner lambda. If that lambda
is the live inner binder, no further lambda can be placed around its leaves
without violating the index or hole-depth conditions. This is impossible
when L>=3. If the live block is placed inside the j block instead, source
normality makes it an argument of rigid j; that permanent extra argument
prevents the zero law.

The remaining source blocks are therefore separate:

    J = lambda _.j,
    D_q = lambda a1 ... aq. aq             when s occurs twice,
    E_q = lambda a1 ... aq. aq aq          when s occurs once,

with q=L-2. All other syntax is application-only over these blocks, s, and
the three c leaves. The zero input Z has these exact callback values:

| q | Z D_q | Z E_q |
|---|---|---|
| 1 | K r | K |
| 2 | r | r r |
| 3 | I | lambda x.x x |

Also `Z J ->* j r`. These seven equations are new fixed Lean checks.

Before a source block activates, the zero-data algebra has only Z and K r.
Activating J through Z puts the permanent extra argument r on the unique j
and fails. Consuming both available Z copies in a diagonal leaves no way to
activate J. Hence the first viable source activation would have to be Z D_q
or Z E_q.

With one source s, the E_1 and E_3 rows lose r completely. E_2 leaves the
rigid application r r, whose first argument cannot become j; erasing it
also loses the only r. All fail.

With two source s, the D_1 and D_2 rows leave one Z and J, together with
K r or rigid r. The only way to activate J would now be a Z callback,
which gives j r, or source function position, forbidden by normality.
K r cannot return J; it erases its argument and returns r.

The D_3 row leaves one Z, one I, and J. To expose r, the remaining Z must
use the unique I as callback, producing K r. That spends the only value
that could expose J as a function without passing the unwanted Scott tail.
If I exposes J first, there is no I left to extract r from the remaining Z.
No code is copied in this linear case. Thus this row also fails.

This excludes, in particular, both additional-strip rows

    (L,V,X,d,f,w) = (4,7,3,2,3,43),
                    (5,7,3,2,3,45).                (5)

The argument also covers the smaller L=3,X=3 row, already outside the
additional depth-two strip. It is a complete shape argument, not an
evaluation of all surrounding application contexts.

Combining (2), (5), and the previous source counts gives the following
complete remaining **f=3,d=2,w in {43,44,45}** inventory for a minimum
counterexample:

| Root | L | V | X | w |
|---|---:|---:|---:|---:|
| lambda | 3 | 7 | 5,6,7 | 43,44,45 |
| lambda | 3 | 8 | 3 | 45 |
| lambda | 4 | 7 | 4,5 | 44,45 |
| application | 3 | 8 | 1,2,3 | 43,44,45 |
| application | 4 | 8 | 0,1 | 44,45 |

There are eleven count rows, not eleven source terms. The two Lean inventory
theorems prove the arithmetic implication from the stated count bounds and
the two excluded triples. They do not formalize those semantic hypotheses.
The f=1 and f=2 depth-two families remain open, now also with L>=3.

## 8. Checking and the exact remaining boundary

Run from the repository root:

    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round3/floor/shallow_facts.py

Then from lean/:

    LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
      lean -j2 /Users/a9lim/Work/blam/tmp/round3/floor/ShallowFacts.lean

The new file checks 42 explicit beta reductions together with normality,
three general wire-cost consequences, and two arithmetic coverage theorems.
It passed in 1.35 seconds with two threads; the fixed Python generation
took about 0.002 seconds. There were no unresolved fixed reductions.
The source classifications, the 50 bound, the operand domination theorem,
and the semantic exclusions remain handwritten. `shallow-facts.json` and
`shallow-kernel-check.json` record the fixed instances and compilation result.

The live obstruction at depth one is now sharper: for L=3, either price the
normal head cases without separate module assumptions, or rule out a
nonlinear let that copies its only other inner lambda. The latter can reuse
a callback under different arguments and is precisely why an additive price
for tail extraction and suffix extraction is still unjustified. L>=4 is
also open. At depth zero, nonlinear first-head contraction is the only
three-lambda possibility. The depth-two strip is reduced as above, not closed.

No reader below 46 emerged from these arguments; no new complete interpreter
was assembled, and there is no new battery or polish claim. All writes and
checks stayed within the floor lane, with at most two threads per check.
