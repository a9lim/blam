# Env lane: whole-prefix cells, stream-only values, and an extra mode argument

**No sub-162 interpreter found.** Two new complete machines pass at **170**
and **203** bits, unchanged by the requested polish runs. The principal new
exclusion is a small, complete bound for whole-prefix cells of the form
`D(a,e) = lambda u r. r H`: **D costs at least 27 bits**, even when H may
reuse u, r, or any variable in the actual ABS frame and may contain beta
redexes. That already consumes the entire three-bit variable-arm saving.
A narrower normal-source, single-opening family has exact minimum **34**,
attained by the existing 169-bit interpreter's cell.

Other results extend the cell/APP-alias obstruction to every fixed unary
prefix offset, exclude every nontrivial application-only transformation made
solely from copies of the variable stream, and account for why a separate
leading-one mode argument does not pay in the literal value constructors.
These are family results, not an optimality proof for 162.

## 1. Complete interpreter ledger

| File | As written | Polished | Exact battery line | Idea |
|---|---:|---:|---|---|
| `prefix_own_tag.lam` | 170 | 170 | `170 bits  ok=667 skip=1 fail=0  prefix_own_tag.lam` | Whole-prefix variable values; the inner lookup bit supplies its own K for discarding the terminator's suffix. |
| `phase_argument.lam` | 203 | 203 | `203 bits  ok=667 skip=1 fail=0  phase_argument.lam` | Whole-prefix values; evaluation has an extra mode argument F, threaded through ABS and APP and supplied by the public adapter. |

The first has `(L,A,X)=(16,26,32)`; the second `(21,30,39)`.
`*.blc` and `*.optimized.lam` contain materialized polished terms, checked
again by the same battery. `results.json`, `polish.log`, and the individual
`*.letopt.log` files record those checks. The 170 used three-cut core
inlining and two-cut no-inline polishing; the 203 used the prescribed
two-cut core run. These are bounded letopt results, not minima of whole
beta-equivalence classes.

Both also return the exact rigid suffix on Omega, lambda-Omega, and
Omega Omega with a tail-projecting continuation (`suffix_checks.json`).
These fixed checks supplement the structural correctness arguments below;
they are not a universal proof by testing.

The 170 differs from golf162's existing 169 precisely in the **inner**
whole-prefix lookup handler: `b (b a) (e b)` replaces
`b (lambda discard.a) (e b)`. The known raw-tail selector repair is related,
but this cell must additionally compensate for the full leading 1 and must
invoke the parent as `e b`, rather than as `lambda r.r e`. This is a new
measured combination, not a claim to have invented the known repair idea.

No failed full interpreters were built. The existing 162 and 169 were read
as references rather than copied and re-batteried.

## 2. Exact identities and correctness

Throughout,

```text
K = lambda x y.x              F = lambda x y.y
cons b r = lambda h.h b r
U_n(N) = 1^n 0 ++ N           n >= 0
Cell(a,e) = lambda b r.b a (r e).
```

All equations are beta equations. No eta rule is used.

### 2.1 Whole-prefix lookup using its own inner tag

Define

```text
D_self(a,e) = lambda u r. r (lambda b.b (b a) (e b)).
```

Then, for arbitrary a,e,N,

```text
U_1(N) D_self(a,e)       ->* a
U_(n+1)(N) D_self(a,e)   ->* U_n(N) e       (n >= 1).
```

For the first, write `H = lambda b.b (b a) (e b)`:

```text
U_1 D_self -> D_self F U_0 -> U_0 H
          -> H K N -> K (K a) (e K) N -> a.
```

For the second,

```text
U_(n+1) D_self -> U_n H -> H F U_(n-1)
              -> e F U_(n-1) <- U_n e.
```

Thus this is a valid whole-prefix environment extension. The variable arm
is `lambda u.cont list (list list u)`, costing 25 instead of 28. ABS uses
D_self and APP keeps the ordinary pointwise lift. Unary-index induction and
then source-term induction give the usual exact contract, including
divergent programs. This is a handwritten transfer of the usual parser
proof, not a new Lean proof.

D_self costs **35** in frame `[a,e,...]`, versus 24 for Cell and 34 for the
existing whole-prefix cell. The complete change is `-3 + 11 = +8`, hence
170. Using the input tag removes one source lambda from the 34-bit cell
but adds an application and changes index excess: the net change is +1.

