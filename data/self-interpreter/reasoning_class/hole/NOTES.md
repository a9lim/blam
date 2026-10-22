# hole lane notes (round 4): the unary-needed core

Status labels: [H] handwritten, [C] computer-checked (rd.py / small
script, named), [K] kernel-checked (Lean file named).

## 0. Orientation

Read: PROMPT, BRIEF, class-bound.md 1-4, jn REPORT+NOTES, close46 REPORT
1 and 6.  Reader R: free c, j (one j), R Z(r) = r j, R U_n(N) = c U_(n-1) N,
w = cost + 4 d(j).  Target w >= 46 or a reader below.

First observation [H, checked with rd.py below]: the literal statement
"every zero-completable unary core costs >= 42 at d = 1" is FALSE.  The
164's reader  \s. s (\b. b F c) (s I (s s) j)  has unary core
\s. s (\b. b [] c) (s I (s s) []) of cost 38: F is erased by the unary
bit (F F c -> c) and j by the terminal K (s s j -> N).  The 165's core
(\n s. s (\b. b [] c) (s s [])) [] costs 33.  So the theorem must charge
the zero fillers: cost(core) + cost(fillers) + 4 d(j) >= 46.

Probe [C, rd.normalize, holes as fresh free vars h, g, k]:
  164 core  \s. s (\b. b h c) (s I (s s) g):  unary n=1..3 OK, zero = h r (r g)
  165 core  (\n s. s (\b. b h c) (s s g)) k: unary OK, zero = h r r
  162 core  \s. s I (\u. s (\q. c) (s s u)) h: unary OK, zero = r h

## 1. Definitions: dispensable positions, the needed sets, the core [H]

Positions are addresses in R's source tree (0 = operator / lambda body,
1 = argument).  An input iota is Z(r) or U_n(N) (n >= 1); target(iota) is
r j resp. c U_(n-1)(N) N, a beta-normal form.  Omega = (\x.x x)(\x.x x).

Def 1 (dispensable).  A set S of pairwise disjoint positions is
dispensable at iota if R[Omega/S] iota =beta target(iota).  Position p is
unary-dispensable if {p} is dispensable at every U_n, n >= 1 (all n,
n = 1 included); zero-dispensable likewise at Z(r).

Tracking.  Follow the normal-order (leftmost-outermost) reduction rho of
R iota.  A tracked position of p is a residual position of p in the
standard sense, with one convention: when a tracked bound-variable leaf is
substituted, its position stays tracked (now holding the copy).  A step
contracting the redex at position q TOUCHES a tracked position o iff
o is a prefix of q.0 (o contains the redex, is the redex, or is its
operator lambda).  Being the argument q.1, or lying inside q.1 or inside
the operator's body, is not touching (copying, erasing, moving).

Lemma 1.1 (transfer) [H].  Let S be disjoint positions.  If in rho no
tracked position of S is touched and none survives in the normal form,
then for EVERY filling X (terms in scope at each position, Omega
included) the normal-order reduction of R[X/S] iota contracts the same
redexes and reaches the same normal form.
Proof.  Induction on steps.  At a step contracting Delta (leftmost-
outermost) no tracked position is a prefix of Delta's operator.  A tracked
position textually left of Delta's lambda and disjoint from Delta lies in
the head-normal left context (lambda x. y M1 .. Mk [.]) of a
leftmost-outermost redex, which normal order never changes again, so it
would survive into the normal form - excluded.  Hence every tracked
position lies right of Delta's lambda or inside Delta's argument or body,
so any redex inside a filling, or created by a filling in operator
position, starts right of Delta's lambda: Delta stays leftmost-outermost
in the filled term, and contracting it moves/copies/erases the fillings
exactly as it moves the original residuals.  At the end the tracked
positions are all gone, so the filled reduct is the same normal form. []

