/-
The productive 33-bit busy-beaver exclusion
`010001101000011000000110011110110`.

This formalizes the hand recurrence in Tromp's BB/BB.txt.  Put
  A x = x (W x), W x = λy z. z (x y), C x = λz. z x,
and T₀ = A, Tₙ₊₁ = W Tₙ.  Every Tᵢ Tⱼ exposes another C layer
after at most three head contractions.  A finite normal form cannot
contain arbitrarily many such layers.
-/
import Blc.NormalOrder
import Blc.Wire

namespace Blc.BB33Second
open Term

def engine : Term :=
  .lam (.app (.var 0)
    (.lam (.lam (.app (.var 0) (.app (.var 2) (.var 1))))))

def wrap (x : Term) : Term :=
  .lam (.lam (.app (.var 0) (.app x (.var 1))))

def output (x : Term) : Term := .lam (.app (.var 0) x)

def tower : Nat → Term
  | 0 => engine
  | n + 1 => wrap (tower n)

def target : Term := .app (.lam (.app (.var 0) (.var 0))) engine

theorem engine_closed : Closed engine := by decide

theorem tower_closed : ∀ n, Closed (tower n)
  | 0 => engine_closed
  | n + 1 => by
      exact ⟨by decide, closed_freeUnder (tower_closed n) 2, by decide⟩

theorem engine_step (j : Nat) :
    headStep (.app engine (tower j)) =
      some (.app (tower j) (tower (j + 1))) := by
  simp only [engine, headStep, contract, substDec]
  simp only [Nat.reduceAdd, ↓reduceIte]
  rw [shift_closed 1 0 (tower_closed j)]
  rw [shift_closed 1 0 (tower_closed j)]
  rfl

theorem wrap_step (i j : Nat) :
    headStep (.app (tower (i + 1)) (tower j)) =
      some (output (.app (tower i) (tower j))) := by
  simp only [tower, wrap, headStep, contract, substDec]
  rw [substDec_closed 1 _ (tower_closed i)]
  rw [shift_closed 1 0 (tower_closed j)]
  rfl

theorem output_headNormal (x : Term) : headStep (output x) = none := rfl

theorem pair_landing (i j : Nat) :
    ∃ k l steps, headSteps steps (.app (tower i) (tower j)) =
      some (output (.app (tower k) (tower l))) := by
  cases i with
  | succ i =>
      exact ⟨i, j, 1, by simp [headSteps, wrap_step]⟩
  | zero =>
      cases j with
      | succ j =>
          refine ⟨j, j + 1 + 1, 2, ?_⟩
          rw [headSteps, show tower 0 = engine from rfl, engine_step]
          simp only [Option.bind_some]
          simp [headSteps, wrap_step]
      | zero =>
          refine ⟨0, 2, 3, ?_⟩
          change headSteps 3 (.app engine (tower 0)) = _
          rw [headSteps, engine_step]
          simp only [Option.bind_some]
          change headSteps 2 (.app engine (tower 1)) = _
          rw [headSteps, engine_step]
          simp only [Option.bind_some]
          simp [headSteps, wrap_step]

theorem target_init : headSteps 1 target = some (.app (tower 0) (tower 0)) := by
  decide

theorem target_landing :
    headSteps 4 target = some (output (.app (tower 0) (tower 2))) := by decide

theorem target_closed : Closed target := by decide

def Productive (t : Term) : Prop :=
  t = target ∨ ∃ i j, t = .app (tower i) (tower j)

theorem productive_advance (t : Term) (ht : Productive t) :
    ∃ k s a, headSteps k t = some s ∧ headStep s = none ∧
      NfChild a s ∧ Productive a := by
  rcases ht with rfl | ⟨i, j, rfl⟩
  · refine ⟨4, _, .app (tower 0) (tower 2), target_landing,
      output_headNormal _, ?_, Or.inr ⟨0, 2, rfl⟩⟩
    exact .trans (.arg (.var 0) _) (.lam _)
  · obtain ⟨k, l, steps, hs⟩ := pair_landing i j
    refine ⟨steps, _, .app (tower k) (tower l), hs,
      output_headNormal _, ?_, Or.inr ⟨k, l, rfl⟩⟩
    exact .trans (.arg (.var 0) _) (.lam _)

/-- The 33-bit term has no normal form under arbitrary β-reduction. -/
theorem noNormalForm : ¬ HasNormalForm target :=
  productive_noNormalForm Productive productive_advance (Or.inl rfl)

theorem wire : blcCode target =
    [false, true, false, false, false, true, true, false, true, false, false,
     false, false, true, true, false, false, false, false, false, false, true,
     true, false, false, true, true, true, true, false, true, true, false] := by
  decide

end Blc.BB33Second
