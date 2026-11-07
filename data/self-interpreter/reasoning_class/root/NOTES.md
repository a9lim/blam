# root lane notes (wave 5)

Families: (A) app-rooted readers R = P Q⃗, hole under a non-stream λ;
(B) depth-0 readers, j after a shared top-level let.

## Log
- read BRIEF, BRIEF5, class-bound §1-3, depth02/close46(§6-7)/bridgeadv reports, SYNTHESIS tail.

## Calibration
- rd.py: app 2, λ 2, var i+2, j priced 0, +4·depth. Root (λx.B) A C⃗: w = 2+2t+|B|+|A|+Σ|C| (j's C = 0).
- Family A = app-rooted, depth(j)=1 (depth>=2 closed by depth02 A/D for both roots).
- Family B = depth 0, j a pending arg after a root let (λx.B) A C⃗, j-free A (λ-containing by close46 7.3).

## Sub-case B-chain (handwritten): head chain binds j, ANY multiplicities -> closed
R = (λy1..ym a. P') Q1..Qm j C⃗ (m>=1). depth02 closed m·k_a <= n_y by chain swap.
Rest: copies of a = copies of j. Unary nf has no j, zero nf one j => all but one
copy (the zero survivor) are erased in every run; by depth02 copy-lemma (ii) a
minimum has them at λ-depth 0 in P' (else replacing by the index-0 var saves t).
Replace each such erased copy by y_m (index 1 there): +1 bit each, replay keeps
both laws (residuals never touched: normal order never enters an argument of a
redex before contracting it, and a residual that reaches rigid-headed position
survives). Now k_a=1, n_y' = n_y + k_a - 1. Swap: Δ = m - n_y'. Total
Δ = (k_a-1) + m - n_y - (k_a-1) = m - n_y <= 0 (each y_i used >=1, non-erasing).
Same L, same d=0. So the result is a reader no heavier, same (L,d), with j the
direct argument of λa: a minimum of that shape, excluded by depth02 B/C/E.
Hypotheses: R minimum under (w,L,d) with w<=45; depth02 B/C/E (computer-checked);
copy lemma (ii) (handwritten, depth02); replay (handwritten, = hole-lane transfer).

## Structural facts for depth 0 (handwritten)
- D0-1 (output node). On zero the nf r j comes from a source app node (P Q)
  (hole lane). At depth 0 Q cannot be the literal root-spine j: (P j) at
  depth 0 has a stream-free P, whose residual can never become r; and if P
  turns into a λ the node is contracted. So j is consumed by some source
  λa (its residual), and a (or a variable passed a) is the argument of the
  output node, which sits in the stream binder's scope.
- D0-2 (who binds j). Short chain (head chain shorter than the args before
  j): B0 is headed by a chain variable (x-headed), or a nested redex. Then
  j's binder λa is in A (a residual copy of A), in a B_i, or in a pending C_l.
- D0-3 (Δ-root = recursion). (λx. x x) A j with A = λz a s. A3 is the
  fixed point ρ = A A, ρ j s = A3[A/z, j/a]: every call z P Q S re-runs A3.
  Inlining/re-association transforms all cost >= |A| or 7+f_B (computed):
  B2 is not reducible to closed shapes by exact moves; needs semantics.
- D0-4 (Δ-root is free sharing of the whole body). For (λx.x x) A j, A = λz a s. A3,
  every exact re-association (j-binder to root, let under λa, etc.) copies A3
  once more: T' = (λa z s. A3') j A costs |A3| - 2 + u_a - u_z MORE. So the
  self-application family cannot be reduced to j-argument-of-λ by moves; each
  invocation of A re-runs the same body with new args (head = one of its args).
- Push/pull link (close46 §10.3 exact): ((λx.B) A) C⃗ = (λx. B C⃗↑) A at
  +f_C+4. So family B shifted = family A1 (j in the let body at app-depth),
  and the PULL direction is strictly cheaper.

## Lemma P (pull, family A1), handwritten from close46 push_context_price
R = (λx. h B1..Bk) A C⃗ app-rooted, j ∈ B_l at app-depth (depth(j)=1, only λx above).
If x ∉ B_l..B_k: R =β (λx. h B1..B_{l-1}) A B_l↓..B_k↓ C⃗, weight smaller by
Σ_{i>=l} (freeLeaves(B_i)) + 3 >= 4 (j leaves depth 1: -4; each c -1). Strictly
lighter reader, one j => R not minimum. [h any head incl. x or a nested redex
(λy.D)E: the push identity is for any head.] Hence in a minimum A1 reader
x occurs in B_l or in a later operand.

## Δ-root sub-case: invocations (handwritten)
R = (λx. x x) (λz a s. Σ) j, w = 18+|Σ| (Σ over [s,a,z,c]).
- Inner copies must be invoked on some run (else they are untouched+erased
  => replace by c, lighter: close46 minimum_forget_fails / replay). So Σ runs
  twice on some run: a second "read" with args (P, Q, S2) built inside Σ.
- Lemma a-LIFT. If every inner call is literally z P a S (passes a itself),
  R° = (λa. (λx. x x) (λz s. Σ°)) j with Σ° = Σ minus the a-args is β-equal
  and |R°| - |R| = u_a' - u_z - Σ_calls(2 + cost(a leaf)) <= u_a' - 6·calls
  (a's uses +1 index, z's -1, each removed arg >= 5). u_a' = surviving a uses.
  With u_a' <= 5·calls (always below budget) R° is strictly lighter: R not min.
  (Generalises to any x-headed B whose head copy's chain binds j.)
- Open inside Δ-root: an inner call whose a-slot gets Q != a (a "second j").
  CORRECTION to a-LIFT hypothesis: β-equality needs every value bound to z to
  be an A-copy (else "M P' a S'" vs "M P' S'" differ in arity). Clean form:
  every occurrence of z in Σ heads a call z z a S. Narrow; recorded, not used.

## Short-chain family B: the template form (handwritten, exact accounting)
SB-A full chain: R = (λx. x B1..Bk) A C1..Ct, A = λz1..zk y⃗ a w⃗ s. Σ (A's
chain consumes B⃗', C⃗ (j among them) and s). Exactly
  w = 8 + 4k + 4t + Σ|B_l| + Σ_{C≠j}|C| + |Σ|  >= 18 + |Σ|   (k,t>=1, |B|>=2),
so |Σ| <= 27, with equality only for (λx. x x) (λz a s. Σ) j.
Σ is a "self-referential template": z_l ↦ B_l[A/x] (re-invokes Σ), a ↦ j.
Cheap re-invocation exists: s z (feed the self-copy to the stream) costs 8 and
re-runs Σ with (z,a,s) := (bit, tail, next operand) -- depth02's d=2 near
miss mechanism. So the family is genuinely new; no exact move reduces it.
Sample (eng/sample_d.py, intuition only, 344 filtered short-chain terms at
w<=27): dominated by (λx. x x) A j and (λx. x x x)-type bodies.
Plan: close Δ-root full chain (k=t=1,B1=x) by reasoning on Σ<=27 + pinned
checks <=100k each, split by Σ's head (s / z / redex).

## RESULT Δ3 (computer-checked, complete): (λx. x x)(λz a s. Σ) j has no reader at w <= 45
w = 18 + |Σ| (verified formula). Necessary syntax: Σ uses s (else stream-
independent), a (only route for j: else zero loses j), c (only c-source in R),
z (else the inner copy is untouched: forget lemma => not minimum; so the
z-free case is "no MINIMUM reader", the rest "no reader at all").
Inventory: all Σ over [s,a,z,c] with |Σ|<=27 using all four, all shapes incl.
redexes: 12,936 terms (eng/gensig.py; count matches the independent DP
eng/count2.py). eng/delta3.py: 12,829 definite failures (n=0..3 nf mismatch),
107 caps (fuel 3000 / size 20000), 0 passes, 94 s. eng/recap.py (lazy hnf
comparison, fuel 3000): 77 more definite. Last 30 by hand certificates
(eng/certzz.py): 18 have Σ = z z X Y.. (>=3 args): A A X Y.. ->3 A A X' Y'..,
head loop, no hnf; 12 have Σ = z z M: A A j s ->* A A M' = λs'. ..., whnf a λ,
never r j. 0 uncertified.

## RESULT FC (computer-checked, complete): x-headed full-chain family B closed
Family: R = (λx. x B1..Bk) A C1..Ct, j = C_i on the root spine, A has >= k+t+1
leading λs (the head copy's chain binds every root argument and the stream),
B_l over [x,c], C_q over [c], Σ = A's body under k+t+1 λs, all shapes.
w = 8+4k+4t+Σ|B|+Σ|C≠j|+|Σ| (checked against rd.weight on 35 samples).
Necessary conditions used (NOTES justification):
 N1 s∈Σ, N2 a=y_i∈Σ, N3 c somewhere (semantic, any reader);
 N4 x∈some B_l (definition: shared let);
 N5 z_l∉Σ ⇒ B_l literally x; N6 y_q∉Σ ⇒ C_q literally c (an argument the head
   invocation drops is untouched and erased in every run: replay => replace it
   by the 2-bit leaf, strictly lighter unless already it) [minimality];
 N7 some z_l with x∈B_l is used in Σ (else every non-head x-use is erased
   untouched: dummies, and contracting the then-linear head let saves 6+f_B)
   [minimality].
Inventory (eng/fullchain.py, counts eng/fc_count.py): 32,228 instances
(k,t) = (1,1) 29,840 [of which B1 = x: the 12,936 of Δ3], (1,2) 1,812,
(1,3) 12, (2,1) 528, (2,2) 36, all other (k,t) 0. k+t>=8 impossible.
Run eng/fc_run.py (lazy hnf comparison, fuel 1500, 0.3 s alarm): 0 passes,
32,190 definite failures, 38 caps; eng/fc_cert.py certifies all 38: Σ's spine
is z_l z_l M.. with B_l ->β x, so the head invocation gives A' A' M'..: with
fewer than k+t+1 args the whnf is a λ (never r j: Church-Rosser), otherwise
the head re-invokes the same pattern forever (no hnf). 18 + 20, 0 left.
Total runtime < 7 s. => no MINIMUM reader with w <= 45 in this family.

## RESULT FC-A1 (computer-checked, complete): family A1 analogue closed
R = (λx. x B1..Bk) (λz1..zk y⃗ s. Σ) C⃗ with j literally some let-body operand
B_l (depth 1), same N1-N7 (N2: z_l ∈ Σ). w = 8+4k+4t+Σ|B|(j=4)+Σ|C|+|Σ|.
eng/fullchainA.py: 2,664 instances (k=2,t=0: 2,640; k=2,t=1: 24; k=1 impossible
by N4), 2,660 definite failures, 4 caps, all Σ = z2 z2 X.. with B2 = x c:
z2 ↦ A c in every invocation and A c (A c) X.. re-invokes A with the same
z2 value forever (hand-checked pattern) => no hnf. 0 readers.

## RESULT FC-P (computer-checked, complete): λ-headed let body, full chain
R = (λx y1..yp. x B⃗) (λz⃗ y'⃗ s. Σ) C⃗, p >= 1 body binders consuming C1..Cp
(p < i), j = C_i; w = 8+4k+4t+p+Σ|B|+Σ|C|+|Σ| (rd.weight on 13 samples).
eng/fullchainP.py: 600 instances ((p,k,t)=(1,1,2) 588, (1,2,2) 12), 596
definite failures, 4 caps = the z z certificates with B1 = x. 0 readers.
Pipeline validation: the three builders turn the 162 body (template with
z unused / vacuous y) into passing readers (w 63), so builder+checker agree
with a known correct reader; the enumerated inventories exclude them by N7.

## Coverage of depth02's short-chain (d) (intuition, eng/classify_d3.py on
gen3b's filtered terms; not a check). W<=35 short-chain 66,575: dead heads
(c-headed body/A 30,669 + c-headed let body 7,890 + j-headed 2,630);
FC 2,445 closed; λ-headed bodies 816 (full-chain part closed); hand-off
head z_l (A's body re-invokes through a let-body operand) 13,848
[B_l = x 6,197, B_l app 5,287, B_l λ 2,364]; head y (a pending root arg)
1,466; head redex 179; j nested 190; nested-redex head 78.
So the closed part is ~15-17% of the live short-chain family at W<=35.

## RESULT H2 (computer-checked, complete): Δ-root hand-off h=2, z-headed body
R = (λx. x x) (λz a. Σ2) j with Σ2 = z M1..Mp (A's chain stops before the
stream; inv1 re-invokes A at once). w = 16 + |Σ2| <= 45. Forced: a (j's
binder in inv1) and c (only c-source). All M shapes.
eng/handoff2.py: 66,577 instances (p=1 26,712; p=2 23,670; p>=3 16,195), 0
passes. 2,690 have M1 = z (Σ2 = z z ..: head loop, cert 2.4) and are skipped
with the certificate; 62,375 definite failures; 1,512 cut-offs (fuel 800-1500).
Cut-offs certified with blam's escalation engine (`blam adjudicate
--no-oracle`, binary copied to eng/blam; validation: the 165's zero instance
HALTs with nf 13 = λc j r. r j, Ω DIVERGEs): zero instance λc j r. R (cons K r)
DIVERGE for 1,511; the last (Σ2 = z (I z) a c a) DIVERGEs on all three unary
instances. Runtime 69+10+18+24 s (slices), blam 0.2 s.
Still open in Δ-root: redex-headed Σ2 (a let at the head of A's body), h=1.
Also improved checker: dbe.check3 / lazy_eq2 (a λ against a non-λ target fails
at once), eng/toblc.py (closure + BLC encoding for blam).

## Certificate 2.4 precision (correction)
The z_l z_l M⃗ loop needs: applying V = σ(z_l) to (V, M⃗') rebinds z_l to V.
True for l = 1 with V →β A (all FC, FC-P, H2 cases have k = 1 or z = first
binder), and for the 4 FC-A1 cases (l = 2, V = A c, A gets (c, A c, ..)) by hand.
fc_cert.py checks the syntax only; the rebinding condition was verified per case.
REPORT.md written (sections 1-5).
- h1full.py: Δ-root h=1, p=1, M1 = λu1 u2 u3. E (full template inside M1),
  w = 24+|E|, E<=21 over [s,a,u1,z,c], forced s,a,c,(u1|z): 120 terms, all fail.

# Follow-up (coordinator wave 5b): (1) A2/A3 by hand, (2) pre-stream reduction, (3) lazy enumerator

## (1) A2/A3 pricing (handwritten; exact moves cited)
Setting: R = ((λx.B) A) C⃗ app-rooted minimum, j under exactly one λy, λy.E at
λ-depth 0 (reachable from the root through application nodes), j at app-depth in E.
A2: λy.E inside A; A3: inside a pending C_q.
- Head of E: c => j inside a c-spine (F2) dead; E = j (thunk) or y-headed or redex.
- Zero output node: either j's own parent (P j) in E with P -> r, so y is bound
  to a stream ("zero handler" λy. y F j, λy. y y X j ...), or P becomes a λ and
  consumes j ("carrier" λy. y .. j ..). Example carrier reader (rd.py PASS):
  (λx. λs. s (λb. b (λu. x) c) (s s s)) (λk. k j)  w = 52 (the 165 + 3).
- A2 = λy.E linear (x once, depth D in B):
  close46 linear charge [Lean]: (f_A+3) D >= 7 + f_B   (F = f_A + 4: j counts 4);
  close46 (8) contract_hoist_price [Lean] with m = 1, d_A = 1:
    w(H(R')) - w(R) = f_A (D+1) + f_C - 3, and H(R') has the same L and depth 0,
  so a minimum needs f_A(D+1) + f_C >= 4 (equality-0 loses on depth).
  => every j-carrier/zero-handler piece WITHOUT c (f_A = 0) needs f_C >= 4 (four
  c leaves among the pending root args) and D >= 3. With f_A >= 1 D >= 2
  unless f_A >= 4. The example above has f_A = 0, f_C = 0: dominated (49).
- A2 thunk A = λy. j: if every x-use is applied, R° = (λx. B°) j C⃗ (drop the
  thunk and the dummy args) is β-equal and lighter by 6 + Σ(2+|V|) - 3 n_u,
  L(R°) = L(R) + n_u - 1. Survivors need n_u >= 2 unapplied uses and
  3 n_u >= 6 + Σ_applied (2+|V_i|).
- A2 nonlinear (m >= 2, j-carrying shared piece): (8) gives +(m-1)(wire(A)-3)
  + ..., no constraint; the non-surviving copies' j is erased in every run but
  shares its source position with the survivor, so no per-copy replacement.
  OPEN.
- A3 with C_q bound by a let-body chain binder w_q (B = λw⃗. B0): generalised
  chain swap moves w_q outermost at Δ = q·k_{w_q} - n_{x,w<q} <= 0 when w_q is
  linear (each earlier binder used >= 1), giving an A2 shape no heavier, same
  L, same depth. So linear-chain A3 ⊂ A2. Other A3 (C_q reached through A's
  hand-off, or shared): OPEN.
Net: (1) does not close by hand; survivors are the c-carrying pieces
(f_A(D+1)+f_C >= 4), thunks with >= 2 value uses, nonlinear j-pieces, and
hand-off A3.

## (2) Pre-stream reduction lemma: attempt and why it fails (handwritten)
Goal: contract a minimum's closed pre-stream computation at no weight increase.
- For the head-y / head-z hand-offs the pre-stream reduct must contain both the
  invoked value and the invoker: Δ-root h=1, A = λz. z M1 M2..Mp, reduces to
  G M1[G] M2[G]..Mp[G] M2[A]..Mp[A] j with G = M1[A]. M2..Mp occur twice and A
  and G both stay live, so any let-free representative is heavier by >= Σ|M_i|
  (i>=2) minus overhead, and any full-chain representative (template = A')
  must carry G's body and A's body. So a free contraction lemma is false in
  general: the hand-off IS the sharing.
- A semantic lemma "what a <=33-bit self-applied body can pass to the stream"
  needs the stream's first operand W1 with W1 K r W⃗ = r j, W1 F r W⃗ = c r N
  where W1 is a residual of a subterm of A under z ↦ {A, M1[A], ..}; jn/close46
  first-operand classifications assume literal operands and do not cover
  residuals carrying A. No lemma found. => go to (3).

## (3) Lazy pre-stream enumerator: soundness (handwritten)
Partial term P: source with hole atoms ?h (scope = d_h bound vars + c; never j).
Engine = normal order on P·I with atoms inert (shift/subst leave them alone);
it raises Inspect(h) when the leftmost-outermost walk puts an atom at a head
(whnf of a term with atom head, or of an argument of a rigid head).
LEMMA (unreached holes). If the run of P·I ends in a normal form, or in a
lazy-comparison mismatch, without Inspect, then for every filling φ the run of
P[φ]·I performs the same contractions and has the same nf (resp. the same
Böhm-tree prefix at the mismatch).
Proof. Induction on steps with the correspondence T_k ~ T_k[φ_k] (each atom
residual replaced by the filling instance carrying the accumulated
substitutions). The normal-order walk of T_k visits heads and, under rigid
heads, arguments left to right; it never enters an atom residual (reaching one
as a head, or as an argument to normalise, is an Inspect). So the walk on
T_k[φ_k] meets the same heads and picks the image of the same redex, which lies
outside every atom residual; contracting it substitutes into fillings exactly
as into atoms, giving T_{k+1}[φ_{k+1}]. Arguments already normalised contain no
atoms. The final nf has no atoms (each would have been inspected). ∎
(Specialises the hole lane's transfer lemma: atoms are untouched positions.)
COMPLETENESS. Branching ?h into {var i (i <= d_h), λ ?h', ?h1 ?h2} partitions
the fillings; pruning drops only partial terms whose cheapest completion (2
bits per hole: index-0 var or c) exceeds the budget. Every term of the family
within budget is an instance of exactly one leaf. A leaf refuted without
Inspect refutes all its instances (lemma). Caps must be certified separately.

## CORRECTION (H2 last cut-off): blam --file output is rayon-reordered; I had
matched verdicts by position. Rematched by bit string (eng/blam_match.py): the
1,511 DIVERGE count stands; the undecided one is Σ2 = z I (z z (a c)) (not
z (I z) a c a). Hand certificate: with A = λz a. z I (z z (a c)),
T(X,m) := A I (A A X) c^m s  ->h*  T(X c, m+1)  (A binds z:=I: I I (I I (Y c)) c^m s
-> Y c c^m s with Y = A A X; then A binds z:=A, a:=X), and R s ->* T(j c, 0):
infinite head reduction, no hnf, both laws fail. H2 stays closed.

## (3) results
- eng/lpe.py (lazy narrowing, soundness in NOTES (3)); validation: the 165
  family (λn s. s ?D (s s s)) j at budget 49 exceeded 100k nodes before
  reaching D = λb. b (λu r. r n) c (DFS order), so it is NOT a cheap search in
  dispatcher-heavy families.
- Δ3 by laziness alone (no forced-use filter): (λx.xx)(λz a s. ?Σ) j, budget 45:
  75,130 nodes, 0 passes, 314 caps -> 1,687 completions (eng/lpe_caps2.py):
  1,672 zero-instance DIVERGE (blam, matched by bit string), 15 contain no c
  (N3). Agrees with Δ3.
- Whole Δ-root family (λx. x x) ?A j (A any shape over [c]): nodes 564 / 3,564
  / 23,504 at budgets 29 / 33 / 37 (×6.5 per 4 bits => ~10^6 at 45). At budget
  37: 0 passes, 1,882 caps -> 5,881 completions: 5,872 DIVERGE, 9 c-free (N3).
  => no reader (λx. x x) A j with w <= 37 at all [C, no minimality].
- Survival pruning (eng/lpe2.py: refute when j/r (zero) or N (unary) loses
  every residual before any Inspect; sound since holes never contain them):
  -30% nodes, 25x slower (occurrence scans on self-application blow-ups). No gain.
Conclusion: laziness pays only where the runs fail early; a would-be reader's
runs inspect almost all of A, so the tree ~ the inventory of needed cores.
The hand-off bulk at w <= 45 needs ~10^6+ nodes per family: not under the caps.