Cor 1.2 (characterisation; this is the "residual/origin" definition)
[H].  p is dispensable at iota  <=>  in the normal-order reduction of
R iota no tracked position of p is touched and none survives.
(=>: R[Omega/p]'s normal-order run never contracts an Omega residual,
since Omega -> Omega would repeat forever as leftmost-outermost, and the
normal form has none; apply 1.1 from Omega back to the original subterm.
<=: 1.1 with X = Omega.)  This is Barendregt's genericity argument.

Cor 1.3 (stability, joint dispensability) [H].  If p and q are disjoint
and each dispensable at iota, then {p, q} is dispensable at iota.
Proof: 1.2 refers to the ONE normal-order run of R iota for both; the
union of the two tracked families is untouched and absent; apply 1.1.
(No appeal to Berry's stability theorem is needed: determinism of normal
order does the work.)

Def 1.4.  Need_U = positions that are not unary-dispensable = union over
n >= 1 of Need_(U_n); Need_Z likewise for Z(r).  Both are prefix-closed
(an ancestor of a needed position is needed: if q is dispensable, 1.1 lets
any filling of q - in particular the original subterm with Omega at p
inside - work, so p is dispensable).  The UNARY CORE C_U is R with every
maximal unary-dispensable position replaced by a hole; by 1.3 (applied
per n) its holes are jointly dispensable at every U_n, so every filling of
C_U satisfies the unary law for all n.  It is unique.  Same for C_Z.

## 2. The exact cost split [H]

Node prices are local (lambda 2, application 2, bound leaf 2 + index,
c leaf 2 + depth, j 0) and a leaf's index is fixed by its position, so for
ANY set S of disjoint positions with context C = R[holes/S]:
    w(R) = cost(C) + sum_{p in S} cost_p(R|p) + 4 d(j)          (2.1)
(cost_p = price of the subterm in place).  With S = the holes of C_U this
is the requested split, as an identity.

Lemma 2.2 (free leaves) [H].  A free leaf is never touched (it is neither
a lambda nor contains a redex) and is never substituted, so by 1.2 it is
dispensable at iota iff no residual of it survives, iff (since residuals
of a free leaf are occurrences of the same variable) ... iff the target
does not need it there.  Hence: the j leaf is unary-dispensable and
zero-needed;  every c leaf is zero-dispensable;  some c leaf is unary-
needed.  So j's position is always a hole of C_U and every c leaf is a
hole of C_Z.

Lemma 2.3 (four classes) [H].  Need_U, Need_Z are prefix-closed, so
Need_Z \ Need_U lies inside the holes of C_U and Need_U \ Need_Z inside
the holes of C_Z.  Let B = the maximal positions in neither set; by 1.3
(per input) B is jointly dispensable at every input, so
    w(R) = cost(Need_U) + cost(Need_Z \ Need_U) + sum_B cost + 4 d(j),
where cost(P) for a set of positions sums node prices.  No B position
holds j (j is zero-needed), every term other than j costs >= 2, and a B
position can be refilled by a 2-bit leaf (index-0 variable, or c at depth
0) without touching either law or the j count.  So
    w(R) >= cost(Need_U) + cost(Need_Z \ Need_U) + 2|B| + 4 d(j),
with equality for a minimum reader.  The zero law's additions are exactly
the zero-only positions Need_Z \ Need_U; j is always one of them.

Values: 162: Need_U = 42 (all but j), Need_Z \ Need_U = {j}, B empty.
164: Need_U 38, zero-only = {F, j} (6), B empty (c and s s are unary-only).
165: Need_U 33, zero-only = the router \u r. r n and the hoisted j
(14 + 0), B = {third s of s s s} (2).

## 3. The dispatch lives in the shared core [H]

Generic run: G = R (cons b r) with b, r fresh rigid.  jn's first-dispatch
normal form: head reduction of G reaches  b M1 M2 M3..Mk (k >= 2)  or
r M1 (zero then needs k = 1, M1[K/b] = j).  (k >= 2: K M1 and F M1 are
lambdas, and neither target is.)

