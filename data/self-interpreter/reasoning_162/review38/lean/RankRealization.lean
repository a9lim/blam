/- The abstract rank invariant realized as beta reduction: eight complete
non-interpreter theorems, with no inventory or global-bound axiom. -/
import Checks

namespace Blc.Round3Floor38
open Term SelfintSharp SelfintLowerBound WeakHeadClock
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

def rhs : Order → Term → Term → Term → Term
  | .xyz, x, y, z => .app x (.app y z)
  | .xzy, x, y, z => .app x (.app z y)
  | .zxy, x, y, z => .app z (.app x y)
  | .zyx, x, y, z => .app z (.app y x)

/-- Captures are closed in this realization. -/
def jT (order : Order) (x : Term) : Term :=
  .lam (.lam (rhs order x (.var 1) (.var 0)))

def nT (mode : Mode) (order : Order) : Term :=
  let j := .lam (.lam (rhs order (.var 2) (.var 1) (.var 0)))
  .lam (match mode with
    | .a => .app (.app (.var 0) j) (.var 0)
    | .b => .app (.var 0) (.app (.var 0) j))

theorem nT_closed (mode order) : Closed (nT mode order) := by
  cases mode <;> cases order <;> decide

theorem jT_closed (order) {x : Term} (hx : Closed x) : Closed (jT order x) := by
  have hh := closed_freeUnder hx 2
  cases order <;> simp [jT, rhs, Closed, FreeUnder, hh]

def realize (mode : Mode) (order : Order) : M → Term
  | .n => nT mode order
  | .j x => jT order (realize mode order x)
  | .ap f a => .app (realize mode order f) (realize mode order a)

theorem realize_closed (mode order) (x : M) : Closed (realize mode order x) := by
  induction x with
  | n => exact nT_closed _ _
  | j x ih => exact jT_closed _ ih
  | ap f a ihf iha => exact ⟨ihf, iha⟩

def Advance (t u : Term) : Prop := ∃ v, weakStep t = some v ∧ Betas v u

theorem advance_left {t u : Term} (h : Advance t u) (a : Term) :
    Advance (.app t a) (.app u a) := by
  obtain ⟨v, hv, hr⟩ := h
  exact ⟨_, weak_app hv a, betas_appL a hr⟩

theorem advance_apps {t u : Term} (h : Advance t u) (as : List Term) :
    Advance (tApps t as) (tApps u as) := by
  induction as generalizing t u with
  | nil => exact h
  | cons a as ih => exact ih (advance_left h a)

theorem nT_step (mode order) {x : Term} (hx : Closed x) :
    weakStep (.app (nT mode order) x) =
      some (match mode with
        | .a => .app (.app x (jT order x)) x
        | .b => .app x (.app x (jT order x))) := by
  cases mode <;> cases order <;>
    simp [nT, jT, rhs, weakStep, contract, substDec, shift_closed _ _ hx]

def j1 (order : Order) (x y : Term) : Term := .lam (rhs order x y (.var 0))

theorem jT_step1 (order) {x y : Term} (hx : Closed x) (hy : Closed y) :
    weakStep (.app (jT order x) y) = some (j1 order x y) := by
  cases order <;> simp [jT, j1, rhs, weakStep, contract, substDec,
    substDec_closed _ _ hx, shift_closed _ _ hy]

theorem jT_step2 (order) {x y z : Term} (hx : Closed x) (hy : Closed y) :
    weakStep (.app (j1 order x y) z) = some (rhs order x y z) := by
  cases order <;> simp [j1, rhs, weakStep, contract, substDec,
    substDec_closed _ _ hx, substDec_closed _ _ hy]

theorem advance_realize {mode order} {t u : M} (h : Red mode order t u) :
    Advance (realize mode order t) (realize mode order u) := by
  induction h with
  | n x =>
      have hs := nT_step mode order (realize_closed mode order x)
      cases mode <;>
        exact ⟨_, hs, by simp only [realize, nBody]; exact .refl _⟩
  | j x y z =>
      have hx := realize_closed mode order x
      have hy := realize_closed mode order y
      refine ⟨_, weak_app (jT_step1 order hx hy) _, ?_⟩
      have hs := jT_step2 (z := realize mode order z) order hx hy
      have hβ := weakStep_beta hs
      cases order <;>
        exact .head hβ (by simp only [realize, jBody, rhs]; exact .refl _)
  | left a h ih => exact advance_left ih _

theorem rank_zero_no_count (mode order) (n : Nat) :
    ∀ t : M, rank t = 0 → ¬ Count (realize mode order t) n := by
  induction n using Nat.strongRecOn with
  | ind n ih =>
      intro t hz hn
      obtain ⟨u, hu, hzu⟩ := zero_progress mode order hz
      obtain ⟨v, hv, hrest⟩ := advance_realize hu
      obtain ⟨k, hk, hck⟩ := head_decreases hn hv
      obtain ⟨j, hj, hcj⟩ := count_reduct k hck hrest
      exact ih j (by omega) u hzu hcj

def diagonal (n : Term) : Term := .app (.lam (.app (.var 0) (.var 0))) n

theorem rank_diagonal_not_selfinterpreter (mode order) :
    ¬ IsSelfInterpreter (diagonal (nT mode order)) := by
  intro he
  have hp : Betas
      (.app (.app (diagonal (nT mode order)) (.var 1)) (SelfintControl.quoteI (.var 0)))
      (tApps (realize mode order (.ap .n .n)) [.var 1, SelfintControl.quoteI (.var 0)]) :=
    .head (.appL _ (.appL _ (.beta _ _))) (.refl _)
  have hn := betas_preserve_hasNormalForm hp (identity_has_normal_form he)
  obtain ⟨k, hk⟩ := hasNormalForm_count hn
  obtain ⟨m, hm, hcm⟩ := count_apps_left _ hk
  exact rank_zero_no_count mode order m (.ap .n .n) rfl hcm

theorem e448_not_selfinterpreter : ¬ IsSelfInterpreter e448 :=
  rank_diagonal_not_selfinterpreter .a .xyz
theorem e449_not_selfinterpreter : ¬ IsSelfInterpreter e449 :=
  rank_diagonal_not_selfinterpreter .b .xyz
theorem e454_not_selfinterpreter : ¬ IsSelfInterpreter e454 :=
  rank_diagonal_not_selfinterpreter .a .xzy
theorem e455_not_selfinterpreter : ¬ IsSelfInterpreter e455 :=
  rank_diagonal_not_selfinterpreter .b .xzy
theorem e472_not_selfinterpreter : ¬ IsSelfInterpreter e472 :=
  rank_diagonal_not_selfinterpreter .a .zxy
theorem e473_not_selfinterpreter : ¬ IsSelfInterpreter e473 :=
  rank_diagonal_not_selfinterpreter .b .zxy
theorem e478_not_selfinterpreter : ¬ IsSelfInterpreter e478 :=
  rank_diagonal_not_selfinterpreter .a .zyx
theorem e479_not_selfinterpreter : ¬ IsSelfInterpreter e479 :=
  rank_diagonal_not_selfinterpreter .b .zyx

end Blc.Round3Floor38
