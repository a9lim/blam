# single lane notes (wave 5): (R-a) single-dispatch readers with a source redex

## 0. Start
Read PROMPT, BRIEF, BRIEF5, class-bound §1-3, zcore REPORT (all) + NOTES §21-25,
needbinder REPORT §§1-5. Next: coord SYNTHESIS last third, rd.py, integrate2 map.
Also read: coord SYNTHESIS last third, rd.py (w = cost + 4 depth(j), frame [c, j]),
integrate2 map, zcore NOTES §2-3, §8-14.

## 1. Frame (handwritten)
R = \s. M, w = 6 + |M| (M in frame [s, c], j taxed 4 per lambda of M above it),
w <= 45 <=> |M| <= 39. (R-a): one deletable site D, sigma in [8,15], core M' = M[D -> W],
|M'| = |M| - sigma in [24, 31] (cores <= 23 = core20/22/23, covered by onesite*.py at |M| <= 39).
Site prices: (a) s I W: sigma = 10 + i_s (i_s = lambdas of M above s), so i_s <= 5.
 (b) x A W: sigma = |x| + |A| + 4.  (c) s K A W: sigma = 6 + (2 + i) + 7 + |A|;
 A not containing j costs >= 2 -> sigma >= 17; A = j costs 4i -> sigma = 15 + 5i.
 => (c) below 46 is exactly s K j W at M-depth 0, sigma = 15, |M'| = 24, |M| = 39, w = 45,
    and M' is a j-FREE 24-bit unary core.  [handwritten, exact]
Touch lemma (handwritten, uses minimality only): in a minimum reader the site is touched
 on the zero run AND on every... on some unary run.  Zero untouched: replacing D by W keeps zero
 (untouched / erased) and unary (deletion) -> lighter.  Unary untouched (all n): replace D by A
 (keeps zero, since zero runs D -> A; unary untouched) -> lighter by |x| + |W| + 4 > 0.
 For (a) s I W the zero run gives R; replacing by... (a) unary-untouched case: replace s I W by
 s I W' with W' = 2-bit filler: lighter.  [all handwritten]

