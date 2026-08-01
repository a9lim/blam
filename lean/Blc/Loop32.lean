/-
loop32 = `01000110001100001011010000110110`, the 32-bit closed term
whose only prior divergence proof was by hand. This file certifies the
ratchet (tools/cert/SPEC.md) in Lean: the head reduction from loop32
is infinite. Head standardization (no hnf ⇒ no nf) is the next stage.

The cycle arithmetic mirrors the machine-verified trace exactly:
OPEN (1 step) + DESC×n lifted (2n steps) + BASE lifted (1 step)
= 2n+2 head steps from `A · towerₙ` to `A · towerₙ₊₁`.
-/

import Blc.Step

namespace Blc
open Term

/-- `A = λx. x x (λy. y x)` (wire bits `0001011010000110110`). -/
def A : Term :=
  .lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1))))

/-- `F = λx. x (λ_. x)`; `loop32 = F A`. -/
def F : Term := .lam (.app (.var 0) (.lam (.var 1)))

def loop32 : Term := .app F A

/-- Wrapper `W[z] = λy. y z` (z closed ⇒ no capture; the shift keeps
the definition honest for open z, and vanishes on closed z). -/
def W (z : Term) : Term := .lam (.app (.var 0) (shift 1 0 z))

/-- `C0 = λ_. A`. -/
def C0 : Term := .lam (shift 1 0 A)

/-- The tower `Wⁿ[C0]`. -/
def tower : Nat → Term
  | 0 => C0
  | n + 1 => W (tower n)

theorem A_closed : Closed A := by decide

theorem C0_closed : Closed C0 := by decide

theorem W_closed {z : Term} (hz : Closed z) : Closed (W z) := by
  refine And.intro (by decide) ?_
  rw [shift_closed 1 0 hz]
  exact closed_freeUnder hz 1

theorem tower_closed : ∀ n, Closed (tower n)
  | 0 => C0_closed
  | n + 1 => W_closed (tower_closed n)

/-- On closed towers the wrapper's shift disappears. -/
theorem W_eq_of_closed {z : Term} (hz : Closed z) :
    W z = .lam (.app (.var 0) z) := by
  unfold W
  rw [shift_closed 1 0 hz]

/-- OPEN: `A z →ₕ (z z) W[z]` — one β step, for EVERY `z` (the
contraction never inspects `z`, and `W`'s definition carries the shift
that substitution introduces under the binder, so not even closedness
is needed — the symbolic lemma at full generality). -/
theorem open_step (z : Term) :
    HeadStep (.app A z) (.app (.app z z) (W z)) := by
  have h := HeadStep.beta
    (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))) z
  have : contract
      (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 1)))) z
      = .app (.app z z) (W z) := by
    unfold contract substDec W
    simp [substDec]
  rw [this] at h
  exact h

/-- DESC, first half: `W[z] w →ₕ w z` for closed `z` (the wrapper
hands its stored tower layer to the argument). -/
theorem wrapper_step {z : Term} (hz : Closed z) (w : Term) :
    HeadStep (.app (W z) w) (.app w z) := by
  have h := HeadStep.beta (.app (.var 0) (shift 1 0 z)) w
  have heq : contract (.app (.var 0) (shift 1 0 z)) w = .app w z := by
    unfold contract
    rw [shift_closed 1 0 hz]
    simp only [substDec]
    rw [substDec_closed 0 w hz]
    simp
  rw [heq] at h
  exact h

/-- BASE: `C0 w →ₕ A` for any `w` — the constant function drops its
argument and yields the engine. -/
theorem base_step (w : Term) : HeadStep (.app C0 w) A := by
  have h := HeadStep.beta (shift 1 0 A) w
  have heq : contract (shift 1 0 A) w = A := by
    unfold contract
    rw [shift_closed 1 0 A_closed]
    exact substDec_closed 0 w A_closed
  rw [heq] at h
  exact h

/-- An application is never a lambda (side condition for `appL`). -/
private theorem app_ne_lam (f a : Term) : ∀ b, Term.app f a ≠ Term.lam b := by
  intro b h
  cases h

