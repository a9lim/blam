# depth02 lane notes (round 4)

Lane: reader bound w >= 46 at hole depths 0, 2, 3, 4 (class of class-bound.md).
w = cost + 4d = 2L + 4V - 4 + X + 4d (V leaves incl. j, X index sum of non-j
leaves, A = V - 1).  Checker rd.py (copied from refute46), n = 1..3 probes.

## 0. Exact budgets (handwritten arithmetic)

d=3: w<=45 iff 2L + 4V + X <= 37, L >= 3 (three lambdas above j).
     V=5: 2L+X<=17;  V=6: 2L+X<=13;  V=7: (L,X) in {(3,<=3),(4,<=1)};  V>=8 impossible.
     cost(R) <= 33.
d=4: 2L + 4V + X <= 33, L >= 4.
     V=5: (4,<=5),(5,<=3),(6,<=1);  V=6: (4,<=1);  V>=7 impossible.  cost <= 29.
d>=5: 2L+4V+X <= 29 - 4(d-4)... with L>=d: d=5 needs 4V <= 19-X-... -> V<=2: impossible
     (consistent with the recorded 'depth>=5 already has w>=46').

## 1. The depth reduction needs a consistent minimality order (handwritten) -- FLAG

STATE46/reader30 s4-5 reduce d>=2 to d in {0,1} plus the d=2 "strip" by
hoisting.  The d=0/d=1 count rows (and prove46's removals) are derived for a
*minimum* counterexample (no erasing redex, V>=f+5 for app roots, the
contraction tie-breaks).  Hoisting a d=2 reader R gives H(R) with
w(H(R)) = w(R)+f > w(R): H(R) is a counterexample but never a minimum one
(it contracts to the lighter R).  So minimality-based d=0 exclusions never see
it, and a d=2 counterexample with w+f<=45 escapes both the d=0 rows and the
strip.  The reduction is valid only if the eventual d=0 closure is
minimality-free, which the existing d=0 rows are not.

Consistent repair, order (w, L, d) lexicographic (prove46's order):
 - d>=5: impossible (budget).
 - d=4: V<=6, so f<=2; w(H)=w+f-6 < w: not minimal.  CLOSED.
 - d=3, f<=2: w(H)=w+f-3 < w: not minimal.  f>=4 impossible (budget).
   d=3, f=3: w(H)=w, L(H)=L+1 -> H is NOT preferred under (w,L,d).
   This case survives; budget pins it to ONE row:
   lambda-rooted (app-rooted needs V>=f+5=8>7), L=3, V=7, X=3, f=3, w=45.
 - d=2: hoisting increases w for every f, so EVERY d=2 row with w<=45 must be
   closed directly (not only the strip w+f>=46).
(Under order (w,d,L) instead, d=3 f=3 is excluded by hoisting, but prove46's
equality cases "at equality, the minimum lambda count" break, since a
linear contraction with j in the argument increases depth.)

## 2. d=3 f=3 row closed (computer-checked, complete)

rowgen.py: exhaustive generator for a pinned (d,L,V,X,f,root) row (memoised
binary trees + lambda runs + every leaf index), count cross-checked against an
independent cost DP (validate_rowgen.py: 34,320 = 34,320; also matches on three
large rows).  Checker = jn's dbn.py normal order, fuel 3000, exact nf equality,
validated by PASS on the 162 reader, refute46's d=3 reader (54), the 165's d=4
reader (54), its hoist (49) and the K-reader (53) (known.py).
Row d=3 L=3 V=7 X=3 f=3 lam (w=45): 34,320 terms, 34,302 fail zero law,
18 fail n=1, 0 fuel caps -> no reader.  0.3 s.
Extended (rows.py 3 3 6,7 lam,app run): every d=3, f=3 row, both roots,
V in {6,7} (V>=6 is Lean reader_nonlinear: >=2 bound leaves + j + 3 c; V>=8 is
over budget), all L, X with w<=45: 36 rows, 879,944 terms, 0 hits, 0 fuel
caps, 4.1 s.  **Result A: no weight-minimal counterexample has d>=3**, for any
tie-break: d=4 and d=3,f<=2 hoist strictly lighter (Lean identity), d=3,f=3
has no reader at all (complete check, minimality-free).

## 3. Hoisted d=0 forms need deep readers at RELAXED budgets (handwritten) -- FLAG

A minimum d=0 counterexample R* = (lambda a. B) j with a linear at depth D in B
contracts to R' = B[j/a] at depth D, w(R*) = w(R') + 6 + f - 3D.  D<=2: the
contraction is lighter-or-equal with one fewer lambda, so R* is not minimal.
D>=3: R* is a genuine d=0 candidate and R' is ANY reader (not nec. minimal)
with w(R') <= 39 - f + 3D, i.e. cost(R') + D + f <= 39.
So closures of deep readers "at w<=45" (Result A, jn's taxed s-spine
families) do NOT close the hoisted d=0 family: e.g. a d=3,f=1 reader of
weight 47 or a d=4,f=1 reader of weight 50 hoists to w=45.  The right target
for depth >= 3 is
    (T3)  cost(R) + d + f >= 40  for every reader with d >= 3
(165: 38+4+1 = 43 -> hoisted 49;  refute46's d=3: 42+3+1 = 46).
d=3,f=3 is already done by section 2 (cost <= 33 <=> w <= 45).
Size of T3 (count_t3.py, counts only, V >= f+3 from Lean nonlinearity):
49.2M terms over d=3..8 (d=3,f=1 cost<=35 is 29.5M).  Too big for a blunt
pass; next step = rigorous local filters valid for R* = H(R') minimum:
 F1 j never in function position (any reader: (j X) persists, r j has none);
 F2 no c-headed spine containing j (any reader: residual stays under c);
 F12 lambda-rooted R' has a non-lambda body (any reader);
 F7/Fd every source redex of R' has delta_{R*} > 0, or = 0 without losing
     lambdas, where delta is the exact weight change of contracting it inside
     R* (a = j counted as an ordinary bound leaf): else R* is not minimal
     under (w, L, d).  Includes all erasing redexes.

## 4. Result B: lambda-rooted hoisted-linear d=0 family closed (computer-checked)

R* = (lambda a. B) j minimum (order w,L,d), a once at depth D>=3 in B, B
lambda-rooted; R' = B[j/a].  Budget cost(R')+D+f <= 39.  Filters F1, F2, F12,
Fd (sound for this R*: every redex of R' is a redex of B inside R*, j counted
as the bound leaf a), V >= f+3 (Lean nonlinear), X >= f.
gen.py streaming generator; validated: the 165's row (D=4,L=4,V=8,X=2,f=1)
-> 60,569 filtered terms, exactly one hit = the 165 reader; refute46's d=3 row
(3,3,9,4,1) -> 929,948 terms, exactly one hit = its reader (t3val.py).
t3all.py over D=3..8, f=1..4: 426,290 filtered terms, 0 hits, 487 zero-law
fuel caps, 8.6 s.  capcert.py: 481 caps have jn's head-cycle certificate
(no_beta_eq_cert2); the other 6 have a vacuous root lambda (s unused), so
R Z(r) -> M with r not free: never r j.  -> NO lambda-rooted R'.
So no minimum counterexample is (lambda a. lambda s. M) j with a linear deep.

## 5. App-rooted R' in the hoisted family (computer-checked, D=4..9 done)

R* = C'[(lambda a. B) j] at depth 0, R' = C'[B[j/a]] app-rooted.  Budget:
cost(R') + D + F_S0 <= 39, F_S0 = c's in the first lambda S0 on j's path
(B contains S0, so F_B >= F_S0).  gen2.py: Fd restricted to redexes that are
j-free or at depth >= 1 (exactly the redexes of R' that are redexes of R* with
unchanged delta); redexes on j's depth-0 path are exempt.  V >= f+3, root head
must be a lambda.  Filtered family: 2,798,914 terms (D=3: 2,037,192).
D=4..9 (t3app_D4up.log): 761,722 terms, 0 hits, 443 zero caps, 439 with
head-cycle certificates; the 4 others are G-towers: G = \y. y (\w. y w J)
(J a closed-over-j constant): G A -> A H(A), H(A) = \w. A w J, so
G H^k(G) J^m ->+ G H^(k+1)(G) J^(m+1): infinite head reduction, no nf
(one of them erases the stream outright: (\x y. B) c Z with y vacuous).
D=3 app-rooted: run split into chunks (first monolithic run took 176 s --
over the 2-min rule, my error; certificates were the slow part).  f>=2:
800,162 terms, 0 hits, 470 zero caps all certified (77 erasure E: a
head-reduct of R Z(r) has lost r or j; 393 head-cycle).  f=1, V<=5: 208,160
terms, 0 hits, 0 caps.  f=1, V=6: 491,806 terms, 0 hits, 277 caps: 168 E, 108
cycle, 1 by hand: (\x. x (\y. x)) Q with Q = \x. x c (\y. x (\z. j)):
"Q-tower", Q W_k Z ->+ Q W_(k+1) Z with W_(k+1) = \y. W_k J, W_0 = \y. Q,
infinite head reduction (the stream is never consumed).
f=1, V=7: 462,373 terms, 0 hits, 1,889 caps (6 per-term alarms = exponential
blow-ups): 456 E, 2 U (unary nf computed and wrong), 1,383 cycle, 48 left;
f=1, V=8: 74,691 terms, 0 hits, 620 caps all certified (88 E, 532 cycle).
The 48 left (and the 5 hand-certified towers above, re-encoded) are refuted by
blam's escalation engine: `blam adjudicate --file --no-oracle` on
\c j r. R (cons K r) gives DIVERGE bb-engine for all (encoding validated:
the 165's zero instance HALTs with nf = \c j r. r j, 13 bits; Omega DIVERGEs).

**Result C (computer-checked).** No minimum counterexample (order w,L,d)
has j as the argument of a linear lambda at depth 0, for either root of the
contracted reader: lambda-rooted R' 426,290 terms, app-rooted R' 2,798,914
terms, D = 3..9, every row of cost(R') + D + F_S0 <= 39.  D <= 2 is excluded
by the contraction delta 3D-6-F_B <= 0.  Combined with Result A this closes
all of depth >= 3 and the whole hoisted-linear part of depth 0.
Remaining at d=0: j let-bound and duplicated ((\a. B) j, a >= 2 times), and
j after a profitable top-level let ((\y. P) Q1..Qm j.., y nonlinear with a
large closed Q1, or linear with (c_Q1 - 1) D_y >= 7 + c_P).

## 6. Depth 2, whole family (in progress)

Because of section 1, the minimum counterexample at d=2 must be excluded for
EVERY w <= 45 (cost <= 37), not just the strip.  gen3.py = gen.py with Fd in
the reader's own frame (true weight change, j taxed 4 per binder): sound for
the minimum R itself.  Rows: d=2, all f (f<=3 is a handwritten minimality
fact; not used), V >= f+3, L >= 2, X >= f (lam) / >= 0 (app), w <= 45.
Generator completeness validated (genval.py): on six rows the streamed set
equals {unfiltered rowgen terms accepted by the local filters} exactly
(e.g. (2,3,6,3,1): 45,548 -> 2,418 = 2,418), and both the 162 reader and the
53-weight K-reader pass gen3's filters.
Filtered d=2 lambda-rooted family: 2,658,273 terms (f=1 1.81M, f=2 667k,
f=3 156k, f=4 22k, f=5 3.3k).
d=2 lambda-rooted RESULT (runfam.py d2lam, chunks <= 14 s each): 2,658,273
terms, 0 hits, 6,981 caps, all certified (certify_all.py): 3,065 erasure E,
3,901 head-cycle, 13 unary nf wrong, 2 unary hnf certificate.
**Result D: no minimum counterexample is lambda-rooted at depth 2 (any w<=45,
any f).**  Includes the whole strip rows and the non-strip rows of section 1.
Near-miss found on the way (zero law holds, unary fails; w=45, d=2):
  \s. (\x. x x) (\x. s x (x x c) j)
W W -> s W (W W c) j; on zero W K r .. -> s K (K K c) j r .. -> K r (W W c) j
-> r j.  The bit is fed back into W ("self-application dispatch").  On unary
it gives c F U'' j ...: wrong arity.  Logged for the constructive side.

## 7. Depth 0 beyond the hoisted-linear forms (handwritten structure)

For a minimum R* (order w,L,d) at d=0:
 (a) j's parent is an application X j with X at depth 0, closed over c; X's
     spine head is a lambda (F2 excludes c, F1 excludes j).
 (b) X = \a. B with a linear: Result C.
 (c) X = \a. B with a used k>=2 times ("let-bound j").  COPY LEMMA: exactly
     one copy a_1 survives the zero run; every other copy is erased in the
     zero run and in every unary run.  Replacing an erased copy at depth t>=1
     inside B by the index-0 bound variable at its position replays both
     reductions unchanged (the replaced leaf's residuals are erased by the
     same steps) and lowers the weight by t.  Hence in a minimum: every
     non-surviving copy lies at depth 0 in B (not under any lambda of B), so
     B is app-rooted (a lambda-rooted B forces k=1, i.e. case (b)); no copy is
     in head position; and no copy is a direct argument at a binder position
     of a literal lambda-chain spine (contracting/permuting that variable
     argument has delta = (k_y - 1)*idx - 6 - F < 0).
 (d) X = (\y. P) Q1..Qm, m>=1: j is a later argument after a j-free head redex
     that must satisfy Fd (a profitable let: nonlinear with a sizable closed
     Q1, or linear with (c_Q1 - 1) D_y >= 7 + c_P).  If the head is a lambda
     chain long enough to bind j, permuting that binder outermost turns (d)
     into (b)/(c) at weight change m*k_a - (refs crossing) + c_Q.
(c) and (d) are the open d=0 remainder: they are exactly "shared code" lets.
d=2 app-rooted RESULT (gen3 filters): 573,276 terms, 0 hits, 11,057 caps:
f>=2 caps 2,051 (1,939 cycle, 84 E, 28 blam DIVERGE); f=1 caps 9,006 sent
straight to blam (8,985 DIVERGE bb-engine, 21 UNKNOWN re-certified by the
Python certificates at larger budgets: unknowns.py).  0 left.
FILTER CORRECTION (found while checking soundness): gen3's Fd must exempt a
redex whose binder is used >= 2 times and whose argument contains j --
contracting it duplicates the source j, leaving the class, so minimality
says nothing.  (gen/gen2 work in R*'s frame where j = a is a bound
variable, so duplication there is legal: no correction needed.)  gen3b.py
has the corrected rule; runfam_b.py rechecks every d=2 term that contains
such a redex (473,303 lambda-rooted; superset of the newly admitted ones).
Recheck with gen3b (terms containing an exempt redex): lambda 473,303,
app 317,487 terms, 0 hits; 9,444 caps -> blam 9,420 DIVERGE, 24 UNKNOWN ->
Python certificates clear 23, the last is a G-tower by hand:
(\x. x x (c c)) G, G = \x. x (\y. x y j): G H^k(G) S ->+ G H^(k+1)(G) j^k S.
**Result D (final): no minimum counterexample (order w,L,d) at depth 2, any
root, any f, any w <= 45.**  Total d=2 coverage: 2,843,684 lambda-rooted +
(573,276 + new) app-rooted filtered terms, every one refuted.
(Coverage gap fixed: the first d2lam run omitted V=10 at f=1; runfam_full.py
d2lam 1 10 with gen3b: 0 terms survive the filters.  All other (f,V) with
w<=45 were in the runs.)

## 8. Result E: let-bound j at depth 0 closed (computer-checked)

Copy lemma (section 7c) + one more step: replace the k-1 dummy copies by c
(+1 bit each, replay argument) to get R° = C'[(\a. B°) j] with a linear;
contracting gives weight w(R*) - 6 - c_B + 3D, so D <= 2 is lighter (c_B>=1)
or equal-weight with one lambda fewer (c_B=0, D=2): excluded.  So the
survivor sits at depth D >= 3 and the dummies are depth-0 non-head leaves.
gen4.py generates R'' = C'[B[j/a]] with every copy a rigid j (one at depth
exactly D, dm dummies at depth 0), filters as gen2 (F1/F2 hold for dummies
too: a dummy in head position or inside a c-spine sits in a doubly erased
subterm with >= 2 leaves, replaceable by one leaf).  Budget
2L + 4V + X + D + F_S0 <= 43 (k=1 gives Result C's budget).  Completeness
validated on 3 rows (genval4.py, independent unfiltered generator).
Run (runfam4.py, chunks <= 16 s): D=3..9, dm=1..5: 1,403,876 terms, 0 hits,
507 caps, all DIVERGE bb-engine.
**Result E: no minimum counterexample has j as the argument of a nonlinear
lambda at depth 0.**  With Result C: j is never the direct argument of a
lambda at depth 0 in a minimum counterexample.
Open d=0 remainder = case (d): j is a later argument of a lambda-headed spine
after a profitable j-free let, (\y. P) Q1..Qm j ..., m >= 1.

## 9. Case (d) size (not closed)

d0count.py / d0swap.py (gen3b own frame, app-rooted, j at depth 0):
filtered d=0 family 190k / 625k / 2.03M at w <= 33 / 35 / 37 (x3.3 per 2
bits).  Case (d) (j's parent's function part is an application):
19.6k / 66.3k / 226.9k.  CHAIN SWAP: if the let's head lambda-chain binds j,
(\y1..ym a. P') Q1..Qm j  ==  (\a y1..ym. P'') j Q1..Qm, weight change
m*k_a - n_y (k_a uses of a, n_y uses of the y's); <= 0 turns R* into a
case (b)/(c) minimum (Results C/E: none).  At w <= 37 this removes 21,578 of
22,418 chain-type (d) terms; 204,472 are "short-chain" (P not a long enough
lambda chain, e.g. (\y. y B..) Q j).  Extrapolated (d) at w <= 45: ~2.5e7
terms -- beyond a pinned check; left open.
