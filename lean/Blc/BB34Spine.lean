/-
The 34-bit spine-growth survivor, wire 0100010110101000000101110100111010.

A x y = x y (x y); t₀ = A; tₙ₊₁ = A tₙ.
The n-th milestone has core A A tₙ and an accumulated argument vector.
It reaches A A tₙ₊₁ in 2n+2 head steps, inserting the fresh vector
[t₁ tₙ₊₁, ..., tₙ tₙ₊₁] before the existing trailing arguments.
The core always remains an application, so the trailing vector cannot
intercept its infinite head reduction.
This formalizes Tromp's spine-growth argument in ref/AIT/BB/BB.txt.
-/

import Blc.Ratchet
import Blc.Wire

namespace Blc.BB34Spine
open Blc Term

def A : Term :=
  .lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 0))))

def T : Term := .app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) A

theorem wire : blcCode T =
    [false, true, false, false, false, true, false, true, true, false,
     true, false, true, false, false, false, false, false, false, true,
     false, true, true, true, false, true, false, false, true, true,
     true, false, true, false] := by decide

theorem closed : Closed T := by decide

private def middle (x : Term) : Term :=
  .lam (.app (.app (shift 1 0 x) (.var 0)) (.app (shift 1 0 x) (.var 0)))

/-- The two-step defining equation, with both proper sources liftable. -/
theorem open_reds (x y : Term) :
    LiftReds 2 (.app (.app A x) y) (.app (.app x y) (.app x y)) := by
  have h1 : HeadStep (.app A x) (middle x) := by
    apply headStep_sound
    rfl
  have h2 : HeadStep (.app (middle x) y) (.app (.app x y) (.app x y)) := by
    apply headStep_sound
    simp [middle, headStep, contract, substDec, substDec_shift]
  exact LiftReds.head (app_ne_lam _ _)
    (HeadStep.appL y (app_ne_lam _ _) h1)
    (LiftReds.head (app_ne_lam _ _) h2 (LiftReds.refl _))

def tower : Nat → Term
  | 0 => A
  | n + 1 => .app A (tower n)

def debris : Nat → Term → List Term
  | 0, _ => []
  | n + 1, y => debris n y ++ [.app (tower (n + 1)) y]

private theorem apps_append (t : Term) (xs ys : List Term) :
    apps t (xs ++ ys) = apps (apps t xs) ys := by
  induction xs generalizing t with
  | nil => rfl
  | cons x xs ih => exact ih (.app t x)

/-- Peel the first tower while leaving its copies on the trailing spine. -/
theorem descend : ∀ (n : Nat) (y : Term),
    LiftReds (2 * n) (.app (.app A (tower n)) y)
      (apps (.app (.app A A) y) (debris n y))
  | 0, _ => LiftReds.refl _
  | n + 1, y => by
      have h1 := open_reds (tower (n + 1)) y
      have h2 := liftReds_appL (.app (tower (n + 1)) y) (descend n y)
      have h := liftReds_trans h1 h2
      simpa [tower, debris, apps_append, apps, Nat.mul_succ, Nat.add_comm] using h

def core (n : Nat) : Term := .app (.app A A) (tower n)

/-- One milestone cycle: the rank rises, and the spine gains n arguments. -/
theorem cycle (n : Nat) :
    LiftReds (2 + 2 * n) (core n)
      (apps (core (n + 1)) (debris n (tower (n + 1)))) := by
  have h1 := open_reds A (tower n)
  have h2 := descend n (tower (n + 1))
  exact liftReds_trans h1 h2

def trail : Nat → List Term
  | 0 => []
  | n + 1 => debris n (tower (n + 1)) ++ trail n

def state (n : Nat) : Term := apps (core n) (trail n)

theorem state_cycle (n : Nat) :
    HeadReds (2 + 2 * n) (state n) (state (n + 1)) := by
  have h := liftReds_headReds (liftReds_apps (trail n) (cycle n))
  simpa [state, trail, apps_append] using h

def position : Nat → Nat
  | 0 => 1
  | n + 1 => position n + (2 + 2 * n)

theorem reach : ∀ n : Nat, HeadReds (position n) T (state n)
  | 0 => by apply headReds_of_headSteps; decide
  | n + 1 => headReds_trans (reach n) (state_cycle n)

theorem position_gt : ∀ n : Nat, n < position n
  | 0 => by decide
  | n + 1 => by
      have h := position_gt n
      simp only [position]
      omega

theorem headDiverges : HeadDiverges T := by
  apply headDiverges_of_unbounded
  intro n
  exact ⟨position n, state n, position_gt n, headSteps_of_headReds (reach n)⟩

theorem noNormalForm : ¬ HasNormalForm T :=
  headDiverges_not_hasNormalForm headDiverges

end Blc.BB34Spine
