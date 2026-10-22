# A 138-bit bound with the reader's fusions allowed

**Theorem (handwritten).** Every member of the class below has BLC size at
least **138**. The class contains the literal 162 and 165. It permits
arbitrary beta redexes, lets, duplication, and sharing within the reader,
and any opaque beta fixed-point context. It requires a separate normal
NEXT with the canonical rigid branch laws. The separator and those laws
are hypotheses; they have not been derived from closed-source correctness.

The new part is a size bound for the entire fused reader and its composition
with the existing NEXT and knot theorems. There is no claim of 162 optimality.

## 1. Exact class

Use the brief's Scott streams and bits K/F. Let

    Z(r) = cons K r,
    U_n(N) = 1^n 0 ++ N,                 n >= 0.

All displayed free parameters are independent, rigid variables. Define the
literal canonical constructors

    Abs(f)   = lambda e a. f (lambda b r. b a (r e)),
    App(f,g) = lambda e. f e (g e).

Choose the following three objects.

1. An open source term Q with free variables among c,p, in the frame [c,p]
   (nearest first), satisfying

       Q K t =beta p (lambda f. c Abs(f)) t,
       Q F t =beta p (lambda f. p (lambda g. c App(f,g))) t.

   Q is beta-normal. Every occurrence of its first/tag binder is the head
   of a maximal application spine with exactly two arguments inside Q.
   Repeated tag tests and explicit tail binding are allowed. These are
   precisely the rigid-law, normality, and two-arm hypotheses of the
   reviewed 92-bit theorem in
   `data/self-interpreter/reasoning_floor/next-proof-codex/REPORT.md`, section 4.
   Removing the unused ambient x from that theorem changes no price.

2. An arbitrary term R with free variables among c,j and exactly one source
   occurrence of j. R is a function of the input stream; its source need
   not begin with a lambda and need not be normal. Its laws are

       R Z(r)   =beta r j,
       R U_n(N) =beta c U_(n-1)(N) N,       every n >= 1.

   Define H by inserting Q at that one j occurrence and binding p,c:

       H = lambda p c. R[Q/j].

   The insertion is hygienic. Q cannot use R's local binders. It may sit
   under any number of them, and R can subsequently duplicate it through
   a let or other source redex. Outside the marked Q subtree there is no
   use of p. Thus the first-tag dispatch, raw variable value, unary skip,
   variable return, and their sharing all belong to the unrestricted R.

3. Any lambda context T[h], with no free variable other than h, satisfying

       T[h] =beta h T[h].

   It may have k occurrences of h and any internal beta redexes. Set

       E = T[H/h].

All size statements concern these **literal source trees**, before any
beta reduction. H is closed. These hypotheses also give the ordinary
recursive parser equations and hence the exact interpreter contract, by
the standard source-syntax/environment induction. The size argument only
needs the stated equations and source restrictions.

## 2. The reader has a nonlinear binder

Take n=1 and a fresh rigid N. In R U_1(N), N occurs once initially. In the
required normal output

    c U_0(N) N

it occurs twice. If every binder of R were affine, the whole initial term
would be binder-affine: all Scott cells and bits are affine as well.
Affine beta contraction substitutes its argument at most once. It preserves
affineness and cannot increase the number of free occurrences of N.

The target is beta-normal, so confluence converts the reader's beta join
into a reduction to that target. The increase from one N to two is
impossible. Therefore **R has at least one nonlinear source binder**.
This argument allows the duplication to occur anywhere in R; it does not
assign it specifically to a stream variable or a skip routine.

## 3. The reader has at least two source lambdas

First R has a head normal form, by reflection from its successful zero
instance. That head form has exactly one leading lambda: no lambda would
leave a rigid c/j head after the stream is supplied, and two would leave an
outer lambda in the zero result r j.

If R had only one source lambda, a head contraction would consume that
sole lambda and could not create another. Therefore no head contraction
can precede the exposed lambda: R itself is `lambda s.B`, with B an
application-only tree over s,c,j.

The variable instance n=1 rules out **every** such tree, at every size.
Put

    S = U_1(N),      P = U_0(N),      W = lambda u.N.

The complete relevant application algebra is

    S S       ->* W,
    S W       ->* N P,
    W X       ->* N,
    S (z A1 ... Am) ->* z A1 ... Am F P,     z in {c,j,N}.

A neutral applied to another term remains neutral with the new argument
appended. Induction on the original application tree proves that every
subtree normalizes to S, W, or a neutral headed by c,j,N. This is a finite
structural induction on syntax, not a claim inferred from a fuel limit.

