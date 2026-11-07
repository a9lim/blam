# escape lane report (round 4)

Brief: find a sub-162 interpreter that breaks the separated class's rigid
reader laws in a way the real interpreter can afford -- a wrong or delayed
remainder absorbed by the continuations, values or NEXT; a cheaper variable
return; a different zero handoff; or a reader exploiting that c is always a
lambda (k1/k2) under the variable arm. Files: NOTES.md (per-idea record),
int148_cjr.lam, lemmaA_review_prompt.md, lemmaA_review_codex.txt.

## 1. Interpreters built

| file | bits written | polished | battery | idea |
|---|---:|---:|---|---|
| int148_cjr.lam | 148 | not polished (fails) | `148 bits  ok=0 skip=1 fail=667` | refute46's 28-bit reader `\s. s (\b. b (s s) c) j` spliced into the 162; returns `cont r NEXT` on variables, so every program fails (fuel-outs: the rest NEXT is parsed as a stream). Built only to confirm the failure mode Lemma A predicts. |
| int_zero_rr.lam | 171 | 166 (letopt, both `--max-cuts 3` and `--no-inline --max-cuts 2`) | `171 bits  ok=667 skip=1 fail=0` | reader `\s. s (\b. b (\t w. t NEXT) c) (s s s)`: the variable arm is the free `c r N`, the zero arm hands NEXT (r, r) and NEXT eats the copy. Built to check the zero-handoff pricing (paper 116 + 55 = 171, exact). |

No sub-162 claim. No design survived paper pricing; the two terms above
are a failure-mode check and a pricing check.

## 2. Exact identities

With the 162's canonical values (Abs(f) = `\e a. f (cell a e)`,
App(f,g) = `\e. f e (g e)`, variable value = raw code r, cell
`\zx zy. zx a (zy e)`), W = `(\w. w w)(\w. w w)` and v_W the value of `\y. W`:

- `v_W A1` is a lambda; `v_W A1 A2 A3..` =b `W A3..` for all Ai (unsolvable).
  Proof: v_W A1 A2 = f_W (cell A2 A1), f_W E = g E (g E) with g the value of
  `\w. w w`; g E a = (r1 cell')(r1 cell') with r1 = cons K N' selecting the
  cell head, so g E =b `\a. a a` for every E. (handwritten; one line)
- For every stream s: `s s Z` is the rest after the first codeword
  (r on a 0-tag, N on `1^n 0 ++ N`); `r r Z = r2` when b2 = 0 but
  `r r Z = r2 r2 Z` when b2 = 1, so the tail r is a token for r2 only on
  ABS. (handwritten, used in pricing token protocols)

## 3. Impossibility results

### Lemma A (the variable arm's rest is rigid) -- Codex-reviewed; kernel-checked in tmp/round4/probelean/Probe.lean (lemmaA)
Review: Codex (astra, high effort, fresh context, thread `escape-lemmaA`,
reply in lemmaA_review_codex.txt): "correct-with-gap" -- the lemma is
correct; its gaps were in my corollary's hypotheses and consequence 4,
and are folded in below.
**Statement.** Let kappa be a term whose only free variable is C, with
`kappa v_W N =b C X N` for some X (C, N rigid). Then `kappa x y ->b C A y`
for fresh x, y and some A: kappa forwards its second argument verbatim.

**Proof.** kappa x y is solvable (unsolvability is preserved by
substitution, and C X N is solvable). Its hnf has no leading lambda (they
would survive into the instance). Head x: the instance is v_W applied to
m arguments -- with a leading abstraction for m <= 1, unsolvable for
m >= 2 -- never C X N.
Head y: an N-headed hnf, which has a different head from C X N. So the
head is C with exactly two arguments and A2[v_W/x, N/y] =b N. The same
split on A2[x, y]: a leading lambda, head x, head C, or head y with
arguments all give instances that are not =b N, so A2[x, y] ->b y. QED.

