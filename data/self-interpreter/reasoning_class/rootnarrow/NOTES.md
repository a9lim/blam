# rootnarrow NOTES (Claude lane, wave 5)

## Step 0 — reading
- Read PROMPT.md, BRIEF.md, BRIEF5.md.
- Read class-bound.md §1–§3. Open: nonlinear root lets (λx. B) A C⃗, 2–4 uses, j depth ≤1.
  Minimum = global min under (w, λ count, depth j). Root-let profile w ≥ 4k+22+4d+tax.
- Read adv6 REPORT/NOTES and adv6/work/narrow.py (untabled needed narrowing; cost: var i -> 2+i,
  c -> 2+d, j -> 4d, λ/app 2; holes left = 2-bit fillers; LB adds 4·max(dmin,JLO)-2 if j unused,
  dmin if c unused). Prefix mode parses named term with '_' holes.
- Read review_types/REVIEW.md: tabling sound only for joint laws via needed-occurrence lemma
  (orphans -> 2-bit fillers). NOTE for me: syntactic minimality filters depend on the past of
  the partial term, not only on the residual, so tabling + filters is NOT obviously sound.
  Plan: use the untabled engine (adv6/work/narrow.py) + filters.
- Read rootnl NOTES/PROMPT (Codex): count-boundary grammar per cell (k,d), cells_4_0 (A_x, Cs_x,
  Cs_nested), Lean certs. Its method = coefficient grammar enumeration. Mine = narrowing on adv6's
  overflowing prefixes. Distinct.
- Read rootlow REPORT. Contextual step price S = (m-1)W_e(A) + (F_e(A)-1)M - 4 - 2m - T_e(B)
  = w(after) - w(before) (Bridge.contextual_step_price, any position). λ change (m-1)L(A)-1.
  j-copy repair: keep the zero colour, others -> c saves 3h-2 (nearest binder: 4h-2).
- Lean filters located (all quantify over MinimumReader / LexMinimumReader with full ReaderLaws):
  SelfintLocalCost.minimum_source_non_erasing (no erasing redex, any position);
  .minimum_linear_source_charge (Lex; linear: (F-1)D >= 7+G, any position);
  .minimum_source_sharing_charge (j-free A, any m: (m-1)w(A)+(F-1)D >= 2m+4+G);
  SelfintSourceCost.minimum_argument_charge (root spine, j in A: 3 d_A <= (m-1)(wire A-3)+f(D+m)+f_C);
  rootcert minimum_no_eta (no η-redex); rootnf root_weight_tax_charge (w >= 4k+22+4d+tax).
- Prior closures under minimality for named cells (class-bound + depth02/root reports):
  A = j at root ((λg s._) j) and (λn g s._) j (λy. y _): j direct argument of a λ at depth 0 ->
  depth02 Results B/C/E [C, minimality]. (λg n s._) I j, (λg n s._) (λy.c) j: head chain binds j
  -> root lane 3.1 Family (B) [H + depth02 C]. So the genuinely open named cells are:
  A = λy. j, A a redex, and hand-offs (B not stream-λ-headed) with pending operands.

## Step 1 — engine narrowmin.py (copy of adv6/work/narrow.py + minimality filters)
- minfilt.py: ERASE, ETA, LIN, SHARE(+SHARE0 lex tie), ROOTJ, PROF, root k range, j depth cap.
  audit.py: minfilt.price == weight(contractum) - weight(redex term) on 13,605 random redexes
  (j, c, any depth): 0 mismatches [C]. Controls: 165 (49), hand-offs 63/69/70 pass filters;
  Δ3 reader 63 is pruned by SHARE (contraction 4 lighter) as it should be.
- narrowmin.py flags: --minfilt --rootk lo,hi --jmax d. Filters only run on leaf fills
  (only a leaf fill can complete a subterm).

## Step 2 — cell C1: (λg s. B) (λy. j), B arbitrary, w ≤ 45, MINIMUM readers
- Without lin0: overflow 100k. Added LIN0: a linear redex whose x sits at λ-depth 0 in B is
  never in a minimum ((F-1)·0 ≥ 7+G impossible) — decidable as soon as B is complete, A open.
