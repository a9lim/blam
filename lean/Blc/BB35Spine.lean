/-
35-bit tower/spine exclusions, formalizing Tromp's hand recurrences in
ref/AIT/BB/BB.txt. All wire equalities and reductions are kernel checked.
-/
import Blc.Ratchet
import Blc.Wire
import Blc.Confluence

namespace Blc.BB35Spine
open Term

def T : Term := .lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))
def M : Term := .lam (.app (.var 0) (.var 0))

private def middle (x : Term) : Term :=
  .lam (.app (.var 0) (.app (shift 1 0 x) (.var 0)))

theorem open_reds (x y : Term) :
    LiftReds 2 (.app (.app T x) y) (.app y (.app x y)) := by
  have h1 : HeadStep (.app T x) (middle x) := by
    apply headStep_sound
    rfl
  have h2 : HeadStep (.app (middle x) y) (.app y (.app x y)) := by
    apply headStep_sound
    simp [middle, headStep, contract, substDec, substDec_shift]
  exact .head (app_ne_lam _ _)
    (.appL y (app_ne_lam _ _) h1)
    (.head (app_ne_lam _ _) h2 (.refl _))

def tower : Nat → Term
  | 0 => T
  | n + 1 => .app T (tower n)

def debris : Nat → Nat → List Term
  | 0, _ => []
  | n + 1, k => debris n k ++
      [.app (tower k) (.app (tower (n + 1)) (tower (k + 1)))]

theorem apps_append (t : Term) (xs ys : List Term) :
    apps t (xs ++ ys) = apps (apps t xs) ys := by
  induction xs generalizing t with
  | nil => rfl
  | cons x xs ih => exact ih (.app t x)

/-- A positive left tower drops one rank every four head steps. -/
theorem descend : ∀ n k,
    LiftReds (4 * n) (.app (tower (n + 1)) (tower (k + 1)))
      (apps (.app (tower 1) (tower (k + 1))) (debris n k))
  | 0, _ => .refl _
  | n + 1, k => by
      have h1 := open_reds (tower (n + 1)) (tower (k + 1))
      have h2 := open_reds (tower k)
        (.app (tower (n + 1)) (tower (k + 1)))
      have h3 := liftReds_appL
        (.app (tower k) (.app (tower (n + 1)) (tower (k + 1))))
        (descend n k)
      have h := liftReds_trans h1 (liftReds_trans h2 h3)
      have heq : 2 + (2 + 4 * n) = 4 * (n + 1) := by omega
      rw [heq] at h
      simpa [tower, debris, apps_append, apps] using h

def core (n : Nat) : Term := .app (tower 1) (tower (n + 1))

theorem cycle (n : Nat) : LiftReds (2 + 4 * n) (core n)
    (apps (core (n + 1)) (debris n (n + 1))) := by
  have h1 := open_reds T (tower (n + 1))
  have h2 := descend n (n + 1)
  exact liftReds_trans h1 h2

def trail (start : Nat) : Nat → List Term
  | 0 => []
  | n + 1 => debris (start + n) (start + n + 1) ++ trail start n

def state (start n : Nat) : Term := apps (core (start + n)) (trail start n)

theorem state_cycle (start n : Nat) :
    LiftReds (2 + 4 * (start + n)) (state start n) (state start (n + 1)) := by
  have h := liftReds_apps (trail start n) (cycle (start + n))
  simpa [state, trail, apps_append, Nat.add_assoc] using h

def position (start : Nat) : Nat → Nat
  | 0 => 0
  | n + 1 => position start n + (2 + 4 * (start + n))

theorem reach (start : Nat) : ∀ n, LiftReds (position start n) (core start) (state start n)
  | 0 => .refl _
  | n + 1 => liftReds_trans (reach start n) (state_cycle start n)

theorem position_ge (start : Nat) : ∀ n, n ≤ position start n
  | 0 => Nat.le_refl 0
  | n + 1 => by
      have h := position_ge start n
      simp only [position]
      omega

theorem core_apps_headDiverges (start : Nat) (args : List Term) :
    HeadDiverges (apps (core start) args) := by
  apply headDiverges_of_unbounded
  intro n
  exact ⟨position start (n + 1), apps (state start (n + 1)) args,
    by have := position_ge start (n + 1); omega,
    headSteps_of_headReds (liftReds_headReds (liftReds_apps args (reach start (n + 1))))⟩

theorem core_apps_noNormalForm (n : Nat) (args : List Term) :
    ¬ HasNormalForm (apps (core n) args) :=
  headDiverges_not_hasNormalForm (core_apps_headDiverges n args)

theorem core_noNormalForm (n : Nat) : ¬ HasNormalForm (core n) :=
  core_apps_noNormalForm n []

theorem headReds_betas {n : Nat} {t u : Term} (h : HeadReds n t u) : Betas t u := by
  induction h with
  | refl t => exact .refl t
  | head h _ ih => exact .head (beta_of_headStep h) ih

theorem liftReds_betas {n : Nat} {t u : Term} (h : LiftReds n t u) : Betas t u :=
  headReds_betas (liftReds_headReds h)