**Corollary (exact hypotheses).** Assume, for an interpreter E with any
reader, NEXT, continuations and knot:
(H0) the root lambda's body continuation kappa_C has no free variable but
C -- in particular it has not captured the input suffix (Codex: without
H0, `kappa = \v t. C (Abs v) N` passes the probe and accepts `kappa r j`;
realizing it needs a stream-capturing NEXT);
(H1) on the program `\x.\y.W` the root lambda's body continuation
kappa_C is handed (a term =b v_W, N), and that call's result is the run's
result -- true whenever values are evaluator-style (a lambda value applied
to an environment and an argument runs its body) and constructor returns
pass (value, rest) by eta, as in the 162, the 165 and every class member;
(H2) kappa_C is fixed before the body's code is read, so it is also the
body continuation on `\x.x`;
(H3) on `\x.x` the result T is T'[kappa_C/kappa] with T' C-free: C reaches
the body's parse only inside its continuation. This is an interface
hypothesis, not automatic for a closed parser (Codex: a parser can route C
to a body worker through a second channel; a semantic counterdesign, not
a small one). It holds for the 162, the 165 and every class member, whose
reader frame is [c, j] with j = NEXT_c.
Then T' ->h `kappa X Y` with exactly two arguments, and `Y ->b N` with
kappa free. (By the lemma the hnf of kappa_C is C, `\a. C B` or
`\a b. C B b`, so a kappa-headed spine yields a C spine of arity two
exactly when it supplies two arguments; a kappa-headed Y gives a C-headed
instance or `kappa_C B1`, which is not N because `kappa_C B1 z =b C A z`.)
The APP-first continuation must receive the operand's code itself (it
exists only inside r).

**Consequences.**
1. A reader whose variable arm is a direct call of the parse's own
   continuation with an N-free rest -- `c r j`, refute46's 28-bit reader,
   14 bits under the 162's 46 -- fails for every choice of continuation and
   NEXT code meeting H0-H3: no internal continuation, value or NEXT can
   absorb the wrong remainder. Measured: int148_cjr.lam fails all 667.
2. Trailing junk after a direct return is fatal: `c X N Z` (the record's
   158 family, and `s I V' j` with the absorber-free 22-bit arm) gives
   `C A N Z` at the root body, whatever kappa is.
3. c being a lambda (k1, k2) buys nothing: whatever lambda it is (under
   H0), it forwards its second argument to C verbatim. A wrapper built in
   the reader (`\v n z. c v n`, or `\v _. c v N` once N is found) is just an
   absorber in another place, and such readers are ordinary class members.
4. Scope (corrected after review): the argument forces the rest
   component of the variable law for the actual run at the root body --
   with the actual NEXT substituted for j and c abstract -- not the class's
   rigid law with j rigid, and not for every unary length unless each depth
   has the same interface (H0-H3 for the innermost body continuation of
   `\x1..xn. x1`, probed by `\x1..xn.\y.W`; the 162 and 165 meet it). So
   the class's variable-law hypothesis is shown to be forced only in this
   weaker, actual-NEXT form. The value component is genuinely free (X need
   act as r only on cell environments and in App lifts) but worthless: for
   n >= 2, X must contain the deeper code r'', and the cheapest `c X` is
   `s (\q.c)`.