Lemma 3.1 [H].  Every head step of G before that hnf is a head step of
R Z(r) and of every R U_n(N) (a head redex stays the head redex under
b, r := anything, as long as the head is not b or r), and normal order
starts with head reduction.  So every position touched before the
dispatch is in Need_Z and in every Need_(U_n): the DISPATCH PREFIX is
shared.  In particular no hole of C_U and no hole of C_Z is touched
before the dispatch, and no filling of a hole is ever the head before it.

Lemma 3.2 [H].  At the dispatch, F M1 M2 -> M2 on unary and K M1 M2 -> M1
on zero.  A source position whose tracked positions at the dispatch all
lie in M1 is unary-dispensable; all in M2: zero-dispensable.  The j
leaf's occurrences at the dispatch lie in M1 or in M3..Mk (never only in
M2).  Modes:
  (A) every j occurrence is in M1: the dispatch bit itself erases j on
      unary;  (S) some j occurrence is in a shared operand M3..Mk: the
      unary branch M2 M3.. must erase it later;  (R) the r-dispatch.
The 165 is (A) (M1 = \u r. r n); the 162 and 164 are (S) (C = j, resp.
T = s I (s s) j).

Lemma 3.3 (output node) [H].  The application node of the zero output
r j is a residual of a SOURCE application node (P Q): the input
Z = \f. f K r has only the nodes (f K) and ((f K) r), whose argument
slots hold K and r forever (closed resp. rigid), never j.  So the source
has a node whose operator goes to r and whose operand goes to j on zero.
For the unary output c U N the inner node (c U) may be the first cell's
node ((f b) r) (opener \q. c ..); the outer node (. N) is a source node
or the TERMINAL cell's node ((f K) N) (opened by a term P with
P K -> c U_(n-1), which must carry the first tail to the end).  The
zero node has no such escape: it is always a source node.

## 4. Measured splits (need.py, Omega-replacement, n = 1..4) [C, probes]

w = shared + U-only + Z-only + neither + 4d:
  162  \s. s I (\u. s (\q.c) (s s u)) j        14 + 26 +  0 + 2 + 4 = 46
  47   \s. s I (\u. s (\q.c) (s s s)) j        14 + 26 +  0 + 3 + 4 = 47
  164  \s. s (\b. b F c) (s I (s s) j)         28 + 10 +  6 + 0 + 4 = 48
  165  (\n s. s (\b. b (\u r. r n) c) (s s s)) j  28 + 5 + 14 + 2 + 0 = 49
  52   (\a. \s. s (\b. b (\u. a) c) (s s s)) (\t. t j)  28 + 5 + 13 + 2 + 4
  53   \s. s I (s (\q.c)) (s K j (s s s))      29 + 18 +  0 + 2 + 4 = 53
  55   \s. s (\b. b (\t w. t j) c) (s s s)     16 + 12 +  9 + 2 + 16 = 55
NEW small fact: the 162's u leaf is in NEITHER set (it receives j and is
erased by the terminal K on unary; V is erased on zero).  So the 162's
unary core is \s. s I (\u. s (\q.c) (s s [])) [] = 40, its absorber
binder \u is VACUOUS in the core, and the 162 is "core 40 + cheapest
2-bit filler + j at depth 1".  Cores range 28 (the 55-reader's) to 47.

## 5. Erasers (what the zero law forces the core to contain) [H]

