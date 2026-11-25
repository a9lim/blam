import Blc.SelfintFourLive
import Blc.SelfintRound6BoundLiteral

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintWireCost SelfintLowerBound SelfintCapture SelfintNonlinearChain

/-- A redex whose subtree has no live binders would erase its operand and
strictly shorten the enclosing term. -/
theorem normal_of_zero_live (t : Term) (hz : live t = 0)
    (hc : ∀ u, Beta t u → wire t ≤ wire u) : NFt t := by
  induction t with
  | var _ => trivial
  | lam b ih =>
    apply ih
    · simp only [live] at hz; omega
    · intro u hu
      have h := hc _ (.lam hu)
      simpa only [wire_lam,Nat.add_le_add_iff_right] using h
  | app f a ihf iha =>
    change live f + live a = 0 at hz
    refine ⟨?_,ihf (by omega) ?_,iha (by omega) ?_⟩
    · cases f with
      | var i => exact id
      | app g b => exact id
      | lam b =>
        have pos : occ 0 b = 0 := by
          simp only [live] at hz
          split at hz <;> omega
        exact fun _ => (Nat.not_lt_of_le (hc _ (.beta b a))) (erasing_beta_shrinks b a pos)
    · intro u hu
      have h := hc _ (.appL a hu)
      simp only [wire_app] at h; omega
    · intro u hu
      have h := hc _ (.appR f hu)
      simp only [wire_app] at h; omega

private theorem head_of_normal {t : Term} (hn : NFt t) (hs : FreeUnder 1 t) (hh : ¬ IsLam t) :
    spineHead t = .var 0 := by
  induction t with
  | var i =>
    change i < 1 at hs
    simp [spineHead,show i = 0 by omega]
  | lam b => exact (hh trivial).elim
  | app f a ih _ => exact ih hn.2.1 hs.1 hn.1

/-- In a four-live minimum the operator body is already normal and its head
is its own argument. The right operand carries the nonfactorable witness. -/
theorem four_live_operator {e} (hm : MinimalInterpreter e) (hl : live e = 4) :
    ∃ b a, e = .app (.lam b) (.lam a) ∧ NFt b ∧ spineHead b = .var 0 ∧
      live b = 0 ∧ Witness 0 (.lam a) := by
  obtain ⟨b,a,rfl,hw,_,_,hb,_,_,_⟩ := four_live_minimum hm hl
  have pos := minimal_no_erasing .hole b (.lam a) hm
  simp only [live,if_pos pos] at hb
  have hz : live b = 0 := by omega
  have hn : NFt b := normal_of_zero_live b hz fun u hu => by
    have h := minimal_beta_nonshrinking hm (.appL (.lam a) (.lam hu))
    simp only [wire_app,wire_lam] at h; omega
  have hhead : ¬ IsLam b := by
    cases b with
    | var _ => exact id
    | app _ _ => exact id
    | lam u =>
      intro _
      have hr := selfInterpreter_beta hm.1 (.beta (.lam u) (.lam a))
      have used := SelfintRound6BoundLiteral.one_lambda_public_occ hr
      change 0 < occ 0 (substDec 1 (shift 1 0 (.lam a)) u) at used
      rw [occ_substDec_lt u _ 0 1 (by decide), occ_shift_eq] at used
      simp only [live] at hz; split at hz <;> omega
  exact ⟨b,a,rfl,hn,head_of_normal hn hm.1.1.1 hhead,hz,hw⟩

#print axioms four_live_operator
end Blc.SelfintSingleObject