- With all filters (--rootk 2,4 never fired): 73,418 states, 0 solutions, 4 fuel cut-offs
  (c1_lamyj.json). cert.py certifies 3; the 4th, λs. Δ H with H = λx. x (λy. x y _), is Lemma SF
  (shared lane, handwritten): H Z → Z A_Z, A_X Z → X Z V'. => CLOSED [C + H(SF)], minimality.
  Prunes: erase 12,621 lin0 7,395 lin 6,510 eta 1,786 share 3,880 share0 4. 2.7 s, 40 MB.

## Step 3 — cell C2: (λg s. B) A, A a redex (λy. P) Q⃗ at the root argument
- Plain narrowing with filters overflows (100k, 8 s): B explored before A is complete.
- Added filters: JAPP (source j in function position is dead: residuals stay applied) [H];
  JARG (optional --jarg): (λy.P) j at depth 0 excluded in minima — depth02 Results B/C/E [C].
- enumA.py: complete redex-headed A, one j at depth <= 1, passing local filters, by weight:
  <=24: 2,155 (no JARG) / 503 (JARG). Grows ~2-2.5x per bit; cap w(A) <= 27 => too many A's for
  per-A narrowing. Need reasoning.
- Added JCOPY [H]: nonlinear redex with j in A: contract, keep the zero colour i, rename the other
  copies to c (rigid renaming keeps every law; saving 3h-2 each); prune iff for every i the result
  is lex-smaller. Count (JARG on) <=27: 2,424. Survivors show two more dead-j patterns:
  j inside an argument of a c-headed spine (dead: c is rigid, zero output has no c) and A whose
  normal form erases j (e.g. ((λa. a a)(λa b. c)) j ≡ c). Next: JUNDERC + NF filter.
