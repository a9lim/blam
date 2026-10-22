/- The value side of the separated class. The class fixes the variable value
   (raw tail) and the constructors; here the reader may hand back any family
   `V n` in place of the raw value, and NEXT may be any source of at least two
   free leaves. A converter κ (one free continuation c) turns a V-reader into
   a raw `FullReader`; three explicit conversions give dominating raw-class
   members, so any raw full-reader floor transfers (`floor_of_dominated`).
   No unconditional 162-bit claim.
   `docs/classical/self-interpreter/class-bound.md`.
   Frame at the root of a reader: c = 0, j = 1; probes N = 2, r = 3. -/
import Blc.SelfintWiden

namespace Blc.SelfintValues
open Term SelfintLowerBound SelfintNonlinearChain SelfintWireCost SelfintFloor SelfintClass SelfintControl SelfintWiden

set_option maxRecDepth 8000
set_option maxHeartbeats 2000000

/-! ## Substitution plumbing -/

theorem var_eq' (m n : Nat) (h : m = n) : Term.var m = Term.var n := congrArg Term.var h

macro "vbash" : tactic =>
  `(tactic|
    repeat' first
      | rfl
      | (exact var_eq' _ _ (by omega))
      | (exfalso; omega)
      | (simp only [Term.shift, Term.substDec])
      | split)

theorem beta_shift : ∀ {t u : Term}, Beta t u → ∀ c, Beta (shift 1 c t) (shift 1 c u) := by
  intro t u h
  induction h with
  | beta b a =>
      intro c
      have e : shift 1 c (contract b a) = contract (shift 1 (c + 1) b) (shift 1 c a) := by
        unfold contract
        exact shift_substDec b a 0 c (Nat.zero_le c)
      rw [e]
      exact Beta.beta _ _
  | appL a _ ih => intro c; exact Beta.appL _ (ih c)
  | appR f _ ih => intro c; exact Beta.appR _ (ih c)
  | lam _ ih => intro c; exact Beta.lam (ih (c + 1))

theorem betas_shift {t u : Term} (h : Betas t u) (c : Nat) :
    Betas (shift 1 c t) (shift 1 c u) := by
  induction h with
  | refl t => exact .refl _
  | head hb _ ih => exact .head (beta_shift hb c) ih

theorem join_shift {t u : Term} (h : BetaJoin t u) (c : Nat) :
    BetaJoin (shift 1 c t) (shift 1 c u) := by
  obtain ⟨w, ht, hu⟩ := h
  exact ⟨shift 1 c w, betas_shift ht c, betas_shift hu c⟩

theorem join_subst {t u : Term} (h : BetaJoin t u) (j : Nat) (s : Term) :
    BetaJoin (substDec j s t) (substDec j s u) := by
  obtain ⟨w, ht, hu⟩ := h
  exact ⟨substDec j s w, betas_subst ht j s, betas_subst hu j s⟩

theorem freeUnder_shift : ∀ (t : Term) (k c : Nat), FreeUnder k t →
    FreeUnder (k + 1) (shift 1 c t) := by
  intro t
  induction t with
  | var n =>
      intro k c h
      simp only [FreeUnder] at h
      simp only [shift]
      split <;> simp only [FreeUnder] <;> omega
  | lam b ih =>
      intro k c h
      simp only [FreeUnder] at h
      simp only [shift, FreeUnder]
      exact ih (k + 1) (c + 1) h
  | app f a ihf iha =>
      intro k c h
      simp only [FreeUnder] at h
      simp only [shift, FreeUnder]
      exact ⟨ihf k c h.1, iha k c h.2⟩

theorem freeUnder_substDec : ∀ (t : Term) (s : Term) (k j : Nat), j ≤ k →
    FreeUnder (k + 1) t → FreeUnder k s → FreeUnder k (substDec j s t) := by
  intro t
  induction t with
  | var n =>
      intro s k j hj h hs
      simp only [FreeUnder] at h
      simp only [substDec]
      split
      · exact hs
      · split <;> simp only [FreeUnder] <;> omega
  | lam b ih =>
      intro s k j hj h hs
      simp only [FreeUnder] at h
      simp only [substDec, FreeUnder]
      exact ih (shift 1 0 s) (k + 1) (j + 1) (by omega) h (freeUnder_shift s k 0 hs)
  | app f a ihf iha =>
      intro s k j hj h hs
      simp only [FreeUnder] at h
      simp only [substDec, FreeUnder]
      exact ⟨ihf s k j hj h.1 hs, iha s k j hj h.2 hs⟩

/-- A term without free `k` is untouched by "lift past k, then substitute k+1". -/
theorem substDec_shift_fresh : ∀ (t s : Term) (k : Nat), occ k t = 0 →
    substDec (k + 1) s (shift 1 k t) = t := by
  intro t
  induction t with
  | var n =>
      intro s k h
      simp only [occ] at h
      by_cases hn : n ≥ k
      · have hne : n ≠ k := by intro e; simp [e] at h
        simp only [shift, if_pos hn, substDec]
        rw [if_neg (by omega), if_pos (by omega)]
        congr 1
      · simp only [shift, if_neg hn, substDec]
        rw [if_neg (by omega), if_neg (by omega)]
  | lam b ih =>
      intro s k h
      simp only [occ] at h
      simp only [shift, substDec]
      rw [ih (shift 1 0 s) (k + 1) h]
  | app f a ihf iha =>
      intro s k h
      simp only [occ] at h
      simp only [shift, substDec]
      rw [ihf s k (by omega), iha s k (by omega)]

theorem occ_shift_succ : ∀ (t : Term) (j c : Nat), c ≤ j →
    occ (j + 1) (shift 1 c t) = occ j t := by
  intro t
  induction t with
  | var n => intro j c h; occ_bash
  | lam b ih =>
      intro j c h
      simp only [shift, occ]
      exact ih (j + 1) (c + 1) (by omega)
  | app f a ihf iha =>
      intro j c h
      simp only [shift, occ]
      rw [ihf j c h, iha j c h]

theorem occ_unary_zero (n : Nat) : occ 0 (unary n (.var 2)) = 0 := by
  induction n with
  | zero => decide
  | succ n ih =>
      simp only [unary, pairT, occ]
      rw [occ_shift_succ _ 0 0 (Nat.le_refl 0), occ_shift_succ _ 0 0 (Nat.le_refl 0), ih]
      decide

/-! ## Representations, converters and the substitution transfer -/

/-- A reader for the value representation `V`: the zero law is the class's,
    and on `U_(n+1)(N)` the continuation receives `V n` and the rigid `N`. -/
structure VReader (V : Nat → Term) (R : Term) : Prop where
  scope : FreeUnder 2 R
  zero : BetaJoin (.app R Z) zeroOut
  unary_law : ∀ n, BetaJoin (.app R (unary (n + 1) (.var 2)))
      (.app (.app (.var 0) (V n)) (.var 2))

/-- A converter for `V`: only `c` free, and it turns `V n` back into the raw
    value `U_n(N)` before handing it to `c` together with `N`. -/
structure Converter (V : Nat → Term) (κ : Term) : Prop where
  scope : FreeUnder 1 κ
  law : ∀ n, BetaJoin (.app (.app κ (V n)) (.var 2))
      (.app (.app (.var 0) (unary n (.var 2))) (.var 2))

/-- `R[κ/c]`, keeping `j`: lift a fresh slot 0 for the new `c`, replace the
    old `c` (now 1) by κ, slide the rest back. -/
def transfer (κ R : Term) : Term := substDec 1 κ (shift 1 0 R)

theorem transfer_fresh (κ X : Term) (h : occ 0 X = 0) :
    substDec 1 κ (shift 1 0 X) = X := substDec_shift_fresh X κ 0 h

/-- **Converter transfer.** Every V-reader becomes a raw FullReader. -/
theorem transfer_fullReader {V : Nat → Term} {κ R : Term}
    (hR : VReader V R) (hk : Converter V κ) (hV : ∀ n, occ 0 (V n) = 0) :
    FullReader (transfer κ R) := by
  refine ⟨?_, ?_, ?_⟩
  · exact freeUnder_substDec _ κ 2 1 (by omega) (freeUnder_shift R 2 0 hR.scope)
      (freeUnder_mono (by omega) hk.scope)
  · have hz := join_subst (join_shift hR.zero 0) 1 κ
    have e1 : substDec 1 κ (shift 1 0 (.app R Z)) = .app (transfer κ R) Z := by
      show Term.app (substDec 1 κ (shift 1 0 R)) (substDec 1 κ (shift 1 0 Z)) = _
      rw [transfer_fresh κ Z (by decide)]
      rfl
    have e2 : substDec 1 κ (shift 1 0 zeroOut) = zeroOut := transfer_fresh κ _ (by decide)
    rw [e1, e2] at hz
    exact hz
  · intro n
    have hu := join_subst (join_shift (hR.unary_law n) 0) 1 κ
    have e1 : substDec 1 κ (shift 1 0 (.app R (unary (n + 1) (.var 2)))) =
        .app (transfer κ R) (unary (n + 1) (.var 2)) := by
      show Term.app (substDec 1 κ (shift 1 0 R))
        (substDec 1 κ (shift 1 0 (unary (n + 1) (.var 2)))) = _
      rw [transfer_fresh κ _ (occ_unary_zero (n + 1))]
      rfl
    have e2 : substDec 1 κ (shift 1 0 (.app (.app (.var 0) (V n)) (.var 2))) =
        .app (.app κ (V n)) (.var 2) := by
      show Term.app (Term.app (substDec 1 κ (shift 1 0 (.var 0)))
        (substDec 1 κ (shift 1 0 (V n)))) (substDec 1 κ (shift 1 0 (.var 2))) = _
      rw [transfer_fresh κ (V n) (hV n)]
      rfl
    rw [e1, e2] at hu
    exact join_trans hu (hk.law n)

/-! ## Share-and-hoist: one conversion for any number of c-occurrences -/

/-- `(λa. λk. R) j κ`: R reused verbatim, its c is k and its j is a. -/
def share (κ R : Term) : Term := .app (.app (.lam (.lam R)) (.var 1)) κ

theorem subst_two_eq : ∀ (t s : Term) (d : Nat), FreeUnder (d + 2) t →
    substDec d s (substDec (d + 1) (.var (d + 2)) t) = substDec (d + 1) s (shift 1 d t) := by
  intro t
  induction t with
  | var n =>
      intro s d h
      simp only [FreeUnder] at h
      vbash
  | lam b ih =>
      intro s d h
      simp only [FreeUnder] at h
      simp only [substDec, shift, ge_iff_le, Nat.zero_le, if_true]
      have e : d + 2 + 1 = d + 1 + 2 := by omega
      rw [e]
      exact congrArg Term.lam (ih (shift 1 0 s) (d + 1) (by rw [← e]; exact h))
  | app f a ihf iha =>
      intro s d h
      simp only [FreeUnder] at h
      simp only [substDec, shift]
      rw [ihf s d h.1, iha s d h.2]

theorem share_reduces {κ R : Term} (hR : FreeUnder 2 R) :
    Betas (share κ R) (transfer κ R) := by
  have s1 : Beta (share κ R) (.app (.lam (substDec 1 (.var 2) R)) κ) := by
    have h := Beta.appL κ (Beta.beta (.lam R) (.var 1))
    simp only [contract, substDec, shift, ge_iff_le, Nat.zero_le, if_true] at h
    exact h
  have s2 : Beta (.app (.lam (substDec 1 (.var 2) R)) κ)
      (substDec 0 κ (substDec 1 (.var 2) R)) := Beta.beta _ _
  have e := subst_two_eq R κ 0 hR
  exact .head s1 (.head s2 (by rw [e]; exact .refl _))

theorem share_fullReader {V : Nat → Term} {κ R : Term}
    (hR : VReader V R) (hk : Converter V κ) (hV : ∀ n, occ 0 (V n) = 0) :
    FullReader (share κ R) := by
  have hs : FreeUnder 2 (share κ R) :=
    ⟨⟨freeUnder_mono (by omega) hR.scope, by simp [FreeUnder]⟩,
      freeUnder_mono (by omega) hk.scope⟩
  exact FullReader.of_betas hs (share_reduces hR.scope) (transfer_fullReader hR hk hV)

/-! ## Exact price of the share-and-hoist reader -/

theorem holeCost_fresh : ∀ (t : Term) (j : Nat), occ j t = 0 → holeCost j t = wire t := by
  intro t
  induction t with
  | var n =>
      intro j h
      simp only [occ] at h
      simp only [holeCost, wire_var]
      split
      · simp_all
      · rfl
  | lam b ih =>
      intro j h
      simp only [occ] at h
      simp only [holeCost, wire_lam, ih (j + 1) h]
      omega
  | app f a ihf iha =>
      intro j h
      simp only [occ] at h
      simp only [holeCost, wire_app, ihf j (by omega), iha j (by omega)]
      omega

theorem wire_holeCost : ∀ (t : Term) (j : Nat),
    wire t = holeCost j t + occDepth j t + (j + 2) * occ j t := by
  intro t
  induction t with
  | var n =>
      intro j
      simp only [holeCost, occDepth, occ, wire_var]
      split <;> simp_all
  | lam b ih =>
      intro j
      have := ih (j + 1)
      have hm : (j + 1 + 2) * occ (j + 1) b = (j + 2) * occ (j + 1) b + occ (j + 1) b := by
        rw [show j + 1 + 2 = (j + 2) + 1 by omega, Nat.add_mul, Nat.one_mul]
      simp only [holeCost, occDepth, occ, wire_lam]
      rw [this, hm]
      omega
  | app f a ihf iha =>
      intro j
      have := ihf j
      have := iha j
      simp only [holeCost, occDepth, occ, wire_app]
      rw [Nat.mul_add]
      omega

theorem share_cost {κ R : Term} (hR : FreeUnder 2 R) (hj : occ 1 R = 1)
    (hk : FreeUnder 1 κ) : cost (share κ R) = cost R + depth R + 11 + wire κ := by
  have h3 : occ 3 R = 0 := occ_of_freeUnder R 2 3 hR (by omega)
  have hk1 : occ 1 κ = 0 := occ_of_freeUnder κ 1 1 hk (by omega)
  have hw := wire_holeCost R 1
  have hc3 := holeCost_fresh R 3 h3
  have hck := holeCost_fresh κ 1 hk1
  simp only [cost, share, holeCost, if_true] at *
  rw [hc3, hck, hw, hj]
  simp only [depth]
  omega

theorem share_depth {κ R : Term} (hR : FreeUnder 2 R) (hk : FreeUnder 1 κ) :
    depth (share κ R) = 0 := by
  have h3 : occ 3 R = 0 := occ_of_freeUnder R 2 3 hR (by omega)
  have hk1 : occ 1 κ = 0 := occ_of_freeUnder κ 1 1 hk (by omega)
  simp only [depth, share, occDepth, occ, occDepth_zero h3, occDepth_zero hk1, h3]

theorem share_hole {κ R : Term} (hR : FreeUnder 2 R) (hk : FreeUnder 1 κ) :
    occ 1 (share κ R) = 1 := by
  have h3 : occ 3 R = 0 := occ_of_freeUnder R 2 3 hR (by omega)
  have hk1 : occ 1 κ = 0 := occ_of_freeUnder κ 1 1 hk (by omega)
  simp only [share, occ, h3, hk1, if_true]

theorem share_scope {κ R : Term} (hR : FreeUnder 2 R) (hk : FreeUnder 1 κ) :
    FreeUnder 2 (share κ R) :=
  ⟨⟨freeUnder_mono (by omega) hR, by simp [FreeUnder]⟩, freeUnder_mono (by omega) hk⟩

/-- **Domination for any representation with a converter, any number of
    continuation occurrences.** Only the NEXT source price is constrained;
    NEXT's laws are not used at all, only its scope and one free leaf. -/
theorem share_dominated {V : Nat → Term} {κ T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : VReader V R) (hj : occ 1 R = 1) (hk : Converter V κ) (hV : ∀ n, occ 0 (V n) = 0)
    (hQ : FreeUnder 2 Q) (hF : 1 ≤ freeLeaves 0 Q) (hp : 103 + wire κ ≤ wire Q) :
    ∃ R', FullReader R' ∧ occ 1 R' = 1 ∧
      wire (assemble SelfintKnot.knot R' canonicalNext) ≤ wire (assemble T R Q) := by
  refine ⟨share κ R, share_fullReader hR hk hV, share_hole hR.scope hk.scope, ?_⟩
  have ha := arbitrary_assembly_lower hT hfix hR.scope hj hQ
  have he := canonical_assembly_exact (share_scope hR.scope hk.scope)
    (share_hole hR.scope hk.scope) canonicalNext_scope canonicalNext_bits canonicalNext_captures
  rw [share_cost hR.scope hj hk.scope, share_depth hR.scope hk.scope] at he
  have hm : depth R ≤ freeLeaves 0 Q * depth R := Nat.le_mul_of_pos_left _ hF
  omega

/-! ## The δ-shifted frontier: any depth-preserving conversion -/

/-- **Exchange rate.** If some raw FullReader R̃ with the same hole depth costs
    at most δ more than R, a member with reader R and an arbitrary source NEXT
    above the frontier shifted by δ is dominated by a raw-class member. -/
theorem shifted_frontier_dominated {T R Q Rt : Term} (δ : Nat)
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : FreeUnder 2 R) (hj : occ 1 R = 1)
    (hQ : FreeUnder 2 Q) (hF : 2 ≤ freeLeaves 0 Q)
    (hRt : FullReader Rt) (hjt : occ 1 Rt = 1)
    (hc : cost Rt ≤ cost R + δ) (hd : depth Rt = depth R)
    (hp1 : 92 + δ ≤ wire Q) (hp2 : 104 + δ ≤ wire Q + 3 * freeLeaves 0 Q) :
    ∃ R', FullReader R' ∧ occ 1 R' = 1 ∧
      wire (assemble SelfintKnot.knot R' canonicalNext) ≤ wire (assemble T R Q) := by
  by_cases hsmall : wire (assemble T R Q) < 162
  · have ha := arbitrary_assembly_lower hT hfix hR hj hQ
    have hch := reader_c_depth_charge hRt.probes hjt
    have hs := canonical_assembly_exact hRt.scope hjt canonicalNext_scope
      canonicalNext_bits canonicalNext_captures
    have hh := canonical_assembly_exact (hoist_scope Rt) (hoist_hole hRt.scope)
      canonicalNext_scope canonicalNext_bits canonicalNext_captures
    rw [hoist_cost hRt.scope hjt, hoist_depth] at hh
    rw [hd] at hs hh hch
    by_cases hsame : wire (assemble SelfintKnot.knot Rt canonicalNext) ≤ wire (assemble T R Q)
    · exact ⟨Rt, hRt, hjt, hsame⟩
    · refine ⟨SelfintWidenHoist.hoist Rt, hoist_fullReader hRt, hoist_hole hRt.scope, ?_⟩
      by_cases hhoist : wire (assemble SelfintKnot.knot (SelfintWidenHoist.hoist Rt) canonicalNext) ≤
          wire (assemble T R Q)
      · exact hhoist
      exfalso
      by_cases hfour : 4 ≤ freeLeaves 0 Q
      · have hm := Nat.mul_le_mul_right (depth R) hfour
        omega
      · have hcases : freeLeaves 0 Q = 2 ∨ freeLeaves 0 Q = 3 := by omega
        rcases hcases with htwo | hthree
        · rw [htwo] at ha hp2
          omega
        · rw [hthree] at ha hp2
          omega
  · refine ⟨reader162, reader162_fullReader, by decide, ?_⟩
    have href : wire (assemble SelfintKnot.knot reader162 canonicalNext) = 162 := by decide
    omega

/-! ## Whole prefix: the strip converter and its contracted form -/

/-- `λv. v (λq. c)` with `c` at index `d` (κ for the whole prefix, at depth d). -/
def kw (d : Nat) : Term := .lam (.app (.var 0) (.lam (.var (d + 2))))

def wpV (n : Nat) : Term := unary (n + 1) (.var 2)

theorem kw_shift (d : Nat) : shift 1 0 (kw d) = kw (d + 1) := by
  simp only [kw, shift]
  rw [if_neg (by omega), if_pos (by omega)]

theorem wp_converter : Converter wpV (kw 0) := by
  refine ⟨by decide, ?_⟩
  intro n
  refine join_of_betas ?_
  have s1 : Beta (.app (.app (kw 0) (wpV n)) (.var 2))
      (.app (.app (wpV n) (.lam (.var 1))) (.var 2)) := by
    have h := Beta.appL (.var 2) (Beta.beta (.app (.var 0) (.lam (.var 2))) (wpV n))
    simp only [contract, substDec, if_true] at h
    simpa [kw] using h
  have s2 : Beta (.app (.app (wpV n) (.lam (.var 1))) (.var 2))
      (.app (.app (.app (.lam (.var 1)) churchFalse) (unary n (.var 2))) (.var 2)) :=
    Beta.appL (.var 2) (pair_apply churchFalse (unary n (.var 2)) (.lam (.var 1)))
  have s3 : Beta (.app (.app (.app (.lam (.var 1)) churchFalse) (unary n (.var 2))) (.var 2))
      (.app (.app (.var 0) (unary n (.var 2))) (.var 2)) := by
    have h := Beta.appL (.var 2) (Beta.appL (unary n (.var 2)) (Beta.beta (.var 1) churchFalse))
    simpa [contract, substDec] using h
  exact .head s1 (.head s2 (.head s3 (.refl _)))

theorem wpV_fresh (n : Nat) : occ 0 (wpV n) = 0 := occ_unary_zero (n + 1)

/-- Contracted strip: an applied `c a` becomes `a (λq. c)`, a bare `c` becomes κ. -/
def strip (d : Nat) : Term → Term
  | .var n => if n = d then kw d else .var n
  | .lam b => .lam (strip (d + 1) b)
  | .app f a =>
      match f with
      | .var n => if n = d then .app (strip d a) (.lam (.var (d + 1))) else .app (.var n) (strip d a)
      | f => .app (strip d f) (strip d a)

/-- Applied occurrences of `c` (index d): heads of an application spine node. -/
def appOcc (d : Nat) : Term → Nat
  | .var _ => 0
  | .lam b => appOcc (d + 1) b
  | .app f a =>
      (match f with
        | .var n => if n = d then 1 else 0
        | f => appOcc d f) + appOcc d a

def tr (d : Nat) (t : Term) : Term := substDec (d + 1) (kw d) (shift 1 d t)

theorem tr_var (d n : Nat) : tr d (.var n) = if n = d then kw d else .var n := by
  simp only [tr, shift]
  by_cases h : n = d
  · subst h; simp [substDec]
  · by_cases h2 : n ≥ d
    · rw [if_pos h2, if_neg h]; simp only [substDec]
      rw [if_neg (by omega), if_pos (by omega)]; congr 1
    · rw [if_neg h2, if_neg h]; simp only [substDec]
      rw [if_neg (by omega), if_neg (by omega)]

theorem tr_lam (d : Nat) (b : Term) : tr d (.lam b) = .lam (tr (d + 1) b) := by
  simp only [tr, shift, substDec, kw_shift]

theorem tr_app (d : Nat) (f a : Term) : tr d (.app f a) = .app (tr d f) (tr d a) := by
  simp only [tr, shift, substDec]

theorem strip_reach : ∀ (t : Term) (d : Nat), Betas (tr d t) (strip d t) := by
  intro t
  induction t with
  | var n => intro d; rw [tr_var]; simp only [strip]; exact .refl _
  | lam b ih => intro d; rw [tr_lam]; simp only [strip]; exact betas_lam (ih (d + 1))
  | app f a ihf iha =>
      intro d
      rw [tr_app]
      cases f with
      | var n =>
          rw [tr_var]
          simp only [strip]
          by_cases h : n = d
          · rw [if_pos h, if_pos h]
            have hb : Beta (.app (kw d) (tr d a)) (.app (tr d a) (.lam (.var (d + 1)))) := by
              have hh := Beta.beta (.app (.var 0) (.lam (.var (d + 2)))) (tr d a)
              simp only [contract, substDec, if_true] at hh
              rw [if_neg (by omega), if_pos (by omega)] at hh
              simpa [kw] using hh
            exact .head hb (betas_appL _ (iha d))
          · rw [if_neg h, if_neg h]
            exact betas_appR _ (iha d)
      | lam b =>
          simp only [strip]
          exact betas_trans (betas_appL _ (ihf d)) (betas_appR _ (iha d))
      | app g x =>
          simp only [strip]
          exact betas_trans (betas_appL _ (ihf d)) (betas_appR _ (iha d))

theorem kw_holeCost (d : Nat) : holeCost (d + 1) (kw d) = d + 12 := by
  simp only [kw, holeCost]
  rw [if_neg (by omega), if_neg (by omega)]
  omega

theorem strip_cost : ∀ (t : Term) (d : Nat),
    holeCost (d + 1) (strip d t) + 7 * appOcc d t = holeCost (d + 1) t + 10 * occ d t := by
  intro t
  induction t with
  | var n =>
      intro d
      by_cases h : n = d
      · subst h
        have hk := kw_holeCost n
        simp [strip, appOcc, occ, holeCost] at hk ⊢
        omega
      · simp [strip, appOcc, occ, holeCost, h]
  | lam b ih =>
      intro d
      have := ih (d + 1)
      simp only [strip, appOcc, occ, holeCost]
      omega
  | app f a ihf iha =>
      intro d
      have ha := iha d
      cases f with
      | var n =>
          by_cases h : n = d
          · subst h
            simp [strip, appOcc, occ, holeCost] at ha ⊢
            omega
          · simp [strip, appOcc, occ, holeCost, h] at ha ⊢
            omega
      | lam b =>
          have hf := ihf d
          simp only [strip, appOcc, occ, holeCost] at *
          omega
      | app g x =>
          have hf := ihf d
          simp only [strip, appOcc, occ, holeCost] at *
          omega

theorem strip_occ : ∀ (t : Term) (d : Nat), occ (d + 1) (strip d t) = occ (d + 1) t := by
  intro t
  induction t with
  | var n =>
      intro d
      simp only [strip]
      by_cases h : n = d
      · subst h; rw [if_pos rfl]; simp only [kw, occ]; rw [if_neg (by omega), if_neg (by omega),
          if_neg (by omega)]
      · rw [if_neg h]
  | lam b ih => intro d; simp only [strip, occ]; exact ih (d + 1)
  | app f a ihf iha =>
      intro d
      cases f with
      | var n =>
          simp only [strip]
          by_cases h : n = d
          · subst h; rw [if_pos rfl]; simp only [occ]; rw [iha n]; simp
          · rw [if_neg h]; simp only [occ]; rw [iha d]
      | lam b => simp only [strip, occ] at *; rw [ihf d, iha d]
      | app g x => simp only [strip, occ] at *; rw [ihf d, iha d]

theorem strip_occDepth : ∀ (t : Term) (d : Nat),
    occDepth (d + 1) (strip d t) = occDepth (d + 1) t := by
  intro t
  induction t with
  | var n =>
      intro d
      simp only [strip]
      by_cases h : n = d
      · subst h; rw [if_pos rfl]; simp only [kw, occDepth, occ]
        rw [if_neg (by omega), if_neg (by omega)]
      · rw [if_neg h]
  | lam b ih =>
      intro d
      simp only [strip, occDepth]
      rw [ih (d + 1), strip_occ b (d + 1)]
  | app f a ihf iha =>
      intro d
      cases f with
      | var n =>
          simp only [strip]
          by_cases h : n = d
          · subst h; rw [if_pos rfl]; simp only [occDepth, occ]; rw [iha n]; simp
          · rw [if_neg h]; simp only [occDepth]; rw [iha d]
      | lam b => simp only [strip, occDepth] at *; rw [ihf d, iha d]
      | app g x => simp only [strip, occDepth] at *; rw [ihf d, iha d]

theorem betas_freeUnder {t u : Term} (h : Betas t u) (k : Nat) (ht : FreeUnder k t) :
    FreeUnder k u := by
  induction h with
  | refl => exact ht
  | head hb _ ih => exact ih (beta_freeUnder hb k ht)

theorem FullReader.forward {R R' : Term} (h : FullReader R) (hr : Betas R R') :
    FullReader R' := by
  refine ⟨betas_freeUnder hr 2 h.scope, ?_, ?_⟩
  · exact join_trans (join_symm (join_of_betas (betas_appL _ hr))) h.zero
  · intro n
    exact join_trans (join_symm (join_of_betas (betas_appL _ hr))) (h.unary_law n)

/-- **Whole prefix, any number of continuation occurrences.** With `a`
    applied and `u` bare occurrences of c in the reader, the contracted strip
    costs `3a + 10u` (= 10·occ − 7·appOcc) and keeps the hole and its depth. -/
theorem wholePrefix_dominated {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : VReader wpV R) (hj : occ 1 R = 1)
    (hQ : FreeUnder 2 Q) (hF : 2 ≤ freeLeaves 0 Q)
    (hp1 : 92 + (10 * occ 0 R - 7 * appOcc 0 R) ≤ wire Q)
    (hp2 : 104 + (10 * occ 0 R - 7 * appOcc 0 R) ≤ wire Q + 3 * freeLeaves 0 Q) :
    ∃ R', FullReader R' ∧ occ 1 R' = 1 ∧
      wire (assemble SelfintKnot.knot R' canonicalNext) ≤ wire (assemble T R Q) := by
  have hfull : FullReader (strip 0 R) :=
    FullReader.forward (transfer_fullReader hR wp_converter wpV_fresh) (strip_reach R 0)
  have ho : occ 1 (strip 0 R) = 1 := by rw [strip_occ R 0]; exact hj
  have hd : depth (strip 0 R) = depth R := strip_occDepth R 0
  have hc := strip_cost R 0
  refine shifted_frontier_dominated (10 * occ 0 R - 7 * appOcc 0 R) hT hfix hR.scope hj hQ hF
    hfull ho ?_ hd hp1 hp2
  simp only [Nat.zero_add] at hc
  simp only [cost]
  omega

/-! ## Instances and the conditional floor -/

/-- The 162-shape whole-prefix reader `λs. s I (λu. c s (s s u)) j`. -/
def wp162 : Term :=
  .lam (.app (.app (.app (.var 0) (.lam (.var 0)))
    (.lam (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 0)))))
    (.var 2))

theorem wp162_var_head :
    SpineReds (.app wp162 (pairT churchFalse (.var 2)))
      (.app (.app (.var 0) (pairT churchFalse (.var 2)))
        (.app (.app (pairT churchFalse (.var 2)) (pairT churchFalse (.var 2))) (.var 1))) :=
  spineReds_of_spineSteps _ (by decide : spineSteps 6
    (.app wp162 (pairT churchFalse (.var 2))) = some
      (.app (.app (.var 0) (pairT churchFalse (.var 2)))
        (.app (.app (pairT churchFalse (.var 2)) (pairT churchFalse (.var 2))) (.var 1))))

theorem wp162_reader : VReader wpV wp162 := by
  refine ⟨by decide, ?_, ?_⟩
  · exact join_of_betas (headSteps_beta_star
      (by decide : headSteps 5 (.app wp162 Z) = some zeroOut))
  · intro n
    have hh := spineReds_substDec wp162_var_head 2 (unary n (.var 2))
    have hr : substDec 2 (unary n (.var 2)) wp162 = wp162 :=
      substDec_of_freeUnder _ _ _ (by decide)
    have hhead : Betas (.app wp162 (unary (n + 1) (.var 2)))
        (.app (.app (.var 0) (unary (n + 1) (.var 2)))
          (.app (.app (unary (n + 1) (.var 2)) (unary (n + 1) (.var 2))) (.var 1))) := by
      simpa [substDec, hr, unary, pairT, shift, shift_churchFalse,
        substDec_churchFalse, substDec_shift0, shift_zero] using betas_of_spineReds hh
    have hs := betas_of_spineReds (skip_self (n + 1) (.var 2))
    rw [← unary_stream] at hs
    have htail : Betas
        (.app (.app (unary (n + 1) (.var 2)) (unary (n + 1) (.var 2))) (.var 1)) (.var 2) :=
      betas_trans (betas_appL (.var 1) hs) (.head (.beta _ _) (.refl _))
    exact ⟨_, betas_trans hhead (betas_appR _ htail), .refl _⟩

/-- Its one continuation occurrence is applied: the whole-prefix price is δ = 3. -/
theorem wp162_occurrences : occ 0 wp162 = 1 ∧ appOcc 0 wp162 = 1 ∧ occ 1 wp162 = 1 := by decide

/-- The strip of the whole-prefix 162-shape reader is literally the 162's reader. -/
theorem wp162_strip : strip 0 wp162 = reader162 := by decide

/-- Any established raw full-reader floor transfers to every dominated member. -/
theorem floor_of_dominated (bound : Nat)
    (hfloor : ∀ R, FullReader R → occ 1 R = 1 → bound ≤ cost R + 4 * depth R) {E : Nat}
    (h : ∃ R', FullReader R' ∧ occ 1 R' = 1 ∧
      wire (assemble SelfintKnot.knot R' canonicalNext) ≤ E) : 116 + bound ≤ E := by
  obtain ⟨R', hr, hh, hle⟩ := h
  have hf := hfloor R' hr hh
  have he := canonical_assembly_exact hr.scope hh canonicalNext_scope
    canonicalNext_bits canonicalNext_captures
  omega

#print axioms share_dominated
#print axioms wp162_strip
#print axioms floor_of_dominated

/-! ## General converters: the depth-preserving substitution and its price -/

def iterShift : Nat → Term → Term
  | 0, t => t
  | d + 1, t => shift 1 0 (iterShift d t)

def trg (d : Nat) (s t : Term) : Term := substDec (d + 1) s (shift 1 d t)

theorem trg_var (d n : Nat) (s : Term) : trg d s (.var n) = if n = d then s else .var n := by
  simp only [trg, shift]
  by_cases h : n = d
  · subst h; simp [substDec]
  · by_cases h2 : n ≥ d
    · rw [if_pos h2, if_neg h]; simp only [substDec]
      rw [if_neg (by omega), if_pos (by omega)]; congr 1
    · rw [if_neg h2, if_neg h]; simp only [substDec]
      rw [if_neg (by omega), if_neg (by omega)]

theorem trg_lam (d : Nat) (s b : Term) : trg d s (.lam b) = .lam (trg (d + 1) (shift 1 0 s) b) := by
  simp only [trg, shift, substDec]

theorem trg_app (d : Nat) (s f a : Term) : trg d s (.app f a) = .app (trg d s f) (trg d s a) := by
  simp only [trg, shift, substDec]

theorem iterShift_facts {κ : Term} (hk : FreeUnder 1 κ) (h1 : freeLeaves 0 κ = 1) :
    ∀ d, FreeUnder (d + 1) (iterShift d κ) ∧ wire (iterShift d κ) = wire κ + d ∧
      freeLeaves 0 (iterShift d κ) = 1 := by
  intro d
  induction d with
  | zero => exact ⟨hk, rfl, h1⟩
  | succ d ih =>
      obtain ⟨hs, hw, hf⟩ := ih
      refine ⟨freeUnder_shift _ _ 0 hs, ?_, ?_⟩
      · simp only [iterShift]; rw [wire_shift, hw, hf]; omega
      · simp only [iterShift]; rw [freeLeaves_shift _ 1 0 0 (Nat.le_refl 0), hf]

theorem trg_price {κ : Term} (hk : FreeUnder 1 κ) (h1 : freeLeaves 0 κ = 1) :
    ∀ (t : Term) (d : Nat),
      holeCost (d + 1) (trg d (iterShift d κ) t) + 2 * occ d t = holeCost (d + 1) t + wire κ * occ d t ∧
      occ (d + 1) (trg d (iterShift d κ) t) = occ (d + 1) t ∧
      occDepth (d + 1) (trg d (iterShift d κ) t) = occDepth (d + 1) t := by
  intro t
  induction t with
  | var n =>
      intro d
      rw [trg_var]
      by_cases h : n = d
      · subst h
        obtain ⟨hs, hw, _⟩ := iterShift_facts hk h1 n
        have ho : occ (n + 1) (iterShift n κ) = 0 := occ_of_freeUnder _ _ _ hs (Nat.le_refl _)
        rw [if_pos rfl, holeCost_fresh _ _ ho, hw, ho, occDepth_zero ho]
        simp [holeCost, occ, occDepth]
        omega
      · rw [if_neg h]; simp [occ, h]
  | lam b ih =>
      intro d
      rw [trg_lam]
      obtain ⟨h1', h2', h3'⟩ := ih (d + 1)
      have e : shift 1 0 (iterShift d κ) = iterShift (d + 1) κ := rfl
      rw [e]
      simp only [holeCost, occ, occDepth]
      rw [h2', h3']
      exact ⟨by omega, rfl, rfl⟩
  | app f a ihf iha =>
      intro d
      rw [trg_app]
      obtain ⟨f1, f2, f3⟩ := ihf d
      obtain ⟨a1, a2, a3⟩ := iha d
      have hd1 := Nat.mul_add (wire κ) (occ d f) (occ d a)
      have hd2 := Nat.mul_add 2 (occ d f) (occ d a)
      simp only [holeCost, occ, occDepth]
      rw [f2, a2, f3, a3]
      exact ⟨by omega, rfl, rfl⟩

/-- **Depth-preserving transfer for any converter with one free leaf.**
    Each continuation occurrence costs `|κ| − 2`: δ = occ(c)·(|κ| − 2). -/
theorem transfer_dominated {V : Nat → Term} {κ T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : VReader V R) (hj : occ 1 R = 1) (hk : Converter V κ) (h1 : freeLeaves 0 κ = 1)
    (hV : ∀ n, occ 0 (V n) = 0)
    (hQ : FreeUnder 2 Q) (hF : 2 ≤ freeLeaves 0 Q)
    (hp1 : 92 + occ 0 R * (wire κ - 2) ≤ wire Q)
    (hp2 : 104 + occ 0 R * (wire κ - 2) ≤ wire Q + 3 * freeLeaves 0 Q) :
    ∃ R', FullReader R' ∧ occ 1 R' = 1 ∧
      wire (assemble SelfintKnot.knot R' canonicalNext) ≤ wire (assemble T R Q) := by
  obtain ⟨hc, ho, hd⟩ := trg_price hk.scope h1 R 0
  have heq : trg 0 (iterShift 0 κ) R = transfer κ R := rfl
  rw [heq] at hc ho hd
  have hw2 : 2 ≤ wire κ := by
    cases κ with
    | var n => simp
    | lam b => simp
    | app f a => simp
  have hm : occ 0 R * (wire κ - 2) + 2 * occ 0 R = wire κ * occ 0 R := by
    rw [Nat.mul_sub, Nat.mul_comm (occ 0 R) (wire κ)]
    have : 2 * occ 0 R ≤ wire κ * occ 0 R := Nat.mul_le_mul_right _ hw2
    rw [Nat.mul_comm (occ 0 R) 2]
    omega
  refine shifted_frontier_dominated (occ 0 R * (wire κ - 2)) hT hfix hR.scope hj hQ hF
    (transfer_fullReader hR hk hV) (by rw [ho]; exact hj) ?_ hd hp1 hp2
  simp only [Nat.zero_add] at hc
  simp only [cost]
  omega

#print axioms transfer_dominated

/-! ## F ≥ 2 from any branch law of the canonical shape (arbitrary constructor) -/

/-- If the ABS branch of NEXT reduces to `p (λf. c X) t` for some constructor
    body X (any representation), NEXT has free leaves for both c and p. -/
theorem vnext_two_leaves {Q X : Term}
    (h : Betas (.app (.app Q churchTrue) (.var 2))
      (.app (.app (.var 1) (.lam (.app (.var 1) X))) (.var 2))) :
    2 ≤ freeLeaves 0 Q := by
  have h0 : 1 ≤ occ 0 Q := by
    by_cases hz : occ 0 Q = 0
    · have hs : occ 0 (.app (.app Q churchTrue) (.var 2)) = 0 := by
        simp [occ, churchTrue, hz]
      have ho := SelfintKnot.occ_betas_zero h 0 hs
      simp [occ] at ho
    · omega
  have h1 : 1 ≤ occ 1 Q := by
    by_cases hz : occ 1 Q = 0
    · have hs : occ 1 (.app (.app Q churchTrue) (.var 2)) = 0 := by
        simp [occ, churchTrue, hz]
      have ho := SelfintKnot.occ_betas_zero h 1 hs
      simp [occ] at ho
    · omega
  have s0 := freeLeaves_split Q 0
  have s1 := freeLeaves_split Q 1
  simp only [Nat.reduceAdd] at s0 s1
  omega

/-- Whole prefix with the F hypothesis discharged by NEXT's ABS-branch shape. -/
theorem wholePrefix_dominated_law {T R Q X : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : VReader wpV R) (hj : occ 1 R = 1) (hQ : FreeUnder 2 Q)
    (hlaw : Betas (.app (.app Q churchTrue) (.var 2))
      (.app (.app (.var 1) (.lam (.app (.var 1) X))) (.var 2)))
    (hp1 : 92 + (10 * occ 0 R - 7 * appOcc 0 R) ≤ wire Q)
    (hp2 : 104 + (10 * occ 0 R - 7 * appOcc 0 R) ≤ wire Q + 3 * freeLeaves 0 Q) :
    ∃ R', FullReader R' ∧ occ 1 R' = 1 ∧
      wire (assemble SelfintKnot.knot R' canonicalNext) ≤ wire (assemble T R Q) :=
  wholePrefix_dominated hT hfix hR hj hQ (vnext_two_leaves hlaw) hp1 hp2

/-- The literal whole-prefix 162-shape reader: cost 39, depth 1. -/
theorem wp162_price : cost wp162 = 39 ∧ depth wp162 = 1 := by decide

#print axioms vnext_two_leaves
#print axioms wholePrefix_dominated_law

end Blc.SelfintValues
