# zcore lane notes (wave 5): the zero-compatible core theorem

## 0. Start (read BRIEF, BRIEF5, class-bound §1-3, d1open REPORT/NOTES §6, jn REPORT)
- Target: after deleting zero-only material, a zero-compatible unary core
  costs >= 30; zero-only + core gives w >= 46. Or find where it fails.

## 1. Setup (computer, zc.py / ex.py over coord/rd.py)
- All seven test readers pass rd.check at n<=6: 162 w46, 47-reader w47,
  164 w48, h165 w49, R59 w59, R84 w84, R104 w104.
- Body-scale core cost |M| (frame [s,c], j taxed 4 per lambda inside M):
  s(\q.c)(s s j) 20; s(\q.c)(s s s) 22; V j 30; (\u.core22) j 31;
  s(\b.c)(s I (s s) j) 30; s(\b.c)(s s j) 20.
- CORRECTION to d1open: the 164 carries 12 deleted bits, not 10:
  b F c -> c saves |b F| + 2 = 2+2+6+2 = 12; 6 + 30 + 12 = 48. (162: s I V -> V
  saves |s I| + 2 = 10; 6 + 30 + 10 = 46.)

## 2. First analysis (handwritten)
- The deletion lemma by itself is trivial (Q = M, Q' = core20 always works);
  its content is only in LOCAL deletions E X -> X with E a unary identity
  (E X =beta X on every U_n), savings sigma = |E| + 2.
- Sites in the test readers (sigma): 162 s I (10); 47 s I (10); 164 b F (12)
  and s I in T (10); h165 b (\u r. r n) (20, j inside the arm); R59 s I (10);
  R84 b (x t) (15) and b (\a k. k a) (18); R104 b (x s) and b (\a q. t u).
- Multi-site: two disjoint sites delete jointly (congruence), so
  |M| >= 20 + sigma1 + sigma2: 164 = 20 + 12 + 10 = 42 exactly (w 48).
- sigma >= 10 is FALSE for a general site: b b (sigma 8) and b t under
  \b t. (sigma 9) are unary identities; the dispatcher binder is prepaid in
  the shared context. So a per-site 10 needs the binder charged to the site.
- Validity under lets/redexes: congruence makes every replacement with
  Q[U_n/s] =beta Q'[U_n/s] (open terms) valid anywhere; let-bound variables
  are value-determined (substitute the argument); lambda-bound variables
  applied in several places are NOT: deleting the zero arm inside a shared
  dispatcher changes every other application of it.

## 3. Anchor lemma at a hygienic zero-r subterm (handwritten; the G0 case)

Setting: R = \s. M a reader, M = Ctx[Q] at a source position p, with
 (Hyg) FV(Q) within {s, c} (Q uses no binder of Ctx; j not in Q is forced),
 (Zr)  Q[Z(r)/s] =beta r.
Generic cell: sigma = [cons b r / s], b, r fresh rigid. h fresh rigid.
 (G0)  Ctx[h] sigma head-reduces to h Y1 (h at the head before b or r),
       and Y1 =beta j with b, r, h free.
Lemma A. Under Hyg, Zr, G0: \s. Q j is a reader and
   w(\s. Q j) <= w(R), with equality iff Ctx = [] j (so R = \s. Q j).
Proof. Substitutivity: each generic head step of Ctx[h] sigma stays a step
after h := Q sigma (no capture, by Hyg), so Ctx[Q] sigma ->* (Q sigma)
(Y1[Q/h]) and Y1[Q/h] =beta j. Instantiate b,r: unary gives
Q[U] j =beta Ctx[Q][U] = c U N; zero gives Q[Z] j = r j by Zr. Cost:
|M| = |Ctx| + |Q|_in-place >= 2 + |Q|_top (Ctx != [] and has an application
node, else zero output is r or a lambda; leaves of Q in place are at least
their top-frame price; j costs 0 in \s. Q j). Equality: |Ctx| = 2 with j
untaxed and Q not under binders => Ctx = [] y, |y| = 0 => y = j. []
Corollary A1 (s I sites). If Q = s I X with X hygienic, then X j = c U N
(unary), so |X| >= 28 by handoff/acheck.py (all shapes through 30 bits,
computer-checked, probes n<=3; solutions \u. s (\q.c) (s s X0), X0 in
{u:28, s:29, c:30, I:30}). Hence w(R) >= 6 + 2 + 10 + 28 = 46, equality iff
R is literally the 162 reader.  [handwritten + computer-checked lemma]
Coverage on the test readers: 162, 47-reader, R59 (Ctx = ((\a t. t a) j) [],
G0 holds, lemma gives the 162 as a lighter reader) are covered.  164 is not
G0 (Ctx = s (\b. b F c) ([] j) dispatches first: case D).  R84, R104 have no
hygienic zero-r subterm (their zero r is a cell-tail binder t).
Refinements of Lemma A (handwritten):
- G0 only needs Y1 =beta j in the zero instance and in every unary
  instance (not generically): the proof instantiates first.
- No minimality is used: Lemma A and Corollary A1 bound EVERY reader.
- Lets: if Q's free variables are let-bound in Ctx ((\x. C1[[]]) A, A
  hygienic up to outer lets), the let-closure Q+ = (\x. Q) A is hygienic,
  zero-r, and |Q+ j| <= |M| because Ctx pays the let's lambda, application
  and A, plus the j-delivery application. So Lemma A holds for let-bound
  sharing between the anchor and the context.