- Added NF filter (--nf) [H]: for every complete subterm X with a redex, R[X] =β R[X'] for any
  reduct X'; prune if (a) some normal-order reduct of X has no j, or every j copy is dead
  (applied / inside an argument of a c-spine) — j dead; (b) X has no whnf (cert.py cycle C1):
  j in X -> dead; j-free -> X is never reduced on a terminating normal-order run, replace by c
  (lex smaller); (c) the normal form of X, colour-repaired with c, is lex-smaller for every
  retained copy. Plus JINC: j inside an argument of a c-headed spine (dead).
- enumA (WMAX 27, JMAX 1, --nf): 241 A's; with --jarg: 15. The 226 extra are (λa. λ^k. ..a..) j,
  i.e. j as the direct argument of a linear λ inside A at depth 0 = depth02 B/C territory.
- Plan C2: per-A narrowing for the 15 JARG survivors (each ~3 s), results conditional on JARG.
- Controls (filters + NF on, j depth free): narrowing recovers the 165 (49, two prefixes), the
  G-absorbers 62/66 and the 70 hand-off from partial prefixes. Readers 56/63/67/69/90 are pruned
  by NF (their normal forms are lighter) — correct, they are not minima.
- C2 (JARG on): 15 A's, each (λg s. _) A narrowed: 17-124 states each, 0 solutions, 0 cut-offs
  (c2_summary.txt, c2_*.json).
- C2 WITHOUT JARG: all 241 filter-surviving A (w(A) <= 27, j depth <= 1) narrowed:
  10,308 states, 0 solutions, 0 cut-offs (c2all_summary.txt). Rerun with --rootk 0,99 (no use of
  the linear / k+d=5 closures): 10,325 states, 0 solutions, 0 cut-offs (c2free_summary.txt).
  => C2 CLOSED for minimum readers, depending only on the filters + j depth <= 1 (residue def).
  Cap: w(λs.B) >= 14 (two g's at index >= 1, one s, two apps, λs) so w(A) <= 27.

## Step 4 — the named cells already closed elsewhere, rerun independently
- (flags --minfilt --nf --rootk 0,99 --jmax 1; named_*.json)
  (λg n s. B) I j: 37,072 states, 0 sol, 0 cut-offs. CLOSED [C, minimality].
  (λg n s. B) (λy. c) j: 58,780 states, 0 sol, 3 cut-offs: 2 cert.py, 1 Lemma SF (Δ H,
    H = λx. x (λy. x y _)). CLOSED.
  (λn g s. B) j (λy. y P): 29,638 states, 0 sol, 16 cut-offs: 13 cert.py, 3 Lemma SF (g g W with
    H = λx. x (λy. y (x y)) / x (λy. x (x y)) / x (λy. x y _)). CLOSED.
  (λg s. B) j (pure hoist): OVERFLOW at 100k (expected: it is every reader hoisted). Left to
    depth02 B/C/E [C].
  These three were already closed (root lane 3.1, depth02); this is an independent method.
- BUG FIXED: NF-div j-free branch pruned without checking w(X) >= 2+δ (c at depth δ costs 2+δ).
  Fixed; reran every closed cell in which it fired (1 of the 241 C2 cells, named cells 2-4):
  identical states / solutions / cut-offs (fix_*.json).

## Step 5 — hand-offs (B not stream-λ-headed), first probes
- Generic prefixes '(\x. _) _' (44 s), '(\x. x _) _' (72 s), '(\x. x _ _) _' (52 s),
  '(\x. x _) _ _' (6 s), '(\x. _) _ _' (8 s): all OVERFLOW at 100k with every filter on.
  NF checks make these runs ~10x slower per state than C1/C2.
- Added SHAREP (j-free complete A with F <= 1, B incomplete: S <= S(mmax, D0, G0); mmax = m0 +
  holes(B) + slack//4, capped at 5 at the root by root_multiplicity_five [L]; m in {0,1} excluded
  by ERASE/LIN) and IAPP ((λx.B) I with an applied use: exact price 2m-8-D-G-6a after contracting
  the applied I copies; audited on 1,175 random bodies, 0 mismatches [C]). Both [H on L prices].
- Cell H1 = (λx. x P) (λz s. N) (t=0, x-headed, A's chain binds P and the stream; j must be in P
  top level by depth <= 1): 31,590 states, 0 solutions, 33 fuel cut-offs (h_xfull1.json).
  cert.py hangs on them (>115 s); certw.py (per-item alarm 3 s): 3 certified, 30 not. The 30 are
  growing self-feeders A = λz s. s (z s) s-like with j still in an unneeded hole.
- Certificates for H1's 33 cut-offs: certw5.py (lemma W5: A = λa b. b H b W⃗ gives A X A ->h
  A H' A W'.., no hnf) and certgen.py (lemma SR, self-reproducing head: h c⃗ ->h+ h T⃗ R⃗ with
  abstracted positions fresh and never forced, kept positions recurring exactly; by substitution
  infinite head reduction) [H, soundness argued in the script docstrings]: 29/33 certified
  (W5 21, SR 6, cert.py 2). 4 left (h_xfull1_left.json) — hand analysis next.
- Hand proofs of 2 of the 4 [H]:
  #3 A = λa b. a (λd. a d V): let 𝒢 = {λd. G d V' : G ∈ 𝒢 ∪ {A}}; G Z ->h+ A Z V⃗ (|V⃗|>=1),
     A X Y Y⃗ -> X G* Y⃗ with G* ∈ 𝒢 => A always has >= 2 args; first reached A G1 (..). No hnf.
  #2 A = λa b. a (λd. d (a d)) (b unused, W erased at step 2): H^0 = A, H^{n+1} = λd. d (H^n d);
     P(m,n): H^m H^{n+1} Y⃗ ->h+ H^{n+1} H^{n+2} Y⃗' (induction on m), reached H^1 H^2. No hnf.
  #4 A = λa b. a b (a b): T0 = A, T_{k+1} = A T_k; every head state is A T_k T_m R⃗ (k=0:
     A T_m (A T_m) = A T_m T_{m+1}; k>=1: A T_{k-1} T_m (T_k T_m) R⃗); start A A A .. = A T0 T0.
  #1 A = λa b. b (b (a a) b): P-like := A W A V⃗ with every V_i P-like. State (A,[W, A, U, R⃗]),
     U P-like -> A Q_W U R⃗ (Q_W = A (W W) A) -> U (U (Q_W Q_W) U) R⃗; U = A W2 A V⃗ gives the state
     (A,[W2, A, V1 or U(QQ)U, ...]) with the third entry P-like again (Q_W Q_W = A (WW) A Q_W).
     Reached at step 5 of the zero run (checked by script). No hnf for any filling.
  => H1 = (λx. x P)(λz s. N): CLOSED for minimum readers [C + H]: 31,590 states, 0 solutions,
     33 cut-offs = 21 W5 + 6 SR + 2 cert.py + 4 hand proofs.

