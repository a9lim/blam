import Blc.SelfintSingleObjectChecks

namespace Blc.SelfintSingleObject
open Term Layouts SelfintFloor SelfintWireCost SelfintLowerBound

abbrev dup : Term := .lam (.app (.var 0) (.var 0))

/-- The last two equality layouts differ in the order of the captured
pair. In the five-lambda cell the local argument has a vacuous wrapper. -/
def factoredLayout (rev boxed : Bool) : Term :=
  let two := if rev then .app (.var 1) (.var 2) else .app (.var 2) (.var 1)
  let arg := if boxed then .lam (.var 1) else .var 0
  .app dup (.lam (.app (.var 0) (.lam (.lam (.app two arg)))))

private theorem so_one {b} (h : FreeUnder 1 (.lam b)) (hb : SO b) : SO (.lam b) :=
  .lam hb (.var 0) h (SelfintProjections.subst_self _ 0 h).symm

theorem factoredLayout_so (rev boxed : Bool) : SO (factoredLayout rev boxed) := by
  apply SO.app (so_closed_lam (by decide) (.app (.var 0) (.var 0)))
  apply so_closed_lam
  · cases rev <;> cases boxed <;> decide
  apply SO.app (.var 0)
  apply so_one
  · cases rev <;> cases boxed <;> decide
  let i := if rev then 0 else 1
  let j := if rev then 1 else 0
  let g := Term.app (.var 1) (if boxed then .lam (.var 1) else .var 0)
  apply SO.lam (r := .app (.var i) (.var j)) (g := g)
  · apply SO.app
    · cases rev <;> exact .app (.var _) (.var _)
    · cases boxed
      · exact .var 0
      · exact so_dead (by decide) (.var 1)
  · exact .app (.var i) (.var j)
  · cases boxed <;> decide
  · cases rev <;> cases boxed <;> rfl

/-- Transfer a bound for global minimum representatives to every source. -/
theorem bound_of_minima (k : Nat) (h : ∀ E, MinimalInterpreter E → k ≤ wire E) :
    SelfintSizeBound k := by
  have aux (n : Nat) : ∀ E, wire E = n → IsSelfInterpreter E → k ≤ n := by
    induction n using Nat.strongRecOn with
    | ind n ih =>
      intro E he hE
      classical
      by_cases hm : ∀ E', IsSelfInterpreter E' → wire E ≤ wire E'
      · exact he ▸ h E ⟨hE, hm⟩
      · simp only [Classical.not_forall, Nat.not_le] at hm
        obtain ⟨u, hu, hlt⟩ := hm
        have := ih (wire u) (by omega) u rfl hu
        omega
  exact fun E hE => aux _ E rfl hE

set_option maxRecDepth 16000 in
set_option maxHeartbeats 2000000 in
private theorem equality_table :
    (cell 1 3).filter (passes 33) = [factoredLayout true false, factoredLayout false false] := by
  decide

theorem selfintSizeBound_34 : SelfintSizeBound 34 := by
  apply bound_of_minima
  intro E hm
  by_cases hw : wire E ≤ 33
  · rcases minimum_cells hm (by omega) with hc | ⟨_,_⟩
    · have mem := List.mem_filter.mpr ⟨hc, minimum_passes hm hw⟩
      rw [equality_table] at mem
      simp only [List.mem_cons, List.not_mem_nil, or_false] at mem
      rcases mem with rfl | rfl <;> exact (selfInterpreter_not_so hm.1 (factoredLayout_so _ _)).elim
    · omega
  · omega

#print axioms selfintSizeBound_34
end Blc.SelfintSingleObject
