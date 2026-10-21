# Independent adversarial review of the NEXT report

Reviewed `tmp/overnight/next-proof-codex/REPORT.md`, SHA-256
`04edba6a9b70a9fd57d7b2ebd88d2458858dcea89ca12d64546aacdb1362d120`.
Line references below refer to that version. I found no counterexample or
substantive proof gap in the four requested items. The conditional theorem
remains conditional on all three of R, B, and D.

| Requested item | Verdict | Scope of conclusion |
|---|---|---|
| 1. §3 embedding and +44 bits | **Correct** | Uniform in every closed interpreter Q, including its divergent-source contract; the 48-bit implication follows. |
| 2. §4 conditional theorem | **Correct** | Pruning, (10), completeness of the nine reduced forms, their prices, and uniqueness at 92 hold under R/B/D. |
| 3. §5 bare-head lemma | **Correct** | Under the stated normality and tag-independence assumptions, the erasing adapters are forced; prices are 97 and 96. |
| 4. §1 root/head laws; §2 witness | **Correct** | The root laws are equivalent to the actual contract, the HNF exclusions hold, and the 184-bit witness really separates actual correctness from R. |

The universal arguments below were checked mathematically. Separately,
`vnext_codex_checks.py` independently constructs the terms and passes **59
fixed equality/inequality checks**, each compared using a separate Python
beta normalizer and the existing Rust normalizer. It also checks all nine
L/A/X counts, source normality and D for the nine forms, selected repeated-test
examples, the 97/96 prices, the 165/184/282 full sizes, the embedding overhead,
and the actual reference NEXT's head form. The run took 0.272 seconds with
two workers; results are in `vnext_codex_checks.json`. There was no candidate
enumeration, full battery rerun, Lean run, or further consult. The checker
imports the repository's source parser/encoder, but does not import the
report's checker or normalizer.

**1. Embedding — §3, lines 219–257.**

The necessary reader identity is valid with arbitrary, possibly nonnormal
arguments. Put `s = cons K r`. Direct contraction gives `s s ->* K r`
and therefore `s s s ->* r`. Consequently

```
s H(J_c,c) (s s s)
  ->* H(J_c,c) K r r
  ->* r J_c.
```

Taking `r = cons b t` gives exactly `J_c b t`. Neither b nor t is evaluated
to obtain this equation. The fixed knot/let unfolding gives this reader
expression for every N, including one that ignores p and x.

Every closed source has an abstraction or application root, so its code is
`cons K (cons b t)` for the appropriate tag b. For the proposed replacement,

```
E_(N_Q) c (cons K (cons b t))
  ->* N_Q b t
  ->* Q c (cons K (cons b t))
  =beta c (lambda z.M) T.
```

In the middle expression, `N_Q` denotes its instantiation with this c.
The last equality is precisely Q's closed-source contract on the original
stream. The argument never asks Q to interpret the open abstraction body
separately. It never normalizes M: divergent M has finite syntax, and the
last step uses the assumed beta-conversion contract, not a normal-form test.
Arbitrary continuation and suffix terms follow by capture-avoiding
substitution from the rigid-variable equation.

The cost is exact in the frame `[c,p,x]`. The inner cell
`lambda j.j b t`, occurring under b,t,h, costs
`2 + 4 + 2 + 5 + 4 = 17`: the three variable costs are those of j,b,t.
The outer cell costs `2 + 4 + 2 + 7 + 17 = 32`; literal K costs 7.
The two outer lambdas cost 4, the applications to Q cost 4, and c has
one-based index 3 and costs 4. Closed Q has no free indices to move under
the added binders. Hence `|N_Q| = |Q| + 44`.

The unchanged surrounding source costs 73, as checked against the exact
165-bit AST. Q=165 gives NEXT=209 and full=282. Applying the hypothetical
unrestricted NEXT floor to this construction gives `|Q|+44 >= 92`, hence
`|Q| >= 48`. This is an implication, not a new proof of either floor.

**2. Conditional theorem — §4, lines 265–389.**

The pruning argument is sound, including its source-size claim. In a normal
term satisfying D, every maximal tag-headed spine is exactly `b U V`.
It can occur at the root, under a lambda, or as an argument of another
spine. It cannot occur as the function of an additional application:
that would make its maximal spine have at least three arguments.
Selecting U or V therefore cannot expose a new beta redex at the boundary
with its context. Induction handles nested tests. All other nodes were
already normal by B.