### 2.2 A genuine extra-mode value protocol

The 203 uses the following internal values:

```text
V_var(n,N) = U_n(N)
A(f) = lambda d e a. f d (Cell(a,e))
T(f,g) = lambda d e. f d e (g d e).
```

Their exact evaluator laws are

```text
U_n(N) F e       ->* U_(n-1)(N) e       (n >= 1)
A(f) F e a      ->* f F (Cell(a,e))
T(f,g) F e      ->* f F e (g F e).
```

The first is just the second Scott projection:
`cons F r F e -> F F r e -> r e`. The other two are direct substitutions.
They give an inductive invariant: evaluation of the internal value is
`V_M F e`, and this equals the interpretation of M in environment e.
The parser's syntax and suffix traversal stay unchanged.

Every closed source starts with ABS or APP, so its returned internal value
has the two leading mode/environment lambdas. The public adapter is

```text
E C = P (lambda v.C (v F)).
```

For closed M, `V_M F =beta lambda z.M`, proving the public contract. No
normalization assumption on M appears in the induction.

The internal parser is 182 bits. Relative to 162 it saves 3 in V, adds 9
in ABS, and adds 14 in APP. The public adapter costs 21, giving 203.

### 2.3 Borrowing ABS's zero tag for the outer dummy binder

For the existing whole-prefix cell, let

```text
H = lambda b.b (lambda discard.a) (e b)
Q = lambda r.r H.
```

Then `lambda u.Q =beta K Q`, and in ABS `bit1 Q =beta K Q` because its
tag is K. This is a valid replacement, but its actual price is **37**,
against 34 for the explicit dummy binder.

Q costs 30. An explicit unused binder costs 2 plus one extra index bit at
each of its two free semantic occurrences, for a total increment of 4.
Using `bit1 Q` costs an application (2) and the actual frame's bit1
reference (5), an increment of 7. Even a hypothetical nearest-slot K loan
would cost 4 and merely tie the dummy binder. This prices the precise
replacement; it does not exclude a new layout that also changes Q.

`identities.json` records 34 successful small symbolic checks, including
the two cell laws at several unary lengths, the mode laws, the stream
diagonal, and the measured cell costs. The all-length claims come from the
displayed reductions and inductions, not from extrapolating those checks.

## 3. A complete sub-162 exclusion for single-opening whole-prefix cells

**Hypotheses.** Keep the 162's knot, reader shape, NEXT, ABS application
`exp D`, and APP lift. Change only V to the 25-bit whole-prefix arm and
the literal cell source to

```text
D = lambda u r.r H.
```

H may contain arbitrary beta redexes and may mention every variable in the
actual frame

```text
[r, u, a, e, exp, bit1, list, cont, intL, x].
 0  1  2  3   4     5     6     7     8   9
```

Require uniform lookup for fresh semantic a,e and rigid suffix N:
`U_1(N) D =beta a`, `U_(n+1)(N) D =beta U_n(N) e` for n>=1.
The outer helpers contain neither fresh semantic parameter. They may be
the actual parser values: their prices will exclude their occurrence in
the relevant small hole before any property of their implementations is
used.

**Conclusion.** `|D| >= 27`. Consequently this family costs at least
`162 - 3 - 24 + 27 = 162` as written and cannot be sub-162.

**Proof.** The two uniform laws require occurrences of both a and e in H:
neither evaluation nor the supplied Scott/Boolean data can introduce a
missing fresh semantic variable. The displayed outer syntax costs exactly
8 bits, so D<=26 would imply H<=18.

For H let L,A,X have their usual meanings. The a/e references alone give
X>=2+3=5. Therefore

```text
2L + 4A + 7 <= 18,
```

and A>=1. The complete possibilities are

```text
A=1, L<=3;       A=2, L<=1.
```

With one application, the two leaves are a,e. With two applications,
there is just one additional leaf. A reference to exp or anything farther
out would already cost at least `8+2+2+3+4=19` before any lambda; it cannot
occur. The extra leaf is therefore r, u, another a/e occurrence, or the
one possible local bound variable. In particular this case split does
allow the real stream r and real bit u=F, rather than treating them as
opaque unrelated inputs.

`check_prefix_bound()` generates precisely these syntax shapes, assigns
the two required leaves, assigns the possible third leaf, and filters by
the actual de Bruijn size. There are **110 distinct H terms**. Every one
normalizes on the rigid index-one probe and fails:

```text
U_1(N) (lambda u r.r H) !=beta a.
```

There are zero capped or unresolved cases. `prefix_bound.json` records the
wire and both index-one/index-two verdicts for every candidate; none even
passes index one. The Python check takes about 0.006 seconds. An independent
Rust KN replay of all 110 index-one normal forms agrees byte for byte,
using two workers in about 0.15 seconds.

This is a **computer-assisted finite proof**: the hand argument makes the
110-case syntax classification complete; the repository's small pure
beta-normalizer checks the complete list of rigid refutations and the
Rust engine independently replays every index-one normal form. It is not
Lean or an independently reviewed theorem. The checker contains no
general large term search, and the entire candidate set is well below the
brief's small-hole limit.

**Boundary.** This proves a source-size claim in the displayed literal
cell frame. A cell with another outer shape, a body-dependent extension
not required to satisfy uniform lookup, or cross-module let sharing that
changes the source frame is outside it. It is not a 27-bit bound on all
whole-prefix environment protocols.

## 4. Exact 34-bit minimum for a narrower normal-source family

Add to the preceding family that H is beta-normal and uses only a,e as
ambient variables: it cannot inspect u or r again and cannot call another
helper. Then the exact minimum is **D=34**, hence **169** for the literal
whole interpreter frame. This is a handwritten proof.

H's two required laws are

```text
H K n =beta a,         H F t =beta e F t
```

for fresh n,t. Its normal head form has one or two leading lambdas. Zero
would leave a/e at the rigid head with the test arguments attached; three
would leave a lambda on the K test. Its head must be the first bound
variable b. With two leading lambdas, the second variable must occur for
the F law. Thus A>=3, L>=2, and the a,e and head-b occurrences contribute
at least 4+5+1=10 index excess in H's frame. That case costs at least 28.

With one leading lambda, write `H=lambda b.b Q1 ... Qm`. Both semantic
references lie under this lambda, so X>=3+4=7. Also A>=3: with only two
applications the two branches are lambda chains over a and e, and the e
branch cannot supply both F and t to e.

If L=1 and A=3, there are no inner lambdas. For m=1 the F test returns t.
For m=2, the sole spare application must either be `b a` in Q1 to erase n,
leaving Q2=e and losing the required F argument, or be `e b` in Q2, leaving
Q1=a and leaking n. For m=3, the only possible base-case eraser is Q1=b
and Q3=a; then Q2=e and the F test is `e a t`, also wrong. Thus L=1 needs
A>=4 and costs at least 27.

If L>=2, A>=3 gives size at least 25. Equality at 25 would require
L=2,A=3,X=7. Both a and e must then occur directly under the outer b, and
the sole inner lambda cannot capture either of them or b. The four leaves
are exactly b,a,e and the inner lambda's own bound occurrence, so that
lambda is I. For m=1 the F test fails; for m=2 the selected first operand
is a/e/I or one application of them and cannot erase n to yield bare a;
for m=3 the first operand is a/e/I and cannot erase both the third operand
and n. Hence 25 is impossible. More lambdas or applications cost at least
26 immediately.

The lower bound H>=26 is attained by

```text
H = lambda b.b (lambda discard.a) (e b),
```

whose size in frame `[r,u,a,e]` is 26. Adding the fixed eight-bit shell
gives D=34. This attainer is golf162's existing cell, not a new machine.
The own-tag H has one lambda, four applications, and size 27, attaining
the one-lambda branch of this accounting and giving our D_self=35.

This theorem is about the stated normal source. It does not rule out
source compression or helper sharing outside those hypotheses; the
preceding 27-bit bound permits those local beta redexes but is weaker.

## 5. Exclusions that do not depend on the cell's size

### 5.1 The cell/APP alias fails at every fixed unary prefix offset

Let q>=0 be fixed and use variable values

```text
X_n(N) = U_(n-1+q)(N).
```

Thus q=0 is the original raw tail and q=1 is the full unary prefix. For
every q the exact successor identity is

```text
X_(n+1)(N) = lambda e.e F X_n(N).
```

Suppose closed source I has the required transparent compiled value
`K I =beta F`, APP is the alias `lambda e.e f g`, and ABS is a uniform
function of its child's value and surrounding environment. Then compiling
`I (var n)` produces

