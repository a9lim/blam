/-
Normal components at the three-lambda boundary for unrestricted NEXT.

All three source lambdas must be live. Its first head redex copies the
other two lambdas, which must supply the internal live capture. Those two
live binders therefore lie on one ancestor chain. Every beta step inside
their operand consumes a lambda without copying another, contradicting
the unconditional three-live-binder requirement for the resulting NEXT.

This leaves a normal two-lambda helper, a lambda-free nonlinear sharing
body, and lambda-free pending operands. It is a shape reduction, not an
exclusion of that remaining family or a new numerical floor.
-/
import Blc.SelfintRound7SourceShape
import Blc.SelfintRound6BoundNextPrice
import Blc.SelfintRootFlat

namespace Blc.SelfintRound7NextSourceShape
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintCapture
  SelfintSourceCost SelfintClass SelfintClassNext SelfintWiden
  SelfintRound6BoundNext SelfintRound6BoundNextPrice SelfintRound7SourceShape

/-- If every source lambda is live and all live lambdas occupy one
ancestor chain, every beta step strictly decreases the lambda count.
The statement covers reductions below arbitrary lambda contexts. -/
theorem live_chain_beta_lambdas {t u : Term} (h : Beta t u)
    (hc : LinearLiveTree t) (hl : live t = lamCount t) :
    lamCount u < lamCount t := by
  induction h with
  | beta b a =>
      have hbl := live_le_lamCount b
      have hal := live_le_lamCount a
      have hp : 0 < occ 0 b := by
        by_cases hp : 0 < occ 0 b
        · exact hp
        · simp only [live, if_neg hp, lamCount] at hl
          omega
      have ha0 : live a = 0 := by
        rcases hc.2.2 with hb | ha
        · simp only [live, if_pos hp] at hb; omega
        · exact ha
      have haL : lamCount a = 0 := by
        simp only [live, if_pos hp, lamCount] at hl
        omega
      simp only [contract, lamCount_subst, haL, Nat.mul_zero, Nat.add_zero, lamCount]
      omega
  | @appL f g a h ih =>
      have hf := live_le_lamCount f
      have ha := live_le_lamCount a
      have hfull : live f = lamCount f := by
        simp only [live, lamCount] at hl; omega
      have hh := ih hc.1 hfull
      simp only [lamCount]; omega
  | @appR f a b h ih =>
      have hf := live_le_lamCount f
      have ha := live_le_lamCount a
      have hfull : live a = lamCount a := by
        simp only [live, lamCount] at hl; omega
      have hh := ih hc.2.1 hfull
      simp only [lamCount]; omega
  | @lam b c h ih =>
      have hb := live_le_lamCount b
      have hfull : live b = lamCount b := by
        simp only [live, lamCount] at hl
        split at hl <;> omega
      have hh := ih hc hfull
      simp only [lamCount]; omega