- What is NOT covered: anchors using non-let binders of Ctx (cell-handler
  binders b, t; lambdas of functions applied at several sites). Example
  \s. s (\b t. b t X) j: the anchor b t X uses b, t; but the larger anchor
  s (\b t. b t X) is hygienic, zero-r, with context [] j: still R1.
  So the right move is to take the anchor as large as possible.

## 4. Anchor census on the test readers (computer, anchors.py)
Hygienic zero-r subterms and the class of their context (G0 = context
delivers j in both instances; G1 = delivers a zero-j carrier that is not j
on unary; D = context dispatches on the bit first):
  162: s I V [G0];  47: s I (\u. core22) [G0], s s s [D];  164: s I (s s) [D];
  R59: s I V [G0];  R84: none;  R104: s s s [D] (its real zero r is a
  cell-tail binder);  169 = \s. s I (s (\q.c)) (s K j (s s s)): s I (s(\q.c))
  [G1], s s s [D];  \s. s (\b t. b t (\u. c t (t t u))) j: whole s(...) [G0].
NB s s s is zero-r (s s s = K r s = r on zero, N on unary).
So Lemma A reduces 162/47/R59/btX to R1; the residual types are
  D (164), G1 (169), N (R84, R104: zero head r is a non-let binder).
Lemma A' (G1, literal): if Ctx = Lets[[] Y] with Y hygienic up to the same
lets, \s. Lets[Q Y] is a reader of no larger weight (same proof): G1 readers
reduce to the two-operand family F2 = {\s. Q Y : Q zero-r, Y zero-j}.

## 5. One-j unary cores at 21..23 bits (computer-checked, core23.py)
Complete enumeration (jn's enum_terms, all shapes incl. redexes, j taxed
4/lambda) at EXACT cost: 21: 16,126 terms, 0 hits, 0 caps; 22: 30,464,
0 hits, 4 caps (j (\x.Omega), Omega-family: j-headed or no nf); 23: 54,424,
0 hits, 0 caps.  Each < 1 s.  So through 23 bits the only one-j unary core
is core20 = s (\q. c) (s s j) (confirms bridgeadv's pre-cap claim inside
the cap).  Validation: the normalizer accepts core20 and s(\q.c)(s s (s j)).

## 6. Two-site theorem (handwritten reduction + computer-checked finite part)
Def. A syntactic dispatch site in a reader body M is an occurrence of
 (a) s I W (s the stream, unshadowed), sigma = |s I| + 2 >= 10;
 (b) x A W, x the binder of an abstraction \x. P occurring as the direct
     argument of a stream occurrence s (\x. P), sigma = |x| + |A| + 4 >= 8;
 (c) s K A W, sigma >= 15.