### Zero handoff (prompt Q3) -- handwritten pricing
In the shape `s I A B` the zero arm is `A b2 r2 B` and the variable arm
`A B`. By consequence 2 the variable arm can have no operand left over, and
`\s. s I A` (zero arm bare r) is not a parse result; so in this shape one
operand X follows the arm, the zero arm is `r X = X b2 r2`, and either X is
N-free (then the arm erases it: the 162's 6-bit absorber, or K at 7) or X
is stream-dependent (the dual-operand family: record 169 / 172, refute46's
>= 25-bit j/N operands). Other shapes, with j priced 0 and the
4-bit-per-lambda tax on NEXT's four free leaves:

| shape | zero arm hands NEXT | NEXT change | total weight vs 46 |
|---|---|---|---|
| `s (\b. b P c) (s s s)`, P = j | (r, r) | `\t _. t NEXT`, +17 | 55 (measured: 171 written, 166 polished) |
| same, P = `\u. j` | r | `\t. t NEXT`, +10 | 56 |
| same, P = `\u. u j` | (b2, r2, r) | eat a third argument, +19 | >= 54 |
| same, P = `\u r. r n`, n let-bound | (b2, r2) | none | 49 (the 165) |
| `s K j' (..)`, j' = `j s` | s | `\t. t F NEXT`, +18 | >= 59 |
| `s I A B C` | (b2, r2, B, C) | eat trailing arguments, +19 | >= 60 |

The 162's `r NEXT` is the only handoff that costs nothing beyond the shared
dispatcher; every alternative pays more than the 10 bits of interface tax
(absorber 6, depth 4) it could recover.

### Families that break H1 or H2 -- handwritten floors
- **Token rests** (all returns pass T with rest = T T Z; the variable
  arm's own s or r is a token): saves at most 9 (V = `\u. s (\q.c) s`,
  19 bits). Forcing is needed at APP-first (>= +13) and before C (root
  adapter >= +20, or a force in every ABS and APP return, >= +13 each).
  Floor >= 162 + 17. A token-accepting parser fails at NEXT's first parse
  for APP (r is a token for r2 only when b2 = 0).
- **Wrapped / head-safe values** (so a continuation may decode exp):
  wrappers at both constructor returns, unwraps at every value use, and C
  must get a genuine lambda; the record's K-guarded and boxed repairs
  measure 169-303. The variable rest would still have to be decoded as
  `exp exp t`, which no evaluator value survives.
- **Three-argument returns**: eta-forwarded junk accumulates one per leaf
  at APP-first or lands in the parser's stream slot; removing it costs a
  binder and shifts per continuation site (>= +8 each) plus a root adapter.
- **Look-ahead (H2)**: with a known variable, `k_var = \exp t. cont (Abs
  exp) (exp exp t)` does repair `c r j`, but both parse sites in NEXT then
  need a pre-dispatch (>= ~10 each) and their own k_var; >= 20 against 14.
  The record's measured member of this family is 177.

## 4. Honest read

The escape this lane was sent after does not exist in the form asked:
a variable arm that hands its continuation anything but the true N --
wrong, delayed, or with trailing junk -- fails for every continuation,
value and NEXT code once values are evaluator-style and constructor returns
forward (value, rest) (Lemma A). That is not a pricing result but an
impossibility under stated interface hypotheses (H0-H3: a stream-free
continuation fixed before the body is read, C reaching the body's parse
only through it, evaluator-style values with eta-forwarded constructor
returns), and it derives the rest component of the class's variable law
from the contract in its actual-NEXT form. The value component is
genuinely relaxed but worthless. The cheap readers that break the
variable law (the 28-bit `c r j`, w 32; the absorber-free 22-bit arm) are
therefore dead outright, not merely unrepaired.

What remains outside the class after this: (a) the zero handoff and NEXT
co-design -- every alternative to `r NEXT` I could price pays more than
the 10 bits of interface tax; (b) non-evaluator value representations
(code-suffix, boxed, K-guarded), all measured far above 162 in the record;
(c) the knot; (d) designs that break H0 or H3 -- a continuation that
captures the input suffix, or C routed to the body's parse by a second
channel -- which is the record's stream-using NEXT family (176-193, and the
+17 embedding of a whole interpreter). So a sub-162, if one exists, is most likely an ordinary class
member with a reader of weight <= 45 (the 947 open count profiles), not an
escape.

Next proof step, and the technique I would push: Lemma A works by probing
the interpreter with a program whose body diverges under evaluation
(`\y. W`), which forces every continuation to treat values as opaque data;
then Church-Rosser plus head-variable distinctness pins the data flow
syntactically, with no enumeration. The same opaque-probe argument should
derive more of the class from the contract: that the ABS continuation is
`\f t. C (Abs' f) t` for some value constructor, that APP-first parses its
second argument, and that NEXT's branch laws hold up to the value
representation. Done for all three, the conditional 146 / 162 bound would
rest only on representation choices (values, cells) and the knot rather
than on stated reader/NEXT laws.

## 5. Part II: which of the class's laws follow from the contract

Coordinator follow-up: start from syntactic separation only, add the
interface conditions that cannot be avoided, and settle the class's
semantic laws one by one. Details and every check: NOTES.md sections 9-19.
Review: Codex (astra, high effort, fresh thread `escape-derive`, reply in
derive_review_codex.txt). Verdicts: generalized Lemma A correct; Theorem B
correct-with-gap (keep the rest argument; C2 needed its own witness);
my first value-part witness broken; re-separation correct, with a
bookkeeping fix; the rigid/actual transfer argument broken, with a
counterexample. All corrections are folded in below, and the replacement
witnesses are battery-checked.