/-- At exactly three source lambdas, every component preceding the tag
is already normal. There is no source minimum or wire-size assumption. -/
theorem three_lam_components_normal (b a : Term) (as : List Term)
    (h : RigidNext (spine (.app (.lam b) a) as))
    (hl : lamCount (spine (.app (.lam b) a) as) = 3) :
    NFt b ∧ NFt a ∧ ∀ u ∈ as, NFt u := by
  obtain ⟨ho,hbL,haL,hasL⟩ := three_lam_head_shape b a as h hl
  have hbLive : live b = 0 := by have hh := live_le_lamCount b; omega
  have haLive : live a = 2 := by
    have hh := rigidNext_three_live h
    rw [spine_zero_lam_live _ as hasL] at hh
    have ha := live_le_lamCount a
    simp only [live, hbLive, if_pos (show 0 < occ 0 b by omega)] at hh
    omega
  have hcap : ¬ Separated 0 a := by
    intro hc
    have hbsep := one_live_separated (.lam b)
      (by simp only [live, hbLive]; split <;> omega)
    exact rigidNext_not_separated h
      (spine_small_lam_separated _ as ⟨hbsep,hc⟩ (by omega))
  have hchain := linearLiveTree_of_marked a
    (QuoteOrigins.Marked.two_live_capture_chain a (by omega) hcap)
  have hnormal : NormalForm a := by
    intro a' hr
    have hless := live_chain_beta_lambdas hr hchain (by omega)
    have hnext := h.beta (SelfintSourceCost.spine_beta (.appR (.lam b) hr) as)
    have hlow := rigidNext_three_live hnext
    have hhigh := live_le_lamCount (spine (.app (.lam b) a') as)
    simp only [spine_lambdas, lamCount, hbL, hasL] at hhigh
    omega
  refine ⟨SelfintRootFlat.flat_nf _ hbL, normal_nft hnormal, ?_⟩
  intro u hu
  have hzero : lamCount u = 0 := by
    clear h hl
    induction as with
    | nil => simp at hu
    | cons v vs ih =>
        have hv : lamCount v = 0 := by
          change lamCount v + spineLambdas vs = 0 at hasL; omega
        have hvs : spineLambdas vs = 0 := by
          change lamCount v + spineLambdas vs = 0 at hasL; omega
        rcases List.mem_cons.mp hu with rfl | hu
        · exact hv
        · exact ih hvs hu
  exact SelfintRootFlat.flat_nf _ hzero

private theorem normal_nonlam_rigid (t : Term) (hn : NFt t)
    (hl : ¬ IsLam t) : Rigid t := by
  induction t with
  | var n => exact .var n
  | lam b ih => exact (hl trivial).elim
  | app f a ihf iha => exact .app a (ihf hn.2.1 hn.1)

private theorem flat_subst_rigid (t a : Term) (j : Nat)
    (ht : lamCount t = 0) (ha : Rigid a) : Rigid (substDec j a t) := by
  induction t with
  | var n => simp only [substDec]; split <;> (try split) <;> first | exact ha | exact .var _
  | lam b ih => simp [lamCount] at ht
  | app f b ihf ihb =>
      have hf : lamCount f = 0 := by change lamCount f + lamCount b = 0 at ht; omega
      exact .app _ (ihf hf)

/-- The normal copied operand has a literal outer abstraction. A normal
rigid operand would make the contracted lambda-free body rigid as well. -/
theorem three_lam_operand_lam (b a : Term) (as : List Term)
    (h : RigidNext (spine (.app (.lam b) a) as))
    (hl : lamCount (spine (.app (.lam b) a) as) = 3) : IsLam a := by
  by_cases ha : IsLam a
  · exact ha
  have hn := (three_lam_components_normal b a as h hl).2.1
  have hbL := (three_lam_head_shape b a as h hl).2.1
  have hr := flat_subst_rigid b a 0 hbL (normal_nonlam_rigid a hn ha)
  have hnext := h.beta (SelfintSourceCost.spine_beta (Beta.beta b a) as)
  exact (rigidNext_not_rigid hnext (spine_rigid _ as hr)).elim

/-- Complete head localization at three source lambdas. The helper has
one literal outer binder and one further lambda somewhere in its normal
body; all remaining source syntax is lambda-free. -/
theorem three_lam_source_shape {Q : Term} (h : RigidNext Q)
    (hl : lamCount Q = 3) :
    ∃ b a as, Q = spine (.app (.lam b) (.lam a)) as ∧
      2 ≤ occ 0 b ∧ lamCount b = 0 ∧ lamCount a = 1 ∧
      spineLambdas as = 0 ∧ NFt b ∧ NFt a ∧ ∀ u ∈ as, NFt u := by
  rcases head_shape Q with hlam | hrig | ⟨b,a,as,hQ⟩
  · cases Q with
    | var n => exact hlam.elim
    | app f a => exact hlam.elim
    | lam b =>
        have hh := SelfintRound6Next.rigidNext_lambda_four_live h
        have hc := live_le_lamCount (.lam b)
        omega
  · exact (rigidNext_not_rigid h hrig).elim
  · subst Q
    have ha := three_lam_operand_lam b a as h hl
    cases a with
    | var n => exact ha.elim
    | app f a => exact ha.elim
    | lam a =>
        obtain ⟨ho,hbL,haL,hsL⟩ := three_lam_head_shape b (.lam a) as h hl
        obtain ⟨hb,ha,has⟩ := three_lam_components_normal b (.lam a) as h hl
        exact ⟨b,a,as,rfl,ho,hbL,by simp only [lamCount] at haL; omega,hsL,hb,ha,has⟩

#print axioms live_chain_beta_lambdas
#print axioms three_lam_components_normal
#print axioms three_lam_source_shape
end Blc.SelfintRound7NextSourceShape
