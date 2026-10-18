/-
The 35-bit identity/re-entry exclusion
`01000110100001011000100001100111010`.

A x = x I (W x), W x y = y (x y).  A tower applied to I reaches
B = W I by head reduction. B is beta-equal to the duplicator, but its
remaining identity redex lies off the head path. We do not silently
contract it: the invariant admits explicit identity-delayed towers
I C alongside A and W C. Every pair of these towers takes positive
head steps to another pair, with arbitrary trailing arguments.
This closes the gap between the hand beta-equality argument in
ref/AIT/BB/BB.txt and an actual infinite head reduction.
-/
import Blc.BB35Spine
import Blc.Wire

namespace Blc.BB35Reentry
open Term

def I : Term := .lam (.var 0)
def W (z : Term) : Term := .lam (.app (.var 0) (.app z (.var 0)))
def A : Term := .lam (.app (.app (.var 0) I)
  (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))
def B : Term := W I
def target : Term := .app (.lam (.app (.var 0) (.var 0))) A

/-- Identity delays are retained as real syntax, not quotiented away. -/
inductive Tower : Term → Prop where
  | base : Tower A
  | wrap {c : Term} : Tower c → Tower (W c)
  | delay {c : Term} : Tower c → Tower (.app I c)

theorem I_closed : Closed I := by decide
theorem A_closed : Closed A := by decide
theorem tower_closed {c : Term} (hc : Tower c) : Closed c := by
  induction hc with
  | base => exact A_closed
  | wrap hc ih => exact ⟨by decide, closed_freeUnder ih 1, by decide⟩
  | delay hc ih => exact ⟨I_closed, ih⟩

theorem a_step {x : Term} (hx : Closed x) :
    LiftReds 1 (.app A x) (.app (.app x I) (W x)) := by
  refine .head (app_ne_lam _ _) (headStep_sound ?_) (.refl _)
  simp [A, W, I, headStep, contract, substDec, shift_closed 1 0 hx]

theorem w_step {x : Term} (hx : Closed x) (y : Term) :
    LiftReds 1 (.app (W x) y) (.app y (.app x y)) := by
  refine .head (app_ne_lam _ _) (headStep_sound ?_) (.refl _)
  simp [W, headStep, contract, substDec, substDec_closed 0 y hx]

theorem i_step (x : Term) : LiftReds 1 (.app I x) x :=
  .head (app_ne_lam _ _) (headStep_sound (by rfl)) (.refl _)

/-- All delayed towers have the same head-normal image at I. -/
theorem tower_identity {c : Term} (hc : Tower c) :
    ∃ n, LiftReds n (.app c I) B := by
  induction hc with
  | base =>
      refine ⟨3, ?_⟩
      have h1 := a_step I_closed
      have h2 := liftReds_appL B (i_step I)
      exact liftReds_trans h1 (liftReds_trans h2 (i_step B))
  | wrap hc ih =>
      rename_i c
      obtain ⟨n, hn⟩ := ih
      exact ⟨1 + (1 + n),
        liftReds_trans (w_step (tower_closed hc) I)
          (liftReds_trans (i_step (.app c I)) hn)⟩
  | delay hc ih =>
      rename_i c
      obtain ⟨n, hn⟩ := ih
      exact ⟨1 + n, liftReds_trans (liftReds_appL I (i_step c)) hn⟩

/-- Every tower forces its supplied argument onto the head spine. -/
theorem tower_force {c : Term} (hc : Tower c) (x : Term) (hx : Closed x) :
    ∃ n args, 0 < n ∧ LiftReds n (.app c x) (apps x args) := by
  induction hc with
  | base => exact ⟨1, [I, W x], by decide, a_step hx⟩
  | wrap hc ih =>
      rename_i c
      exact ⟨1, [.app c x], by decide, w_step (tower_closed hc) x⟩
  | delay hc ih =>
      rename_i c
      obtain ⟨n, args, hn, hr⟩ := ih
      exact ⟨1 + n, args, by omega,
        liftReds_trans (liftReds_appL x (i_step c)) hr⟩

/-- A pair survives every case of the tower grammar. -/
theorem pair_advance {c d : Term} (hc : Tower c) (hd : Tower d) :
    ∃ n e f args, 0 < n ∧
      LiftReds n (.app c d) (apps (.app e f) args) ∧ Tower e ∧ Tower f := by
  cases hc with
  | base =>
      obtain ⟨n, hn⟩ := tower_identity hd
      have h1 := a_step (tower_closed hd)
      have h2 := liftReds_appL (W d) hn
      have h3 := w_step I_closed (W d)
      exact ⟨1 + (n + 1), W d, .app I (W d), [], by omega,
        liftReds_trans h1 (liftReds_trans h2 h3), .wrap hd, .delay (.wrap hd)⟩
  | wrap hc =>
      rename_i c
      obtain ⟨n, args, hn, hr⟩ := tower_force hd (.app c d)
        ⟨tower_closed hc, tower_closed hd⟩
      exact ⟨1 + n, c, d, args, by omega,
        liftReds_trans (w_step (tower_closed hc) d) hr, hc, hd⟩
  | delay hc =>
      rename_i c
      exact ⟨1, c, d, [], by decide, liftReds_appL d (i_step c), hc, hd⟩

def Growing (t : Term) : Prop :=
  t = target ∨ ∃ c d args, Tower c ∧ Tower d ∧ t = apps (.app c d) args

theorem advance (t : Term) (ht : Growing t) :
    ∃ n u, 0 < n ∧ HeadReds n t u ∧ Growing u := by
  rcases ht with rfl | ⟨c, d, args, hc, hd, rfl⟩
  · exact ⟨1, .app A A, by decide, headReds_of_headSteps 1 (by decide),
      Or.inr ⟨A, A, [], .base, .base, rfl⟩⟩
  · obtain ⟨n, e, f, fresh, hn, hr, he, hf⟩ := pair_advance hc hd
    refine ⟨n, apps (.app e f) (fresh ++ args), hn, ?_,
      Or.inr ⟨e, f, fresh ++ args, he, hf, rfl⟩⟩
    simpa [BB35Spine.apps_append] using
      liftReds_headReds (liftReds_apps args hr)

theorem headDiverges : HeadDiverges target :=
  BB35Spine.family_headDiverges Growing advance (Or.inl rfl)

theorem noNormalForm : ¬ HasNormalForm target :=
  headDiverges_not_hasNormalForm headDiverges

theorem closed : Closed target := by decide

theorem wire : blcCode target =
    [false, true, false, false, false, true, true, false, true, false,
     false, false, false, true, false, true, true, false, false, false,
     true, false, false, false, false, true, true, false, false, true,
     true, true, false, true, false] := by decide

end Blc.BB35Reentry
