# types lane NOTES (intersection-type role supports)

## Step 0 (read)
Read PROMPT, BRIEF, BRIEF5, class-bound §1-§3, SYNTHESIS last third.
Target: w(R) >= 46 for every reader R (free c, j; one j; R Z(r) = r j;
R U_n(N) = c U_(n-1)(N) N). w = cost + 4 depth(j), j priced 0, c at its index in frame [c,j].

## Step 1 (supports on known readers; computer-checked, supp.py)
Support of law l = positions whose replacement by a fresh rigid variable breaks l
(= positions typed in EVERY non-idempotent derivation of l; untyped => dispensable by
subject expansion + BT monotonicity; see Step 2 for the argument). Laws Z, n=1,2,3.
Union accounting (ZU shared / Z-only / U-only / fillers, bits):
- 162  \s. s I (\u. s (\q.c) (s s u)) j : ZU 14, U 26, Z 0, fill 2 (u), 4d=4  -> 46
- 164  \s. s (\b. b F c) (s I (s s) j)   : ZU 28, Z 6 (F), U 10 (c, s s), 4d=4 -> 48
- 165  (\n s. s (\b. b (\u r. r n) c) (s s s)) j : ZU 28, Z 14, U 5 (c), fill 2 (3rd s) -> 49
- R84  : ZU 39, Z 19, U 22, 4d=4 -> 84 ; R75 : ZU 36, Z 20, U 15, 4d=4 -> 75
Pattern: every Z-only/U-only branch root is an argument of a cell bit b (K / F) or of the
stream's own bit (s I ...), or erased by U_0's terminal K (fillers u, 3rd s, and j in unary).
Shared skeleton never contains c or j (env types: c:[] in zero, j:[] in unary).