When simplifying the source, retain the outer tag binder and replace a
whole `b U V` node by its chosen child. The child has exactly the same
enclosing binders before and after the replacement. Thus no surviving
variable index increases; the tag leaf, two application nodes, and the
discarded child are removed. This is strictly cheaper in BLC. It is not
the generally false claim that arbitrary beta reduction decreases BLC size.

Equation (10), lines 321–332, is also exact. If normal W has no leading
lambda, `W t` is already normal, and equality of its normal form with
`T_i t` gives W=T_i. If W starts with one lambda, applying the fresh
variable t merely renames its bound variable; it creates no beta redex
inside the body. Equality forces that body to be `T_i r`. Two or more
leading lambdas would leave a lambda where the target has rigid head p.
There are no additional beta-normal possibilities and no use of eta
conversion in this reasoning.

Here is a precise completeness argument for §4.2. Regard a normal term
as either a lambda or a variable-headed maximal spine. Its two prunings
determine the following cases:

- At a tag-headed node, conditionally specialize the entire K child to K
  and the entire F child to F. This preserves both results and removes
  every further tag occurrence below this node.
- At a non-tag node, its lambda constructor, or its head and full arity,
  survives both prunings. Both target trees must have that same structure
  there; recurse into its children with their required pairs of outputs.
- Whenever a required output pair is identical, specialize that subtree
  completely. Its two outputs are normal, so beta equality here is literal
  equality up to alpha conversion. This removes all unnecessary tests.

For `(T0,T1)`, there is exactly one path to a structural difference:
the common p head, its only argument, and the argument's lambda f.
At the next node the rigid heads are c versus p. Thus a remaining test
can occur at precisely three positions: before p, before lambda f,
or after lambda f. These are the three 00 rows.

For a mixed pair `(T0,eta(T1))` or `(eta(T0),T1)`, the root constructors
already differ, so the test must be at the root. These are the two mixed
rows. For the pair of eta expansions, the common path starts with lambda r,
then the p spine of arity two, then its first argument and lambda f. The
second argument is the identical r and is completely specialized. The
four possible positions give exactly the four 11 rows. Total: nine.

This also addresses the suggested missing cases. A test inside A or B
cannot change the enclosing c-versus-p head. A preceding tag test must
already have selected that arm, after which all tests within its payload
can be specialized to that same tag and deleted. A separately selected
head with a shared or separately selected payload has the shape
`(b c p) W`, which violates D. Tests in a common identical payload, such
as the eta tail argument, are removed by the identical-output case.
There can be many tests in an original source; the list is exhaustive
**after** these strictly decreasing simplifications, not a list of all
literal sources satisfying the assumptions.

Every table count was recomputed directly from the unoptimized AST:

| Row | L | A | X | Bits |
|---|---:|---:|---:|---:|
| 00, root | 9 | 14 | 23 | 99 |
| 00, before lambda f | 9 | 13 | 21 | 93 |
| 00, after lambda f | 8 | 13 | 22 | 92 |
| 01 | 10 | 15 | 26 | 108 |
| 10 | 10 | 15 | 25 | 107 |
| 11, root | 11 | 16 | 28 | 116 |
| 11, after lambda r | 10 | 16 | 29 | 115 |
| 11, before lambda f | 10 | 14 | 26 | 104 |
| 11, after lambda f | 9 | 14 | 27 | 103 |

The sole reduced source of cost 92 is (9). Any source changed by the
simplification has strictly greater cost than its reduced source. Thus
both the lower bound and equality uniqueness follow; neither is merely
inferred from the nine examples passing their branch checks.

**3. Bare-head lemma — §5, lines 397–466.**

I find the first-demand argument valid. For precision, a demanded occurrence
must include a bare occurrence of z, treated as a spine of arity zero.
This is a clarification of the argument's terminology, not an additional
semantic assumption.

If X=c, the K equation and normality force Z=A literally. A normal Y
without an initial lambda has a fixed variable head. The only arity-compatible
choice for `Y A =beta p B` is Y=p, which fails since A and B have different
normal forms. Hence Y=`lambda z.D`, with normal D.

