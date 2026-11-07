# jn lane notes (round 4): the separated class's sharp obstruction

Checker: `rd.py` (copied from refute46; normal-order, n = 1..3, prints
w = cost + 4 depth(j), frame [c, j]).

## 0. Orientation (handwritten)

Stream projections at depth 1 (cost as operand under the reader's \s):

| term | zero Z(r) | unary U_n | cost |
|---|---|---|---|
| s K | K | F | 11  (= the bit b itself) |
| s F | r | r | 10 |
| s I | K r | I | 8 |
| s (\q.c) | c r | c r | 10 |
| s s | K r | K N | 6 |
| s s X | r | N | 8+|X| |
| s I X j | r j | X j | 12+|X| |
| s I (s s) j | r j | N | 18  ("(r j)/N" operand) |
| s (\b. b F c) | I | c r | 22  ("I / c r" prefix) |
| s (\b. b I c) | r | c r | 20 |
| s I (s (\q.c)) | r | c r | 20 |

First construction: `\s. s (\b. b F c) (s I (s s) j)` PASS w=48 (44@1).
It is the record's known 164 "dual operand" (interpreter.md §3), not new.
Ledger view (handwritten): unary core `s (\q.c) (s s j)` = 20 bits at
depth 1; 162 = 2 + 20 + 20 overhead (s I _ j frame 12, absorber lambda u
+ 2 index taxes + u leaf + app = 8); the 164 overhead is 22.  A w<=45
reader at depth 1 needs total overhead <= 19 over a 20-bit unary core
(if that core is really forced; it is not -- see later).

## 1. Budget arithmetic (handwritten, exact)

w = 2L + 4V - 4 + X + 4d (V leaves incl. j, X index sum of non-j leaves).
With L >= 3 (proved: two-lambda readers have w >= 50) and X >= f >= 1 for
lambda-rooted readers at d >= 1:  w <= 45 forces
  d=0: V <= 10;   d=1: V <= 9;   d=2: V <= 8;   d=3: V <= 7.
So every sub-46 reader has at most ten leaves.  The 162 has 8
(s, a, s, c, s, s, u, j), L=4, X=6: 2L+X = 14, one bit-pair above the
d=1 budget 2L+X <= 13 at V=8.  At V=9, d=1 needs 2L+X <= 9 (L=3, X<=3 or
L=4, X<=1).  A rigorous leaf floor V >= 8 would delete every V<=7 row of
the 947 (COUNTS.md has many: e.g. d=0 app f=1 rows with V = 6, 7).

## 2. First-dispatch normal form (handwritten; exact, used for L3)

R = \s. M.  Substitute s := cons b r with b, r fresh rigid ("generic
cell").  Head reduction of M[cons b r/s] is simulated step-for-step by
head reduction of every instance b:=K / b:=F (head redexes survive
substitution), so if the generic head reduction diverges, both laws fail.
Its hnf cannot be a lambda (zero output r j is not) nor c-/j-headed
(rigid, and zero wants r, unary wants c).  Hence exactly one of:
  (D_b)  M* = b A B C1..Cm :  zero  A[K] C[K] =b r j;  unary  B[F] C[F] =b c r N
  (D_r)  M* = r A :           zero  A[K] = j;  unary  A[F] b' r' = c (cons b' r') N
                              for (b',r') = (K,N) at n=1 and (F,U_(n-2)) at n>=2.
162: M* = b r V j (A=r, B=V, C=j).  164: M* = b F c r T.  165: b X c r (s s s).
This is the precise "dispatcher" of L3: everything before the first
head occurrence of b.  Sharing between roles = sharing among A, B, C.

## 3. L1 and L2' -- computer-checked (dbn.py, lcheck.py; all term shapes)

Engine `dbn.py`: de Bruijn, normal order, fuel 3000; enumerates EVERY term
(redexes included) of a given cost over a frame.  Costs exactly as the class:
lambda 2, app 2, var 2+idx, j priced 0.

**L1 (precise).**  Y a term with free names s (index 0), c (index 1) and one
occurrence of rigid j.  If Y[s:=Z(r)] =b j and Y[s:=U_n(N)] =b N (n=1,2,3)
then cost(Y) >= 25, where j under k of Y's own lambdas is charged 4k
(i.e. Y sits at depth 1 under the reader's \s; weighted cost).
Check: every Y through 25 bits (371,863 with j outside Y's lambdas;
410,069 with j anywhere, taxed): exactly two hits, both at 25:
    s K j (s s s)                      = b j N
    s (\x. s (\b. b F)) j   [NEW]      = b F r r j
56 terms exhausted fuel; each contains a closed Omega-family term
((\x.x x)(\x.x x), (\x.x x)(\x.x (x x)), ...) that every reduction to normal
form must contract, or is c/j-headed: none can meet a law.  1.8 s.
Caveat: n = 1..3 probes (both hits are proved for all n by hand).

New identity (handwritten, generic cell s = cons b r):
    s (\x. s P) = P b r r      ("r-doubler": one lambda, two s leaves)
    s (\x. s (\y. s P)) = P b r r r,   s (\x. x (s P)) = b (P b r) r.
So `b F r r j` gets j/N by sharing j between the zero selection (F r j = j)
and the N-extractor's erased operand (r r j = N).

**L2' (non-absorbing arm, precise).** T over [s, c] (no j) with
T[U_n(N)] =b c U_(n-1)(N) N for n=1..3 costs >= 22; unique 22-bit solution
`s (\q.c) (s s s)`.  Check: every term through 22 bits (29,791): one hit;
11 capped, all Omega-family.  0.1 s.

**L2 (absorbing arm).**  Already computer-checked by the round-3 handoff
lane (acheck.py/vcheck.py): every A over [s,c] through 30 bits, all shapes,
with A j = c U_(n-1) N: min 28, family \u. s (\q.c) (s s X).

## 4. Where j can sit in the first dispatch (handwritten)

In M* = b A B C (no duplication of j): j is in A (zero-only; F erases it on
unary for free) or in C (shared; unary must erase it).  j in B is
impossible (zero output needs j).  Unary erasure mechanisms for j in C:
 (alpha) B absorbs it with a binder  -> B j = c r N, B >= 28 by L2 (162);
 (beta)  j sits in a shared operand T with T[unary] = N and its own
         second dispatch: T = (r j)/N (18, s I (s s) j) or j/N (>= 25, L1);
 (gamma) j passed to K N = s s inside B without a binder: needs a
         composition combinator, >= 33 measured.
j in A costs the depth tax: A sits under the dispatcher's binders
(d >= 2), or A is an outside operand selected by K = s K (11 bits) and must
re-derive r (s F j, 12).  Priced families (all handwritten, rd.py PASS):
 - Q = I:      s I A3 ... forces k=3; A3 = j literally -> L2 -> 42 (162);
               A3 != j -> A3[zero] = j, |A2|+|A3| <= 27, see 5.
 - b X c:      M* = b X c r T; zero X r T = r j, unary T = N.
               (X,T) = (F,(rj)/N) 44 [164]; (I, j/N) 49; X = lambda with j
               deep: 165-type 49 after hoist.  Min 44 (Gemini r3 + this).
 - K:          s K A B C..: A re-derives r (>= 12), B >= 22 (L2'),
               shared C needs j/N or deep j: >= 51 / 53.
 - r-doubler:  s (\x. s (\b. b X Y)) j -> b X Y r r j: zero X = K works
               (K r r j = r j), unary needs Y r r j = c r (r r j): Y is a
               three-binder S-like term, >= 34; dead.
New near-miss noted: in `b X c r r j` (X = K) the unary residual is
c r r j -- one bracket away from c r (r r j).

## 5. The s I family is closed for every operand shape (computer-checked)

R = \s. s I A2 A3 (k = 3 is forced: zero gives r A3 ... Ak).  A3[zero] = j
needs j in A3.  (a) A3 = j: L2 (handoff lane, all shapes <= 30): A2 >= 28,
w >= 46.  (b) A3 != j: `case1b.py` enumerates every A3 (any shape, j at top
or under A3's lambdas with the 4-bit tax) with A3[zero] = j, cost <= 25
(3,611 / 5,954 such terms; the cheapest is `I j`, 6), and every A2 over
[s,c] (any shape) with |A2| + |A3| <= 27, testing (A2 A3)[U_n] = c U_(n-1) N
for n = 1..3: **no pair**.  Caps: 2 pairs (Omega as A2) and 56 zero-filter
caps, all Omega-family terms with no normal form.  3.6 s.
So every reader `\s. s I A2 A3` with arbitrary A2, A3 has w >= 46.

## 6. Core lemmas (computer-checked, cores.py, all shapes, n = 1..3)

* **Unary core**: a term over [s,c] with one j (top, or taxed 4/lambda) and
  T[U_n] = c U_(n-1) N costs >= 20; through 22 bits the only one is
  `s (\q.c) (s s j)` (20).  (The j-free core is L2': 22.)
* **Zero core**: T[Z(r)] = r j costs >= 12: `s F j`, `s s s j`.
So cost(R) >= 22 trivially at d = 1; the 162 pays 20 bits of "dispatch
overhead" over the unary core, the 164 pays 22.

## 7. The K dispatcher is closed for every operand shape (handwritten from 6)

R = \s. s K A2 ... Ak: zero A2 A4..Ak = r j, unary A3 A4..Ak = c r N,
budget sum_{i>=2} |Ai| <= 30 - 2k (w <= 45, d = 1).
- j in A3: zero loses j.  Impossible.
- j in A2: A3..Ak is a j-free unary core, so sum_{3..k}|Ai| + 2(k-3) >= 22
  (L2'), forcing |A2| <= 2, i.e. A2 = s: no j.  Impossible.
- j in Ai, i >= 4: A3..Ak is a unary core of cost <= 24 - |A2| <= 22, so it
  is literally `s (\q.c) (s s j)`; every spine split of it puts `s s j` in
  the shared tail, whose zero value is r: zero loses j.  Impossible.
So every K-dispatched s-spine reader has w >= 46.  (k = 3 needs no core
lemma: 12 + 22 > 24.)

## 8. Depth-1 dispatch inventory (handwritten)

At depth 1 the bit b can reach head position only through: s I = b r;
s K = b (11 bits); s s = b b r r (dead: unary N-headed); s (\x. x X Y) =
b X Y r (X, Y at depth 2); s (\x. x X) = b X r (unary turns into a
second-cell dispatch r C.. = C1 b' r' .., which must rebuild cons b' r');
s (\x y. B) (B at depth 3: every arm leaf pays +2); s (\x. s P) = P b r r
(doublers).  I and K are closed for all operand shapes (sections 5, 7).
Next: the family s (\b. b X Y) T, all shapes, by unary templates.

## 9. The dual-operand family s (\b. b X Y) T is closed, all shapes (computer)

`fam_bxy.py BUD`: R = \s. s (\b. b X Y) T, cost(R) = 16 + |X|+|Y|+|T|, so
w <= 45 at d = 1 iff |X|+|Y|+|T| <= 25 (j in X taxed +4 for \b, plus 4 per
own lambda; j in T taxed 4 per own lambda; j in Y impossible).  Unary
templates tau_n = nf(Y[F][U_n] U_(n-1) t), t rigid, are solved against every
T unary meaning (exact constraint solving for c P Q / bare t; brute force
over function- or c-headed meanings for t-headed templates -- sound, since a
neutral with another head can never become c U N); surviving (Y,T) pairs
are completed by every X on the zero law.
- BUD 25 (the w <= 45 budget): 52,433 T (16,438 unary meanings), 74,440 Y,
  375 unary pairs, 272 X: **no reader**.  3.0 s.  (`fam_bxy_25.log`)
- Validation: BUD 28 with Y <= 4 bits finds exactly one reader, the 164
  (X = F, Y = c, T = s I (s s) j) at 28.  (`fam_bxy_val.log`)
Caveat: n = 1..3 probes; fuel caps count as failure (Omega-family only in
the pools inspected so far; not re-audited for this run).
Cap audit (fam_bxy pools): 4 T caps and 14 Y caps through the budget, all
Omega-family ((\x.x x)(\x.x x), (\x.x (x x))(\x.x x), (\x.x x b)(\x.x x), ...).

## 10. k = 3 of the same family is closed (computer, fam_bxy3.py)

R = \s. s (\b. b X Y) T1 T2, cost 18 + sum, w <= 45 iff sum <= 23.  Two
placeholders t1, t2 in the unary templates.  5,742 T meanings, 22,572 Y
(16,405 viable): exactly two unary triples survive, both the unary core in
disguise -- (Y = b, T1 = s (\q.c), T2 = s s j) and (Y = \x. s, T1 = \q.c,
T2 = s s j) -- and both lose j on zero (s s j = r there): **no reader**.
1.6 s.  The two triples are an internal validation: the unary stage finds
exactly the core decompositions the K-family argument predicts.

## Status of "dispatcher accounting" (L3) in the s-spine class at d >= 1

R = \s. s A1 A2 .. Ak, every operand of every shape, j anywhere (taxed):
  A1 = I            closed (sec. 5)        A1 = K   closed (sec. 7)
  A1 = \b. b X Y    closed for k = 2, 3 (sec. 9, 10)
Open in the s-spine class: other lambda dispatchers \b. B (B not b X Y:
e.g. doublers \x. s P, \b r'. B', \b. b X), s-headed A1 = s P.., redex A1,
and k >= 4 with \b. b X Y.  Prior coverage (refute46 semcheck): normal
operands <= 18 bits.  Outside the s-spine class: redex bodies and
application-rooted readers (prove46 minimal-leaf and hoist results only).

## 11. General lambda dispatcher, k = 2: fam_lamB.py (in progress)

R = \s. s (\b. B) T with B ANY term over [b,s,c] (covers I = \b.b,
K = \b.\y.b, b X Y, b X, \b r'. .., doublers \b. s P, ...).  cost 10+|B|+|T|,
w <= 45 iff |B|+|T| <= 31.  Zero template zeta = nf(B[K][Z] r t) and unary
templates tau_n; exact constraint solving where the template is r t / c P Q
/ bare t; brute force (filtered) otherwise.  Validation: BUD 34, B <= 16,
T <= 18 finds exactly the 164 (B = b F c, T = s I (s s) j) at 44.
Result (fam_lamB.py 21 21, `fam_lamB_21.log`, 15.9 s): window |B| <= 21,
|T| <= 21 inside the w <= 45 budget |B|+|T| <= 31: 27,057 B (4,355 viable),
52k T (16,437 unary meanings): **no reader**.
Cap audit (all sound certificates, dbn.py): 994 capped (template, meaning)
pairs, every one certified non-target by (i) a head cycle (a head redex
recurs with the spine below it untouched => no hnf), (ii) the same on the
eta-normal form (beta-NF exists iff beta-eta-NF exists, Barendregt 15.1.5),
or (iii) a target constant (c or N) absent from the term (beta never
creates free constants); 0 uncertified B-template caps (head cycles,
which survive any substitution for t since t never reaches the head);
0 uncertified zero-check caps; 4 T terms skipped, all closed-Omega terms
(j Omega, Omega j, Omega, \x. Omega) that can neither be erased usefully
nor normalize.  Size cap 20k nodes added to the normalizer (L1 rerun
unchanged: 2 hits, 52 caps).
Not covered by the window: |B| >= 22 with |T| <= 9 (all logic inside the
dispatcher, e.g. `\s. s (\b. B) j`), and |T| >= 22 with |B| <= 9.

## 12. Closing the small-B window (computer, smallB.py, bodies.py)

Scan of every B <= 9 bits: six viable dispatchers.  Requirements on T:
 B = \x.x (s F), b s, b I, s I : T is a second-cell handler,
   T[U_n] b' r' = c U_(n-1) N for the second cell (K,N) / (F,U_(n-2)).
   `smallB.py a 27`: 1,987,974 T through 27 bits: none.  1 cap left
   uncertified by the program, T = (\x. x x)(\x. x ((\y. x) c)); by hand
   f f -> f (K f c) ->h (K f c) (..) ->h f (..) ... with f = \x. x ((\y.x) c):
   the head is f applied to a term head-reducing to f forever, no hnf.
 B = \x. s : T is a one-operand dispatcher, T[Z] K r = r j and
   T[U_n] F U_(n-1) = c U_(n-1) N.  `smallB.py b 25`: 586,480 T: none, 0 caps.
 B = \x y. y : T is a whole reader body of <= 25 bits.  `bodies.py 25`:
   410,069 bodies, none, 0 uncertified caps (so no lambda-rooted reader
   with body <= 25, i.e. w <= 31, of any shape).
So `\s. s (\b. B) T` has w >= 46 whenever |B| <= 21, or |B| <= 9 -- the
only gap left in this k = 2 class is |B| in [22, 31] with |T| <= 9 (all
logic in a big dispatcher, e.g. the two-operand `s H j` shape).
`bodies.py 27` needed 5.7 GB and was stopped: the all-body route ends here
in Python.