Each is deletable on unary (E W -> W preserves the unary law, congruence
on s := U_n; for (b) because s (\x.P) ->beta P[F/x] U).  Two sites are
disjoint when neither lies in the other's E-part; both deletions commute.
Theorem T2. If M has two disjoint syntactic sites, w(\s. M) >= 46.
Proof. |M| = |M''| + sigma1 + sigma2, M'' a unary core.  (i) j-free M'':
 |M''| >= 22 (jn L2', computer) and j sits in a zero arm A under the
 handler lambda (tax >= 4, sigma >= 10) or in s K A (sigma >= 15): total
 >= 22 + 10 + 8 = 40.  (ii) M'' with j: if |M''| >= 24 then >= 24 + 16;
 else |M''| <= 23, so M'' = core20 (section 5) and sigma1 + sigma2 <= 19.
 Every M with |M| <= 39 obtained by re-inserting two disjoint sites into
 core20 was enumerated (twosite.py; handler binder can only be q of
 s (\q. c); zero arms A of cost <= 5 suffice since sigma <= 11 each):
 84 / 144 / 228 candidates (arm depth 1 / 2 / 3), no reader, < 2 s.
 Validation: at |M| <= 42 the same generator finds exactly the 164 (both
 insertion orders); at 40 and 41 no core20-based two-site reader exists.

## 7. Semantic sites; what T2 covers (computer uid.py + handwritten)
- Hygienic unary identities E (E[U_n] y =beta y, FV(E) in {s,c}, optional
  one j), all shapes through 13 bits (uid.py, 181 + 315 terms, no caps):
  zero-RELEVANT ones (E W W2 on zero != W W2) are s I (8 bits) and then
  only 12-13-bit terms (s (s I), s (F j), (\x. s I) j, (\x. s) j I,
  s K j).  Zero-irrelevant ones (I, F s, F j, ...) are removable on both
  laws.  So T2 extends to hygienic zero-relevant semantic sites: below
  sigma 12 they are s I, already in the enumeration; above, sigma >= 14
  forces |M| >= 20 + 14 + 8 = 42.
- T2 is indifferent to let-sharing between a site's arms and the core:
  R84's let-bound x (zero use x t, unary use c t x) is fine because both
  of R84's sites are syntactic.  Coverage: 164, R84, R104, 169 all have two
  disjoint syntactic sites -> T2.  162, 47, R59 -> Lemma A.  So every
  lambda-rooted test reader is covered by Lemma A or T2.
- NOT covered by T2: sites whose E uses a let-bound or shared dispatcher
  variable (E = g with g := s I gives sigma = 4; the let's 12 bits sit in
  the core), and readers with <= 1 syntactic site.

## 8. Single s I site => G0, unless a second (created) dispatch exists
If M = Ctx[s I W] and no dispatch event (b at the head of a generic head
reduction) occurs in Ctx before the hole, nor in the head reduction of the
delivered argument Y1, then Y1's generic hnf is j-headed and equals j
(zero law), i.e. G0.  So a reader whose ONLY dispatch event is one s I
site with W hygienic up to lets has w >= 46 (Lemma A + acheck).  The
residual for s I readers: a second dispatch event that is not a syntactic
site (created by reduction: bit passed as data, shared handler, s P with P
non-literal), or W using a non-let binder.

## 9. Where the naive zero-compatible core statement fails (computer, rd.check n<=6)
The uniform form "zero-only material >= 10 and core >= 30" is false; the
true statements are joint.  Witness readers (all correct):
- sigma < 10: \s. s (\b t. b t (\u. c t (t t u))) j, w 52: site b t,
  sigma 9, core s (\b t. \u. c t (t t u)) j = 37.  b b site: \s. s (\b. b b
  (\t y u. c t (t t u))) s j, w 61, sigma 8, core 47.
- core < 30: \s. s (\b t. b (t j) (c t (t t t))), w 54: j in the zero arm,
  sigma 19, j-free core s (\b t. c t (t t t)) = 29.  (Hoisted 165: core 29
  in weight scale, sigma 20.)
- 164: sigma 12 (+ the inner s I site, 10) around core20.
So: one s I site + G0 => core >= 30 (Lemma A2, that IS the conjectured
theorem, for every context); two sites => sigma1 + sigma2 >= 20 over
core20 (T2).  A single cheap site must be paid by a large core.

## 10. Anchor closure (handwritten extension of Lemma A)
Value-determined binders of Ctx: let-bound x ((\x. C1) A), the two binders
x, t of a handler \x t. P that is the direct argument of a stream
occurrence (x := b, t := r generically), and binders of a literal
application spine.  If Q's free variables are s, c and such binders,
re-wrap Q in the constructs it needs: (\x. Q) A, s (\x t. Q), ... giving a
hygienic Q° with Q° sigma =beta Q[values] generically; Ctx pays each
wrapper (8 bits for a handler frame, 4 + |A| for a let) plus the delivery
application, so |Q° j| <= |M| and Lemma A applies to Q°.  Example: the
anchor t in R84 closes to s (\b t. t) (= r), whose context is D-type.
What closure cannot reach: binders of lambdas applied at several sites
(shared helpers), whose values differ between applications.

## 11. Residual map after Lemma A (+closure) and T2 (handwritten)
lambda-rooted readers not yet covered are exactly those with <= 1
syntactic site and no G0 closable zero-r anchor, i.e.
 (Res-1) one syntactic site plus a SECOND dispatch event that is created by
   reduction (bit passed as data, let-bound or shared handler, s P with P
   not a literal I/K/lambda, x A with the second argument supplied by
   reduction, e.g. the skeleton \s. s (\b. b X1) T1 T2, whose b X1 has no
   literal W);
 (Res-2) the zero head r produced inside a shared helper (a lambda applied
   at several sites), so no closure of the anchor exists;
 (Res-3) no syntactic site at all (all dispatch through lets/redexes);
 plus every application-rooted reader (Lemma A and T2 are stated for
 \s. M bodies).
Pure single-dispatch readers (exactly one dispatch event): type (a) is G0,
done.  Type (b) handler sites: the deleted core M' is dispatch-free, so
its c-producer and its j-eraser are generic and the unary arm W must
contain both; with j delivered after the handler this is the opener shape
(needbinder), and its tail-using absorbing arm X (X j = c t N) costs >= 26
by a leaf count (c >= 5, t >= 3, two N leaves >= 6, four applications 8,
lambda + leaf 4), so |M| >= 10 + 7 + 2 + 26 = 45.  (handwritten sketch)

## 12. T1: one heavy site (handwritten reduction + computer, onesite.py)
j-free unary cores through 23 bits (core23free.py, complete, exact cost):
20: 0 (1 cap, \x. Omega-family), 21: 0, 22: core22 = s (\q.c) (s s s)
(9 caps, all Omega/self-application loops without nf), 23: core23 =
s (\q.c) (s s c) (6 caps, no nf or c Omega).  With section 5, the unary
cores through 23 bits are exactly core20, core22, core23.
Theorem T1. If a reader body M has a syntactic site with sigma >= 16,
|M| >= 40 (w >= 46).  Proof: else M' = M minus the site has cost <= 23, so
M' is one of the three cores; onesite.py re-inserts one site of type (b) or
(c) at every position with every arm (jn's enum_terms, all shapes, j in
the arm for the j-free cores, j taxed 4 per lambda above it) under the
budget |M| <= 39: 245 candidates, no reader, 0.0 s.  (Type (a) has
sigma <= 11 in these cores.)  Validation: budget |M| <= 49 gives 87,039
candidates and 15 readers (w 52..55), e.g. \s. s (\q. q (\x y. x j) c)
(s s s) (w 55) and \s. s (\q. q (q (\y. y j)) c) (s s s) (w 52).
Corollary (T1 + T2).  A lambda-rooted reader with w <= 45 has at most one
syntactic site, of sigma in [8, 15]: s I W, x A W with |x| + |A| <= 11,
or s K j W at depth 0 (sigma exactly 15).

## 13. Codex adversarial review (gaslamp thread zcore-review, astra high)
Verdicts: Lemma A correct (instance-wise G0 suffices; let extension sound
when "hygienic up to lets" excludes j and every non-let binder and closes
transitively; semantics by substituting the enclosing lets first).  A2:
GAP in the cited evidence -- round-3 acheck.py maps fuel exhaustion to
False; Codex repaired it through cost 28 (376,730 terms over [s,c]
mentioning both s and c: exactly one accepted, \u. s (\q.c) (s s u) at
28; 28 caps, all rejected by not_target_cert directly).  So A2 stands on
Codex's check (not re-run here: over this lane's cap).  T2 correct; its
reduction and finite evidence reproduced (144 candidates at depth 2, zero
readers, zero caps; budget 42 gives only the 164).  Bug: twosite.py's
disjointness filter over-included (only E's argument subtree excluded);
fixed to exclude the whole E-part; harmless (over-inclusion).
After the fix: 46 / 76 / 118 candidates (arm depth 1/2/3) at |M| <= 39,
no reader; budget 42: only the 164 (two insertion orders).

## 14. Consequences and an extension (handwritten)
- Nested sites: a site inside another's E-part sits in a zero arm A with
  |A| >= 10, so the outer site has sigma >= 16 and T1 applies (T1's arm
  enumeration contains every nested site).  Hence: a lambda-rooted reader
  with w <= 45 has AT MOST ONE syntactic site in its whole body, with
  sigma in [8, 15].
- Let-groups (extension of T2).  A let (\g. B) E with E hygienic (closed
  over s, c up to outer lets), zero-relevant, E y =beta y on every unary
  instance, all of whose uses are applied (g W): every use deletes
  (g W -> W, congruence with g := E), then the let is erasing and deletes
  too; sigma_group = 4 + |E| + sum(|g_i| + 2) + shifts >= 12 + 4k, |E| >= 8
  (uid.py: below 12 bits the only zero-relevant hygienic unary identity is
  s I).  So a group with k >= 2 uses gives |M| >= 20 + 20; a group plus a
  syntactic site gives >= 20 + 16 + 8.  A k = 1 group is a linear let of a
  single s I site (back to the single-site case).
- So below 46, the remaining dispatch structure is: one syntactic site
  (sigma 8..15) or one linear let-group, plus any number of dispatch events
  created through non-deletable sharing (a dispatcher or zero arm bound by
  a lambda that also receives non-bit arguments on unary, e.g. close46's
  helper G with G F = I and G s = V).

## 15. T2 for semantic sites (computer uidq.py + handwritten)
Unary identities over [q, s, c] with q := F (a handler bit), all shapes
through 11 bits (81 terms, no caps; uidq.py): zero-irrelevant I, I I,
\x. I x, F q, F s; type (b) forms q A (A in {q, s, c, I, \y.q, \y.s, q q,
K, q s, s q, \y.c}); s I; and two new s I-like forms s (\y. q) (10) and
s (q q) (11) (zero K r, unary I).  With uid.py (hygienic, top frame):
every ZERO-RELEVANT semantic site (E W with E a unary identity at its
position by congruence) has |E| >= 6, and >= 8 if it carries j, and below
sigma 12 it is s I or q A with |A| <= 5 -- exactly what twosite.py
enumerates.  So T2 holds for any two disjoint zero-relevant semantic sites
(hygienic, using handler bits, or let-bound value-determined variables
whose lets are charged), with no new finite check.  Zero-irrelevant sites
are removable on both laws (a lighter reader).

## 16. Hoisted readers (\a. \s. M) j, any multiplicity of a (handwritten)
(REPORT.md write was refused by the harness; the report goes in the final
message.)  w(R) = 6 + |M|_[s,a,c] (j at depth 0 costs 0).  Sites inside M
delete as before; R'' = (\a. \s. M'') j is a unary core.
Lemma H. w(R'') >= 29; and >= 30 if a occurs in M''.
Proof: M''[c/a] is a j-free unary core over [s,c] (the a's carry j, which
is unary-dispensable, so any rigid filler keeps the law), and
|M''|_[s,a,c] = |M''[c/a]|_[s,c] + #c_orig (an a at local depth d costs
3+d like the c replacing it; an original c costs one bit more under the
extra binder).  #c_orig >= 1 and |M''[c/a]| >= 22 (L2'), so |M''| >= 23.
If a occurs in M'', equality needs M''[c/a] = core22, whose single c must
then be original, so no a remains: contradiction; and core23 or more gives
|M''| >= 24.  []
T2-H: two disjoint sites => w >= 46.  (a in a deleted site: that site
has sigma >= 10 (a under the handler lambda costs >= 4, or s K A >= 18),
so w >= 29 + 10 + 8 = 47; a in M'': w >= 30 + 8 + 8 = 46.)
T1-H: one site with sigma >= 17 => w >= 46.  The hoisted 165 (sigma 20,
R'' = (\n s. s (\b. c) (s s s)) j of weight exactly 29) is covered: 49.
So a hoisted reader below 46 has at most one site, sigma <= 16 (<= 15 if a
survives the deletion).  This covers part of class-bound's open "depth-0
readers whose j follows a shared top-level let", for every multiplicity.

