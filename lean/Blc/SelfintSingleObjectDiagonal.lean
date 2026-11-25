import Blc.SelfintSingleObjectLiteral
import Blc.SelfintRound6BoundGlobal
import Blc.SelfintFloorApp

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintLowerBound SelfintWireCost SelfintCapture SelfintNonlinearChain
open SelfintRound6BoundGlobal

private theorem width_three {t} (h : Witness 0 t) : 3 ≤ live t := by
  simpa only [outerLive, Nat.add_zero] using width_live t 0 h

private theorem resources {E} (h : IsSelfInterpreter E) (hw : wire E ≤ 36) :
    live E = 4 ∧ leafCount E = 6 ∧ nonlinear E = 2 ∧ lamCount E ≤ 5 := by
  obtain ⟨hl, hv, hx⟩ := interpreter_counts h
  have := live_le_lamCount E
  have := leaves_bound E
  have := selfInterpreter_two_nonlinear h
  have := wire_identity E
  omega

private theorem width_operand {w s} (hw : Witness 0 w) (cw : Closed w) (cs : Closed s)
    (hl : live w + live s = 4) (hv : leafCount w + leafCount s = 6)
    (hc : ¬ (Chain w ∧ Chain s ∧ (nonlinear w = 0 ∨ nonlinear s = 0))) :
    (∃ b, w = .lam b) ∧ (∃ b, s = .lam b) ∧ live w = 3 ∧ live s = 1 ∧
      leafCount w = 4 ∧ leafCount s = 2 ∧ nonlinear w = 1 ∧ nonlinear s = 1 := by
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

/-- Below 37 bits a minimum is a closed two-leaf abstraction applied to a
closed four-leaf width witness. Both operands have one nonlinear binder. -/
theorem small_minimum_diagonal {E} (hm : MinimalInterpreter E) (hw : wire E ≤ 36) :
    ∃ b a, E = .app (.lam b) (.lam a) ∧ Witness 0 (.lam a) ∧
      leafCount b = 2 ∧ leafCount a = 4 ∧ live (.lam b) = 1 ∧
      live (.lam a) = 3 ∧ nonlinear (.lam b) = 1 ∧ nonlinear (.lam a) = 1 := by
  have ⟨hl,hv,hn,hL⟩ := resources hm.1 hw
  have hwit := selfInterpreter_width hm.1
  have hc := selfInterpreter_not_chain hm.1
  cases E with
  | var i => exact (Nat.not_lt_zero i hm.1.1).elim
  | lam b => have := one_lambda_bound_39 hm.1; omega
  | app f x =>
    change live f + live x = 4 at hl
    change leafCount f + leafCount x = 6 at hv
    rcases hwit with hf | hx
    · obtain ⟨⟨b, rfl⟩, _, hlf, hlx, _, _, _, _⟩ :=
        width_operand hf hm.1.1.1 hm.1.1.2 hl hv hc
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
        width_operand hx hm.1.1.2 hm.1.1.1 (by omega) (by omega) hs
      exact ⟨b,a,rfl,hx,hvb,hva,hlb,hla,hnb,hna⟩

#print axioms small_minimum_diagonal
end Blc.SelfintSingleObject