theorem headSteps_betas {n : Nat} {t u : Term} (h : headSteps n t = some u) : Betas t u :=
  headReds_betas (headReds_of_headSteps n h)

theorem positive_pair_noNormalForm (n k : Nat) :
    ¬ HasNormalForm (.app (tower (n + 1)) (tower (k + 1))) :=
  betas_noNormalForm (liftReds_betas (descend n k)) (core_apps_noNormalForm k _)

def B : Term := .lam (.app (.var 0) (.app (.var 0) T))
def target7 : Term := .app B M
def target17 : Term := .app M (.app M T)
def target16 : Term := .app M B

theorem mt : Betas (.app M T) (tower 1) := headSteps_betas (n := 1) (by decide)

theorem init17 : Betas target17 (core 0) := by
  have h1 : Betas target17 (.app (.app M T) (.app M T)) :=
    headSteps_betas (n := 1) (by decide)
  exact betas_trans h1
    (betas_trans (betas_appL _ mt) (betas_appR _ mt))

theorem init7 : Betas target7 target17 := headSteps_betas (n := 1) (by decide)

theorem noNormalForm17 : ¬ HasNormalForm target17 :=
  betas_noNormalForm init17 (core_noNormalForm 0)

theorem noNormalForm7 : ¬ HasNormalForm target7 :=
  betas_noNormalForm init7 noNormalForm17

theorem bt : Betas (.app B T) (tower 2) := headSteps_betas (n := 1) (by decide)

theorem btt : Betas (.app (.app B T) T) (tower 3) := by
  have h1 := betas_appL T bt
  have h2 : Betas (.app (tower 2) T) (.app T (.app (tower 1) T)) :=
    headSteps_betas (n := 2) (by decide)
  have h3 : Betas (.app (tower 1) T) (tower 2) :=
    headSteps_betas (n := 2) (by decide)
  exact betas_trans h1 (betas_trans h2 (betas_appR T h3))

theorem init16 : Betas target16 (.app (tower 2) (tower 3)) := by
  have h1 : Betas target16 (.app (.app B T) (.app (.app B T) T)) :=
    headSteps_betas (n := 3) (by decide)
  exact betas_trans h1
    (betas_trans (betas_appL _ bt) (betas_appR _ btt))

theorem noNormalForm16 : ¬ HasNormalForm target16 :=
  betas_noNormalForm init16 (positive_pair_noNormalForm 1 2)

/-- A finite positive head advance inside an invariant supplies arbitrarily
long deterministic head reductions. No choice of an infinite trace is used. -/
theorem family_headDiverges (S : Term → Prop)
    (advance : ∀ t, S t → ∃ k u, 0 < k ∧ HeadReds k t u ∧ S u)
    {t : Term} (ht : S t) : HeadDiverges t := by
  have far : ∀ n t, S t → ∃ k u, n < k ∧ HeadReds k t u := by
    intro n
    induction n with
    | zero =>
        intro t ht
        obtain ⟨k, u, hk, h, _⟩ := advance t ht
        exact ⟨k, u, hk, h⟩
    | succ n ih =>
        intro t ht
        obtain ⟨k, u, hk, h, hu⟩ := advance t ht
        obtain ⟨l, v, hl, hv⟩ := ih u hu
        exact ⟨k + l, v, by omega, headReds_trans h hv⟩
  apply headDiverges_of_unbounded
  intro n
  obtain ⟨k, u, hk, h⟩ := far n t ht
  exact ⟨k, u, hk, headSteps_of_headReds h⟩

namespace Reentry

/-- This base re-enters the pure T towers whenever its first argument is T. -/
def C : Term := .lam (.app (.app (.var 0) T) (.var 0))
def target : Term := .app M C
def tower : Nat → Term
  | 0 => C
  | n + 1 => .app T (tower n)
def core (n : Nat) : Term := .app (.app T T) (tower (n + 1))

theorem c_step (x : Term) : LiftReds 1 (.app C x) (.app (.app x T) x) := by
  exact .head (app_ne_lam _ _) (headStep_sound (by rfl)) (.refl _)

theorem c_t : LiftReds 3 (.app C T) (BB35Spine.tower 2) :=
  liftReds_trans (c_step T) (open_reds T T)

/-- Peel arbitrary left towers against a positive right tower. -/
theorem peel : ∀ n k, ∃ steps tail,
    LiftReds steps (.app (tower n) (tower (k + 1)))
      (apps (.app C (tower (k + 1))) tail)
  | 0, _ => ⟨0, [], .refl _⟩
  | n + 1, k => by
      obtain ⟨steps, tail, h⟩ := peel n k
      let extra : Term := .app (tower k) (.app (tower n) (tower (k + 1)))
      have h1 := open_reds (tower n) (tower (k + 1))
      have h2 := open_reds (tower k) (.app (tower n) (tower (k + 1)))
      have h3 := liftReds_appL extra h
      refine ⟨2 + (2 + steps), tail ++ [extra], ?_⟩
      simpa [tower, apps_append, apps] using liftReds_trans h1 (liftReds_trans h2 h3)