/-- DESC, lifted and iterated: the self-applied tower collapses to the
self-applied base in exactly 2n head steps, inside any right-spine
context `□ Y`. Every source state is an application, so `appL` lifts
each wrapper step directly. -/
theorem desc_reds : ∀ (n : Nat) (Y : Term),
    HeadReds (2 * n)
      (.app (.app (tower n) (tower n)) Y)
      (.app (.app C0 C0) Y)
  | 0, Y => HeadReds.refl _
  | n + 1, Y => by
      have hz := tower_closed n
      -- (W z)(W z) → (W z) z, lifted
      have s₁ : HeadStep
          (.app (.app (tower (n + 1)) (tower (n + 1))) Y)
          (.app (.app (tower (n + 1)) (tower n)) Y) :=
        HeadStep.appL Y (app_ne_lam _ _) (wrapper_step hz (tower (n + 1)))
      -- (W z) z → z z, lifted
      have s₂ : HeadStep
          (.app (.app (tower (n + 1)) (tower n)) Y)
          (.app (.app (tower n) (tower n)) Y) :=
        HeadStep.appL Y (app_ne_lam _ _) (wrapper_step hz (tower n))
      have rest := desc_reds n Y
      have chain := HeadReds.head s₁ (HeadReds.head s₂ rest)
      have : 2 * n + 1 + 1 = 2 * (n + 1) := by omega
      rw [this] at chain
      exact chain

/-- The ratchet cycle: `A · towerₙ →ₕ^(2n+2) A · towerₙ₊₁` — the exact
step count of the machine-verified trace. -/
theorem cycle (n : Nat) :
    HeadReds (2 * n + 2) (.app A (tower n)) (.app A (tower (n + 1))) := by
  have s₁ : HeadStep (.app A (tower n))
      (.app (.app (tower n) (tower n)) (W (tower n))) := open_step (tower n)
  have s₂ := desc_reds n (W (tower n))
  have s₃ : HeadStep (.app (.app C0 C0) (W (tower n)))
      (.app A (W (tower n))) :=
    HeadStep.appL _ (app_ne_lam _ _) (base_step C0)
  have chain :=
    HeadReds.head s₁ (headReds_trans s₂ (HeadReds.head s₃ (HeadReds.refl _)))
  have harith : 2 * n + (0 + 1) + 1 = 2 * n + 2 := by omega
  rw [harith] at chain
  exact chain

/-- INIT: `loop32 →ₕ A · C0` in one step. -/
theorem init_step : HeadStep loop32 (.app A C0) := by
  have h := HeadStep.beta (.app (.var 0) (.lam (.var 1))) A
  have heq : contract (.app (.var 0) (.lam (.var 1))) A = .app A C0 := by
    unfold contract C0
    simp [substDec]
  rw [heq] at h
  exact h

/-- Milestone positions, recursively (avoids closed-form arithmetic:
`pos (n+1) = pos n + (2n+2)`; the closed form is 1 + n(n+1)). -/
def pos : Nat → Nat
  | 0 => 1
  | n + 1 => pos n + (2 * n + 2)

theorem lt_pos : ∀ n : Nat, n < pos n
  | 0 => Nat.one_pos
  | n + 1 => by
      have := lt_pos n
      simp only [pos]
      omega

/-- `loop32 →ₕ^(pos n) A · towerₙ`. -/
theorem loop32_reaches : ∀ n : Nat,
    HeadReds (pos n) loop32 (.app A (tower n))
  | 0 => HeadReds.head init_step (HeadReds.refl _)
  | n + 1 => headReds_trans (loop32_reaches n) (cycle n)

/-- **The theorem**: the head reduction from loop32 is infinite — the
first mechanical certification of this fact, replacing the hand
exclusion in the reference busy-beaver ledger. -/
theorem loop32_headDiverges : HeadDiverges loop32 := by
  apply headDiverges_of_unbounded
  intro n
  exact ⟨pos n, .app A (tower n), lt_pos n,
    headSteps_of_headReds (loop32_reaches n)⟩

end Blc