```text
lambda e.e F X_n(N) = X_(n+1)(N).
```

This is equality of values, not merely of lookup outputs; no choice of
cell can distinguish them. Actual suffix correlation is preserved: in the
application, the right variable ends at the same N as the compared single
variable. Consequently `lambda a b.I b` and `lambda a b.a` compile to the
same value, although their required beta-normal results differ.

This is a handwritten extension of the existing raw-tail alias argument.
No amount of extra cell code repairs this family. A representation that
changes closed I away from F, or an ABS operation with extra source
information, is outside the hypotheses.

### 5.2 Application-only transformations made solely from the stream

Let T(s) be any nonempty binary application tree whose leaves are all s:
there are no lambdas, constants, helpers, or other variables. Put s=U_n(N),
with rigid N. Then exactly one of these holds:

```text
one leaf:       T(s) = s
two leaves:     T(s) ->* K N
three or more:  T(s) has rigid head N after finitely many head steps.
```

The two-leaf case is the standard diagonal induction: U_0 U_0 -> K N and
U_(n+1) U_(n+1) -> U_n U_n. For the tree induction T=A B, if A has two
leaves its K N discards B; if A has more it already has head N. If A=s,
then `s B -> B b r`; a two-leaf B becomes `N r`, and a larger B already
has head N. The only remaining case is the two-leaf diagonal itself.

Therefore every nontrivial such transformation fails as a transparent
variable value under one-argument environment evaluation: after applying
any environment its head is the arbitrary suffix N, not the selected
fresh semantic argument. This obstruction holds at every source size.
It closes pure self-application trees as parse-time variable recodings;
it does not cover an added Boolean, a helper, or a new source lambda.

### 5.3 Paying for an extra uniform evaluator argument

In the literal mode-threading template of section 2.2, even optimistic
accounting cannot repay V's three-bit saving. ABS and APP each acquire one
lambda, costing at least 4 bits total. The three old evaluation sites
each acquire an application and a mode reference, costing at least 4 bits
per site. Existing indices cannot decrease when those binders are added.
Thus the internal parser costs at least

```text
162 - 3 + 4 + 3*4 = 175
```

before any public decoder. Its actual cost is 182 because mode references
and old captures are not all nearest-slot variables. This is a literal
template lower bound, not a theorem about all multi-argument value
representations. Removing or fusing other evaluation operations would
leave the priced family.

## 6. Where a sub-162 could still hide

The direct whole-prefix saving is insufficient when the environment
literally swallows one argument and then opens the residual stream once.
Borrowing that stream and the supplied F inside a tiny handler does not
change this: the complete 110-case hole covers it. The most obvious next
step is consequently **not** a larger search of that same handler.

The remaining plausible escape is a body-dependent ABS operation that
does not construct a uniform cell at all, or a cell whose outer operation
is not `lambda u r.r H`. A parsed exp can carry interpreter-origin code,
whereas an unmodified input cell cannot supply new live semantic captures.
The existing favorable-body 17-bit cell example shows why a uniform-cell
theorem cannot simply be imposed on such an operation. A proof should
derive a cost from a body that simultaneously needs the newest and an
older binding, while allowing exp's actual code; assuming the full cell
interface there would repeat the old frame mistake.

Changing APP to use the environment as its head remains especially
unpromising with transparent closed values: the successor collision
survives the whole-prefix move exactly. Escaping that collision needs an
actual representation change and its public decoding cost. I have no
new candidate near 162 in that larger family and no proof that it cannot
pay. Global 162-optimality remains open.

## 7. Computation and reproduction

All writes are in this lane, including the frozen executable (SHA-256
`00883f147c7128a1642f323920deef23f0af9c8b742dadb3c0f30cf5478bfaa2`). No other
agent was consulted, no tracked repository file was modified, and no Lean
build or broad search was run. Batteries and letopt used at most two
workers. Individual letopt calls were capped at 100 seconds; none timed
out. Each battery was about two seconds. The only hole check contains 110
derived candidates and completes in milliseconds.

```sh
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round3/env/check.py
PYTHONDONTWRITEBYTECODE=1 python3 tmp/round3/env/check.py --proof-only
```

The first invokes the repository's actual `polish.py` workflow with the
lane binary, two-worker battery, and shorter process cap, then materializes
its minima above the script's fixed reporting threshold. The second
rechecks the finite proof. `run.log` records the completed initial run.