/-- The same peeling with T interposed adds six head steps per layer. -/
theorem peel_t : ∀ n k, ∃ steps tail,
    LiftReds steps (.app (.app (tower n) T) (tower (k + 1)))
      (apps (.app (.app C T) (tower (k + 1))) tail)
  | 0, _ => ⟨0, [], .refl _⟩
  | n + 1, k => by
      obtain ⟨steps, tail, h⟩ := peel_t n k
      let x : Term := .app (.app (tower n) T) (tower (k + 1))
      let extra : Term := .app (tower k) x
      have h1 := liftReds_appL (tower (k + 1)) (open_reds (tower n) T)
      have h2 := open_reds (.app (tower n) T) (tower (k + 1))
      have h3 := open_reds (tower k) x
      have h4 := liftReds_appL extra h
      refine ⟨2 + (2 + (2 + steps)), tail ++ [extra], ?_⟩
      simpa [tower, apps_append, apps, x] using
        liftReds_trans h1 (liftReds_trans h2 (liftReds_trans h3 h4))

theorem base_land (k : Nat) : LiftReds 7
    (.app (.app C T) (tower (k + 1)))
    (.app (core k) (.app (tower k) (core k))) := by
  have h1 := liftReds_appL (tower (k + 1)) c_t
  have h2 := open_reds (.app T T) (tower (k + 1))
  have h3 := open_reds (tower k) (core k)
  exact liftReds_trans h1 (liftReds_trans h2 h3)

theorem land (k : Nat) : ∃ steps tail,
    LiftReds steps (.app C (tower (k + 1))) (apps (core k) tail) := by
  obtain ⟨steps, tail, h⟩ := peel_t (k + 1) k
  have h1 := c_step (tower (k + 1))
  have h2 := liftReds_apps tail (base_land k)
  refine ⟨1 + (steps + 7), [.app (tower k) (core k)] ++ tail, ?_⟩
  simpa [apps_append, apps] using liftReds_trans h1 (liftReds_trans h h2)

theorem cycle (k : Nat) : ∃ steps tail, 0 < steps ∧
    LiftReds steps (core k) (apps (core (k + 1)) tail) := by
  obtain ⟨n, xs, hn⟩ := peel (k + 1) (k + 1)
  obtain ⟨m, ys, hm⟩ := land (k + 1)
  have h1 := open_reds T (tower (k + 1))
  have h2 := liftReds_apps xs hm
  refine ⟨2 + (n + m), ys ++ xs, by omega, ?_⟩
  simpa [core, tower, apps_append] using liftReds_trans h1 (liftReds_trans hn h2)

def Growing (t : Term) : Prop := ∃ k tail, t = apps (core k) tail

theorem growing_advance (t : Term) (ht : Growing t) :
    ∃ n u, 0 < n ∧ HeadReds n t u ∧ Growing u := by
  obtain ⟨k, tail, rfl⟩ := ht
  obtain ⟨n, fresh, hn, h⟩ := cycle k
  refine ⟨n, apps (core (k + 1)) (fresh ++ tail), hn, ?_,
    ⟨k + 1, fresh ++ tail, rfl⟩⟩
  simpa [apps_append] using liftReds_headReds (liftReds_apps tail h)

theorem growing_noNormalForm {t : Term} (ht : Growing t) : ¬ HasNormalForm t :=
  headDiverges_not_hasNormalForm (family_headDiverges Growing growing_advance ht)

theorem init : HeadReds 10 target
    (apps (.app C (tower 1)) [T, .app (.app T T) C]) := by
  apply headReds_of_headSteps
  decide

theorem noNormalForm : ¬ HasNormalForm target := by
  obtain ⟨n, tail, h⟩ := land 0
  have hs := liftReds_apps [T, .app (.app T T) C] h
  have hb := betas_trans (headReds_betas init) (liftReds_betas hs)
  apply betas_noNormalForm hb
  apply growing_noNormalForm
  exact ⟨0, tail ++ [T, .app (.app T T) C], by rw [apps_append]⟩

theorem wire : blcCode target =
    [false, true, false, false, false, true, true, false, true, false,
     false, false, false, true, false, true, true, false, false, false,
     false, false, false, true, true, false, false, true, true, true,
     false, true, false, true, false] := by decide

theorem closed : Closed target := by decide

end Reentry

theorem wire7 : blcCode target7 = [false, true, false, false, false, true, true, false, false, true, true, false, false, false, false, false, false, true, true, false, false, true, true, true, false, true, false, false, false, false, true, true, false, true, false] := by decide
theorem closed7 : Closed target7 := by decide

theorem wire16 : blcCode target16 = [false, true, false, false, false, true, true, false, true, false, false, false, false, true, true, false, false, true, true, false, false, false, false, false, false, true, true, false, false, true, true, true, false, true, false] := by decide
theorem closed16 : Closed target16 := by decide

theorem wire17 : blcCode target17 = [false, true, false, false, false, true, true, false, true, false, false, true, false, false, false, true, true, false, true, false, false, false, false, false, false, true, true, false, false, true, true, true, false, true, false] := by decide
theorem closed17 : Closed target17 := by decide

end Blc.BB35Spine