The same induction tracks the first argument of a c-headed neutral. It is
one of S, W, a neutral, or F:

- An explicit application to c appends the normal result of its right
  subtree, belonging to S/W/neutral.
- Opening S on bare c appends F first, then P.
- Opening S on an already applied c or applying a c-neutral preserves
  its existing first argument.
- W erases the whole other operand and returns N.

None of S,W,F or a rigid neutral is the normal term P. Thus the result
cannot be `c P N`. This excludes the one-lambda case, and gives **L(R)>=2**.

The square identity in the table follows directly from two cells. More
generally U_n(N) U_n(N) ->* W by induction: the n=0 square is W, and a
leading F cell reduces the square to the preceding tail's square. Only
n=1 is needed for this lower bound.

## 4. A source charge of 16 for the fused reader context

Price the single j hole at zero. All other variables retain their actual
BLC costs, and every lambda/application costs two. Call this `cost(R)`.
There are at least:

- two lambda nodes, by section 3;
- two distinct leaves belonging to a nonlinear binder, by section 2;
- one free c leaf, since the variable output contains c;
- the one j-hole leaf, which also appears in the zero output.

The four leaves require at least three applications. Dropping all
nonnegative index taxes gives

    cost(R) >= 2*2 + 2*3 + 2*3 = 16.

The last three charged leaves are the two nonlinear occurrences and c;
the j hole is free. No output application, continuation application, stream
cell, or erased argument was separately charged. A source node can perform
several of those jobs without invalidating this count.

## 5. The position of NEXT raises the bound

Let d be the number of reader-local lambdas around the single j hole.
The old NEXT pruning proof gives one more fact besides 92: each of its
nine terminal forms has at least two c leaves and two p leaves. Pruning
only deletes nodes, so the original Q has at least four free parameter
occurrences as well. Moving Q below d reader lambdas therefore gives

    |Q at its actual position| >= 92 + 4d.

All nine sizes and free-occurrence counts are independently checked by
`checks.py` and in `Facts.lean`.

### A reader not starting with a lambda costs at least 22

Such a reader has a first head contraction `(lambda x.B) A` before exposing
its necessary one-lambda head form. There is no enclosing source lambda
at this first contraction. Its reduct R' still satisfies the reader laws,
so sections 2 and 3 apply to R' too: those two lemmas do not require a
single occurrence of j.

If x is nonlinear, it cannot be R's only nonlinear binder: otherwise the
contraction removes that binder and substitutes only affine terms into
an affine body, leaving R' affine. Thus R has two nonlinear binders, four
owned leaves, a c leaf, and the j hole. Already

    cost(R) >= 2*2 + 2*5 + 2*5 = 24.

If x is linear, contraction reduces the lambda count by one without
copying any lambdas. Since R' needs two, R needs three. The x leaf is
separate from the two leaves of a nonlinear binder and the c leaf.
With the hole there are five leaves, giving

    cost(R) >= 2*3 + 2*4 + 2*4 = 22.

If x is vacuous, R also needs three lambdas. Its erased argument A
contains a leaf. That leaf cannot be the unique j hole, because R' still
must expose j in the zero output. If it is c, another c occurrence must
survive. Otherwise A is closed relative to c,j and has an internally bound
leaf. In either case it is a fourth charged leaf, distinct from the two
nonlinear occurrences that must survive in R' and from a surviving c.
Again the cost is at least 22.

This argument does not normalize the reader for pricing, and does not
assume that affine contractions decrease wire length. It counts the
original source nodes at its first head contraction.

### A lambda-rooted reader costs at least 17

Its c leaf is beneath the initial stream lambda and therefore has index
at least one. The section-4 source count gains that index bit:
`cost(R)>=17`. Combined with the preceding case, this holds for every R.

There is a useful equality restriction. If a lambda-rooted R costs exactly
17, every inequality is tight: it has two lambdas, precisely the two bound
leaves of its single nonlinear binder, one c leaf, and the one j hole.
The stream binder is live, so it is the nonlinear binder. The other
lambda is vacuous. Neither stream occurrence nor c can lie under that
extra lambda, since that would add an index bit beyond 17. Its nonempty
body must consequently contain the hole. Thus **cost(R)=17 forces d=2**.
In particular, d=1 forces cost(R)>=18.

### The three possible placements

The outer parser and continuation binders cost four bits.

| hole depth | reader charge | actual Q charge | H charge |
|---|---:|---:|---:|
| d=0 | >=22, since R cannot be lambda-rooted | >=92 | >=118 |
| d=1 | >=18 | >=96 | >=118 |
| d>=2 | >=17 | >=100 | >=121 |

