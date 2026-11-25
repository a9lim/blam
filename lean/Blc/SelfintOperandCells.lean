import Blc.SelfintOperandGrammar

namespace Blc.SelfintSingleObject.OperandGrammar
open Term SelfintFloor SelfintWireCost SelfintCapture SelfintLowerBound SelfintNonlinearChain

/-- Budgets count lambdas inside the two outer abstractions. -/
structure Cell where
  lf : Nat
  vf : Nat
  xf : Nat
  la : Nat
  va : Nat
  xa : Nat
  deriving DecidableEq, Repr

def Cell.price (c : Cell) : Nat :=
  2*(c.lf+c.la+2) + 4*(c.vf+c.va) - 2 + c.xf+c.xa

def Cell.sources (c : Cell) : List Term :=
  let fs := (terms (c.lf+c.vf) 1 c.lf c.vf c.xf false).filter fun b =>
    live (.lam b) == 1 && nonlinear (.lam b) == 1 && Layouts.nonshrinking b
  let as := (terms (c.la+c.va) 1 c.la c.va c.xa true).filter fun a =>
    live (.lam a) == 3 && 1 ≤ nonlinear (.lam a) && Layouts.nonshrinking a
  fs.flatMap fun b => as.map fun a => .app (.lam b) (.lam a)

theorem four_live_cell {E} (hm : MinimalInterpreter E) (hl : live E = 4) :
    ∃ c : Cell, c.price = wire E ∧ 2 ≤ c.vf ∧ 4 ≤ c.va ∧ 2 ≤ c.la ∧ 3 ≤ c.xa ∧
      E ∈ c.sources := by
  obtain ⟨b,a,rfl,hw,hvb,hva,hlb,hla,hnb,hna⟩ := four_live_minimum hm hl
  have hbody : Witness 1 a := by
    rcases hw with h | ⟨_,i,j,_,hj,_⟩
    · exact h
    · omega
  have hx := width_price a 1 hbody
  have hL := live_le_lamCount (.lam a)
  have hNs := Layouts.minimum_passes hm (Nat.le_refl _)
  simp only [Layouts.passes,Bool.and_eq_true] at hNs
  have hs := hNs.1.1.2
  simp only [Layouts.nonshrinking,Bool.and_eq_true] at hs
  refine ⟨⟨lamCount b,leafCount b,indexSum b,lamCount a,leafCount a,indexSum a⟩,
    ?_,hvb,hva,?_,hx,?_⟩
  · have := wire_identity (.app (.lam b) (.lam a))
    simp only [Cell.price,lamCount,leafCount,indexSum] at *
    omega
  · change 2 ≤ lamCount a; simp only [lamCount] at hL; omega
  · apply List.mem_flatMap.mpr
    refine ⟨b,List.mem_filter.mpr ⟨terms_complete b 1 _ false hm.1.1.1 (by simp) (Nat.le_refl _),
      by simp [hlb,hnb,hs.1.1]⟩, List.mem_map.mpr ⟨a,?_,rfl⟩⟩
    exact List.mem_filter.mpr ⟨terms_complete a 1 _ true hm.1.1.2 (fun _ => hbody) (Nat.le_refl _),
      by simp [hla,hna,hs.1.2]⟩

theorem four_live_below_39 {E} (h : IsSelfInterpreter E) (hw : wire E < 39) : live E = 4 := by
  have ⟨hl,hv,hx⟩ := interpreter_counts h
  have := live_le_lamCount E
  have := leaves_bound E
  have := selfInterpreter_two_nonlinear h
  have := wire_identity E
  omega

#print axioms four_live_cell
end Blc.SelfintSingleObject.OperandGrammar
