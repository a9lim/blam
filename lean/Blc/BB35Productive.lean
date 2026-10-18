/-
Productive and spine-growing 35-bit busy-beaver exclusions.
The recurrences formalize the corresponding hand arguments in
ref/AIT/BB/BB.txt. All wire identities are checked by the kernel.
-/
import Blc.NormalOrder
import Blc.Ratchet
import Blc.Wire

namespace Blc.BB35Productive
open Term

private theorem rigid_headNormal {u : Term} (hu : Rigid u) : headStep u = none := by
  induction hu with
  | var n => rfl
  | app a hu ih =>
      rename_i f
      cases f with
      | var n => rfl
      | app f a' =>
          change (headStep (.app f a')).map (Term.app · a) = none
          rw [ih]
          rfl
      | lam b => cases hu

private theorem apps_append (t : Term) (xs ys : List Term) :
    apps t (xs ++ ys) = apps (apps t xs) ys := by
  induction xs generalizing t with
  | nil => rfl
  | cons x xs ih => exact ih (.app t x)

/-- Finite head traces with syntactically application-shaped proper sources.
Unlike symbolic instantiation, this checker also accepts open payloads. -/
private def appSteps : Nat → Term → Option Term
  | 0, t => some t
  | n + 1, .app f a => (headStep (.app f a)).bind (appSteps n)
  | _ + 1, _ => none

private theorem appSteps_sound : ∀ {n : Nat} {t u : Term},
    appSteps n t = some u → LiftReds n t u := by
  intro n
  induction n with
  | zero => intro t u h; cases h; exact .refl t
  | succ n ih =>
      intro t u h
      cases t with
      | var k => cases h
      | lam b => cases h
      | app f a =>
          simp only [appSteps, Option.bind_eq_some_iff] at h
          obtain ⟨v, hv, hr⟩ := h
          exact .head (app_ne_lam _ _) (headStep_sound hv) (ih hr)

namespace ApplyRight

/-- A x y = y (x x (y x)). -/
def A : Term := .lam (.lam (.app (.var 0)
  (.app (.app (.var 1) (.var 1)) (.app (.var 0) (.var 1)))))
def P : Term := .app A A
def target : Term := .app (.lam (.app (.var 0) (.var 0))) A
def state (u : Term) : Term := .app P u
def next (u : Term) : Term := .app u A

theorem cycle (u : Term) :
    headSteps 2 (state u) = some (.app u (state (next u))) := by rfl

theorem init : headSteps 2 target =
    some (.lam (.app (.var 0) (state (next (.var 0))))) := by decide

def Productive (t : Term) : Prop :=
  t = target ∨ ∃ u, Rigid u ∧ t = state u

theorem advance (t : Term) (ht : Productive t) :
    ∃ k s a, headSteps k t = some s ∧ headStep s = none ∧
      NfChild a s ∧ Productive a := by
  rcases ht with rfl | ⟨u, hu, rfl⟩
  · exact ⟨2, _, _, init, rfl,
      .trans (.arg (.var 0) _) (.lam _),
      Or.inr ⟨next (.var 0), .app _ (.var 0), rfl⟩⟩
  · exact ⟨2, _, _, cycle u, rigid_headNormal (.app _ hu), .arg hu _,
      Or.inr ⟨next u, .app _ hu, rfl⟩⟩

theorem noNormalForm : ¬ HasNormalForm target :=
  productive_noNormalForm Productive advance (Or.inl rfl)

theorem closed : Closed target := by decide

theorem wire : blcCode target =
    [false, true, false, false, false, true, true, false, true, false,
     false, false, false, false, false, true, true, false, false, true,
     false, true, true, true, false, true, true, false, false, true,
     true, false, true, true, false] := by decide

end ApplyRight

namespace RepeatRight

/-- A x y = x (y y x) x. -/
def A : Term := .lam (.lam (.app
  (.app (.var 1) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 1)))
def P : Term := .app A A
def target : Term := .app (.lam (.app (.var 0) (.var 0))) A
def state (u : Term) : Term := .app P u
def next (u : Term) : Term := .app (.app u u) A

theorem cycle (u : Term) : headSteps 4 (state u) =
    some (.app (.app (next u) (state (next u))) (next u)) := by
  simp [state, P, A, next, headSteps, headStep, contract, substDec,
    substDec_shift]

theorem init : headSteps 4 target =
    some (.lam (.app (.app (next (.var 0)) (state (next (.var 0))))
      (next (.var 0)))) := by decide

def Productive (t : Term) : Prop :=
  t = target ∨ ∃ u, Rigid u ∧ t = state u

theorem advance (t : Term) (ht : Productive t) :
    ∃ k s a, headSteps k t = some s ∧ headStep s = none ∧
      NfChild a s ∧ Productive a := by
  rcases ht with rfl | ⟨u, hu, rfl⟩
  · have hn : Rigid (next (.var 0)) := .app _ (.app _ (.var 0))
    exact ⟨4, _, _, init, rfl,
      .trans (.trans (.arg hn _) (.left (.app _ hn) _)) (.lam _),
      Or.inr ⟨next (.var 0), hn, rfl⟩⟩
  · have hn : Rigid (next u) := .app _ (.app _ hu)
    exact ⟨4, _, _, cycle u, rigid_headNormal (.app _ (.app _ hn)),
      .trans (.arg hn _) (.left (.app _ hn) _),
      Or.inr ⟨next u, hn, rfl⟩⟩

theorem noNormalForm : ¬ HasNormalForm target :=
  productive_noNormalForm Productive advance (Or.inl rfl)

theorem closed : Closed target := by decide

theorem wire : blcCode target =
    [false, true, false, false, false, true, true, false, true, false,
     false, false, false, false, false, true, false, true, true, true,
     false, false, true, false, true, true, false, true, false, true,
     true, false, true, true, false] := by decide

end RepeatRight

namespace ApplyLeft

/-- A x y = y (x x (x y)). -/
def A : Term := .lam (.lam (.app (.var 0)
  (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0)))))
