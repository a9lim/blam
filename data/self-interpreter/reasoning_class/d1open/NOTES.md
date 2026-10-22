# d1open lane notes (round 4)

Owner of jn's open depth-1 families (a)-(d). Tools copied: dbn.py (jn), rd.py.
Conventions: w = 14 + |B| + |T| for R = \s. s (\b.B) T with j at depth 1
(j priced 0 at top of T, +4 per lambda above it inside its operand;
j in B pays +4 for \b plus 4 per own lambda) -- jn's fam_lamB pricing.

## 0. Setup facts (handwritten unless marked)

- Space size (computer, count.py): terms <= 31 bits in a 3-variable frame
  [b,s,c] number 9.8M (j-free). Enumerating B in (a) is out; reason instead.
- Operands T <= 9 bits (computer, tsem.py): 49 probe meanings. Every
  j-containing T other than T = j and T = \x.j is rigid-headed with j inside
  an argument (j s, s j = j K r, c j, s c j, ...): on zero the output r j
  needs a bare j, and a rigid head never loses arguments, so these T are dead
  (handwritten). Hence family (a) splits into
    (a1) T = j, B j-free, |B| <= 31;
    (a2) T = \x.j (6 bits), B j-free, |B| <= 25;
    (a3) T j-free, |T| <= 9, j inside B (taxed >= 4), |B| + |T| <= 31.
  Only the cheapest T per probe meaning matters (laws see T only up to beta
  on the probes), so (a3) has about 20 T meanings (s, c, I, \x.s, \x.c, F,
  s s, K, s c, c s, \xy.s, \xyz.z, \x.x x, s I, c c, \xy.c, \xyz.y, \x.x s,
  s (\x.s), c I).
- (a1) reformulated (handwritten, exact): j is fresh for B, so
  B r j =b r j  iff  B r =be r, and B r' j =b c r' N iff B r' =b \y. c r' N
  with y vacuous. So with P := s (\b.B): P[Z(r)] =be r, P[U_n] = \y. c r' N.
  This is exactly the semantics of the 162's s I V (zero K r V = r, unary V):
  family (a1) asks whether s (\b.B) can replace s I V (38 bits) at
  |s (\b.B)| = 6 + |B| <= 37.

## 1. fam_bxy re-runs (computer)