### 5.1 Hypotheses
- **Sep** (syntactic): E = T[H], H = `\p c. R[Q/j]` closed, T an opaque knot,
  FV(R) in {c, j}, FV(Q) in {c, p}; P the knot's parser, so
  `P c s =b R[Q_c/j] s` with Q_c = Q[P/p]. Because H is closed, C reaches
  any parse only through c, so Lemma A's H3 holds automatically under Sep
  (Codex's second-channel counterdesign is not separated).
- **Z** (zero arm, actual form): `R[Q_c/j] (cons K (cons b r)) ->b Q_c b r`.
- **C1** (control): with p, c, t rigid, `Q K t ->h p kA t`, `Q F t ->h p kF t`,
  kA and kF t-free (NEXT hands the stream it received to the parser once;
  the continuation exists before the body is read).
- **C2** (control): `kF x y ->h p k2[x] y`, k2 y-free.
- **RET**: the parse of the probe `\y.W` hands its continuation exactly
  (value, rest), the rest being the stream after its code, and the value
  closed (no N, no continuation).
- **VAL**: that value is v_W-like (a leading abstraction under at most one
  argument, unsolvable under two or more).

### 5.2 Law by law

| class law | forced? | hypotheses | evidence |
|---|---|---|---|
| variable law, rest part, every n | **yes**: the arm's result reduces to `c X Y`, Y ->b N, c abstract, j = actual NEXT | Sep, Z, C1, RET, VAL | Lemma A along `\x1..xn. x1`, probe `\x1..xn.\y.W` (5.3) |
| variable law, value part (`X =b U_(n-1)(N)`) | **no**; only "acts as U_(n-1) on cell environments" (canonical Abs) | -- | int_value_junk.lam: at n = 1 the value is `cons K NEXT`, not =b U_0(N) even with the actual NEXT: `208 bits ok=667 skip=1 fail=0` (my first witness, int_eta_value, was wrong: `\e. r e ->b r` because r is a lambda) |
| variable law with j rigid | **no**: the actual form does not imply it; whether the gap can pay is open | canonical NEXT | Codex's R*, int_rstar.lam: `228 bits ok=667 skip=1 fail=0`, rigid law fails at n = 1 (5.5) |
| zero law `R Z(r) = r j` | **no**: a choice of boundary, not a property of E | -- | int_zero_rr.lam split two ways (5.4) |
| ABS branch law | **yes** in the form `kA x y ->b c A_K[x,y] y` (rest forwarded, p := P); rest-free constructor not derived | Sep, Z, C1, RET, VAL | Theorem B1 (5.3) |
| APP branch law, second operand | **yes** in the form `k2[x] z w ->b c A_2[x,z,w] w` (p := P) | Sep, Z, C1, C2, RET, VAL | Theorem B2 (5.3) |
| APP branch law, first operand (C2) | **no**, even given C1, RET, VAL | -- | int_c2_direct.lam keeps C1 and returns from kF at once, parsing the second operand twice: `194 bits ok=667 skip=1 fail=0` |
| C1 itself | **no** | -- | int_double_parse.lam (direct-style NEXT, two parses per operand): `265 bits ok=667 skip=1 fail=0` (polished 241) |
| RET / VAL | **no** | -- | the record's 3-argument and rest-first protocols (214), boxed values (265/303), code-suffix values (273) |

### 5.3 Theorem B: NEXT's data flow and the variable rest
Status: the head-variable steps are kernel-checked; the hypothesis
plumbing (Z, C1, C2 and RET producing each instance) is handwritten.
Lemma A and its two-argument corollary are in the Codex lane's
tmp/round4/probelean/Probe.lean. The two-slot generalization is mine,
appended in Slots.lean (reflect_remainder_k, lemmaA_context_k,
lemmaA_two_slots), and compiles cleanly (exit 0, no sorry; axioms
propext, Classical.choice, Quot.sound; log in Slots.log).
**Generalized Lemma A.** If kappa has free variables C and value slots
x1..xm and `kappa v_W .. v_W v_W N =b C X N`, then
`kappa x1..xm z w ->b C A w` (heads x_i and z give probe instances, which
are never C X N; the rest of the proof is Lemma A's).
**B1 (ABS).** Program `\x.\y.W`: Z and C1 reduce the run to
`P kA[C] (<\y.W> ++ N)`, and RET + VAL hand kA the pair (v_W, N). Lemma A:
`kA x y ->b c A_K[x,y] y` with c rigid and p := P. C3 is not needed:
the returning head is derived.
**B2 (APP, second operand).** Program `(\y.W)(\y.W)`: Z, C1, RET, C2, RET
give `k2[C, v_W] v_W N =b C (..) N`; with the generalized lemma,
`k2[x] z w ->b c A_2[x,z,w] w` for x abstract.
**B3 (APP, first operand).** C2 is not derivable: kF may read the next
operand's code itself, or return immediately with nested parses
(int_c2_direct.lam, which keeps C1). Codex's second witness: kF[f] y :=
H0 p (\g. c App(f,g)) y, the unfolded canonical generator, heads on y with
p rigid and is correct by structural induction.
**Conclusion** (wording per the Codex review). `Q_P K t =b P kA t` and
`Q_P F t =b P kF t`, with
`kA x y ->b c A_K[x,y] y`, `kF x y ->h P k2[x] y` (C2), and
`k2[x] z w ->b c A_2[x,z,w] w`.
So both branch laws' data flow is forced: the rest is forwarded verbatim
and the value goes to c through a constructor. The class's literal laws
are recovered only after two further steps that are not derived:
(i) rest-independence of the constructors, which would allow eta to
`\f. c Abs'(f)` (the probes make A_K[v, N] N-free on their instances,
which says nothing about abstract values); and (ii) rigid p. Rigid p is
not forced, since kA may call p and behave correctly only with the real
parser; this is the NEXT-side copy of the rigid-j gap. Witness:
int_rigid_p_gap.lam returns from ABS through
`p (\v r. c Abs(f) r) (cons F (cons K t))`, a fake code `10 ++ t` that the
variable law turns into a no-op skip: `222 bits ok=667 skip=1 fail=0`.
**Variable rest, every n.** For `\x1..xn. x1` the innermost body
continuation is kA^n[C], whose only free variable is C; the probe
`\x1..xn.\y.W` meets Lemma A's hypothesis. So on U_n(N) the variable arm,
with c abstract and j the actual NEXT, reduces to `c X Y` with Y ->b N, for
every n >= 1. In APP-second position the rest is forwarded verbatim (B2),
so it is again N. In APP-first position C2 parses the rest, so it is
forced only up to stream equivalence (`\f. N f` also works).

### 5.4 (b) The zero handoff: re-separation (handwritten, exact bookkeeping)
**Lemma R.** Let R have exactly one source occurrence of j (substitution
hygienic), and let Q = A[Q0/h] with FV(A) in {c, h}, h occurring once.
Then H = `\p c. R'[Q0/j]` with R' = R[A[j/h]/j]. Both splits expand to the
same source tree, so 24 + |R[Q/j]| = 24 + |R'[Q0/j]| = 116 + w(R') whenever
Q0 is a 92-bit canonical NEXT. (Codex: the intermediate
`cost(R') = cost(R) + cost(A)` I first wrote is false in the frame
convention, since A's free c leaves shift by d * #c(A) under the reader's
binders. The identity follows from the identical trees instead.)
So the boundary between reader and NEXT is a choice, and the class's zero
law is a normalization of that choice. int_zero_rr.lam (171 bits, passes)
is one term with two splits: R1 = `\s. s (\b. b (\t w. t j) c) (s s s)`
with the canonical Q meets `R Z(r) = r j`; R2 = `\s. s (\b. b j c) (s s s)`
with Q2 = `\t w. t Q` has `R2 Z(r) = j r r`. My first report counted it as
"NEXT eats the duplicate"; under Lemma R it is simply a class member of
weight 55.
**The bound over all handoffs.** For every factoring split (NEXT = A[Q0],
A p-free with one hole), the handoff G[r, j] := R Z(r) composed with A is
the composite reader's zero branch, and |E| = 116 + w(R[A/j]); the class
bound applies to R[A/j] as soon as `G[r, A[j]] =b r j`. So
"116 + w over all handoffs" is the class bound itself, with w computed on
the composite reader. What the contract constrains is boundary-free: C1
applied to the composite, `R[Q_c/j] (cons K (cons b2 r2)) ->b P k_b2 r2`.
**Not covered:** non-factoring splits, where no subterm is a canonical-law
NEXT as a function of the handoff (for instance a b2 dispatch interleaved
with the reader's own); the record's members of that kind (both tag bits
read before dispatch, 193) are far above 162. Open in general.

### 5.5 (d) Rigid j versus the actual NEXT
- **The record's examples meet the rigid laws.** Checked with
  refute46/rd.py (j, c rigid, n = 1..3; dcheck.py):
  `s I (s (\q.c)) (s (\b. b (\u.j) (s s)))` w 58, the 172
  `s (\b. b I c) (s (\b. b (b j) (s s)))` w 56, the 176
  `s I (\u. u (s s u)) (s (\b. b (\u.j) c))` w 62, the 169
  `s I (s (\q.c)) (s K j (s s s))` w 53. They are class members
  (116 + w less hoisting: 172 / 172 / 176 / 169), not gap examples;
  class-bound.md s5 files them under "reader laws only for the actual
  NEXT", which should be corrected.
- **A genuine actual-only identity** (computer-checked, skipper.py; Codex
  confirmed and generalized it): with J = `\x y z. z`, `Q_c J =b P F`, so
  `Q_c J U_k(N) ->b F U_(k-1)(N) N ->b N` for every k >= 1 -- the parser with
  continuation F is a skipper -- while for k = 0 the whnf is N-headed. With j
  rigid the term is j-headed.
- **The rigid/actual transfer I argued is refuted** (Codex). Its
  counterexample R* = `\s. s I (\u. s (\b r. c (r (\d t. d (\f. f K (u J s)) r)))
  (s s u)) j` calls j on the original s: the inner run takes the same path,
  but its continuation F discards the value that holds the recursion and
  keeps the j-free rest `s s u`. So `Q_c J s ->b N`, the n = 1 value is
  `cons K N = U_0(N)`, the actual law holds for every n, and the rigid law
  fails at n = 1 (`c (cons K (j J U_1(N))) N`). As a full interpreter,
  int_rstar.lam: `228 bits ok=667 skip=1 fail=0`. My regress claim ("a
  call on s re-enters the same arm, so no hnf") is false when the inner
  continuation discards the regressing part. And `(s F) F` gives N at
  n = 1 but U_0(N) at n = 2, so j-free N computations need not be uniform.
- **What survives:** the two failed skipper readers (batteries):
  int_skip_s.lam, N taken from `j J s`, regresses (`167 bits ok=0 skip=1
  fail=667`); int_skip_r.lam, N from `j J r`, misparses at U_0
  (`175 bits ok=0 skip=1 fail=667`). So, argued only (not proved), the rest cannot come from j: of the
  inner parse's outputs `A (c ABS(X')) (P ..) Y'` only Y' can carry N, and Y'
  is the inner instance of the same rest. The value can come from j, as R*
  shows. The gap is real, and whether it can pay is **open**. R* weighs
  112, so it is no size threat. A proof would need to price the cheapest
  j-dependent value, not exclude it.
- **Zero arm:** I argued (NOTES s.16) that every non-rigid handoff costs
  more than `r j`. That argument is of the same informal kind and should
  be treated as unproved.

### 5.6 What the conditional 162 theorem now rests on
The class's hypotheses split three ways:
1. **Derived from the contract** under Sep, Z, C1, C2, RET and VAL: the
   rest part of the variable law at every length (with the actual NEXT),
   and the data flow of both branch laws -- the rest forwarded verbatim
   and the value passed through a constructor (Theorem B).
2. **Normalizations, not constraints**: the zero law (Lemma R: for
   factoring NEXTs a split meeting it always exists, at the same size).
3. **Genuine hypotheses, each violated by a correct interpreter**
   (battery-checked): C1 (int_double_parse, 265, polished 241); C2 given C1
   (int_c2_direct, 194); the exact value part of the variable law
   (int_value_junk, 208); rigid j (int_rstar, 228); rigid p
   (int_rigid_p_gap, 222). From the record: the two-argument return
   protocol and evaluator values (214, 265, 273, 303). The widen lane
   owns the value constructors and cell, NEXT normality, and the knot.
None of the item-3 witnesses is small, so none threatens 162. But each
shows that a hypothesis the Lean bound uses is not implied by the
contract. The rigid forms (rigid j in the reader, rigid p in NEXT) are
the remaining gap between item 1 and the Lean theorems: real in both
places, with no price known for either.
So the honest restatement: **every interpreter that is syntactically
separated, CPS in the sense of C1/C2, two-argument-return with evaluator
values, and whose reader and NEXT meet the laws in rigid form, costs
116 + w(R) >= 146, and 162 is optimal there iff w >= 46.** The reader laws'
rest part and NEXT's data flow are no longer assumptions. The control
flow, the representation and the rigid forms still are.
**Boundary-free form.** None of the derivations uses the split itself:
replace Z + C1 by the composite law C1*, `P c (0 b ++ r) ->b P k_b[c] r`
with k_b built from c and P only, and C2 by `k_F[c] x y ->h P k2[c,x] y`.
Then Theorem B and the variable rest hold for any interpreter whose
recursion goes through one closed parser P. Separation enters only through
the cost accounting (116 + w), which is where Lemma R makes the
reader/NEXT boundary a free choice.