## Hand-off partition (working plan)
R = (λx. B) A C1..Ct, k in [2,4], j depth <= 1, B = λy1..yp. M, p <= t (p = t+1 is stream-λ-
headed; p > t+1 leaves a λ on the zero probe), M's head x, some y_i, or a redex (c-head fails zero).
t = 0: B = x P1..Pq (q >= 1) or redex-headed. With B = x P⃗, A's λ-chain length l: l = q+1 full
chain (H1 for q = 1), l <= q further hand-off, l >= q+2 fails (λ result).
Known: x-headed full chain with j pending or a literal let-body operand (root lane 3.2/3.3).
- REPORT.md write refused by the harness (subagent rule): report goes in the final message.
- H1b = (λx. x P Q)(λz w s. N): 9,889 states, 0 sol, 7 cut-offs: 6 cert.py, 1 by hand [H]:
  (λx. x W x)(λz w s. Δ3 (w s)): M = A Z needs 2 args; M X1 X2 R⃗ -> Δ3 (X1 X2) R⃗ ->
  (X1X2)(X1X2)(X1X2) R⃗, head X1 = M Y⃗ again with >= 3 args, all args in the application
  closure of {M} (Lemma SF with a 2-ary base). Reached: R Z -> A W A Z -> M M M. CLOSED.
- H1c (q=3) (λx. x P Q R)(λz w v s. N): 944 states, 0 sol, 0 cut-offs. CLOSED.
- H1d (q=4): 105 states, 0 sol, 0 cut-offs. CLOSED.
- H1e (q=5): 11 states, CLOSED; q >= 6 exceeds the budget (prefix + j >= 46). So every t=0 x-headed FULL-CHAIN hand-off (λx. x P1..Pq)(λz1..zq s. N) is closed for minimum readers.
- certsf.py: mechanized Lemma SF (dispatcher h = λz. z A⃗; templates = z-dependent λ/redex
  subterms in argument positions; checks h #Z and every template T(#Y) #Z head-reduce (>=1
  step, no fresh constant forced) to an S-head with an S first argument). A first version
  skipped checking h's own step and wrongly certified Δ(λz. z (z (z (z (z F)))) W) (W reaches the
  head) — caught on inspection, fixed before any use in a result.
- Lemma SF' (handwritten relaxation): only the FIRST argument of an S-spine needs to be in S
  (head state X0 A1 .., X0 ∈ B, A1 ∈ S' is preserved by X0 A1 ->h+ X' Z' R.., X', Z' ∈ S').
  Lets unforced holes ride as later arguments. certsf.py updated.
- h2_1 = (λx. x P)(λz. z Q): 45,798 states, 0 sol, 245 cut-offs; before SF': 189 certified
  (cert.py 181, SF 8), 56 left (Δ(λz. z ((z G) W))-type, hole W a later argument).
- certsf base extended: a closed head redex reducing (head steps) to a base λ is base (X0 Z ->h* u Z).
  h2_1: 51 of the 56 now SF'; 5 left. #38 (λx. x ((x x) W))(λz. z (z (z (z I)))) is NOT divergent:
  A A ≡ I, so R Z ≡ W (W (W (W I))) Z needs W — fuel 300 cut it off before W was demanded.
  Remedy: re-narrow each leftover from its show-string as a prefix at fuel 3000.
- re-narrow at fuel 3000: #21 and #38 close (1 state, 0 sol, 0 cut-offs: W needed and every refinement pruned); #6, #23, #46 still cut off.
- certsf: templates now multi-parameter (every free var of an argument-position λ/redex-spine
  subterm of h is a metavariable ranging over S'); soundness unchanged (fresh constants per
  parameter in the step check; isS on every matched parameter).
- h2_1 = (λx. x P)(λz. z Q): CLOSED for minimum readers [C + H]: 45,798 states, 0 sol,
  245 cut-offs: cert.py 181, SF' 59, and 5 re-narrowed at fuel 3000 (2 close outright, 3 SF').