## Step 2 (the system; handwritten, standard results cited)
System R (Gardner 94 / de Carvalho 07), non-idempotent: t ::= atom | M -> t, M finite multiset.
x:[t] |- x:t ; lam: Gamma,x:M |- B:t => Gamma |- \x.B : M->t ; app: P:[t1..tk]->t, Q:ti (k>=0,
k=0 => Q untyped), envs summed. Subject reduction AND expansion for full beta; typable with no []
in positive positions of the judgement <=> weakly normalizing.
Role judgements (principal derivations of the required normal forms, fresh atoms):
 zero : r:[[a]->o], j:[a] |- r j : o            => R : [sigma_1..sigma_m] -> o, j:[a], c:[]
 n>=1 : c:[[theta_{n-1}]->[v]->o], N:[v,v'] |- c U_{n-1} N : o (theta = full type of U_{n-1})
        => R : [sigma'_1..] -> o, c:[...], j:[]
Lemma S1 (handwritten): p untyped in some derivation D of law l => p l-dispensable.
  (R[Omega/p] keeps D; D normalizing => R[Omega/p] input normalizes; BT monotone => nf <= target,
  bottom-free => = target.)  S2: p dispensable => the derivation of R[Omega/p] (subject expansion)
  types R with p untyped. So core_l = intersection of supports; with joint dispensability (hole
  lane, reviewed) one derivation attains it. Types add nothing to ONE role; content is in
  (i) the type PAIR at shared nodes, (ii) syntax-directedness on beta-normal terms.
Consequences (handwritten, immediate from envs): c never typed in zero, j never in unary, so the
shared skeleton T = supp_Z cap supp_U is c-free and j-free; supports are ancestor-closed.

## Step 3 (narrowing = canonical-derivation search; computer-checked growth)
narrow.py: needed-narrowing over partial terms, laws {Z,1,2} run in lockstep by a Krivine
normal-order machine against the target nf; a hole is refined only when a run needs it;
unrefined holes = untyped in every law = fillers (2 bits). LB = refined + 2*open + 2*[j unplaced].
Complete for the checked laws (path argument in the docstring), fuel cut-offs listed.
beta-normal only (no lambda at an application head):
  B=30: 3,755 states, 0 sols, 1 fuel (Omega-like x3 x3) 1.3 s
  B=36: 34,476 states, 0 sols, 13 fuel (all self-application loops) 15.7 s
  B=40: > 100,000 states (cap) ~110 s.  Growth ~1.45x per bit => ~1e6 states at B=45: OVER CAP.
So the plain demand-driven (type-derivation) search does NOT fit the cap even for beta-normal
readers. Need an abstraction. Next: instrument where the states go (one role complete?).
Instrumented B=32 (7,666 states): 62% die on the zero law alone, 31% internal (all laws need
holes), only ~2% have zero complete. Unary-first refinement order: 7,095 / 30,790 (B=32/36), ~same.
So the blow-up is the number of partial terms consistent with all runs so far, not a
zero x unary product. Trying admissible LB terms (j tax >= 4*dmin, c >= 2+dmin) + fail-first.
Admissible LB (j unplaced: +4*max(dmin,jlo)-2; c unplaced: +dmin; prune if j/c unplaceable):
  B=32 2,887 | 36 13,094 | 38 28,320 | 40 62,331 states (fuel 12, all Omega-like), 11 s.
  growth ~1.47x/bit => ~4e5 at B=45 (4x over cap). Fail-first selection: fewer nodes but more
  total evaluations (B=40: 34,169 + 38,595 lookahead) -> no gain. j at depth 1 only: 56,936 (B=40);
  depth>=2: 15,432. Shape histogram (B=38): about half the states have a stream-headed first
  operand  \s. s (s ...) ...  (an OPEN family in class-bound), the rest lambda first operands.
Next: certify fuel cut-offs (exact cycle detection on the normal-order run), then push B under cap.
Fuel cut-offs certified by an exact head-cycle test (run: (H P1) ->* (H P1) Y with the stack
base untouched => no hnf => no nf => law fails for every completion). B=40 beta-normal:
62,331 states, 0 solutions, 0 uncertified cut-offs, 3.6 s (computer-checked, laws Z,1,2).
Completeness sanity: --prefix '\s. s _ _ j' at B=46 finds exactly the 162 (95,894 states);
'\s. s _ (s _ _ _)' at B=48 finds exactly the 164. Machine agrees with rd.py on 162/164/165/
R84/R75/47-reader for laws Z,1,2,3 (testnarrow.py).
RESULT B41 (computer-checked, narrow.py 41 --betanormal --laws 1,2,0): no beta-normal term with
free c, j (j at most once) and w <= 41 satisfies laws Z, U_1, U_2. 75,087 states, 0 sols,
0 uncertified cut-offs, 7.5 s, 22 MB. Hypotheses: class cost model (frame [c,j], j priced 0,
+4 depth(j)); beta-normal = no lambda at an application head; no minimality assumption.
(B=40 unary-first: 50,508.) B=42 would be ~1.1e5 (over cap); B=45 ~3.5e5. So the type-directed
search closes beta-normal readers through 41 only; 42..45 needs a better abstraction.
RESULT D2 (computer-checked): no beta-normal term with j at depth >= 2 and w <= 45 satisfies
laws Z,U_1,U_2 (narrow.py 45 --betanormal --laws 1,2,0 --jdepth 2+: 99,562 states, 0 sols,
0 cut-offs, 13.4 s). No minimality hypothesis (the record's depth>=2 closure assumed minimality).
Joint vs single-law sizes (B=38): Z alone 32,549 (338 zero cores), U alone 50,095 (36 unary cores),
joint 28,320: the laws prune each other only weakly; growth is the per-law narrowing itself.
RESULT D1-42 (computer-checked + 2 refuted cut-offs): no beta-normal term with j at depth 1 and
w <= 42 satisfies Z,U_1,U_2 (narrow.py 42 --betanormal --laws 1,2,0 --jdepth 1: 96,265 states,
0 sols, 13.4 s). Cut-offs: both are \s. s (\x1 x2 x3. x3 x3) W _ whose zero run is W W _ with
W1 = \x. x (\y. x y) (handwritten: W1 M_k ->h M_k M_{k+1} ->h ... ->h W1 M_{k+1}, M_0 = W1,
M_{k+1} = \y. M_k y: infinite head reduction, no hnf) and W2 = \x. x (x (\y. x)) (blam
adjudicate: DIVERGE, no whnf on own head chain). So with D2: NO beta-normal reader has w <= 42
(laws Z,1,2; no minimality). Depth-1 band 43..45 open for beta-normal (est. 1.4e5..3e5 states).
Observation: in all five readers supp_1 = supp_2 = supp_3 (reader part of the unary derivation is
n-independent; the skip U_m U_m ->4 U_(m-1) U_(m-1) types input cells only; types grow with n).
General readers (redexes allowed): narrow.py overflows 100k states already at B=32 (80 s):
lets multiply the consistent partial terms; the method does not reach the general case at all.
Next: one top-level shared let, otherwise beta-normal: prefix '\s. (\x. _) _' --betanormal.
One top-level let under the stream binder, rest beta-normal (prefix '\s. (\x. _) _'):
B=38 13,122; B=40 27,761 (4 cut-offs, Omega-like) -> ~1.8e5 at 45: over cap.
Types at the 162's shared dispatcher I (handwritten, from the canonical derivations):
 zero: I : [tK]->tK, tK = [[a]->o] -> [] -> [a] -> o   (K takes r, erases V, returns r; then j:a)
 n=1 : I : [tF]->tF, tF = [] -> [[]->o] -> [] -> o      (F erases the tail U_0, takes V:[]->o)
 so I : ([tK]->tK) /\ ([tF]->tF): one polymorphic identity at two instances; root s at n=1:
 [[tF] -> [] -> [[]->o] -> [] -> o] -> [[]->o] -> [] -> o  (tail untyped at the root copy).
Trying the pinned family R1 (j last argument of the root spine), beta-normal, B=45.
Pinned R1 (\s. Y j, j last root argument), beta-normal: B=41 23,354; B=43 51,093 -> ~1.1e5 at 45:
just over cap; not run. Side results (computer-checked, beta-normal, laws Z,1,2):
 - prefix '\s. s _ _ j', B=46: the ONLY core is the 162's  \s. s I (\u. s (\q.c) (s s _)) j.
 - prefix '\s. s _ (s _ _ _)', B=48: the ONLY core is the 164.

## Step 4 (shared lets: interface types; handwritten)
A let l = (\x.B) A is a cut: x's types M_Z (zero) and M_U (unary) are not subformulas of
anything; they are exactly what A communicates in each role. Cases: M_U = [] (A zero-only, the
let is a zero router, e.g. 165's \n: in unary n untyped), M_Z = [], or SHARED (both nonempty,
A's root in T). For a shared let, T_A = supp_Z(A) cap supp_U(A) is c-free and j-free.
Split lemma: if no occurrence of x in B is typed in both roles, replacing l by
(\xZ xU. B') A_Z A_U (A_Z/A_U = A with the other role's branches made fillers, occurrences renamed
by role) preserves every law (each role's derivation is unchanged) at price
  + |T_A| + 4 + (index shifts) + (filler differences),
so the let's whole sharing gain is |T_A| plus O(1): sharing is ONLY the shared skeleton of A.
Example R84: A = s (\b t. b (\a k. k a) (t t)) j, T_A = s (\b t. b _ _) _ = 17 bits; x has one
zero use (x t) and one unary use (c t x); interface ([[a]->o] -> o) /\ nu (lambda on zero, N on
unary): a NON-uniform intersection, so A must contain its own separator (the bit application
b _ _), i.e. a second dispatch. In the 162 the only shared node with a non-trivial pair is I,
whose pair is UNIFORM (two instances of alpha -> alpha) and costs 4.
Run lengths (B=40 beta-normal search, all non-divergent law runs): max 24 beta-steps (unary),
17 (zero). So canonical derivations are tiny; interface types are small. This motivates
TABLING on residual goals: by subject expansion the set of good completions of a partial term
depends only on its residual problem (the reducts of every law run + the reachable holes with
their contexts); two partial terms with the same residual problem have the same future.
Implementing narrow2.py: memo keyed by canonical residual problem (hole ids renamed), storing the
largest remaining budget proven infeasible; offset = refined cost + 2*(orphan holes).
narrow2.py (tabled): untabled count reproduces narrow.py exactly (B=40: 50,508). Tabling saves
19% (B=36: 9,018 vs 11,146) and 26% (B=40: 37,339 vs 50,508; 1,664 memo hits). Exact residual
problems are mostly DISTINCT: the narrowing is not wasting work on repeated goals; the residual
space itself grows ~1.45x/bit. A finite decision at 45 needs a LOSSY sound abstraction, not tabling.
RESULT D1-43 (computer-checked + handwritten cut-offs): no beta-normal term with j at depth 1 and
w <= 43 satisfies Z,U_1,U_2 (narrow2.py 43 --betanormal --jdepth 1: 96,933 states, 5,183 memo
hits, 0 sols, 33 s, 574 MB). 3 cut-offs, all \s. s (\x1 x2 x3. x3 x3) W _ (zero run = W W _):
W1, W2 as before; W3 = \x1 x2. x1 x1 H (H an unneeded hole): W3 W3 ->h \x2. W3 W3 H1, so
W3 W3 A ->h W3 W3 H2 ->h ... for every A and every filling of H: no hnf (handwritten).
=> with D2: NO beta-normal reader has w <= 43 (laws Z,1,2; no minimality). Band 44-45 open.
Tabled sanity: prefix '\s. s _ _ j' B=46 -> only the 162 (44,010 states; 1 cut-off of W3 type);
'\s. s _ (s _ _ _)' B=48 -> only the 164.
{Z,1} alone and {Z,2} alone: no beta-normal solution <= 40 either (39,674 / 41,906 states):
n=2 adds almost no pruning; the finite family {1} (Lean's Reader) already carries the bound here.
j-spine lemma (handwritten via types: j has atom type a in zero, so it is never applied; its
parent spine is zero-typed, so not c-headed; at depth 1 the head is s): prunes only leaves
(B=43 depth 1: 93,537 vs 96,933). Stopping compute; writing REPORT.md.

## Done
REPORT.md written (sections 0-4). Machine clean (no narrow/blam processes of this lane).

## Follow-up: close the beta-normal depth-1 band w in {44,45}
Structural fact used for chunking (handwritten): in a beta-normal reader the normal-order run of
every law needs the root body's head first, so the search fixes the ROOT SPINE (R = \s. s A1..Ak,
k >= 1; any other head fails zero: c/j/lambda-free heads) before refining anything else; the
next hole needed by every law is A1 (Z A1.. -> A1 K r ..; U A1 .. -> A1 F U' ..).
So prefixes '\s. s _ ... _' (k holes) partition the space by root arity exactly.
Measuring per-arity sizes at B=43, j depth 1, tabled.
Per-arity sizes at B=43 (depth 1, tabled): k=1 22,181; k=2 38,031; k=3 28,528; k=4 11,323;
k=5 3,642; k=6 826 (sum 104.5k; tabling is per run). Plan: chunks k=1, k=2, k=3, k>=4.
CHUNK k=1 (prefix '\s. s _'), B=45, depth 1: 45,497 states, 0 sols, 0 cut-offs, 10.4 s, 306 MB.
CHUNK k=2 (prefix '\s. s _ _'), B=45, depth 1: 78,828 states, 0 sols, 0 cut-offs, 15.7 s, 471 MB.
CHUNK k=3 (prefix '\s. s _ _ _'), B=45, depth 1: 59,550 states, 0 sols, 7 cut-offs, 34.9 s, 364 MB (certification below).
k=3 cut-offs, all certified (each zero run reaches a head-divergent self-application; the holes
are never in head position): W1 W1, W2 W2 (x2 cases, D = \x1x2x3x4. x4 x4 or \x1x2x3. x3 x3),
W3 W3 _ (handwritten as before), W4 W4 with W4 = \x. x (x I x) (blam adjudicate: DIVERGE,
no whnf on own head chain), and \s. s (\x1x2x3. x3 H x3) W5 _ with W5 = \x1 x2. x2 H' x2:
zero run W5 A W5 _ ->h W5 A' W5 _ ->h ... (head always W5 with >= 2 args; the hole instances
only ever bind x1, never reach head position): no hnf for every filling (handwritten).
narrow3.py = narrow2.py + spine index in hole meta: --minarity K with prefix '\s. _' forces the
root spine to have >= K arguments (spine holes with index < K may only become applications).
Consistency: --minarity 1 at B=41 gives 46,171 vs 46,190 for the unconstrained run (the 19
extra are non-lambda-rooted / non-spine roots that fail at once); --minarity 4 at B=43 14,870.
CHUNK k>=4 (narrow3.py 45 --betanormal --jdepth 1 --prefix '\s. _' --minarity 4): 32,810 states, 0 sols, 0 cut-offs, 8.5 s, 194 MB.
narrow2 vs narrow3 on prefix '\s. s _ _' at B=41: identical (18,405 states, same memo stats).
RESULT BN46 (computer-checked + certified cut-offs): EVERY beta-normal term with free c, j (one j)
satisfying Z, U_1, U_2 has w >= 46; sharp (the 162). No minimality hypothesis. Partition:
lambda-rooted s-headed (lemma) x {j depth >= 2: D2 at 45} u {j depth 1: k=1 | k=2 | k=3 | k>=4 at 45}.
Route (1) (pricing) was not needed; the four depth-1 chunks total 216,685 states, each <= 78,828.
