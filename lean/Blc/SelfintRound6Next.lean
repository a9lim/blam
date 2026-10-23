/-
Unrestricted NEXT source bounds using the provenance of its APP result.
The supplied Boolean cannot provide any of that result's three live
abstractions: their protected quotation head shapes are wrong.
-/
import Blc.SelfintWiden
import Blc.SelfintRound6BoundRedLive

namespace Blc.SelfintRound6Next
open Term SelfintLowerBound SelfintFloor SelfintWireCost
open SelfintClass SelfintClassNext SelfintWiden QuoteOrigins
open QuoteOrigins.Marked

theorem rigidAt_unique {i j : Nat} {t : Term}
    (hi : RigidAt i t) (hj : RigidAt j t) : i = j := by
  induction hi with
  | var => cases hj; rfl
  | app a hi ih => cases hj with | app _ hj => exact ih hj

theorem rigidAt_no_lam {i : Nat} {t : Term} (h : RigidAt i t) : ¬ IsLam t := by
  cases h <;> exact fun h => h

theorem rigidAt_shape_index {i j l n : Nat} {t : Term}
    (hi : RigidAt i t) (hj : ShapeAt j l n t) : i = j := by
  cases hj with
  | spine hs => exact rigidAt_unique hi (spineAt_rigid hs)
  | lam hs => exact (rigidAt_no_lam hi trivial).elim

theorem rigidAt_not_protected {i : Nat} {t : Term}
    (hi : RigidAt i t) (hne : i ≠ 0) (ho : 0 < occ 0 t) : ¬ Protected t := by
  intro h
  rcases h with hz | ⟨l,n,_,hs,_⟩
  · omega
  · exact hne (rigidAt_shape_index hi hs)

/-- No abstraction in this literal target can have quotation origin. -/
def RejectBlue : Term → Prop
  | .var _ => True
  | .lam b => RejectBlue b ∧ ¬ Protected b
  | .app f a => RejectBlue f ∧ RejectBlue a

theorem good_rejectBlue_red {t : Marked} (hg : Good t)
    (hr : RejectBlue (erase t)) : t = red (erase t) := by
  induction t with
  | var n => rfl
  | app f a ihf iha =>
    change Marked.app f a = .app (red (erase f)) (red (erase a))
    rw [← ihf hg.1 hr.1, ← iha hg.2 hr.2]
  | lam q b ih =>
    have hq : q = false := by
      cases q with
      | false => rfl
      | true => exact (hr.2 (hg.2 rfl)).elim
    subst q
    exact congrArg (Marked.lam false) (ih hg.1 hr.1)

theorem app_target_rejectBlue : RejectBlue (.app nextOne (.var 2)) := by
  refine ⟨⟨trivial, ⟨?_, ?_⟩⟩, trivial⟩
  · refine ⟨trivial, ⟨?_, ?_⟩⟩
    · refine ⟨trivial, ⟨?_, ?_⟩⟩
      · exact ⟨⟨trivial, trivial⟩, ⟨trivial, trivial⟩⟩
      · exact rigidAt_not_protected (.app _ (.app _ .var)) (by decide) (by decide)
    · exact rigidAt_not_protected (.app _ .var) (by decide) (by decide)
  · exact rigidAt_not_protected (.app _ .var) (by decide) (by decide)

theorem app_target_all_red {t : Marked} (hg : Good t)
    (he : erase t = .app nextOne (.var 2)) :
    t = red (.app nextOne (.var 2)) := by
  have hr : RejectBlue (erase t) := he ▸ app_target_rejectBlue
  exact (good_rejectBlue_red hg hr).trans (congrArg red he)

