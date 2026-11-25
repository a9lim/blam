import Blc.SelfintSingleObjectFloor34

namespace Blc.SelfintSingleObject
open Term Layouts SelfintWireCost

/-- The two arity-three helpers that permute the last two arguments. -/
def cycleLayout (swap : Bool) : Term :=
  let f := .app (.var 2) (.var 2)
  let b := if swap then .app (.app f (.var 0)) (.var 1) else .app (.app f (.var 1)) (.var 0)
  .app dup (.lam (.lam (.lam b)))

/-- In the first mode the inner lambda packages its two captures as a
pair. In the other mode it takes a supplied argument between them. -/
def advancingHelper (pair : Bool) : Term :=
  let f := if pair then .app (.var 0) (.var 2) else .app (.var 2) (.var 0)
  .lam (.lam (.app (.var 1) (.lam (.app f (.var 1)))))

def advancingLayout (pair : Bool) := Term.app dup (advancingHelper pair)

def residuals : List Term := [cycleLayout true, cycleLayout false,
  advancingLayout true, advancingLayout false, factoredLayout true false,
  factoredLayout false false, factoredLayout true true, factoredLayout false true]

set_option maxRecDepth 12000
set_option maxHeartbeats 2500000
set_option Elab.async false

private def covered (c w : Nat) (x y : Fin 5) : Bool :=
  (block c w x y).all fun t => !passes 36 t || residuals.contains t

private theorem from_block {E c w} (hw : w ≤ 4) (hc : E ∈ cell c w) (hp : passes 36 E = true)
    (h : ∀ x y, covered c w x y = true) : E ∈ residuals := by
  obtain ⟨x,y,hm⟩ := mem_block hw hc
  have hb := List.all_eq_true.mp (h x y) E hm
  simpa [hp] using hb

private theorem five_cases (p : Fin 5 → Prop) (h0 : p 0) (h1 : p 1) (h2 : p 2)
    (h3 : p 3) (h4 : p 4) (i : Fin 5) : p i := by
  have : i = 0 ∨ i = 1 ∨ i = 2 ∨ i = 3 ∨ i = 4 := by omega
  rcases this with rfl | rfl | rfl | rfl | rfl <;> assumption

private theorem row_1_3_0 : ∀ y, covered 1 3 0 y = true := by
  apply five_cases <;> decide

private theorem row_1_3_1 : ∀ y, covered 1 3 1 y = true := by
  apply five_cases <;> decide

private theorem row_1_3_2 : ∀ y, covered 1 3 2 y = true := by
  apply five_cases <;> decide

private theorem row_1_3_3 : ∀ y, covered 1 3 3 y = true := by
  apply five_cases <;> decide

private theorem row_1_3_4 : ∀ y, covered 1 3 4 y = true := by
  apply five_cases <;> decide

private theorem table_1_3 : ∀ x y, covered 1 3 x y = true :=
  five_cases _ row_1_3_0 row_1_3_1 row_1_3_2 row_1_3_3 row_1_3_4

private theorem row_1_4_0 : ∀ y, covered 1 4 0 y = true := by
  apply five_cases <;> decide

private theorem row_1_4_1 : ∀ y, covered 1 4 1 y = true := by
  apply five_cases <;> decide

private theorem row_1_4_2 : ∀ y, covered 1 4 2 y = true := by
  apply five_cases <;> decide

private theorem row_1_4_3 : ∀ y, covered 1 4 3 y = true := by
  apply five_cases <;> decide

private theorem row_1_4_4 : ∀ y, covered 1 4 4 y = true := by
  apply five_cases <;> decide

private theorem table_1_4 : ∀ x y, covered 1 4 x y = true :=
  five_cases _ row_1_4_0 row_1_4_1 row_1_4_2 row_1_4_3 row_1_4_4

private theorem row_2_3_0 : ∀ y, covered 2 3 0 y = true := by
  apply five_cases <;> decide

private theorem row_2_3_1 : ∀ y, covered 2 3 1 y = true := by
  apply five_cases <;> decide

private theorem row_2_3_2 : ∀ y, covered 2 3 2 y = true := by
  apply five_cases <;> decide

private theorem row_2_3_3 : ∀ y, covered 2 3 3 y = true := by
  apply five_cases <;> decide

private theorem row_2_3_4 : ∀ y, covered 2 3 4 y = true := by
  apply five_cases <;> decide

private theorem table_2_3 : ∀ x y, covered 2 3 x y = true :=
  five_cases _ row_2_3_0 row_2_3_1 row_2_3_2 row_2_3_3 row_2_3_4

theorem minimum_residual {E} (hm : MinimalInterpreter E) (hw : wire E ≤ 36) : E ∈ residuals := by
  have hp := minimum_passes hm hw
  rcases minimum_cells hm hw with h | ⟨_, h | h⟩
  · exact from_block (by decide) h hp table_1_3
  · exact from_block (by decide) h hp table_1_4
  · exact from_block (by decide) h hp table_2_3

end Blc.SelfintSingleObject