def P : Term := .app A A
def target : Term := .app (.lam (.app (.var 0) (.var 0))) A
def next (u : Term) : Term := .app A u
def core (u : Term) : Term := .app P (next u)
def debris (u : Term) : Term :=
  .app (.app u u) (.app u (core (next u)))

theorem cycle (u : Term) :
    LiftReds 4 (core u) (.app (core (next u)) (debris u)) := by
  apply appSteps_sound
  simp [appSteps, core, next, P, A, debris, headStep, contract, substDec,
    substDec_shift]

def payload (u : Term) : Nat → Term
  | 0 => u
  | n + 1 => next (payload u n)

def trail (u : Term) : Nat → List Term
  | 0 => []
  | n + 1 => debris (payload u n) :: trail u n

def state (u : Term) (n : Nat) : Term := apps (core (payload u n)) (trail u n)

theorem state_cycle (u : Term) (n : Nat) :
    HeadReds 4 (state u n) (state u (n + 1)) :=
  liftReds_headReds (liftReds_apps (trail u n) (cycle (payload u n)))

theorem reach (u : Term) : ∀ n, HeadReds (4 * n) (core u) (state u n)
  | 0 => HeadReds.refl _
  | n + 1 => by
      simpa [Nat.mul_succ] using headReds_trans (reach u n) (state_cycle u n)

theorem headDiverges (u : Term) : HeadDiverges (core u) := by
  apply headDiverges_of_unbounded
  intro n
  exact ⟨4 * (n + 1), state u (n + 1), by omega,
    headSteps_of_headReds (reach u (n + 1))⟩

theorem init : headSteps 2 target =
    some (.lam (.app (.var 0) (core (.var 0)))) := by decide

theorem noNormalForm : ¬ HasNormalForm target :=
  argKill init (by decide) (by decide)
    (headDiverges_not_hasNormalForm (headDiverges (.var 0)))

theorem closed : Closed target := by decide

theorem wire : blcCode target =
    [false, true, false, false, false, true, true, false, true, false,
     false, false, false, false, false, true, true, false, false, true,
     false, true, true, true, false, true, true, false, false, true,
     true, true, false, true, false] := by decide

end ApplyLeft

namespace IdentityTower

def I : Term := .lam (.var 0)
/-- T x = x (λy. y I (x y)). -/
def T : Term := .lam (.app (.var 0)
  (.lam (.app (.app (.var 0) I) (.app (.var 1) (.var 0)))))
/-- This wrapper is used only on closed towers. -/
def W (z : Term) : Term :=
  .lam (.app (.app (.var 0) I) (.app z (.var 0)))
def B : Term := W I
def tower : Nat → Term
  | 0 => T
  | n + 1 => W (tower n)
def target : Term := .app (.lam (.app (.var 0) (.var 0))) T
def pair (n m : Nat) : Term := .app (tower n) (tower m)
def core (n : Nat) : Term := .app T (tower n)

theorem I_closed : Closed I := by decide
theorem T_closed : Closed T := by decide
theorem tower_closed : ∀ n, Closed (tower n)
  | 0 => T_closed
  | n + 1 => by
      exact ⟨⟨by decide, closed_freeUnder I_closed 1⟩,
        closed_freeUnder (tower_closed n) 1, by decide⟩