/-- The tag binder cannot be the only nonlinear source binder: it is
consumed by an affine Boolean before producing the nonlinear APP value. -/
theorem rigidNext_body_nonlinear {b : Term} (h : RigidNext (.lam b)) :
    1 ≤ nonlinear b := by
  by_cases hz : nonlinear b = 0
  · have hr := betas_preserve_nf
      (Betas.head (Beta.appL (.var 2) (Beta.beta b churchFalse)) (.refl _))
      (h.red false) (nft_normal
        ⟨nextTarget_nonlam false, nextTarget_normal false, trivial⟩)
    have hz' : nonlinear (.app (contract b churchFalse) (.var 2)) = 0 := by
      simp [contract, nonlinear_subst, nonlinear, hz, churchFalse, occ]
    have he := (affine_betas_occ hr hz').1
    have ht : nonlinear (.app (nextTarget false) (.var 2)) = 1 := by decide
    omega
  · omega

theorem rigidNext_single_nonlinear_tag {b : Term} (h : RigidNext (.lam b))
    (hn : nonlinear (.lam b) ≤ 1) : occ 0 b = 1 ∧ nonlinear b = 1 := by
  have hb := rigidNext_body_nonlinear h
  have ho := rigidNext_lambda_live h
  simp only [nonlinear] at hn
  split at hn <;> omega

/-- The tag and rigid tail cannot supply a capture between internal
source binders. The APP result therefore forces one in the body itself. -/
theorem rigidNext_body_not_separated {b : Term} (h : RigidNext (.lam b)) :
    ¬ SelfintCapture.Separated 0 b := by
  intro hs
  have hb := separated_global_subst b churchFalse 0 hs (by decide)
  have hr := betas_preserve_nf
    (Betas.head (Beta.appL (.var 2) (Beta.beta b churchFalse)) (.refl _))
    (h.red false) (nft_normal
      ⟨nextTarget_nonlam false, nextTarget_normal false, trivial⟩)
  have hh := SelfintCapture.separated_betas hr 0
    (show SelfintCapture.Separated 0 (.app (contract b churchFalse) (.var 2)) from ⟨hb,trivial⟩)
  exact (by decide : ¬ SelfintCapture.Separated 0 (.app (nextTarget false) (.var 2))) hh

/-- A literal NEXT needs three live internal source binders in addition
to its consumed tag binder. With only two, internal capture puts them on
one chain, whose live red count cannot increase under any beta reduction. -/
theorem rigidNext_lambda_four_live {b : Term} (h : RigidNext (.lam b)) :
    4 ≤ live (.lam b) := by
  have ho := rigidNext_lambda_live h
  apply Classical.byContradiction
  intro hsmall
  have hb : live b ≤ 2 := by simp only [live, if_pos ho] at hsmall; omega
  let t : Marked := .app (subst 0 (bit true) (red b)) (.var 2)
  have ht : erase t = .app (contract b churchFalse) (.var 2) := by
    simp only [t, erase, erase_subst, erase_red, erase_bit, churchBit, contract, if_true]
  have hg : Good t := ⟨good_subst (red_good b) (bit_good true) 0, trivial⟩
  have hc : LiveChain t := by
    refine ⟨liveChain_subst_zero (red b) (bit true) 0
      (two_live_capture_chain b hb (rigidNext_body_not_separated h)) (redLive_bit true),
      trivial, Or.inr rfl⟩
  have hl : redLive t ≤ 2 := by
    simpa only [t, redLive, redLive_subst, redLive_red, redLive_bit,
      Nat.mul_zero, Nat.add_zero] using hb
  have hr := betas_preserve_nf
    (Betas.head (Beta.appL (.var 2) (Beta.beta b churchFalse)) (.refl _))
    (h.red false) (nft_normal
      ⟨nextTarget_nonlam false, nextTarget_normal false, trivial⟩)
  rw [← ht] at hr
  obtain ⟨u, hu, he⟩ := lift_betas hr
  have he' : erase u = .app nextOne (.var 2) := he
  have hle := (liveChain_steps hu hg hc).2
  have huRed := app_target_all_red (good_steps hu hg) he'
  rw [huRed, redLive_red] at hle
  have hh : live (.app nextOne (.var 2)) = 3 := by decide
  omega

theorem rigidNext_lambda_at_least_38 {b : Term} (h : RigidNext (.lam b)) :
    38 ≤ wire (.lam b) := by
  have hn := rigidNext_nonlinear h
  have hl := rigidNext_lambda_four_live h
  have hf := rigidNext_two_captures h
  have hp := rigidNext_parameters h
  have hi := rigidNext_index_bound h
  have hw := count_wire_bound (.lam b)
  simp only [occ, occDepth] at hp hi
  omega

/-- Unrestricted source syntax, tag arity and beta redexes are permitted.
Below this price, head progress must spend a necessary resource or shrink. -/
theorem rigidNext_at_least_34 {Q : Term} (h : RigidNext Q) : 34 ≤ wire Q := by
  generalize he : wire Q = n
  induction n using Nat.strongRecOn generalizing Q with
  | ind n ih =>
    apply Classical.byContradiction
    intro hn
    have hnl := rigidNext_nonlinear h
    have hl := rigidNext_three_live h
    have hf := rigidNext_two_captures h
    have hp := (rigidNext_parameters h).2
    have hi := rigidNext_index_bound h
    have hw := count_wire_bound Q
    have hnq : nonlinear Q ≤ 1 := by omega
    have hlq : live Q ≤ 3 := by omega
    cases hq : Q with
    | lam b =>
      subst Q
      have hh := rigidNext_lambda_at_least_38 h
      omega
    | var v =>
      subst Q
      exact (rigidNext_not_rigid h (.var v)).elim
    | app f a =>
      subst Q
      cases hs : weakStep (.app f a) with
      | none => exact (rigidNext_not_rigid h (weakStep_none_rigid hs (by simp [IsLam]))).elim
      | some u =>
        have hu := h.beta (weakStep_beta hs)
        rcases one_nonlinear_weakStep hnq hs with ⟨_, hzero⟩ | hless | hwire
        · have hh := rigidNext_nonlinear hu; omega
        · have hh := rigidNext_three_live hu; omega
        · exact hn (by have hh := ih (wire u) (by omega) hu rfl; omega)

theorem unrestricted_next_assembly_lower_78 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) :
    58 + cost R + 2 * depth R ≤ wire (assemble T R Q) ∧
    78 ≤ wire (assemble T R Q) := by
  have ha := arbitrary_assembly_lower hT hfix hR.scope hj hQ.scope
  have hq := rigidNext_at_least_34 hQ
  have hf := Nat.mul_le_mul_right (depth R) (rigidNext_two_captures hQ)
  have hr := reader_weight_two hR hj
  constructor <;> omega