- `fam_bxy.py 26` (jn's script, unchanged copy): no reader with
  |X|+|Y|+|T| <= 26 in R = \s. s (\b. b X Y) T, i.e. that family has
  w >= 47.  5.9 s, 224 MB.  (fam_bxy_26.log)
- INCIDENT: `fam_bxy.py 27` hit 5.0 GB RSS and was killed by the 120 s
  timeout (the Y pool at 25 bits through an lru_cache).  Do not run
  fam_bxy at >= 27 again; the 26 run is the ceiling for this tool.

## 2. Shape S3 (B = \x. b A1 A2) closed for every T (handwritten + sec. 1)

B = \x. b A1 A2  vs  B' = b (\x.A1) (\x.A2): same laws (B r T = b A1[r] A2[r] T
= B' r T), and |B'| = |B| + 1 (one extra lambda 2, b's index drops 1 -> 0).
So a reader with B of shape S3 at w gives a fam_bxy reader at w + 1;
fam_bxy has none at w <= 46 (BUD 26).  Closed: S3 readers have w >= 46.

## 3. Family (c): s (\b. b X Y) T1 .. Tq, q >= 3 -- reduction (handwritten)

w = 18 + 2q + |X| + |Y| + sum|Ti| (X, Y depth 2 frame [b,s,c]; Ti depth 1;
j-tax beyond depth 1 inside the pieces).  w <= 45  <=>  |X|+|Y|+sum <= 27-2q.
Unary-core transfer: T** := s (\b. Y) T1 .. Tq satisfies T**[U_n] =
Y[F] r' T1..Tq = c r' N, so it is a unary core (j in some Ti) or a j-free
core (j in X), of cost |T**| = 2q + 6 + |Y| + sum|Ti| in exactly cores.py's
pricing.  Through 22 bits the only cores are s (\q.c) (s s j) (20) and the
j-free s (\q.c) (s s s) (22) [jn cores.py / L2', computer-checked]; T** has
s applied to q+1 >= 4 arguments, so it is neither: |T**| >= 23.  Hence
|X| <= 27 - 2q - (23 - 2q - 6) = 10, independent of q, and q <= 7.
j in X with |X| <= 10 is impossible (handwritten: a lambda above j costs
2 + 8; without one, X is j plus <= 6 bits: b j, j b, s j, j s, c j, j c,
I j -- all leave a rigid j head on zero).  Remaining: j-free X <= 10 must
satisfy the zero law X[K,Z(r)] r T1z..Tqz = r j: pinned check famc.py.
Re-checked here (computer): cores.py unary 22 -> only s (\q.c) (s s j) (20);
6 caps, all j-headed or Omega-headed (no c-headed hnf). lcheck L2 22 -> only
s (\q.c) (s s s); 11 caps (jn: Omega family).

famc2.py (computer, 0.2 s, 23 MB, 0 fuel caps): every j-free X <= 10 (frame
[b,s,c]) x every tuple of T meanings (depth 1, all T <= 14 bits, j none or
once, cheapest per meaning; no T <= 14 has a capped probe) with q = 3..5
(q >= 6 is over budget: sum|Ti| >= 2(q-1) > 25 - 2q - 5) and
|X| + 2 + sum|Ti| <= 27 - 2q: 259 zero-law survivors, each tried against
every j-free Y <= its remaining budget (<= 11) on the unary law: NO READER.
**Family (c) closed: every R = \s. s (\b. b X Y) T1..Tq with q >= 3 has
w >= 46** (computer-checked at n = 1..3, on top of jn's core lemmas).

## 4. Family (a), b-headed bodies: B = \^p. b A1 .. Am  (p <= 2, any m)

Shape list for normal B (generic run of B r T, s = cons b r; handwritten):
B = \^p. h A1..Am with p <= 2 (a third leading lambda survives the two
arguments); h = c or h = (the T binder y) is a rigid head wrong on zero;
h = x (the r binder) with p = 1 is r-headed on zero and needs B = \x.x, dead
on unary; remaining: h = b (this section), h = x with p = 2 (D_r, sec. 5),
h = s (sec. 6), h a redex (sec. 7).

T** bound (handwritten, exact): T** := s (\b. \^p. A2 A3..Am) T satisfies
the unary law, and w(R) - |T**| = 12 + p + |A1|_w.  For p >= 1 or m >= 3 the
lambda-b body of T** is a lambda or an application, so T** is neither 20/22
core: |T**| >= 23, hence |A1|_w <= 10 - p at w <= 45.
famb.py P M (computer; unary templates with placeholders for the tail
operands and T, brute force over (tail, T) meanings in the budget, then every
A1 <= 10 - p on the zero law; validated: with budget raised to W = 36 it
finds the constructed reader \s.s(\b. b (\a.F) (\a.c) s)(s I (s s) j) at 58
and seven relatives at 53..58):
  p=0 m=3..7, p=1 m=2..6, p=2 m=2..5 (all m within budget), T <= 9: NO
  READER.  Each run < 1 s, < 40 MB.  Caps: only Omega and \x.Omega (as A2:
  no hnf / lambda head; as a tail with m = 3 the remaining 5 bits cannot
  erase it -- handwritten).  All unary survivors carry j inside T = s s j,
  which erases it on zero (s s j = r).
With S1 (p = 0, m = 2) closed by fam_bxy for every T: **every b-headed
lambda-dispatcher body with |T| <= 9 has w >= 46.**

## 5. Family (a), D_r bodies: B = \x y. x A1 -- closed for T <= 9 (computer)

zero needs A1z = j (exactly one argument after the rigid r), unary needs
U_(n-1) A1u = c U_(n-1) N.  w = 23 + |A1|_w + |T|_w.  famdr.py: all 53,019
A1 (+ j variants) with |A1|_w + |T| <= 22, all 52 T meanings <= 9: NO
READER (1.6 s, 31 MB).  11 caps: closed Omega-family terms (no hnf, so never
j) and y Omega (zero value Tz Omega; even with T = \x.j it is j on unary too,
not a function).  **D_r bodies: w >= 46.**

## 6. General tool: the deletion lemma (handwritten, exact)

Let E be a source occurrence that is F on every unary probe (the
dispatcher binder b of s (\b. ..), or s K), applied to >= 2 arguments:
E X1 X2.  Replacing E X1 X2 by X2 preserves every unary probe (the
contraction F X1 X2 -> X2 happens under the same binders), so the body M'
is a unary core (j-free if j in X1) of cost |M| - |E| - |X1| - 4.  Unless
M' is s (\q.c) (s s j) or s (\q.c) (s s s) -- which forces the fam_bxy
shape \s. s (\b. b X1 c) (s s j | s s s) -- |M'| >= 23, hence
    w >= 33 + |E| + |X1|_w.
Consequences: |X1|_w <= 12 - |E| at w <= 45 (the T** bound of sec. 4 is
the case E = b at B's top); and s K X1 X2 never occurs in a reader with
w <= 45 (|s K| >= 11 leaves |X1| <= 1).  The 162 and 164 both have
unary-dead material of 10 bits and zero-compatible unary cores of exactly
30 bits (V j; s (\b.c) (s I (s s) j)) -- the gap 23 -> 30 is the price of
keeping j alive on zero.

## 7. Coordinator cap (received mid-lane): <= 100,000 terms per check,
<= 2 min, <= 1 GB, <= 2 threads.  Audit of my runs so far:
- famb (all p, m), famdr, famc2, cores/lcheck re-runs, tsem: within the cap.
- fam_bxy 26 (sec. 1) enumerated > 100k terms (before the cap); it is now
  only supplementary: S3 (m = 2) is independently closed by famb p=1 m=2
  (14,742 A2 + pools, within the cap) for T <= 9, which is all family (a)
  needs.  The fam_bxy 27 incident (5 GB) is recorded above.

## 8. s-elimination lemma (handwritten, exact, family (a) with p >= 1)

Inside B = \x. .. (p >= 1) the binders b and x hold the stream's bit and
tail on every input, so s and cons b x agree there: replacing an occurrence
s P by P b x preserves the reader on all inputs.  At local depth d' (inside
B's own lambdas) for p = 1: |s| = 4+d', |b| = 3+d', |x| = 2+d', so the
replacement costs +3+d'.  If P = \u. P', contracting (\u.P') b costs, by
close46 (6) with A = b (F = 1):  (m_u - 1)(3+d') - 2 m_u - 4 - G1
(G1 = free leaves of P' other than u, j counted 4).  Total
    Delta = m_u (1 + d') - 4 - G1,
and a second leading lambda \v contracted against x adds (m_v-1)(2+d')
- 2 m_v - 4 - G2 <= -6 - G2 + (m_v-1) d'.  Each step removes a lambda, so a
lex-minimal (w, then lambda count) counterexample in the lambda-dispatcher
family F_lam = {\s. s (\b.B) T : |T| <= 9} has Delta >= 1.
Corollary (p = 1, s-headed B = \x. s (\u. P) A2..Am, d' = 0): m_u >= 5 + G1;
budget |P| <= 21 - |T| - sum|A>=2| and five u-leaves cost >= 18, so G1 = 0
(a sixth leaf would push P to >= 26): P is closed over u, contains neither
c nor j, so T must supply both c and j within 3 bits -- impossible.
**s-headed p = 1 bodies with a lambda first operand: no minimal
counterexample.**  (p = 2: same computation gives Delta = 2 m_u - 4 - G1,
weaker; still open, small.)
p = 2 closed too (handwritten): frame [y,x,b,s,c]; s P -> P b x costs +4,
contraction (m_u-1)*4 - 2m_u - 4 - G1, total 2 m_u - 4 - G1 >= 1, so
m_u >= 3 and G1 <= 1 (G1 >= 2 forces m_u >= 4 and |P| >= 22 > 18).
Budget |P| <= 20 - 2m - |T| - sum|A>=2|.  j in P would make G1 >= 4; c in P
(index >= 5 under \u) gives |P| >= 6 + 7 + 6 = 19 > 18.  So j and c lie in T
or the trailing operands; j in a trailing operand is taxed 12 > budget, so
j in T, and the T <= 8 that hold c and j are rigid-headed (dead); hence c in
A2 (6 bits), m = 2, |P| = 10 (P = u u u or u (u u), G1 = 0, T = j); but then
y occurs nowhere and j is lost on zero.  **All s-headed p >= 1 bodies with
a lambda first operand: no minimal counterexample.**

## 9. s-headed p >= 1 bodies with A1 in {b, b Q..}: closed via s-elimination

s A1 -> A1 b x costs +3 (p = 1) / +4 (p = 2) and turns B into the b-headed
body \^p. b .. with m' >= 3 operands (m = 1 with A1 = b is dead: zero gives
K T, a lambda).  famb with WOFF = 3 (p = 1, m = 3..6) and WOFF = 4 (p = 2,
m = 3..6), i.e. w <= 48 / 49 with the T** bound |A1|_w <= 13-p / 14-p:
NO READER (each < 1 s, pools <= 8,123 terms).  So these bodies have w >= 46.

## 10. Gap found: family (e) = \s. s (\b. B) T1 .. Tq, q >= 2, B general

jn closed only B = b X Y for q = 2 (fam_bxy3); sec. 3 closes b X Y for
q >= 3; general B with q >= 2 is in nobody's closed list.  Also: (a) with
p = 0 s-headed B = s A1..Am and b-free A's is the s-spine reader
\s. s A1 .. Am (s F) T shifted down (Delta = 5 - fl(A) - 4[j in A]), i.e.
an (e)-type reader with first operand A1: the families feed each other.

## 11. Family (e) b-headed and D_r bodies: closed (computer)

famb2.py P M Q = famb with q trailing operands (placeholders tT1..tTq for
T1..Tq, brute force over tuples; T** bound |A1|_w <= 10 - p holds for every
q >= 2 since T** has >= 3 operands on s; T pool default W - 4 bits, i.e.
every T size in budget).  Validation: q = 1 reproduces famb exactly (16
unary survivors at p=0 m=3; the W=36 validation hits); p=0 m=2 q=2 finds
exactly jn's fam_bxy3 pair of unary triples.  All 61 feasible (p <= q+1,
m >= 2, q = 2..5) runs: NO READER; max RSS 76 MB, max 3 s, largest pool
22,572.  Caps only Omega / \x.Omega (an erased Omega operand can be replaced
by b without changing either law, so it never hides a reader).
famdr2.py Q (D_r bodies \x y1..yq. x A1; other x-headed bodies need zero
r A.. E with exactly one argument and die): q = 1 (all T <= 22, extending
sec. 5), 2, 3, 4: NO READER.
**Every b-headed or x-headed lambda-dispatcher body, any number of trailing
operands, has w >= 46.**

CORRECTION to sec. 4's shape list: a head y (a binder of a trailing operand
T) is NOT dead when T is function-valued (T = s, I, K, F, \x.s, s I, ...):
B = \x y. y A1..Am runs as T A1..Am; with T = s the binder y is a 2-bit copy
of s (s itself costs 5 at that depth).  These T-headed bodies are open.

## 12. y-headed bodies (q = 1): closed (computer, famy.py)

R = \s. s (\b. \x y. y A1..Am) T.  T = j or \x.j put a rigid j at the head;
the other j-carrying T are rigid-headed; so T is j-free and j sits in an Ai
at depth >= 4: sum|Ai|_raw + 4 own(j) <= 13 - 2m - |T|.  Every such (T, A..)
(20 T meanings, pool 244, 210 readers) checked directly on both laws: NO
READER.  (y-headed with T = s would have been the "cheap s copy" trick; the
j tax of depth 4 kills it.)

## 13. skel.py: two-sided residual checker for first-dispatch skeletons

Holes with frames (roles 'bit' 'r' 's' 'c' 'T1'.., innermost first), a zero
side (zhead zargs.. must be r j) and a unary side (uhead uargs.. must be
c U_(n-1) N); unary templates + brute force over unary-side holes and the
T's, then the zero head and the remaining holes.  Zero heads are searched
to the full budget (no reliance on the deletion lemma).  Validated: famb's
p=0 m=3 q=1 skeleton gives 16 unary survivors / 0 hits (= famb), and at
wmax 58 it finds the constructed reader and its relatives (53..58).

## 14. Family (a)/(e), p = 0, s-headed bodies: first-level handlers closed

R = \s. s (\b. s A1 A2..Am) T1..Tq; generic run A1 b r A2..Am r T1..Tq.
sk_s0.py / sk_s0b.py / sk_s0c.py (skel.py), q = 1..5, every m, l within
budget, zero heads to full budget:
  A1 = \u. u Z Y C..,  \u. b Z Y C..,  \u v. u Z Y C..,  \u v. b Z Y C..,
       b Z Y C.. (l >= 2),  b Z,  \u. u Z,  \u. b Z,  \u v. u Z,  \u v. b Z
  (227 skeletons, max pool 19,042 terms, < 20 s in all): NO READER.
Handwritten for the rest of the first level: A1 = I (b r A2.. r T: r keeps
>= 2 arguments), \u.b (same), K or \u v. b (s K = b: dominated by the
b-headed body, closed), F (r-headed), s (b b r r: r-headed), c (rigid),
\u. u Z with m = 1 (unary K N T..: N-headed).
Open at this level: A1 = s Q.. (nested), redex A1, and handlers whose body
head is s, a redex, or a later argument (\u v w. w ..).

## 15. Generated s-chain skeletons (hskel.py): (a)/(e) p = 0 and family (b)

hskel.py builds every first-dispatch path along s-chains: handler
\^ph. w X1..Xl (w a bit variable, ph <= 2 binding the bit/tail the s just
supplied) or \^ph. s X1..Xl (the next handler, nesting depth <= 3), resolves
both branches symbolically (bit = K / F; r on unary = second-cell dispatch;
r' r' = K N and r'' at n = 1 = N are dead heads) and hands the result to
skel.py (zero head = unary head allowed: the shared head is enumerated with
j).  All budget-feasible paths (saturated in q, m, k, l):
  (a)/(e) p = 0 s-headed: 1,077 skeletons (q 1..11), NO READER; chunks of
    52 s / 20 s / 8 s, max pool 96,229 terms, max RSS 253 MB.
  (b) \s. s (s Q1 Q2..Ql) A2..Ak: 1,734 skeletons, NO READER.  Two
    skeletons exceeded the 100k cap at full budget (106k, 112k terms);
    rerun under the cap with handwritten zero-head bounds (run_big2.py):
    \s. s (s (\u. u X1 X2)): deletion lemma |X1| <= 10;
    \s. s (s (\u. u X1) Q2): s (\u. u X1) = r' = s F on unary, UR savings
    |X1|, so |X1| <= 16.  Both: no reader (22,633 / 17,944 terms).
Not yet generated: handler bodies headed by the tail binder (r-headed),
by a binder of a later stack item (piece-headed), or by a redex.
BUG FIXED (skel.py reservations): skel reserved 2 bits for every hole, but a
depth-1 hole (j-tax base 0) can be a bare j at 0 bits, so (b) skeletons and
T-converted holes had caps 2 bits too tight.  Now one hole may be free
(res()), the T pool is capped at bud - 2 - res(...), and the zero-stage
reservation is exact.  Validations unchanged.  Saturated generator
(depth <= 8, ph <= 8, l <= 8; adding more creates nothing):
  (a)/(e) p = 0: 1,612 skeletons, NO READER (4 chunks, 4..19 s, max pool
    96,229 incl. T pool gate, max RSS 113 MB).
  (b): 3,401 skeletons, NO READER (chunks <= 35 s; one 7-way chunk hit the
    115 s timeout from cache growth and was rerun as two 14-way halves,
    15 s each); the two over-cap skeletons rerun with bounds: no reader.

## 16. ALL redex-free lambda-dispatcher bodies (families (a) + (e)): closed

run_gen.py e: B itself treated as a handler of the stack r T1..Tq at frame
[b, s, c]; heads b, x (tail binder), y_i (T binders), s-chains (depth <= 8),
up to 8 leading lambdas and 8 spine operands (saturated).  3,115 skeletons;
3,102 within the cap: NO READER (chunks 4..99 s, max pool 96,229, RSS <= 152
MB).  The 13 over-cap skeletons:
  b X Y (q=1) = fam_bxy [jn]; b X Y (q=2) = fam_bxy3 [jn]; b X Y Z (q=1)
  = famb p0 m3; \x.b (q=2,3) = s K T1 T2 (T3) [jn K family]; b (q=2) =
  s I T1 T2 [jn case1b]; \x.x (q=1) and \x y. x (q=2: erased T1, weight
  drops to the q=1 case) = jn smallB 'a' (T second-cell handler, T <= 27);
  \x y. y (q=2) = s (\xyz.z) T1 T2 = T1 T2 plus 14 bits: a lambda-rooted
  body <= 25, jn bodies.py; \x. b X1 (q=1): T must be a unary core < 21
  and the zero arm X1 = x j costs 12 (handwritten); b X1 (q=1): T a
  second-cell handler <= 9 bits (needs c, r' and N: impossible).
  OPEN: b X1 with q = 2, 3, i.e. \s. s (\b. b X1) T1 T2 (T3): zero
  X1 T1 T2 = r j, unary T1 b' r'' T2 (T3) = c r' N (T1 a second-cell
  handler).  Full budget: X1 + T1 + T2 <= 25 (q = 2); a complete check
  needs T1 up to ~23 bits (~200k terms with j), over the cap.
Cap audit (audit_caps.py / audit_caps2.py, computer): over all 119 hole
frames at their largest caps (each <= 100k terms), 53 distinct hole terms
have a capped probe; 51 contain a closed unsolvable subterm and the other 2
are unsolvable for every instantiation (Omega built from a vacuous j
argument).  In a valid reader such a subterm is never needed at any probe
(standardization: it can neither reach head position nor survive into the
target), so it can be replaced by a 2-bit term without changing either law;
excluding these terms from the pools loses nothing.  Capped unary templates
are now certified (head cycle, also after eta): the only uncertified ones
(6 in e, 2 in b) are j Omega, j (\x.Omega) (rigid j head) and T1 Omega
(closed Omega argument) -- all harmless by the same argument.
Final certified reruns: e (all redex-free lambda-dispatcher bodies) 3,102
skeletons + b 3,399 (+2 bounded): NO READER.

## 17. Second skel bug fixed: a unary head that also feeds the zero side

skel enumerated the unary head j-free, which is wrong when that hole also
occurs among the zero arguments (second-cell and nested shapes): it may
carry the one j.  Now such heads are enumerated with j (as in same-head
mode).  Affected: 645 e-skeletons and 840 b-skeletons; all rerun
(gen6_*): NO READER.  Over the cap at full zero budget:
  e: \s. s (\b. b X1) T (q=1): covered by fam_lamB (|B| <= 21, |T| <= 21),
     smallB (|B| <= 9) and, for |B| >= 22 (|T| <= 9), the handwritten fact
     that a second-cell handler T needs c, r' and N (> 9 bits).
  e: same with q = 3: rerun with the UR bound |X1| <= 16 (run_open_e.py):
     69,821 terms, NO READER.
  e: same with q = 2: 228k terms even with |X1| <= 16 -- OPEN under the
     cap.  (An over-cap run made before the gate existed found nothing;
     not counted.)
  b: \s. s (s (\u. u X1) Q2): rerun with |X1| <= 16: 53,918 terms, none.
