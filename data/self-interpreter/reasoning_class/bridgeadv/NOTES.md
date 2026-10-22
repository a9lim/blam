# bridgeadv lane notes (round 4): cheap readers whose source is not an s-spine

Read: BRIEF.md, class-bound.md, jn/NOTES.md, close46/REPORT.md, share46/REPORT.md.
Checker: rd.py (n = 1..3, w = cost + 4 depth(j), frame [c, j]).

## 0. Let accounting (handwritten, exact)

Source redex (λx. B) A at some site; x used k times in B, use i under m_i of
B's own λs; f_A = number of leaf occurrences in A free in A (pointing above
the redex); T = number of non-x leaves of B pointing above λx, plus 4 if the
j leaf is inside B.  Contracting the redex changes the weight by

    S = (k-1)|A| + (f_A - 1)·Σ m_i - 4 - 2k - T          (j not in A)

(|A| measured at the redex site).  S <= 0: contracting does not raise w, so
a minimum counterexample may be assumed free of that redex (when contraction
creates no worse redex).  Only S > 0 lets are "sharing that pays".
k = 1 (linear): S = (f_A - 1) m_1 - 6 - T  (this is the hoisting identity's
family; pays only for big f_A at deep sites).

Check of the formula (rd.py): share46's D-let reader
`\s. (\h. s (h F) (\u. s (\q. c) (h s u))) (\x. x x) j` w=68; here k=2,
|A|=8, f_A=0, m=(0,1), T=4 (s, s, c, s in B): S = 8 - 1 - 4 - 4 - 4 = -5;
contracted `\s. s ((\x. x x) F) (\u. s (\q. c) ((\x. x x) s u)) j` w=63. OK.

## 1. Reduction lemmas (handwritten, exact)