Lemma 5.1 (erasure).  In the normal-order run of R iota, every residual
of a free leaf (c or j) absent from target(iota) is erased, by a step
(\x. B) A with the residual inside A and x not free in B (1.2: it is never
touched, never survives).  The binder is a residual of a source lambda or
of an input lambda.  The input's lambdas: cell binders \f (always used),
bits K = \x y. x (vacuous \y) and F = \x y. y (vacuous \x).  So each
erasure is by: a stream bit, or a source binder vacuous AT CONTRACTION
TIME (its variable's occurrences may have been erased earlier).

On zero the only cell is Z = cons K r (r rigid): c is erased by the zero
bit K or by a vacuous source binder.  On unary, j is erased by the first
bit F, by a deeper F, by the TERMINAL K (the bit of U_0 = cons K N,
reachable only through a cell self-application such as s s = K N), or
by a vacuous source binder.  Observed: c is always erased by the zero
bit; j by F (165: mode A), by the terminal K (162 via \u, 164 via the
second test s I (s s) j), or by the vacuous \u (47).

Lemma 5.2 [H].  An eraser of j on unary acts after the dispatch (3.1:
before it both runs agree step for step, so a pre-dispatch erasure of j
erases it on zero too).  Same for c on zero.  The terminal K erases on
zero as well (s s = K r there), so routing j into a self-application's
slot (s s j -> N on unary, -> r on zero, j lost) must itself be
unary-only: done by unary-only material (an absorber \u, as in the 162)
or by a second test inside a shared operand (s I (s s) j, as in the
164).

## 6. The dual decomposition: the zero core and its unary shape [H]

By 2.2 every c leaf sits in a hole of C_Z.  So with holes as fresh
scoped variables h, the zero core's unary Boehm tree cannot be c-headed;
it is HOLE-HEADED, h Y(n), and the unary-only fillers (zero-dispensable,
unary-needed) turn Y(n) into c U_(n-1) N.  (Head r/N/U impossible: the
target is c-headed and a rigid head survives filling; a lambda root
survives filling; an unsolvable stays unsolvable under substitution.)
  162: C_Z = \s. s I [] j,            unary shape  h j      (filler V, 28)
  164: C_Z = \s. s (\b. b F []) (s I [] j),  shape h r (h' j)  (c, s s)
  165: C_Z = (\n s. s (\b. b X []) (s s [])) j, shape h r N   (filler c)
Dually, the unary core's ZERO shape is r (h Y) or h Y (holes generic):
  162: r h;  164: h r (r h');  165, 55-reader: h r r.
So the zero law forces the core to EITHER be zero-ready (shape r h: the
reader is its own core plus j, class I) OR to leave a zero router in a
hole (class II), and the unary law forces the zero core to leave a c-filler
in a hole that receives the unary data.  The two extremes are the 162
(zero core minimal, 14; unary filler maximal) and the 165 (unary filler
minimal, c; zero core 42).

## 7. What the decomposition does and does not buy [H]

It is an exact, syntax-free accounting (2.1, 2.3) valid for every source
shape, every redex, every n.  It does NOT by itself shrink the problem:
a class-I core with its hole filled by j IS a reader, so "class-I cores
cost >= 42 at d = 1" is the original question restricted to readers with
no zero-only material besides j.  The content must come from bounding
cost(C_U) + zeta(C_U) jointly, where zeta = min zero completion.

## 8. A syntax-free classification by the zero output node [H]

Let omega = (P Q) be the source node of the zero output (3.3): on zero
P -> r, Q -> j (Q is j or reaches it through a binder).  Its position is
zero-needed (its residual survives, 1.2).  On unary, by 1.2 it is either
dispensable, or some residual is touched or survives.  If normal order
contracts a redex strictly inside a residual (P' Q'), that residual is on
the head path of the subterm being normalised (a redex is leftmost-
outermost only there), and once P' is head-normal the residual is either
contracted (P' a lambda) or persists into the normal form (P' variable-
headed): head-path and head-variable arguments are never erased.  So
EXACTLY one of:
 (omega-z) the node is unary-dispensable: it lies in zero-only material
     (a router in a hole of C_U).  165 (r' n), 52, 55-readers.
 (omega-a) on unary P reduces to an abstraction and the node is
     contracted: P is an "r / absorber" operand.  Two sub-shapes seen:
     (P Q) ->unary the whole output (162: P = s I V -> V, V j -> c U N),
     or a part of it (164: P = s I (s s) -> K N, (P Q) -> N; the
     absorber is the terminal K itself).
 (omega-b) the node survives into the unary normal form: it is the outer
     node (P -> c U, Q -> N: Q is a j/N operand, L1 >= 25), the inner node
     (P -> c, Q -> U), or a node of a rebuilt cell inside U.  The inner
     case needs (P Q) duplicated (the outer node must vanish on zero
     without erasing r j) or the terminal-cell route of 3.3.
This replaces jn's syntactic dispatcher families by semantic cases that
cover every source shape, redexes and application roots included.  It
also says what any proof of 46 must price: an r/absorber operand, an
(r j)/N operand inside a dispatch, a j/N operand, or a zero router.

## 9. Depth-1 output nodes: an exact wrapper/operand split [H + C]

New pinned check [C, plemma.py, all shapes through 20 bits, n = 1..3,
9,265 terms, 0.0 s, 2 caps = closed Omega terms]: an operand P over
[s, c] at depth 1 with P[Z] = r and P[U_n] = c U_(n-1) costs >= 20;
exactly two at 20: s (\b. b I c) and s I (s (\q. c)).

Setting: R = \s. M whose zero output node omega is at depth 1 (no lambda
between \s and omega).  X = the subterm at omega is then context-free
(free s, c, j only; j in X since no binder can deliver j), so
X[Z] =beta r j.  On unary omega's residual is contracted or survives
(sec. 8) and in both cases the head-normal form of X's residual PERSISTS
in the output (head path / head-variable arguments are never erased), so
nf X[U_n] is c U N, c U, c, N (outer or inner occurrence), or a lambda
subterm of U (the tail, a sub-cell, a bit).
Black box [H]: if X[U_n]'s hnf is rigid-headed for every n (and X[Z]'s is,
r j), no residual of X is ever the operator of a contracted redex (X is
an application and its hnf is rigid), so dropping X's internal steps and
replacing X by a fresh rigid x projects the run: R = \s. C'[X] with a
wrapper C' (x at depth 1, priced 0) satisfying C'[x] Z = x and
C'[x] U_n = c U N with X's value replaced by x.  The cost split
w = 2 + cost(C') + cost(X) + 4 (+ X's internal j tax) is exact (2.1).

Pinned checks [C, depth1.py 25 (d1_25.log), xlemma.py 25, wlemma.py 25;
each side complete through 25 bits, all shapes, n = 1..3, ~2 s and
63 MB each; 108 fuel caps, all audited: closed Omega-family terms in head
position, or j-/c-/s(->Z, j-headed)-headed terms, or lambdas - none can
meet r j or x]:
  X with X[Z] = r j, unary value signature per n:
     (N,N,N) min 18 unique  s I (s s) j      ["(r j)/N"]
     (c,c,c) min 18 unique  s I (\q. c) j
     (U,U,U) min 24         s (\x y. x y (\z. y)) j
     no cU, no c U N (reader body), no mixed signature through 25
  C' with C'[x] Z = x, non-trivial output shapes:
     N-outer (c U x) min 24 unique  s (\b. b F c) x   [the 164's wrapper]
     no c-, cU-, N-inner-, both-N-, U-shape, no mixed, through 25
  Matched pairs: min cost(C') + cost(X) = 42 (the 164), so w >= 48.
Completeness of the matching: a pair with C' + X <= 39 (w <= 45) has
both sides <= 25, because no valid X costs < 18 and no non-trivial C'
costs < 24.

Theorem 9.1 (depth-1 zero output node) [H reduction + C checks].  Let R
be lambda-rooted with its zero output node omega at depth 1, X its
subterm.  Then w(R) >= 46 unless (a) X[U] = c U N with omega contracted
on unary (the ROOT-NODE ABSORBER family: by C' >= 0 we may take
R = \s. P Q with P[Z] = r, Q[Z] = j, P[U] an abstraction; the 162 is
here: P = s I V, Q = j), or (b) X is lambda-valued on unary and some
residual of X is applied as an operator (needs X duplicated by a nonlinear
redex) or X's value is a sub-cell/bit of a rebuilt tail (needs
source-built cells).  Details: rigid wrapper cases give w >= 48 (164
attains it); the root-node case with omega surviving (P -> c U,
Q -> N) gives w >= 2 + 2 + 20 + 25 + 4 = 53 (P-lemma + L1); X = U_(n-1)
under the black-box condition gives w >= 2 + 26 + 24 + 4 = 56.

COMPUTE NOTE.  rootabs.py 25 (pairs for the root-node absorber family) was
stopped by my own watchdog at 1.5 GB and produced nothing; a wlemma.py 27
attempt earlier reached 5.8 GB before exiting with no output.  Both are
discarded.  The coordinator has since set hard caps: <= 100,000 terms per
check, <= 2 min, <= 1 GB, <= 2 threads.  The 25-bit runs above
(410,069 + 371,863 terms, 63 MB, ~2 s each) predate the cap and exceed
its term count; they are recorded as run, and no further check of that
size will be made.  From here on: reasoning, plus checks of at most
100k terms.

## 10. Every lambda-rooted depth-1 reader, classified by j's parent [H + C]

Better anchor than the output node: j's PARENT node.  For R = \s. M with
j at depth 1, j's parent X = (Y j) is at depth 1, hence context-free.  X is
touched on zero (an untouched X would put source M in the output), so its
head-normal form persists (sec. 9 argument): nf X[Z] in {r j, j}
(zero shape A: wrapper C'[x] Z = x;  shape B: C'[x] Z = r x).  On unary X
is erased untouched (shape E: C'[x] U = c U N) or its hnf persists (rigid:
N, c, cU, c U N; or lambda: tail/sub-cell/bit).  Black box (sec. 9) holds
in every case except the lambda-valued one.  R = \s. C'[X],
w = 2 + C' + X + 4, counterexample iff C' + X <= 39.

New checks under the 100k-term cap [C, depth1b.py X/C 22, depth1a_E.py C
22 A: 66,438 / 60,427 / 60,427 terms, 0.3 s, < 100 MB; 6 caps each,
the same Omega/j-headed families as before]:
  B, X side (X[Z] = j):  (U,U,U) min 14  s (\b. b j)  ["j / tail"];
     (c,c,c) min 18  s K j c;  no N, cU, c U N through 22 (L1: N >= 25).
  B, C side (C'[x] Z = r x): whole min 16 s I I x;  N-outer min 22
     (s (\b. b I c) x, s I (s (\q. c)) x);  no E, c, cU, U through 22.
  A, C side (C'[x] Z = x): only the trivial wrapper through 22 (no E, no N;
     N-outer min 24 from the 25-bit run).

Theorem 10.1 [H + C].  A lambda-rooted reader with j at depth 1 and
w <= 45 is in one of:
 R1  R = \s. M j (j's parent is the body root; shape A, whole, C' trivial
     by minimality).  The 162's family.  jn closed M = s I A2, s K .., and
     s (\b. B) with |B| <= 21; general M open.
 R2  shape (A, E): X zero-only (X[Z] = r j, erased on unary), wrapper C'
     with C'[x] Z = x, C'[x] U = c U N, 23 <= C' <= 27, X <= 16.
 R3  shape (B, whole) with C' = s I I x (16) and |X| = 23 exactly
     (X[Z] = j, X[U] = c U N): needs a 23-bit "j / c U N" operand.
 R4  X lambda-valued on unary (e.g. X = s (\b. b j), 14 bits: j on zero,
     the tail on unary): black box fails; under it, C' (shape U) >= 23.
All other shapes are closed: (A, rigid, C' non-trivial) w >= 48 (164);
(B, N) >= 2+22+25+4 = 53; (B, c) and (B, cU) by the empty lists;
(B, E) is never minimal (replacing X by j gives a lighter reader).

R1 sharpened [H + C(L2, round-3 handoff, all shapes <= 30)]: in
R = \s. Y j, Y is context-free with Y[U] j = c U N, so Y obeys the
absorbing-arm law; through 30 bits every such arm is \u. s (\q.c) (s s X),
whose zero value is a lambda, while Y[Z] =beta-eta r.  Hence |Y| >= 31,
and R1 is exactly:  "no Y over [s,c] with 31 <= |Y| <= 37,
Y[Z] =be r, Y[U_n] j = c U_(n-1) N".  (162: Y = s I V, |Y| = 38.)
Y's generic hnf is b M1 M2 M.. (zero M1 M.. =be r, unary M2 M.. j ->
c U N) or a lambda (then R = \s. (\z. B) j-like, priced by close46 (6)).

## 11. R1, anchored at the unary output node (round-4 follow-up)

Setting: R = \s. Y j in R1.  On unary the root node is contracted
(Y[U] is an abstraction; a cell or a rigid head fails), so the outer node
nu of c U N is a source node inside Y (or the terminal cell's node: 11.5).
X2 = subterm at nu, under k lambdas x1..xk of Y; all of them are
contracted on unary (no lambda can stay above the output's root).

11.1 Index-shift lemma [H].  Suppose every occurrence of every x_i in X2
is unary-dispensable (true for the absorber's variable, which receives
j).  Let T = X2 with those occurrences replaced by s, moved to depth 1.
Then T is a context-free j-free arm (T[U] = c U N, by 1.1), and moving
out of k binders saves exactly k per s/c leaf and (k - i) per replaced
occurrence, so  |X2| >= |T| + k F_need(T),  F_need = needed s/c leaves.
arms.py 23 [C, 53,537 terms, 0.3 s]: the only arms <= 23 bits are
s (\q.c) (s s s) (22) and s (\q.c) (s s c) (23), both F_need 4, zero value
c r r; every arm has F_need >= 2.  Hence |X2| >= XB(k):
XB(0) = 22, XB(1) = 26, XB(k) = 24 + 2k (k >= 2).

11.2 Wrapper check [C, r1wrap.py 15: 1,010 terms, 0.0 s].  Black box (X2's
values rigid: c U N on unary; erased, or r / j / r j on zero), so
Y = Y0[X2] with a rigid hole x under k lambdas of Y0, laws
(Y0[x] j)[U_n] = x and (Y0[x] j)[Z] in {r j, x j, x, r x}.  Charging the
hole XB(k) - 22, every Y0 of charged cost <= 15 (i.e. |Y| <= 37) is:
  k = 0, zero shape x (8 terms, e.g. K x): impossible, a context-free
     j-free X2 cannot reduce to r j;
  k >= 1, zero shape x (7 terms): the j-TRANSPARENT wrappers \z. x,
     \z. I x, I (\z. x), \z. (\w. x) z, (\z w. x) s, \z. (\w. x) s,
     (\z w. x) c, in which the binder above X2 delivers j on both inputs.
Validation: at charged budget 18 the only shape-(r j) wrapper is the 162's
s I (\u. x) at 12 + 4 = 16, so |Y| >= 12 + 26 = 38 there, and the 162 is
exactly tight.
11.3 Transparent wrappers are never minimal [H].  For \z. X2: the m_z - 1
z-occurrences that do not survive on zero are dispensable on both inputs;
replace them by s (+1 bit each), then swap  \s. (\z. B) j  ->
(\z. \s. B) j: j's tax -4, every s leaf of B -1, the one z leaf +1, c
unchanged.  Net <= -3 - s0 <= -4 (B accesses the stream, s0 >= 1).  The
six others contain an s-independent redex whose contraction saves >= 6
and leaves \z. X2.  So a minimum reader has none of them.
Theorem 11.4 [H + C].  An R1 reader in which every binder above the unary
outer node has only unary-dispensable occurrences in X2 has w >= 46, with
equality only through the 162's wrapper.

11.5 What is left of R1 (R1') [H].  The unary outer node nu sits under a
binder y whose occurrence in X2 is unary-NEEDED.  y is contracted on
unary with an argument a, and a is either (i) the residual of a source
subterm A through a source application node (P A), P reducing to \y. M:
a let or a created redex; or (ii) an input subterm through a cell node:
an opener binder receiving b (F) or a tail (U_k).  Examples, all far
above budget: s (\b r. b r (\u. c r (r r u))) |Y| = 44;
s (\b. b I (\y u. c y (y y u))) 45; (\t. s I (\u. s (\q.c) (t u))) (s s)
46.  The index-shift lemma fails here because a needed y cannot be
replaced by s.  A parametrised split (hole h y.., operand T(y..) checked
against the delivered values) handles (ii) in principle, but degenerates
in (i): when let arguments carry c U and N, T shrinks to y1 y2 (6 bits)
and the wrapper must be enumerated up to ~31 bits, beyond the cap.  The
tool for (i) is bridgeadv's let price: a minimum reader's needed let has
two productive uses, so (i) is exactly the cross-role sharing problem.
The terminal-cell-node variant of nu needs an opener that reaches U_0
carrying U_(n-1), i.e. a self-replicating walker; not priced here.

## 12. R2-R4 with the same anchor [H]

R2 (zero-only X, wrapper C' of 23-27 bits returning x on zero, c U N on
unary): anchor at C''s unary outer node nu'.  If every binder above it is
dispensable there, C' = C''[X3] with |X3| >= XB(k) and C'' a two-hole
wrapper (zero -> x, unary -> y) of at most 27 - XB(k) bits: k = 0 gives
<= 5 bits, and no term of <= 5 bits over [s,c,x,y] can erase y on zero
(that needs s plus two applications plus both holes = 6 bits); k >= 1
leaves <= 1 bit for a context holding a lambda.  CORRECTION: this
assumed the hole x lies outside X3.  If x is inside X3 (X3 then has x as
a unary-dispensable slot and zero value x), the context around X3 can be
trivial and C' = X3 = (P Q) with P -> c U, Q -> N on unary and C' -> x on
zero; the unary side alone costs >= 2 + 10 + 8 = 20, leaving <= 7 bits for
the zero routing.  Every attempt I priced fails (s s x loses x on zero;
s I (s s) x keeps it only under a rigid r), but that is not a proof.  So
R2 = R2b (x inside X3, <= 27 bits) + R2' (needed binder): open, small.
R3 (X = j / c U N, 23 bits, under s I I x): the anchor inside X gives
X = X0[X4] with |X4| >= XB(k); k = 0 and X0 trivial force X itself to be
an arm with a dispensable j-leaf, i.e. T = X[s/j] an arm of 24-25 bits
whose j-slot routes j on zero; arms 24-25 are not enumerable under the
cap.  Open, small.
R4 (X lambda-valued on unary, e.g. s (\b. b j): j on zero, the tail on
unary): the wrapper may apply X's value as a cell; every such use reads
X through a binder or an application, which is again R1'-type sharing.

Net: R1 with dispensable contexts closed; R2 with x outside X3 closed; what
remains in lambda-rooted depth 1 is one phenomenon, a binder above the
unary output node carrying a needed value (R1', R2', R4), plus two small
pinned questions: R2b (an arm-shaped wrapper of <= 27 bits that returns
its slot on zero) and R3 (24-25-bit arms with a j-routing slot).  The
anchor method does not extend cleanly to needed binders, so I did not
take up the application-rooted depth-1 or depth-0 let families.