theorem unrestricted_knot_multiplicity_60 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) :
    18 + 60 * freeLeaves 0 T ≤ wire (assemble T R Q) := by
  have ha := (unrestricted_knot_multiplicity hT hfix hR hj hQ).1
  have hq := rigidNext_at_least_34 hQ
  have hm := Nat.mul_le_mul_left (freeLeaves 0 T) (show 60 ≤ 26 + wire Q by omega)
  simp only [Nat.mul_comm (freeLeaves 0 T) 60] at hm
  omega

theorem sub162_knot_localization_34 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q)
    (hsmall : wire (assemble T R Q) < 162) :
    freeLeaves 0 T = 1 ∨
      (freeLeaves 0 T = 2 ∧ 34 ≤ wire Q ∧ wire Q ≤ 45) := by
  have hq := rigidNext_at_least_34 hQ
  rcases sub162_knot_localization hT hfix hR hj hQ hsmall with h1 | ⟨h2, hq2⟩
  · exact Or.inl h1
  · exact Or.inr ⟨h2, hq, hq2⟩

#print axioms app_target_all_red
#print axioms rigidNext_body_nonlinear
#print axioms rigidNext_lambda_four_live
#print axioms rigidNext_at_least_34
#print axioms unrestricted_next_assembly_lower_78
end Blc.SelfintRound6Next