## 2. (c) sites closed (computer-checked, ccase.py; control ccase_ctl.py)
Claim C: no reader with w <= 45 has an s K A W site whose deletion it relies on, i.e.
 no reader R = \s. M with M = M'[s K j W] (site at M-depth 0) and M' a j-free term of
 cost <= 24.  With sigma >= 16 -> T1.  So (c) is closed outright (no minimality used
 beyond T1's own statement).
Run: 80,976 j-free terms of cost 22..24 (jn enum_terms, redexes incl.), unary n=1..3:
 3 cores (core22, core23, s (\q.c) (s s I) at 24), 0 uncertified caps; 27 site insertions
 at lambda-depth-0 positions, 0 zero hits, 0 caps. 0.8 s, 1 thread.
 Completeness: j-free unary cores need >= 22 bits (zcore table); |M'| = |M| - 15 <= 24.
Control: core s I (s (\q.c)) (s s s) + insertion finds the 169 (zero ok).

## 3. First dispatch of a one-site reader (handwritten)
Generic run: M sg, sg = [cons b r / s], b r rigid.  hnf H is b- or r-headed (c/j heads
die on zero; no hnf -> no zero nf).  r-headed: H = r A1, A1[zero] = j, unary A1 is a
cell-2 handler  [= brief's (ii)].  b-headed: H = b A' B' C (C = arg vector):
 zero A' C = R j, unary B' C = c r N.
Dead first dispatches (b at head of H coming from):
 - s s ...: H = b b r r C -> zero R C2.., unary r r C1 C2 = N C2: dead.
 - s (s I) ...: zero K r b r C = r r C: R R .. dead.   s (s F), s t: r-headed with
   args (b, r, ..): zero R K R .. dead.
 - (c) s K j W as FD: zero j C, j-headed: dead (and (c) is closed anyway, §2).
FD-site := the residual of the unique site D is H's head.  Types (a) s I W, (b) x A W.
Lemma J1 (FD-site (b), j inside A, lambda-rooted): impossible below 46.
 sigma = |x| + |A| + 4 <= 15 (T1), so |A| <= 11 - |x| <= 9; j in A under >= 1 lambda of M
 costs >= 4.  |A| <= 9 leaves A in {j, x j, j x, s j, j s} (d_j = 1) or A = j (d_j = 2).
 All zero values are j-headed or K j; zero output A' C is then j-headed.  Dead.
 (A = y j with y let-bound above the handler: y's lambda adds a depth, |A| >= 13. Dead.)
 So FD-site => J3: the zero output's j is a residual of j inside C (the args).
Corollary of the closed families: FD-site with the handler / s I as the ROOT s-spine's
 first operand is closed for minimum readers (no minimum below 46 has a literal-lambda first
 handler: loop + d1open + handlerlet).  So in (R-a) the head path from M's root to the site
 passes a source redex or a non-lambda first operand: (R-a) = {FD-site} ∩ {head-path redex}
 ∪ {FD not the site}.

## 4. Prop Q-j: a site under a last-operand j (handwritten + acheck)
Statement. R = \s. Q j with j the LAST root operand at M-depth 0 (Q j-free), and Q
 containing a deletable site D (any unary identity E W -> W, sigma = |E| + 2) that keeps the
 unary law for every n.  Then w(R) = 8 + |Q| = 8 + |X| + sigma, X := Q[D -> W], and
 X[U_n] j = c U_{n-1} N for all n (deletion lemma), X over [s, c] mentioning s and c.
 acheck (round 3, repaired by Codex through cost 28 with every cap certified): such X has
 |X| >= 28, equality only for V = \u. s (\q.c) (s s u).  Hence
   w(R) >= 36 + sigma, and >= 37 + sigma unless X = V.
 No minimality used.  Consequences: w <= 45 needs sigma <= 9; sigma = 9 forces X = V;
 sigma = 8 forces |X| in {28, 29}.
6-bit unary identities: |E| = 6 means E in {v0 v0, \v2, \\v0}; only v0 v0 = x x with x
 =unary F is an identity.  So sigma = 8 <=> site x x W, x the innermost binder, x = F on
 unary (a cell-1 handler's bit with no binder between \x and the site; the tail then passes
 as an argument).  sigma >= 8 for every site (|E| >= 6).
Coverage: the opener \s. s (\b t. B) j and (i) \s. s (\b. B) j with ANY lets/redexes
 anywhere in Q, zcore's 66-witness shape, every body let (\y. B) Y ... j and every s-spine
 ending in j -- whenever they have a deletable site.  Not covered: j not the last root
 operand, readers without a deletable site ((R-b)/(R-c)), hoisted readers.
Residual cases of Prop Q-j (w <= 45):
 sigma = 9 => X = V; 9-bit sites need |x| + |A| = 5: x t W (handler \x t) or x u W (u the
  binder above \x).  V's only handler is \q. c (one binder) so Q = \u. s (\q. q u c) (s s u):
  zero gives j R (..): dead.  [handwritten, complete]
 sigma = 8, X = V: Q = \u. s (\q. q q c) (s s u): zero gives R, not R j: dead. [handwritten]
 sigma = 8, |X| = 29, w = 45 exactly: X a 29-bit term with X j = c U N.
  Needed narrowing (types/narrow.py, untabled, laws U1,U2, prefix \s. (\u. _) j, B = 37):
  12,740 states, one core \u. s (\q. c) (s s _), filler cost <= 3 -> X in {V, \u. s (\q.c) (s s s)};
  the latter erases j on zero after any insertion (u unused): dead.  So X is application-rooted.
  App-rooted narrowing at B = 37 overflows the 100k-state cap (33 s): NOT run further.
  Structure (handwritten): the site x x W is K on zero, so the handler \x. P (P not a lambda,
  tail passed as argument) needs zero args K C1 C2 C3.. = C1 C3..: >= 3 dispatch arguments, e.g.
  (r, E1, j) with E1 dropped on zero; the unary arm then consumes >= 3 args.  OPEN (pinned).

## 5. Anchor at j's parent for minimum readers (handwritten, from Lemma A + Prop Q-j)
Known (class-bound §3): a minimum reader below 46 has its hole at depth <= 1 and a depth-0
 hole is never the argument of a lambda; so lambda-rooted minimum readers have j at M-depth 0.
Then j's parent Y j lies in M's lambda-free top tree and Y has free vars in {s, c} only:
 Y is hygienic with no closure needed.
Theorem P.  Minimum R = \s. M, w <= 45, j at M-depth 0, parent Y j.  If M's generic head
 reduction brings Y to the head with pending arguments exactly (j) (G0 at Y), then M = Y j.
 Proof: Lemma A (reviewed) gives the reader \s. Y j of weight <= w(R), equality iff the context
 is [] j; minimality forces equality.  Then Prop Q-j applies to every deletable site in Y.
Corollary.  A minimum (R-a) reader below 46 is either a Q-j reader in the sigma = 8 residual
 (§4), or has G0 failing at j's parent: j is not the last root operand, and the head
 reduction never presents Y with j as its only pending argument.
 sigma = 8 FD sub-case F = () (site at the handler body's head, P = x x W): dispatch args
  (r, E1, j); zero K r E1 j = r j drops E1; unary W r E1 j = c r N.  A minimum has |E1| = 2
  or E1 unary-needed (else E1 is dispensable for both laws).  Hand estimates: a 3-lambda W
  costs >= 24 > 19 = the room left by |X| = 29; lighter W need a functional E1 (>= 26).
  Not made rigorous: left as part of the pinned sigma = 8 residual.

## 6. Lemma ZD: the unary-dead region around j (handwritten; checks in zd.py)
Let R be minimum, w <= 45, lambda-rooted (so j at M-depth 0), one site D (sigma), core M'.
S := the maximal unary-dispensable subterm of M' containing j (j itself is always unary-
 dispensable; dispensable positions are ancestor-closed, reviewed).  S is at M-depth 0, so
 the filler s costs 2; S is disjoint from W (S in W puts j in the zero-discarded arm; W in S
 makes the site unary-untouched, contradicting the touch lemma).
 M'' := M'[S -> s] is a j-FREE unary core and |M| = sigma + |M''| + |S| - 2.
(ZD1) |S| >= 9: |M''| <= 41 - 8 - 9 = 24, so M'' in {core22, core23, s (\q.c) (s s I)}
 (ccase.py, complete).  The filler sits at a unary-dispensable position holding s: core23's is
 c, core24's is I, so M'' = core22 and M' = s (\q.c) (s s S).  On zero the head gives c R
 unless the site sits on the head path, and S is erased by s s S -> K R S -> R unless the site
 sits inside s s S; one site cannot do both (a site wrapping all of M' sees only c R (s s S)).
 Dead.
(ZD2) |S| <= 8: S is j or a small j-term that is j-headed, c-headed or erases j on zero (or a
 wasteful I j): dead except S = j.
=> In a minimum (R-a) reader below 46, j's parent node is UNARY-NEEDED.
zd.py run (computer, 0.0 s): ZD2 -- the 19 j-terms of cost <= 8 with j at depth 0: only j and
 (\x.x) j keep a bare j on zero (the rest are j-headed, c-headed or erase j); (\x.x) j is not
 minimum.  ZD1 -- M' = s (\q.c) (s s S0), S0 rigid: all 116 insertions E W (|E| <= 8, every
 position outside S0) give a zero nf without S0 (39 c-headed with S0 inside, the rest S0-free);
 none R- or S0-headed.  Confirms ZD1 dead.
Consequence (S = j): j's parent Y j (Y closed over [s,c]) is touched on unary (Y[U] absorbs j)
 and on zero.  Residual of FD-site (R-a), lambda-rooted, minimum, below 46:
 (alpha) Y reaches the head BEFORE the dispatch with pending (j, E...), E nonempty;
 (beta) Y j is first touched AFTER the dispatch, in both arms (a shared j-carrying operand;
   Y must absorb j on unary and keep it on zero, so Y holds a non-site dispatch);
 (sigma8) the Q-j residual of §4.

## 7. (alpha) at the root: j a non-last root operand (computer + handwritten)
Unary cores \s. X j E1..Ep (narrow.py, untabled, laws U1,U2, B = 37, i.e. |M'| <= 31 = 39 - 8):
 p=1: 45,196 states, one template (\u. s (\q.c)) j (s s _), 2 fuel cut-offs; p=2: 16,693
 states, templates (\u. s) j (\q.c) (s s _) and (\u. s) j (\q.c) (s (\x. s s)); p=3..6: 3,933 /
 644 / 60 / 5 states, none; p>=7: the prefix alone exceeds the budget.
 Cut-offs (handwritten): (\x y. y y) j G with G = \x. x ((\y. x) _) gives G G -> G X -> X .. ,
 always G at the head; ((\x. x x) H) j _ with H = \x. x (I x) gives H H -> H (I H) -> ..,
 never a variable head.  Neither has a head normal form.
Site insertion (alpha.py over insert.py): fillers within the slack, every position, every E
 (j-free) with |M| <= 39: 2,501 insertions, 0 readers, 0 caps.  Control (insert_ctl.py): core
 V j + insertion recovers the 162 at |M| = 40.
=> No reader \s. X j E.. (E nonempty) with w <= 45 has a deletable site (j at M-depth 0).
   No minimality used beyond j's depth.
sigma = 8 Q-j, more (computer): narrow.py on \s. s (\x. _) _ j (the F = () shape with minimal
 context), laws U1,U2, B = 37: 6,306 states, NO core.  F = (F1): K F1 r j = F1 j needs F1 an
 R-producer inside the handler (s F: 11 bits, s s Z: >= 12), leaving |W| <= 10 for a W that
 consumes three arguments: dead by size (handwritten).  Still open: general contexts around
 the handler (the root s-spine cannot carry it as a literal first handler in a minimum).
Generalized (alpha) (handwritten sketch): if Y j E.. reaches the head from inside an argument,
 the pending arguments are literal depth-0 subterms or deeper ones, so \s. Y j E* is a reader
 no heavier (Lemma A pattern); minimality then forces the root form.  Gap: an argument
 produced by a stream step (a handler's t) has no equally cheap depth-0 source.

## 8. (beta1) j's parent is the last root operand: M' = X (Y j) (computer)
narrow.py (narrow_all.py dumps all), laws U1,U2, prefix \s. _ (_ j), B = 37: 80,695 states,
 61 templates (beta1.json), 1 fuel cut-off ((\x. x x) H H-loop, H = \x. x (I x): no hnf,
 handwritten).  beta1.py: fillers within slack -> 113 cores (all re-verified unary), every
 single-site insertion with |M| <= 39: 49,043 insertions, 0 readers, 0 uncertified caps
 (6 zero caps certified by no_beta_eq_cert2).  0.5 s.
=> No reader whose core is \s. X (Y j) has w <= 45 with a deletable site (j at M-depth 0).
Paths so far (j's position in M's top application tree, L = function side, R = argument):
 R (Q-j): Prop Q-j, residual sigma = 8;  L^a R (alpha root): closed;  R R (beta1): closed.

## 9. All j-paths of length >= 2 closed (computer) -> Theorem S
paths.py: for every j-path p of length 3..7 (all application nodes; the L^a R family and RR
 done above), narrow.py (laws U1,U2, B = 37) + beta1.py insertion.  Length 3: LRR 30,310 /
 RLR 21,420 / RRR 33,621 states (2/2/30 templates; 1,697/916/15,113 insertions); length 4:
 7 paths, 57,900 states, 7,361 insertions; length 5: 15 paths, 27,640 states, 214
 insertions; length 6: 31 paths, 9,552 states, no template; length 7: 63 paths, 2,226
 states, none; length >= 8: the prefix alone costs 6 + 4*8 = 38 > 37.  0 readers anywhere,
 one fuel cut-off overall (beta1, handwritten).  Each run < 100k states, < 35 s.
 Totals over the partition: ~330k narrowing states, ~76k insertions (disclosed).
J1 for semantic sites (j1s.py): 915 j-terms E <= 15 (j at depth 0); 26 are unary identities;
 all erase j on zero except s K j (the (c) site, so |M'| <= 24: ccase).  Direct insertion of
 every j-term E <= 15 into the three j-free cores <= 24: 15,705 insertions, 0 readers.
Path R (M' = X j): site inside X -> Prop Q-j; site at the root or at j: |X| >= 28 leaves
 |E| <= 7, and the only 7-bit-or-less unary identity over [s,c] is I (an identity on both
 laws, deletable for free): dead (handwritten).
THEOREM S (computer-checked partition + handwritten pieces; probes n = 1,2 in narrowing,
 n = 0..3 in insertion).  No lambda-rooted reader with w <= 45, j at M-depth 0, and a
 deletable site of savings >= 8 exists, except possibly Prop Q-j's sigma = 8 residual:
 M = Q j, w = 45, site x x W, X = Q[x x W -> W] an application-rooted 29-bit term.
 For minimum readers j at M-depth 0 is forced, and (R-a)'s syntactic sites have sigma >= 8.

## 10. acheck extended to 29 bits; sigma = 8 residual closed (computer)
App-rooted X (X = X1 X2) partitioned by X1's shape (c-headed X1 dies at once: c X2 j):
 \s. (s _) j: 18,649 states, 0 cores;  \s. ((\y. _) _) j: 39,754 states, 0 cores, 1 cut-off;
 \s. ((_ _) _) j: 45,761 states, 0 cores, 1 cut-off.  Both cut-offs are the G-loop and the
 H-loop of §7 (no hnf, handwritten).  With the lambda-rooted run (§4): the only X <= 29 with
 X j = c U N (probes 1,2) are V (28) and X29 = \u. s (\q.c) (s s s) (29).
 (Extends Codex's acheck through 28 by one bit, by needed narrowing.)
=> Prop Q-j's sigma = 8 residual needs X in {V, X29}: V dead (§4), X29 erases j on zero.
pathR.py: cores V j and X29 j, every single-site insertion (any position incl. root and j),
 |M| <= 39: 253 insertions, 0 readers.  Controls: X29 j at budget 41 recovers the 47-reader
 (only hit); V j at 40 recovers the 162 (only hit); core20 + one site through |M| = 42: none.
xcheck.py (cost <= 22): brute force over 60,427 one-j terms (j at M-depth 0) finds exactly
 core20 (path RR) for U1+U2; narrowing on every path of length 1..5 at B = 28 finds exactly
 the same template.  0.4 s.

## 11. THEOREM S, final form
Hypotheses: R = \s. M satisfies both laws, w(R) <= 45, no lambda of M above j, and M contains
 a syntactic site D: s I W, x A W (\x. P a direct argument of an s occurrence, D in P), or
 s K A W.  Conclusion: impossible.
Proof.  sigma >= 8 so |M'| <= 31 (M' = M[D -> W] a unary core, deletion lemma).
 j is outside D except for (c) with A = j: j in W dies with W on zero; j in a (b) arm sits
 under \x (depth >= 1); so either D = s K j W (ccase.py) or j is outside D and keeps its
 position in M'.  Then j's path p in M' is all application nodes and ends with j as an
 argument (j applied would be applied on zero).
 p = R: M' = X j, |X| <= 29, X in {V, X29} (extended acheck, §10); pathR.py: no insertion.
 p != R, length 2..7: paths.py / alpha.py / beta1.py: no insertion (all cores enumerated by
 complete needed narrowing at B = 37, fillers expanded within the slack, every E W tested);
 length >= 8: the prefix exceeds B.
Corollary (with class-bound §3's depth results, minimum readers).  No lambda-rooted minimum
 reader below 46 has a syntactic site; hoisted readers (\a. \s. M) j are depth-0 readers with
 j the argument of a lambda, already excluded for minima.  So (R-a) is CLOSED for minimum
 readers below 46, and so are T1/T2/A2-type and opener/(i)/(ii)/(iii) readers that carry a
 syntactic site.  What remains below 46 (lambda-rooted): readers with NO syntactic site --
 every dispatch is under-applied, let-shared, created, or of the s s / s (s K) kind -- plus
 application-rooted (root-let) readers.
Evidence status: computer-checked (narrowing probes n = 1,2; insertion probes zero + n = 1..3),
 handwritten reductions; Prop Q-j uses Codex's repaired acheck (through 28) and my narrowing
 for 29.  Needs an independent review before it is relied on.

## 12. Review sent; observations while waiting (handwritten)
Codex (astra, high) thread single-thmS-review, packet review/packet.md, reply -> review/codex1.out.
Observation: the insertion step enumerates EVERY j-free E at EVERY position (also positions
 containing j), so the proof never uses what E is.  Generalized Theorem S: no reader \s.M with
 w <= 45, j at M-depth 0, and an application E W in M with j not in E, |E| >= 6, such that
 M[E W -> W] satisfies U1 and U2.  (j in E: only the (c) case is needed for syntactic sites.)
 This also covers let-shared dispatchers whose calls are all compatible (zcore S1: deleting
 y A W keeps unary; E = y A, |E| >= 6).
So below 46 a lambda-rooted minimum reader has no application whose >= 6-bit function part is
 unary-deletable: the cell-1 bit is never applied to two literal arguments; dispatch only by
 under-application (x A, second argument by reduction), bits passed as data / let-shared
 dispatchers with an incompatible call, or stream self-application (s s, s (s K)).
xcheck23.py (computer): exact-cost cross-checks, brute force over every term with j at M-depth
 0 (laws U1,U2) vs narrowing on every R-ending path (length <= 6) expanded to that exact cost.
 cost 23: 49,500 terms, 0 cores both ways.  cost 24: 92,788 terms; brute force 2 cores:
 s (\q.c) (s s (s j)) (found by narrowing, path RRR) and s (\q.c) (s s (j s)) (j APPLIED,
 path ending in L: excluded by design -- a reader never applies j, and for syntactic sites j
 keeps its position in M').  Agreement on every R-ending core.
cores37.txt: the 110 templates (all R-ending paths; path R summarised) -- every lambda-rooted
 unary core with j at M-depth 0, j not applied, w <= 37.  Reusable: any unary-preserving
 simplification saving >= 8 bits lands in this list, so its reverse is a finite insertion.
App-rooted probe: narrow.py prefix '_ j' (R = X j, j at depth 0), B = 37: overflows 100k
 (14.8 s).  Root-let readers are out of this method's reach without more structure.
Post-S residual (handwritten): with no unary-deletable application, the first dispatch of a
 lambda-rooted minimum reader below 46 is s (s K)-type or under-applied with the cell's tail as
 second argument (both make the UNARY run read cell 2 through a handler), or a created /
 let-shared dispatch with an incompatible unary call ((R-b)); a let-shared dispatcher whose
 unary calls are all compatible is unary-deletable (zcore S1) and so excluded by Theorem S.

## 13. Reverse checks for small replacements (computer, rev_small.py)
Any subterm E (j-free) of a reader below 46 whose replacement by a small closed value keeps
U1,U2 while saving >= 8 bits leaves a core in cores37 (expanded: 247 cores <= 31 bits).
 E -> I (|E| >= 12): 30,832 replacements, 0 readers.  Covers every under-applied bit dispatch
   x A (F A ->beta I on unary) with |x| + |A| >= 10.
 E -> F (|E| >= 14): 16,124, 0.  Covers handlers \x. x A used as s-arguments (= F on unary
   as a handler) with |A| >= 8, among others.
 E -> K (|E| >= 15): 12,335, 0.
 E -> variable: 346,376 candidates, over the cap: NOT run.
rev_s2.py (computer): reverse of zcore's S2 edit (selector call g Y inlined as a copy of A, D
 deleted) against the expanded cores (233 from the path files): 0 candidates within
 |M| <= 39 (121 at budget 47, 0 readers there either).  Arithmetic (handwritten): one
 selector call costs >= 11 at its site plus |y| + 4 for D, so M = M' + 17 - (index terms);
 two calls need two A-copies of >= 15 bits inside a <= 31-bit core.  [CORRECTED in §18: this
 proves only the restricted case -- one literal K call, root dispatch, y-free A.]

## 14. Codex review of Theorem S (thread single-thmS-review, astra high; review/codex1.out,
review/THEOREM_S_REVIEW.md)
Verdict: CORRECT as a computer-assisted exclusion; no counterexample.  Reproduced ccase, the
four X narrowings, pathR, all 126 paths of length 2..7 from scratch (329,895 states, 76,845
insertions, 0 hits/caps), the controls and xcheck.  Repairs/remarks:
 - (c) with j in A: make the budget explicit: j-free core >= 22 (checked: all 16,459 j-free
   terms through 21 fail U1), so 39 >= 22 + 15 + |A|, |A| <= 2, and a compound A containing j
   at depth 0 costs >= 4: A = j.  (My §1 had sigma >= 17 for A without j and 15 + 5i for
   A = j, but not the compound case explicitly.)
 - type (b) means the source contains s (\x. P) literally.
 - The §12 generalization must assume j not in E W, not merely j not in E: with W = j in
   function position, deleting E can make j applied (s (\q.c) (s s ((K j) s)) -> ... (j s)),
   breaking path preservation.  REPORT states j not in E W.
 - G and H both reduce to Delta = \x. x x, so the cut-offs are Omega (cleaner proof).
 - 76 local absorber repairs of the 39-bit near miss through weight 47: all fail.

## 15. Probe (not a result): two-law narrowing on the root shared-dispatcher cell
narrow.py 45 --laws 0,1,2 --prefix '\s. (\g. _) (\y. y _ _)': 13,481 states, 0 readers,
 90 fuel cut-offs (the 20 printed have let body g g, i.e. \s. H H; uncertified), 82.7 s CPU (run twice
 by mistake: once for the tail, once for the summary line).  If the cut-offs certify, every
 reader \s. (\g. B) (\y. y A W) with ANY body B is >= 46 -- generalizing zcore's FC1/FC2 for
 this H.  Left to the (R-b) owner.

## 16. State at wrap-up
REPORT.md written (summary, §1 interpreters none, §2 lemmas, §3 results with status, §4 honest
read, §5 review, files).  Second Codex consult (thread single-thmS-review, label
single-addons, packet review/packet2.md -> review/codex2.out) checks rev_small.py and
rev_s2.py.  No stray processes of mine remain (narrowing runs are foreground, capped).

## 17. Recipe (for other lanes): deletion + core list + reverse insertion
1. Pick a unary-preserving local simplification T -> T' (valid in every context on unary
   inputs, e.g. E W -> W for a site, x A -> I for an under-applied bit, s-handler \x. x A -> F)
   with savings |T| - |T'| >= 8 and j not inside T (and j's path unchanged).
2. Then the simplified body M' is a lambda-rooted unary core with j at an R-ending path and
   |M'| <= 31: an expansion of one of the 110 templates of cores37.txt (or V j, X29 j).
3. Reverse: for every expanded core (247 of them), every position holding the T' pattern,
   every T in that frame within |M| <= 39, test both laws.  Everything so far: 0 readers.
Limits: savings < 8 need cores at w <= 39+ (the RR/LR/X paths then exceed 100k states untabled);
application-rooted readers need a different prefix family; non-local simplifications (two
edits) need two-position reverses (rev_s2.py is one example).

## 18. Second Codex consult (review/codex2.out, review/ADDON_REVIEW.md)
rev_small.py: CORRECT (reproduced; 247 cores rebuilt independently, exact equality; holds for
 genuine cell bits, i.e. s (\x. P) in the source).
rev_s2.py: restricted computation correct; my general S2 exclusion BROKEN as a proof: H K is
 A[K/y] not a copy of A when A mentions y; a dispatch below the dispatcher's root returns its
 context; selectors may be cheap local aliases; the docstring promised pairs the code never
 tried (docstring fixed).  Codex's replacement count: two disjoint >= 7-bit selector calls
 give |M| >= 42 (calls 22, let body 24, dispatcher 12, let 4, j's application 2).
 REPORT §3.5 now states only the restricted result plus that count.