Therefore **|H|>=118** in every case.

## 6. Composition with any opaque knot

The opaque-knot theorem `SelfintKnot.fixedpoint_hole_multiplicity` proves
in Lean that k>=1 and the zero-priced-hole cost of T is at least 18+2k.
Since H is closed, substituting it changes no de Bruijn indices inside H:

    |E| = ghostCost(T) + k |H|
        >= 18 + 2k + 118k
         = 18 + 120k
        >= 138.

This is an additive source argument with its separator explicitly stated.
It permits the 165 and 162 reader fusions because the entire reader is one
priced region. It does not cover sharing between Q and the reader,
noncanonical actual-parser behavior inside Q, a non-normal Q, or a knot
that uses the parser's input/semantics instead of an opaque H.

## 7. Membership and checking

`checks.py` parses the live source files, extracts the single NEXT subtree,
checks the closed parser functional, and obtains these exact source sums:

| machine | opaque knot | outer p,c lambdas | reader context | actual Q | total |
|---|---:|---:|---:|---:|---:|
| 162 | 20 | 4 | 42 | 96 | 162 |
| 165 | 20 | 4 | 49 | 92 | 165 |

The reader skeletons, with the marked NEXT replaced by rigid j, are

    R162 = lambda s.
      s I (lambda u. s (lambda dummy.c) (s s u)) j,

    R165 = (lambda j. lambda s.
      s (lambda b. b (lambda unused r.r j) c) (s s s)) j.

The last free j in R165 is the single hole; the other j occurrences belong
to its let binder. Their two laws follow from the stream equations in the
brief, for every unary length. The fixed checks cover n=1,2,4,9, the zero
law, the application-only algebra, and both reference NEXT branch laws.

`Facts.lean` kernel-checks all 18 fixed beta reductions and 18 size/free-occurrence facts for the nine NEXT forms. Its executable
normal-order stepper has a proved `normalStep_sound : ... -> Beta t u`, and
`normalSteps_sound` turns each computed trace into `Betas`; these are proof
objects, not a claimed result of testing. The reference sizes and source
partition are checked in Python. The all-reader arguments of sections 2–5,
the class decomposition, and the full 138 theorem remain handwritten.
The 92 theorem is the previously reviewed handwritten theorem; the 20-bit
opaque-knot theorem is existing Lean.

Reproduce from the repository root:

    PYTHONDONTWRITEBYTECODE=1 python3 tmp/round3/floor/checks.py

From lean/:

    LEAN_PATH=/Users/a9lim/Work/blam/lean/.lake/build/lib/lean \
      lean -j2 /Users/a9lim/Work/blam/tmp/round3/floor/Facts.lean

Both completed successfully in this lane. No interpreter was constructed
or modified, so there is no new battery or polish claim.

## 8. An exact optimization reduction for this class

The decomposition gives more than the numerical 138. Define

    w(R) = cost(R) + 4 * depth(j).

For any allowed reader R, choose the canonical 92-bit NEXT, which has
exactly four free c/p occurrences, and the attaining 20-bit opaque knot.
The assembled interpreter has **exactly**

    |E_R| = 116 + w(R).

Conversely every permitted Q costs at least `92+4*depth(j)`, and every
opaque fixed-point context costs at least 20 with at least one body hole.
Consequently every interpreter in the stated class costs at least
`116+w(R)` for its reader. Taking minima gives the exact equality

    minimum interpreter size in this class
      = 116 + minimum w(R).

Section 5 proves `w(R)>=22`; the 162 supplies `w(R)=46`. Thus this class's
minimum lies in **[138,162]**. This treats the 165's let-bound NEXT and the
162's inline NEXT as two positions in one optimization problem:

    w(R165) = 49 + 4*0 = 49,
    w(R162) = 42 + 4*1 = 46.

The precise next theorem is **w(R)>=46**. It would establish 162 optimality
throughout this class, including arbitrary reader redexes and reader
sharing. A counterexample with w(R)<46 immediately gives a complete
sub-162 interpreter by the displayed assembly; it should then be run
through the exact battery and polish. This is a weighted whole-reader
problem, not separate prices for dispatch, a variable value, and skip.

Deriving the class's opaque NEXT separator from broader raw-unary value
protocols remains a separate unresolved step. In particular the known
actual-parser return construction violates the rigid NEXT laws, and the
known parser/reader knots violate the opaque-knot condition.
