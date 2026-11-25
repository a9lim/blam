import Blc.SelfintSingleObjectLiteral
import Blc.SelfintRound6BoundGlobal
import Blc.SelfintFloorApp

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintLowerBound SelfintWireCost SelfintCapture SelfintNonlinearChain
open SelfintRound6BoundGlobal

private theorem width_three {t} (h : Witness 0 t) : 3 ≤ live t := by
  simpa only [outerLive, Nat.add_zero] using width_live t 0 h

private theorem width_operand {w s} (hw : Witness 0 w) (cw : Closed w) (cs : Closed s)
    (hl : live w + live s = 4) 
    (hc : ¬ (Chain w ∧ Chain s ∧ (nonlinear w = 0 ∨ nonlinear s = 0))) :
    (∃ b, w = .lam b) ∧ (∃ b, s = .lam b) ∧ live w = 3 ∧ live s = 1 ∧
      4 ≤ leafCount w ∧ 2 ≤ leafCount s ∧ 1 ≤ nonlinear w ∧ nonlinear s = 1 := by
  have hwl := width_three hw
  have hsl := closed_live_pos s cs
  have hn := nonlinear_le_live s
  have hcw : Chain w := by
    apply Classical.byContradiction
    intro hbad
    have h := width_split_live w 0 hbad hw
    simp only [outerLive, Nat.add_zero] at h; omega
  have hcs := chain_of_le_one s (by omega)
  have hsplit : ¬ (nonlinear w = 0 ∨ nonlinear s = 0) := fun hh => hc ⟨hcw, hcs, hh⟩
  have := leaves_bound w
  have := leaves_bound s
  have wl : ∃ b, w = .lam b := by
    cases w with
    | lam => exact ⟨_, rfl⟩
    | var => cases hw
    | app f a =>
      have := closed_live_pos f cw.1
      have := closed_live_pos a cw.2
      simp only [live] at hl
      rcases hw with hw | hw <;> have := width_three hw <;> omega
  have sl : ∃ b, s = .lam b := by
    cases s with
    | lam => exact ⟨_, rfl⟩
    | var i => exact (Nat.not_lt_zero i cs).elim
    | app f a =>
      have := closed_live_pos f cs.1
      have := closed_live_pos a cs.2
      simp only [live] at hl; omega
  exact ⟨wl, sl, by omega, by omega, by omega, by omega, by omega, by omega⟩

/-- The top redex of any minimum with four live binders copies a three-binder width witness. -/
theorem four_live_minimum {E} (hm : MinimalInterpreter E) (hl : live E = 4) :
    ∃ b a, E = .app (.lam b) (.lam a) ∧ Witness 0 (.lam a) ∧
      2 ≤ leafCount b ∧ 4 ≤ leafCount a ∧ live (.lam b) = 1 ∧
      live (.lam a) = 3 ∧ nonlinear (.lam b) = 1 ∧ 1 ≤ nonlinear (.lam a) := by
  have hwit := selfInterpreter_width hm.1
  have hc := selfInterpreter_not_chain hm.1
  cases E with
  | var i => exact (Nat.not_lt_zero i hm.1.1).elim
  | lam b =>
    have h := width_split_live b 0 (selfInterpreter_not_chain (E := .lam b) hm.1)
      (one_lambda_width hm.1)
    have hp := SelfintRound6BoundLiteral.one_lambda_public_occ hm.1
    simp only [outerLive, Nat.add_zero] at h
    simp only [live, if_pos (show 0 < occ 0 b by omega)] at hl
    omega
  | app f x =>
    change live f + live x = 4 at hl
    rcases hwit with hf | hx
    · obtain ⟨⟨b, rfl⟩, _, hlf, hlx, _, _, _, _⟩ :=
        width_operand hf hm.1.1.1 hm.1.1.2 hl hc
      have hso : SO x := by
        apply Classical.byContradiction; intro h
        have := width_three (witness_of_not_so x 0 hm.1.1.2 h); omega
      have hr := selfInterpreter_beta hm.1 (.beta b x)
      have hb := witness_subst_reflect hm.1.1.2 hso b 0 (selfInterpreter_width hr)
      have := width_three hb
      have hz := minimal_no_erasing Context.hole b x hm
      simp only [live] at hlf
      split at hlf <;> omega
    · have hs : ¬ (Chain x ∧ Chain f ∧ (nonlinear x = 0 ∨ nonlinear f = 0)) :=
        fun h => hc ⟨h.2.1, h.1, h.2.2.symm⟩
      obtain ⟨⟨a,rfl⟩, ⟨b,rfl⟩, hla, hlb, hva, hvb, hna, hnb⟩ :=
        width_operand hx hm.1.1.2 hm.1.1.1 (by omega) hs
      exact ⟨b,a,rfl,hx,hvb,hva,hlb,hla,hnb,hna⟩

#print axioms four_live_minimum
end Blc.SelfintSingleObject