## 17. Coordinator note: jerase witnesses and types BN46 (integration)
My route never prices by erasure origin; it prices dispatch SITES (E W ->
W deletions) around a core that keeps every shared source node once
(a union accounting in jerase's sense, with the core list as the bound).
Checked against jerase's witnesses:
- R50 (hoisted, w 50): one site sigma 20, a survives in s s n, so Lemma H
  gives w >= 30 + 20 = 50 -- exact.
- F52 (w 52): its site b (\u t. t n) is semantic (handler lambda inside the
  let (\n b. ...) j, still value-determined: b := F on unary); sigma 19,
  core s ((\n b. c) j) (s s s) = 29; 29 + 19 = 48 = |M|, consistent.
- R58 (w 58, beta-normal): ONE site b (t n), sigma 4 + 4 + 7 = 15; no
  hygienic zero-r anchor (s (\b t n. ...) is \n. r n on zero): in my
  residual; covered instead by types BN46 (beta-normal).
- R64, R70: two disjoint sites each -> T2.
- 162 (j erased at terminal K) and 165 (input F) need no erasure label:
  Lemma A and Lemma H price them.
Types BN46 (every beta-normal reader w >= 46) + this lane: a counterexample
must have a source redex AND (lambda-rooted) at most one syntactic site of
sigma 8..15 (or one linear let-group), and if its zero head is a hygienic
s I anchor, a created dispatch in its context.  Lemma A, T1, T2, Lemma H
all hold with redexes and lets anywhere, which is where they now matter.

## 18. T1 for semantic sites (computer, onesite_sem.py)
Insert E W into core20/22/23 at every position, E ANY term (all shapes,
jn's enum_terms) over the position's frame that is a unary identity there
(handler bit q := F, s := U_n; E y = y for n = 1..3), sigma in [16, 19]
(budget |M| <= 39): 23,713 E-candidates, 1,771 unary identities, NO
reader, 0.2 s.  So T1 holds for semantic sites too (E over the core's
binders, j in E for the j-free cores).  Validation (cap-compliant,
core22 only, |M| <= 46, |E| <= 18): 59,817 candidates, finds exactly
\s. s (\q. q (q (\y. y j)) c) (s s s) (w 52).
CAP BREACH (disclosed): one earlier validation run over all three cores
at |M| <= 46, |E| <= 18 enumerated 144,133 E-candidates (1.0 s, tiny
RSS) -- over the 100,000-term cap; it is not counted (the core22-only
rerun above replaces it).  A first attempt at |M| <= 49 without an E cap
(arms up to 27 bits) ran about two minutes before I killed it; no output
from it is used.

## 19. Nested sites in hoisted readers (handwritten)
A nested site inside a handler arm A has |A| >= 10, so the outer sigma >=
16; if a (the hoisted j) is in M'' then w >= 30 + 16 = 46; if not, a lies
in the deleted part, which pushes |A| >= 12 (a costs >= 4 under the
handler), sigma >= 18, and T1-H applies.  So hoisted readers below 46 also
have at most one syntactic site in the whole body.

## 20. Codex review 2 (same thread)
- T1 (Claim 3): correct; Codex reproduced onesite.py (245, 0 readers, 0
  caps) and audited all 53,537 j-free terms through 23 bits: exactly
  core22, core23; 17 caps all certified by not_target_cert.  Nested-site
  corollary correct.
- Lemma H: correct (justify M''[c/a] by applying [c/j] to the unary
  equation of M''[j/a]; its target has no j).  Sharp: (\a s. s (\q.c)
  (s s s)) j w 29, (\a s. s (\q.c) (s s a)) j w 30.
- Semantic-site catalogue: my literal summary was WRONG -- q K (11 bits,
  arm 7) and q (q q) (10 bits, arm 6) are zero-relevant handler-bit
  identities outside "q A with |A| <= 5".  Correct threshold: sigma < 12
  (|E| < 10); sites with sigma >= 12 need no enumeration (12 + 8 + 20 =
  40; j-removing: 22 + 10 + 8).  Below it the sites are exactly the
  enumerated syntactic ones, so T2-semantic survives.
- Let aliases are NOT covered by the local bound: \s. (\g. g (g V) j) (s I)
  (w 64, V the 162's arm) has two disjoint zero-relevant sites g W of
  deletion cost 4 each.  It needs the let-group accounting (section 14:
  sigma_group >= 12 + 4k), consistent with w 64.