If D contains z, choose an outermost z-headed maximal spine: one with no
z-headed spine above it. Its context consists only of lambdas and rigid
heads, including locally bound variables that cannot be applied from
outside this context. That context survives substitution and reduction.
The inserted A, with whatever arguments this spine supplied, must
therefore normalize to the corresponding target subterm. This is a
structural formulation of the report's first-demand step; it prevents a
later computation from erasing the allegedly surviving occurrence.

With zero arguments, A retains two leading lambdas, absent from p B.
With one argument, it has one leading lambda and rigid f with one
argument, unlike the target's one-lambda f-headed lift, whose f has two.
With two or more, its first f argument is always the two-lambda Cell.
Every f-headed target spine instead has the environment variable as
its first argument. Reductions inside U, V, or later arguments cannot
remove that Cell's lambdas or its bound head. Thus no such z occurrence
is possible. Normal-form equality now forces D=`p B`.

For Y=p the symmetric initial step gives Z=B. A demanded B with no
arguments has a lambda with free c beneath it; no such subterm occurs
inside A. With one argument it has rigid head c and the payload
`lambda e.f e (U e)`. Its only possible c-headed location in `c A` is the
root, but that payload has one leading lambda before f, while A has two.
With more arguments its c-spine has excessive arity. Again the mismatch
persists regardless of reductions in the supplied arguments. The adapter
must therefore be exactly `lambda z.c A`.

The reconstructed sources have `(L,A,X)=(9,13,25)` and `(9,13,24)`, hence
97 and 96 bits. Their four rigid branch equations pass the independent
checks. This conclusion does not cover arbitrary shared packets or two
non-bare adapters; the report correctly leaves those outside the lemma.

**4. Actual root/head laws and the witness — §§1–2.**

For the unary stream, `U_n(T) U_n(T)` reduces to
`U_(n-1)(T) U_(n-1)(T)` when n>0, and `U_0(T) U_0(T) ->* K T`.
The skip is therefore T; selecting the F reader arm returns
`c U_(n-1)(T) T`. This is a finite induction on the unary prefix and
requires no property of T. The constructor handoff was checked above.

Consequently the root equations (2), lines 71–83, are necessary. They
are sufficient because every closed term is either a closed abstraction
or an application with both children closed. They explicitly include
the possibly open body of a closed abstraction. This equivalence applies
to divergent sources without any normalizability premise.

The HNF argument at lines 138–151 has the needed exclusions. A normal
closed-source probe gives `J_c` a head normal form, whose only free head
candidate is c. Three or more initial lambdas survive two applications
and cannot join a c-headed answer. With zero lambdas, rigid arity forces
J_c=c, which returns the wrong arguments. With one lambda, a c head
leaves the unparsed stream as the final output argument; a tag head with
zero arguments leaves a lambda, and with one argument the F case returns
the raw stream. With two lambdas, the possible heads are c, the tag, and
the stream. Their admissible arities are respectively two, at least two,
and at least one. All smaller cases leave a lambda or a raw stream.
This gives exactly (3) as a necessary classification. The independently
traced reference J has two lambdas and stream-head arity two, as reported.

For §2, the four reader identities follow directly from substitution into
`s H (s s s)`. In particular `s=lambda u v.X` returns X while erasing H;
it works for the changed parser itself and for an arbitrary continuation,
including f. Thus the extra ABS computation in N_ret reduces to `c A(f)`
without a recursive assumption about N_ret's correctness. The three syntax
recursion equations are those of the reference with the changed parser
in each recursive call.

The correctness transfer is justified by finite induction on source syntax,
followed by the same finite environment-lookup induction. A raw variable
value applied to `Cell(a,e)` selects a when its unary prefix ends, or
continues into e when its leading bit is F. A and V then implement the
abstraction and application constructors. For a closed source, the
environment argument is unused after these finite conversions and the
value is beta-convertible to `lambda z.M`. Every returned value already
has a leading lambda, so this conclusion requires no eta conversion.
This reconstructs syntax; it does not evaluate M, so divergence causes
no additional obligation.

The replacement is beta-normal, respects D, and costs 111 bits; the full
source costs 184. With p rigid its K branch retains the additional
`p f (lambda u v.c A(f))` subterm. Both sides of the purported rigid ABS
law are normal and distinct, so R fails by uniqueness of beta normal
forms. That makes it a valid witness that actual correctness does not
imply R, not merely a candidate that passes a finite battery.

No change to the four requested mathematical conclusions is indicated.
The distinction between the conditional 92-bit theorem and the open
unrestricted NEXT bound must remain explicit.