L-lin.  k = 1 and m_1 = 0 (use at B's top level): S = -6 - T < 0.  Every
  linear head redex (\x. x B1..Bk) A or let used once at top contracts with a
  saving of at least 6 bits.  Renaming lets (A a variable, e.g. (\x.M) s):
  |A| = 2+i, f_A = 1, S = (k-1)(2+i) - 4 - 2k - T < 0 always.
L-push.  Let (\x. s B1..Bk) A C.. sit at the top of a reader body with x
  occurring in exactly one spine operand Bi.  Then
  s B1 .. ((\x. Bi) A) .. Bk C.. has weight <= the original: A and Bi keep
  their depths, every outer leaf of the other operands loses one index
  (and j loses 4 if it was in one of them).  So such a let is an operand
  redex, covered by any "all operand shapes" closure.
L-contract.  If j is not in A (or k = 1) and S <= 0, contracting gives a
  reader (still one source j) of weight <= w.
L-jdup.  If j is in A and k >= 2, contraction leaves the class (two j's),
  so these lets need their own argument.  Call them j-carrying lets.

So the bridge's real gap, for a top-of-body let, is exactly:
  (G1) x in >= 2 distinct spine operands (or in the head and an operand),
       with S > 0, j not in A;
  (G2) j-carrying lets (j in A, k >= 2).
Lets inside one operand are operand shapes; lets above \s are non-lambda
roots (section 4 below).
(Caveat on L-push: pushing into the first operand B1 makes A1 a redex,
which jn has NOT closed; pushing into B2.. is covered.)

## 2. Shared lets over jn's s I family (handwritten, uses jn §5)

TL-I: R = \s. (\x. s I B2 B3) A with x in B2 and B3.  (Trailing-arg
variants: (\x. s I B2) A B3 has x only in B2 -> L-push; (\x. s I B2 B3) A j
is k = 4 -> zero gives r B3' j, dead.)  Zero gives r B3', so j is in B3 or
in A (never only in B2).

(i) j in B3 (not in A).  w = 27 + |A| + |B2| + |B3| (|B3| taxes j 4 per
  own lambda), so |A|+|B2|+|B3| <= 18.  T = 5 + n_B (head s, j, plus every
  s/c leaf of B2,B3).  With x under m2, m3 own lambdas, |B2| >= 2 + 3 m2,
  |B3| >= 4 + 3 m3, hence |A| <= 12 - 3M (M = m2+m3).  S > 0 needs
  |A| + (f_A - 1) M > 13 + n_B >= 13, i.e. (f_A - 4) M > 1: f_A >= 5 free
  leaves, so |A| >= 5*2 + 4*2 = 18 > 12 - 3M.  Contradiction.  So S <= 0,
  L-contract gives a reader \s. s I A2 A3 with w <= 45, contradicting jn §5.
  CLOSED (handwritten; inherits jn §5's n=1..3 probe caveat).
(ii) j in A (j-carrying).  w = 23 + |A| + |B2| + |B3|, budget 22.
  W = (\x. B2 B3) A is a unary core (one source j, j untaxed by \x) of cost
  6 + |A|+|B2|+|B3| <= 28; jn §6 (cores through 22 bits: only
  s (\q.c) (s s j)) gives |A|+|B2|+|B3| >= 17.  Window 17..22 open here.
  General k for (i): |B2|+|B3| >= 4k - 2 + 3M, so |A| <= 20 - 4k - 3M and
  S <= (k-1)(20-4k-3M) + (f_A-1)M - 9 - 2k - n_B:  k=2: -1 + (f_A-4)M (dead,
  as above); k=3: 1 + (f_A-7)M, alive only at M=0, n_B=0, |A|=8, B2/B3 made
  of exactly three x's and j; c must then be in A, and the only 8-bit term
  over [s,c] containing c is `c c` -> zero gives c-headed junk, dead;
  k>=4: S < 0.  So TL-I(i) is closed for every k.
  (ii) CLOSED, computer-checked: eng/tl_i2.py (all shapes; A over [s,c]
  with one j taxed 4/own lambda, B2,B3 over [x,s,c] j-free, x optional).
  BUD 22 (= w <= 45): 39,747 (A,B3) pairs, 706 pass the zero filter, no
  reader; 5 zero-law fuel caps, all genuinely divergent (B3 = Omega or
  \.Omega; A = Delta-like with B3 = x x).  0.2 s.  Same at BUD 26 (w <= 49):
  no reader, 2.4 s (133 caps there, unaudited, beyond budget).
  Validation: the hoisted 162 \s. (\x. s I V' x) j (Sigma = 34, w = 57)
  passes the same zero/unary functions.
  (iii) j trailing: (\x. s I B2 B3) A j is k = 4: dead.
=> Every top-of-body let over an s I spine has w >= 46 (n = 1..3 probes).

## 3. The general top let is as big as the reader space

j trailing: R = \s. (\x. B) A j, w = 12 + |A| + |B|.  With
|B| >= 4k - 2 + 3M + 5 n_B the S > 0 bound at k = 2 is only
S <= 19 + (f_A - 4) M - 6 n_B: no contradiction.  Extreme case B = x x:
R = \s. (\x. x x) A j, reduct \s. A A j, w = 18 + |A|, S = |A| - 8, so
A up to 27 bits.  This "self-application family" is the purest
"cheap to share": the reduct is two copies of A.

Self-application family, partial (computer, eng/delta.py, all shapes):
`\s. (\x. x x) A j`, A j-free over [s,c]: through |A| = 21 (w <= 39) 59k? A,
832 pass zero, no reader, 24 uncertified zero caps (\x0. x0 (..x0..) Delta
shapes), 43 s; |A| = 23 exceeds the 2-minute rule (killed).  Mode j-in-A
(`\s. (\x. x x) A`, w = 16 + |A|) through 21: no reader, 1.4 s.  Brute force
cannot reach the w <= 45 budget (|A| <= 27 / 29): needs reasoning.
Note dbn.py patched (my copy): size cap checked every 4 steps, not 64
(self-application blew up exponentially between checks and hung).

## 4. Unary-core catalogue through 28 bits (computer-checked, eng/cores2.py)

jn §6's core lemma extended: every T over [s,c], one j (top or taxed 4 per
own lambda), all shapes, with T[U_n] = c U_(n-1) N (n = 1..3): 2,598,873
terms through 28 bits, 67 cores, 0 uncertified fuel caps, 19.1 s
(`cores28.log`).  Sizes: 20 (one: s (\q.c) (s s j)), 24 (2), 25 (3: incl.
c (s F) (s s j)), 26 (14), 27 (20), 28 (27).  NOTHING at 21, 22, 23.
Every core erases j either inside the argument of `s s` (s s j, s s (j X),
s s (X j), s s (\.j), ...) or by an erasing redex applied to j
((\x0. s) j .., (\x0 x1. c) j, (\x0. s C1) j ..).  Zero values (rerun,
cores28.log): every core is c-headed on Z(r); j survives on zero in exactly
one, `s (\q.c) (s (\x y. y y) j)` (28): c r (r r j).

## 5. Shared lets over jn's K family: closed (handwritten + §4 catalogue)

TL-K: R = \s. (\x. s K B2 .. Bk) A [j], x in >= 2 operands.  Zero
A2' A4'.. = r j, unary A3' A4'.. = c r N.
(a) j in some Bi (under \x): w = 24 + 2(k-1) + |A| + Sum|Bi|; k = 3 gives
  |A|+|B2|+|B3| <= 17, j must be in B2 (in B3 zero loses it), so
  Sum >= 6 + 3M and |A| <= 11 - 3M; S > 0 needs |A| + (f_A-1)M > 13: f_A >= 5,
  |A| >= 18.  Dead.  Three uses: Sum >= 10 + 3M, |A| <= 7 - 3M,
  S <= 2|A| + (f_A-1)M - 15 <= -1 + (f_A-7)M < 0.  Dead.  k >= 4 only
  shrinks the budget.  So S <= 0 -> L-contract -> jn §7.
(b) j trailing: (\x. s K B2 .. B(k-1)) A j.  k = 3 is L-push.  k >= 4:
  w = 22 + 2(k-2) + |A| + Sum, and the unary output is the source core
  (\x. B3 .. B(k-1)) A j of cost <= 25 - |B2| <= 23; the catalogue has only
  s (\q.c) (s s j) through 23, not a redex: dead (if x is not in B3.., x is
  only in B2: L-push).
(c) j in A: w = 20 + 2(k-1) + |A| + Sum; k = 3: |A|+|B2|+|B3| <= 21.  x in
  B3: core (\x. B3..) A costs <= 25 - |B2| <= 23: dead.  x not in B3: B3..Bk
  is a j-free core, >= 22 (L2') > 21: dead.  k >= 4 smaller budgets.
=> every top-of-body let over an s K spine has w >= 46.

## 6. How much can a let save under a sub-46 budget? (handwritten, exact)

Top let, j trailing (w = 12 + |A| + |B| <= 45, so |A| + |B| <= 33), uses at
depths m_i, n_B outer s/c leaves in B.  |B| >= 4k - 2 + 3M + 5 n_B and
f_A <= (|A| + 2)/4 give
  k=2: S <= 19 + (f_A - 4) M - 6 n_B, max about 22 (M = 3, |A| = 18);
  k=3: S <= 36 + (f_A - 7) M      (B = x x x, |A| = 23: S = 36);
  k=4: S <= 45 (|A| = 19);  k=5: S <= 46 (|A| = 15);  k=6: S <= 39.
So pure counting allows a sub-46 source whose let-contracted reduct weighs
up to ~91 bits, and the maximisers are exactly the pure self-application
combinators B = x x .. x (no s, no c in B: T = 0).  Consequence: no
"bounded let-sharing" bridge can be proved by accounting alone; it must use
semantics, and the self-application families are where it has to bite.
The A big enough to repay a let are >= 9 + T - (f_A - 1) M bits (k = 2);
at k = 2 with T = 0, M = 0 that is |A| >= 9 (B = x x).

## 7. Self-application family closed at the w <= 45 budget (computer)

Engine fix first: dbn.py's size cap was checked every 64 head steps (in
whnf, head_cycle_cert, hnf_or_cycle); self-application doubles the term
per step, so single terms hung.  My copy checks every 4 steps.
eng/delta.py (0.5 s alarm per term, timeouts reported, A normalised first
-- beta-equal -- so Omega-shaped caps certify):
  `\s. (\x. x x) A j`, A over [s,c] j-free, ALL shapes, w = 18 + |A|:
  |A| <= 24: 97,435 terms, 0 hits, 31 uncertified caps, 0 timeouts, 6.4 s;
  |A| = 25..26: 225,073 terms, 0 hits, 113 unc caps, 2 timeouts, 20.0 s;
  |A| = 27: 265,519 terms, 0 hits, 141 unc caps, 2 timeouts, 26.4 s.
  => no reader \s. (\x. x x) A j with w <= 45 (n = 1..3; caps caveat).
  The 31 caps through 24 were rechecked at fuel 20,000 / size 60,000: none
  normalises (28 caps, 3 timeouts).  Every unresolved term has the shape
  \x0. .. x0 (.. x0 ..) or contains (\x. x x): A applies its own copy inside
  its argument.  Logs: d24.log, d26.log, d27.log.
  Subfamilies to w <= 45+: A = s W (sdelta.py, |W| <= 23: 0 hits, 37 unc);
  A = \y. s W1 W2 (selfref.py, |W1|+|W2| <= 19: 0); A = s (\b. b b Y)
  (|Y| <= 17, w <= 49: 0).  The reason the obvious half works: A = s I gives
  A A j = r j on zero for 26 bits, but I I j = j on unary.
  j inside A, `\s. (\x. x x) A` (w = 16 + |A|, A with one j taxed 4/own
  lambda): |A| <= 25: 410,069 terms, 0 hits, 1 unc cap, 5.4 s; 26..28:
  2,188,804, 0 hits, 17 unc, 4 timeouts, 38 s; 29: 2,209,560, 0 hits, 27
  unc, 1 timeout, 41 s.  => closed at w <= 45 (caps caveat).
  (j inside B, `\s. (\x. x x j) A`, is the same reduct at w = 22 + |A|:
  covered by the j-trailing run.)
  Higher self-application combinators (the k = 3, 4 maximisers of §6):
  B = x x x and x (x x), j trailing, |A| <= 23 (w <= 45): 53,537 each, 0
  hits (18 / 14 unc caps), 4.5 s / 3.3 s; j in A, |A| <= 25: 0 hits each;
  B = x x x x, |A| <= 19: 0 hits.  Logs dj*.log, dx*.log.

## 8. Why G_c is expensive; the small-specialisation lemma (handwritten)

Let a let (\x. B) A have uses x Args_i whose contracted-and-reduced forms are
E_i.  Call use i unproductive when |E_i| <= |x Args_i| (after index shift).
If all uses but one are unproductive, replace each unproductive use by E_i
and the productive one by the redex A Args_1 inside its own operand: the
let disappears and w changes by at most (f_A - 1) m_1 - 6 - T (the 4-bit
let, the x leaves and the lambda-x taxes go; A's f_A free leaves move m_1
binders deeper).  For f_A <= 1, or m_1 <= (6 + T)/(f_A - 1), that is < 0.
So a let pays only with two PRODUCTIVE uses (or one very deep use of an A
with many free leaves -- the hoisting regime).  G_c F -> I is unproductive by 7 bits (g F costs 11 under
\s, I costs 4): the selector is too cheap to share, so G_c is effectively a
linear let of a 31-bit definition replacing the 28-bit V, plus the let
overhead: 46 + 21 = 67.  The same holds for every factory whose second role
is a closed selector of <= 7 bits (I 4, F 6, K 7): x F costs >= 11, x I >= 9,
x K >= 12.  A reader needs exactly one c-role (c r N on unary), so a
c-factory never has two productive uses unless both produce large
stream-dependent pieces; no such pair was found.
"A different sharing of the same identity": stream-supplied, s G_c = C1 on
zero and r on unary (no use); G_c (cons-like X) on zero gives c r r.  The
only cheaper use of G_c's identity is the 162 itself (G_c s = V inlined).

## 9. Near misses priced (rd.py)

* `\s. (\x. x x) (s I) j`  w = 26: zero law OK (K r (K r) j = r j), unary j.
* `\s. (\x. x x) (s (\b. b b c)) j`  w = 36: zero OK, unary c r (c r) j --
  right head, right first argument; the self-copy lands where N should be.
* hoisted 162 as a j-carrying let `\s. (\x. s I V' x) j`  PASS w = 57.
* `\s. (\x. s K x x) (s I V) j` PASS w = 70 (A shared between zero arm and
  unary arm; the shared value is the whole 162 body).

## 10. Shared let across a general lambda-dispatcher and its operand: closed

eng/sl_lam.py: R = \s. (\x. s (\b. B) T) A [j], B ANY term over [b,x,s,c],
T over [x,s,c], A over [s,c], x free in BOTH B and T, all shapes, w <= 45:
  alpha j trailing (w = 21 + S):   59,078 triples, 0 hits, 11 unc caps, 1.8 s
  beta  j in T     (w = 23 + S):   17,854,         0 hits,  0 unc,     0.2 s
  gamma j in A     (w = 19 + S):  424,043,         0 hits,  3 unc,     4.7 s
  delta j in B     (w = 27 + S):    1,236,         0 hits,  0 unc
(S = |A|+|B|+|T|; 0 timeouts.)  Validation: the 164 with a vacuous share
`\s. (\x. s (\b. b F x) ((\y. s I (s s) j) x)) c` -> judge 'hit', rd.py
PASS w = 75 = 23 + 3 + 15 + 34.  Logs sl_*.log.
Two operands, eng/sl_gen.py: R = \s. (\x. s (\b. B) T1 T2) A [j], x free in
at least two of B, T1, T2, all shapes, w <= 45 (counts match an independent
pre-count exactly):
  j trailing (w = 23 + S): 44,376 candidates; j in T1 / T2 (25 + S): 13,647
  each; j in A (21 + S): 327,602; j in B (29 + S): 1,092.  0 hits, 0 caps,
  0 timeouts in all; < 4 s each.  Logs slg_*.log.
(An early run had over-tight pruning -- it assumed min |B| = 3 and min
|T| = 2, but B can be `b` (2) and a j-carrying T can be `j` (0); fixed by
using the pools' true minima, and rerun.)

## 11. x-headed shared let (Delta generalised), partial; then compute stop

eng/tlx.py: R = \s. (\x. x T1) A j, x free in T1 (head use + operand use),
all shapes; w = 16 + |A| + |T1|.  With the S > 0 filter (only lets that
pay; S <= 0 contracts to an ordinary let-free reader of no greater weight):
  A cost 0..18:  696,770 candidates (1,352,633 S <= 0 skipped), 0 hits,
                 135 unc caps, 28.8 s;
  A cost 19..25: 485,289 candidates, 0 hits, 694 unc caps, 10 timeouts, 93 s;
  A cost 26..27: NOT RUN (killed) -- the T1 = x part of it is the Delta
                 family of §7, already closed; T1 != x with |T1| <= 3 is
                 T1 in {x} only (the next x-term is 5 bits), so this chunk
                 adds nothing beyond §7.
  Without the filter, all shapes through w <= 41: 246,464, 0 hits.
So R = \s. (\x. x T1) A j is closed at w <= 45 (n = 1..3; caps caveat).

COMPUTE NOTE.  The coordinator set hard caps (<= 100,000 terms per check,
<= 2 min, <= 1 GB, <= 2 threads) after these runs.  Runs above 100k terms
in this lane (all before the note): cores2.py 28 (2.6M), delta.py
jout 25..27 and jin 26..29 (0.2M..2.2M each), sl_lam gamma (424k), sl_gen a
(328k), tlx chunks (0.7M, 0.5M).  No further enumeration from here; the
remaining work is paper pricing and single-term checks.

## 12. Audit of unresolved terms (specific-term checks only)

A reader's source must contain c (the unary output has a rigid c and
beta-reduction creates no constants), so every unresolved term with no c
leaf fails the unary law with certainty.  In the fully printed logs
(d24, d26, d27, dj25, dj28, dj29, sl_alpha, sl_gamma) every timeout and all
but 16 caps are c-free.  The 16 c-containing ones (eng/recheck.py) were
rerun one by one at fuel 50,000 / size cap 100,000, 3 s each: 15 caps, 1
timeout, none normalises.  Example by hand: A = \x0. x0 (s x0 x0 c) on Z(r):
s K K c = K, so s A A c ->* A and A A ->* A (s A A c) ->* A A: a head loop.
Logs that print only the first 8-16 unresolved terms (tlx_t45_a/b,
tlx_trail41, dxxx, dxxp, sdelta) are NOT fully audited.