- h2_2 = (λx. x P)(λz. z Q R): 35,879 states (111 s), 0 sol, 413 cut-offs -> certifying.
- h2_3 = (λx. x P)(λz. (λw. M) Q): 20,993 states, 0 sol, 88 cut-offs (to certify). h2_4 = (λx. x P)((λy. M) Q): hit the 115 s time cap before 100k states — OPEN (over time cap).
- h2_5 = (λx. x P)(λz. z Q R S): 15,090 states, 0 sol, 126 cut-offs (to certify).
- h2_6 = (λx. x P)(λz. (λw. M) Q R): 8,731 states, 0 sol, 59 cut-offs (to certify).
- h2_2 certification: 413 cut-offs, 386 certified (cert.py 273, SF' 113), 27 left (mostly 2-ary templates λd e. .. in Δ(λz. z G W)); next: re-narrow leftovers at fuel 3000.
- SF2 (certsf.py; base elements with arity, invariant "head has >= a(X0) args, first in S'",
  fresh-constant heads need >= AMAX args) [H]: +3 on h2_2's leftovers.
- Tally (before re-narrow of h2_3/5/6 leftovers): h2_2 413 cut-offs, 24 uncertified (after
  fuel-3000 re-narrow: 3 closed; SF2: 3); h2_3 88 -> 8 left; h2_5 126 -> 14 left; h2_6 59 -> 5 left.
- certsf: dispatcher body head-reduced first (λz. (λa. z ..) W' counts as λz. z ..).
- FINAL hand-off tallies (q = 1, B = x P):
  h2_3 (λx. x P)(λz. (λw. M) Q): 20,993 states, 0 sol, 88 cut-offs, ALL certified -> CLOSED.
  h2_6 (λx. x P)(λz. (λw. M) Q R): 8,731 states, 0 sol, 59 cut-offs, ALL certified -> CLOSED.
  h2_2 (λx. x P)(λz. z Q R): 35,879 states, 0 sol, 413 cut-offs, 12 uncertified (h2_2.final_left).
  h2_5 (λx. x P)(λz. z Q R S): 15,090 states, 0 sol, 126 cut-offs, 11 uncertified (h2_5.final_left).
- q=1 family continued: (λz. z Q R S T): 4,437 states, 0 sol, 18 cut-offs, 1 uncertified;
  (λz. (λw. M) Q R S): 1,799 states, 0 sol, 4 cut-offs all certified -> CLOSED; (λz. c Q): 1 state,
  fails -> CLOSED. (Accidental rerun of H1 as '(\z. (\w. _))': identical 31,590 states.)
- (λz. z Q1..Q5): 865 states, 1 cut-off certified -> CLOSED; Q1..Q6: 85 -> CLOSED; Q1..Q7: 5 ->
  CLOSED; >= 8 args: 1 state (budget). (λz. (λw. M) Q1..Q4): 219 -> CLOSED; 5 args: 21 -> CLOSED;
  >= 7 args: 1 state. => q=1 hand-off family (λx. x P) A is CLOSED for every A shape except:
  A = λz. z Q R (12 uncertified cut-offs), λz. z Q R S (11), λz. z Q R S T (1), A a redex (time cap).

## Consolidated status (for the report)
Closed for MINIMUM readers, w <= 45 (filters [L]/[H], narrowing [C], certificates [C]/[H]):
- C1 (λg s. B)(λy. j); C2 (λg s. B) A, A redex-headed (241 A's); named cells (I / λy.c / j-first);
- t=0 x-headed full chains (λx. x P1..Pq)(λz1..zq s. N), every q;
- t=0, q=1 short chains (λx. x P) A for A = λz. z Q, λz. (λw. M) Q1..Qk (every k), λz. z Q1..Qk
  (k >= 5), λz. c ..; modulo listed cut-offs for A = λz. z Q R (12), λz. z Q R S (11),
  λz. z Q R S T (1).
Open: pure hoist (λg s. B) j (closed elsewhere, depth02); hand-off with A a redex (time cap);
q >= 2 short chains (probing); redex-headed B; t >= 1 hand-offs and stream-λ-headed bodies with
pending operands other than a literal j.
- CORRECTION (C2 dependence): enumA's cap w(A) <= 27 assumes k >= 2 (two g's in B). With k = 1
  the cap would be 32, so the --rootk 0,99 rerun removes the dependence on the k+d=5 closure
  but NOT on rootlow's linear-root-let exclusion (k = 1) [C+L]. C2 is stated with that hypothesis.
- q=2 probes (B = x P Q): A = λz. z R: time cap (no dump) — OPEN; A = λz w. z R: 4,786 states,
  0 sol, 23 cut-offs all certified -> CLOSED; A = λz w. w R: 10,716 states, 0 sol, 61 cut-offs,
  12 uncertified (also at fuel 3000; pre_h63re.txt).
- Stopping new cells here: aggregate ~1.6M narrowing states over ~330 runs (most runs < 1 s;
  every run <= 100k states, <= 115 s, 1 thread; RSS measured only on C1, 41 MB). Writing the report.
