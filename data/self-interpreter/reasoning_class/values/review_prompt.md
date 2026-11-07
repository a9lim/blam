Adversarial review request (fresh context). Repo: /Users/a9lim/Work/blam (read-only for you). Please find what is wrong, overstated, vacuous or missing in the following theorem schema about BLC self-interpreter size. Be concrete: name the hypothesis, the line, the counterexample.

## Background (fixed)
Contract: E C (<M> ++ N) =β C (λz.M) N for closed M. Size = BLC bits. The "separated class" (docs/classical/self-interpreter/class-bound.md): E = T[H/h], H = λp c. R[Q/j], T an opaque fixed-point context (T[h] =β h T[h]); R (reader) has free c=0, j=1, one source j, and laws R Z(r) =β r j, R U_(n+1)(N) =β c U_n(N) N (U_n(N) = 1^n 0 ++ N, Scott streams, bit0 = K, bit1 = F); Q (NEXT) obeys canonical branch laws with canonical constructors Abs(f) = λe a. f (λb r. b a (r e)), App(f,g) = λe. f e (g e). Kernel-checked: |E| ≥ 116 + cost R + 4 depth R for the canonical NEXT/knot; 162 is optimal in the class iff every FullReader has cost + 4 depth ≥ 46. A sibling lane (tmp/round4/widen/Widen.lean, kernel-checked) widened H2: arbitrary NEXT source Q with q = |Q| ≥ 92 and q + 3F ≥ 104 (F = free c/p leaves of Q) is dominated (theorem frontier_dominated_full), using arbitrary_assembly_lower: |T[H]| ≥ 24 + cost R + q + F·depth R, valid with no reader/NEXT laws at all.

## Claim under review: H3 replaced by an arbitrary value representation
File: tmp/round4/values/lean/ValuesH3.lean (imports a snapshot of Widen.lean compiled as module `Widen`; build: from /Users/a9lim/Work/blam/lean run `LEAN_PATH=.lake/build/lib/lean:/Users/a9lim/Work/blam/tmp/round4/values/lean lean -j2 /Users/a9lim/Work/blam/tmp/round4/values/lean/ValuesH3.lean`; all theorems compile; axioms propext, Quot.sound, Classical.choice).

Definitions:
- `VReader V R`: FreeUnder 2 R, R Z ⇝= r j, and ∀ n, R U_(n+1)(N) ⇝= c (V n) N (BetaJoin), V : Nat → Term an arbitrary family (frame [c,j,N,r]), with occ c (V n) = 0.
- `Converter V κ`: FreeUnder 1 κ (only c free) and ∀ n, κ (V n) N ⇝= c U_n(N) N.
- transfer κ R = R[κ/c] (substDec 1 κ (shift 1 0 R)); share κ R = (λa. λk. R) j κ; for whole prefix V n = U_(n+1)(N), κ = λv. v (λq. c) and strip = contracted transfer: applied `c a` ↦ `a (λq. c)`, bare `c` ↦ κ.

Theorems (all kernel-checked):
1. transfer_fullReader: VReader V R ∧ Converter V κ ∧ (∀n, occ 0 (V n)=0) ⇒ FullReader (transfer κ R). Proof: substitution commutes with β (betas_subst, shift), law instances contain no c.
2. share_dominated: for any T (fixed point), VReader V R with one j, Converter V κ, any Q with FreeUnder 2 Q and ≥ 1 free leaf, if |Q| ≥ 103 + |κ| then ∃ FullReader R' (one j) with |knot[R', canonicalNext]| ≤ |T[R,Q]|. Proof: R' = share κ R →* transfer, cost R' = cost R + depth R + 11 + |κ|, depth R' = 0; compare with arbitrary_assembly_lower using F·d ≥ d.
3. shifted_frontier_dominated: any FullReader R̃ with one j, depth R̃ = depth R, cost R̃ ≤ cost R + δ, any Q with F ≥ 2, q ≥ 92 + δ, q + 3F ≥ 104 + δ ⇒ dominated (widen's case split with q − δ; fallback reader162 when |E| ≥ 162).
4. transfer_dominated: one-leaf converter κ: δ = occ(c,R)·(|κ| − 2), depth preserved (exact price lemma trg_price).
5. wholePrefix_dominated: whole-prefix readers, any number of c occurrences: δ = 10·occ(c) − 7·appOcc(c) = 3a + 10u (a applied, u bare), depth preserved (strip_cost, strip_occ, strip_occDepth, strip_reach).
6. Instances: wp162 = λs. s I (λu. c s (s s u)) j is a VReader for whole prefix (all n), a = 1, u = 0, and strip 0 wp162 = reader162 (decide). floor_of_dominated: any raw full-reader floor b gives 116 + b for dominated members.

Claimed consequences (please attack these too):
(i) NEXT's branch laws/constructors are never used by the domination theorems, only scope, F and the price; so the "canonical constructors" part of H3 disappears, and "raw-tail values" is replaced by "V has a converter".
(ii) For whole prefix with a 162-shape reader (δ = 3), a member below 162 that is not dominated must have q ≤ 94, or F=2 with q ≤ 100, or F=3 with q ≤ 97. With NEXT = canonical NEXT with its 24-bit cell replaced by a whole-prefix cell D (q = 68 + |D|, F = 4) domination needs exactly |D| ≥ 27, which round 3 proved only for D of shape λu r. r H (computer-assisted, data/self-interpreter/reasoning_162/env/REPORT.md §3). Other D shapes are open.
(iii) Under the reader-46 conjecture every member above the δ-shifted frontier has ≥ 162 bits.

Questions: Is any hypothesis vacuous, mis-stated, or stronger than the prose says (e.g. VReader's rest being exactly N, the one-j hole, FreeUnder 2, occ 0 (V n) = 0)? Does "dominated by a raw-class member" really follow and does it mean what (i)-(iii) say? Is anything in the δ accounting wrong (applied vs bare occurrences, depth)? Is there a value representation a correct interpreter could use that has no converter, or only an expensive one, and does that leave a real gap? Any error in (ii)'s arithmetic? Reply with a list of findings ranked by severity, then a one-paragraph verdict.