theorem open_step (n : Nat) :
    headStep (core n) = some (pair n (n + 1)) := by
  simp [core, pair, T, headStep, contract, substDec, I,
    shift_closed 1 0 (tower_closed n), tower, W]

theorem wrap_step {z : Term} (hz : Closed z) (y : Term) :
    headStep (.app (W z) y) = some (.app (.app y I) (.app z y)) := by
  simp [W, headStep, contract, substDec, I, substDec_closed 0 y hz]

/-- Every tower applied to I peels to the same fixed B. -/
theorem tower_identity : ∀ n,
    LiftReds (3 * n + 2) (.app (tower n) I) B
  | 0 => by apply appSteps_sound; decide
  | n + 1 => by
      have hp : LiftReds 3 (.app (tower (n + 1)) I) (.app (tower n) I) := by
        apply appSteps_sound
        change appSteps 3 (.app (W (tower n)) I) = _
        rw [appSteps, wrap_step (tower_closed n)]
        rfl
      simpa [Nat.mul_succ, Nat.add_assoc, Nat.add_comm, Nat.add_left_comm] using
        liftReds_trans hp (tower_identity n)

/-- One left-tower layer is removed; two arguments are left on the spine. -/
theorem peel (n m : Nat) : LiftReds (3 * m + 4) (pair (n + 1) m)
    (apps (pair n m) [I, .app I (pair n m)]) := by
  have h1 : LiftReds 1 (pair (n + 1) m)
      (.app (.app (tower m) I) (pair n m)) := by
    exact .head (app_ne_lam _ _) (headStep_sound (wrap_step (tower_closed n) _))
      (.refl _)
  have h2 := liftReds_appL (pair n m) (tower_identity m)
  have h3 : LiftReds 1 (.app B (pair n m))
      (apps (pair n m) [I, .app I (pair n m)]) := by
    exact .head (app_ne_lam _ _) (headStep_sound (wrap_step I_closed _)) (.refl _)
  have h := liftReds_trans h1 (liftReds_trans h2 h3)
  have he : 1 + (3 * m + 2 + 1) = 3 * m + 4 := by omega
  exact he ▸ h

def debris : Nat → Nat → List Term
  | 0, _ => []
  | n + 1, m => debris n m ++ [I, .app I (pair n m)]

theorem descend : ∀ n m, LiftReds (n * (3 * m + 4)) (pair n m)
    (apps (core m) (debris n m))
  | 0, m => by
      simpa only [Nat.zero_mul, debris, apps, pair, core, tower] using
        (LiftReds.refl (core m))
  | n + 1, m => by
      have h := liftReds_trans (peel n m)
        (liftReds_apps [I, .app I (pair n m)] (descend n m))
      simpa [debris, apps_append, Nat.succ_mul, Nat.add_comm] using h

def cost (n : Nat) : Nat := 1 + n * (3 * (n + 1) + 4)

theorem cycle (n : Nat) : LiftReds (cost n) (core n)
    (apps (core (n + 1)) (debris n (n + 1))) := by
  have h1 : LiftReds 1 (core n) (pair n (n + 1)) :=
    .head (app_ne_lam _ _) (headStep_sound (open_step n)) (.refl _)
  exact liftReds_trans h1 (descend n (n + 1))

def trail : Nat → List Term
  | 0 => []
  | n + 1 => debris n (n + 1) ++ trail n
def state (n : Nat) : Term := apps (core n) (trail n)
def position : Nat → Nat
  | 0 => 1
  | n + 1 => position n + cost n

theorem state_cycle (n : Nat) : HeadReds (cost n) (state n) (state (n + 1)) := by
  have h := liftReds_headReds (liftReds_apps (trail n) (cycle n))
  simpa [state, trail, apps_append] using h

theorem reach : ∀ n, HeadReds (position n) target (state n)
  | 0 => by apply headReds_of_headSteps; decide
  | n + 1 => headReds_trans (reach n) (state_cycle n)

theorem position_gt : ∀ n, n < position n
  | 0 => by decide
  | n + 1 => by
      have h := position_gt n
      simp only [position, cost]
      omega

theorem headDiverges : HeadDiverges target := by
  apply headDiverges_of_unbounded
  intro n
  exact ⟨position n, state n, position_gt n, headSteps_of_headReds (reach n)⟩

theorem noNormalForm : ¬ HasNormalForm target :=
  headDiverges_not_hasNormalForm headDiverges

theorem closed : Closed target := by decide

theorem wire : blcCode target =
    [false, true, false, false, false, true, true, false, true, false,
     false, false, false, true, true, false, false, false, false, true,
     false, true, true, false, false, false, true, false, false, true,
     true, true, false, true, false] := by decide

end IdentityTower

end Blc.BB35Productive
