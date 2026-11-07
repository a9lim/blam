/-
The three engine-only root-let sources of tmp/round4/rootcert (MAIN_ENGINE_ONLY.tsv,
lane ids 115 / 119 / 127, rootlet exception indices 7594 / 7640 / 7725) are unsolvable:
each source R has no head normal form, so neither R Z nor any other R X does, and the
zero reader law R Z =β r j fails. Round 4, combs2 lane.

0-indexed de Bruijn (Blc.Term). At the root of a reader c = var 0, j = var 1
(Blc.SelfintClass). A = λu v. v (u v) c is `.lam (.lam (0 (1 0) 2))`.

Invariant (one family for all three): with a 0 = A, a (n+1) = A (a n),

    X m rs = A (a m) (a (m+2)) rs,

and X m rs head-reduces in exactly 4m+2 steps to X (m+1) rs' (`advance`).
The generic spine lemmas and `unsolvable_of_advance`, `solvable_step` are copied
from tmp/round4/combs/Combs.lean (combs lane).
-/
import Blc.SelfintClass
import Blc.SelfintProbe

namespace Blc.Combs2
open Term SelfintClass SelfintProbe

set_option maxRecDepth 10000

/-! ## Generic spine and pumping lemmas (copied from combs/Combs.lean) -/

def ap (f : Term) (as : List Term) : Term := as.foldl Term.app f

theorem ap_cons (f a : Term) (as : List Term) : ap f (a :: as) = ap (.app f a) as := rfl

theorem step_ap {g g' : Term} (hg : ∀ b, g ≠ .lam b) (h : headStep g = some g') :
    ∀ as, headStep (ap g as) = some (ap g' as)
  | [] => h
  | a :: as => by
      have h1 : headStep (.app g a) = some (.app g' a) := by
        cases g with
        | var n => simp [headStep] at h
        | lam b => exact absurd rfl (hg b)
        | app f x =>
            show (headStep (Term.app f x)).map (Term.app · a) = _
            rw [h]; rfl
      exact step_ap (fun b => by simp) h1 as

theorem beta_ap (b a : Term) (as : List Term) :
    headStep (ap (.app (.lam b) a) as) = some (ap (contract b a) as) :=
  step_ap (fun _ => by simp) rfl as

theorem hs_comp : ∀ {m n : Nat} {t u v : Term},
    headSteps m t = some u → headSteps n u = some v → headSteps (m + n) t = some v
  | 0, n, t, u, v, h1, h2 => by
      simp only [headSteps, Option.some.injEq] at h1; subst h1; simpa using h2
  | m + 1, n, t, u, v, h1, h2 => by
      simp only [headSteps, Option.bind_eq_some_iff] at h1
      obtain ⟨w, hw, hr⟩ := h1
      have := hs_comp hr h2
      rw [show m + 1 + n = (m + n) + 1 by omega]
      simp [headSteps, hw, this]

/-- A family that always advances by at least one head step is unsolvable. -/
theorem unsolvable_of_advance (S : Term → Prop)
    (adv : ∀ t, S t → ∃ k u, headSteps (k + 1) t = some u ∧ S u) :
    ∀ t, S t → ¬ Solvable t := by
  have far : ∀ n t, S t → ∃ m u, n ≤ m ∧ headSteps m t = some u := by
    intro n
    induction n with
    | zero => intro t _; exact ⟨0, t, Nat.le_refl _, rfl⟩
    | succ n ih =>
        intro t ht
        obtain ⟨k, u, hu, hSu⟩ := adv t ht
        obtain ⟨m, v, hm, hv⟩ := ih u hSu
        exact ⟨k + 1 + m, v, by omega, hs_comp hu hv⟩
  intro t ht ⟨k, p, hk, hp⟩
  obtain ⟨m, u, hm, hu⟩ := far (k + 1) t ht
  obtain ⟨j, rfl⟩ := Nat.exists_eq_add_of_le hm
  obtain ⟨q, hq, hj⟩ := headSteps_add (m := k) (n := 1 + j) (by simpa [Nat.add_assoc] using hu)
  rw [hk] at hq; cases hq
  rw [show 1 + j = j + 1 by omega] at hj
  simp [headSteps, show headStep p = none from hp] at hj

theorem solvable_step {t u : Term} (h : headStep t = some u) (hs : Solvable t) : Solvable u := by
  obtain ⟨k, p, hk, hp⟩ := hs
  cases k with
  | zero =>
      simp only [headSteps, Option.some.injEq] at hk; subst hk
      simp [HNF, h] at hp
  | succ j =>
      simp only [headSteps, h, Option.bind_some] at hk
      exact ⟨j, p, hk, hp⟩

theorem solvable_steps : ∀ {n : Nat} {t u : Term},
    headSteps n t = some u → Solvable t → Solvable u
  | 0, t, u, h, hs => by
      simp only [headSteps, Option.some.injEq] at h; subst h; exact hs
  | n + 1, t, u, h, hs => by
      simp only [headSteps, Option.bind_eq_some_iff] at h
      obtain ⟨w, hw, hr⟩ := h
      exact solvable_steps hr (solvable_step hw hs)

/-! ## The helper A = λu v. v (u v) c and its chains -/

/-- A = λu v. v (u v) c, with c = var 0 at the reader root. -/
def A : Term := .lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2)))

/-- One A-step is two head β-steps: A u v rs →h² v (u v) c rs, for arbitrary u, v. -/
theorem A_rule (u v : Term) (rs : List Term) :
    headSteps 2 (ap A (u :: v :: rs)) = some (ap v (.app u v :: .var 0 :: rs)) := by
  have h1 : headStep (ap A (u :: v :: rs)) =
      some (ap (.lam (.app (.app (.var 0) (.app (shift 1 0 u) (.var 0))) (.var 1))) (v :: rs)) := by
    rw [ap_cons]; unfold A; rw [beta_ap]; simp [contract, substDec]
  have h2 : headStep (ap (.lam (.app (.app (.var 0) (.app (shift 1 0 u) (.var 0))) (.var 1)))
      (v :: rs)) = some (ap v (.app u v :: .var 0 :: rs)) := by
    rw [ap_cons, beta_ap]; simp [contract, substDec, substDec_shift, ap_cons]
  simp [headSteps, h1, h2]

/-- a 0 = A, a (n+1) = A (a n). -/
def a : Nat → Term
  | 0 => A
  | n + 1 => .app A (a n)

theorem a_ap (n : Nat) (rs : List Term) : ap (a (n + 1)) rs = ap A (a n :: rs) := rfl

/-- Inner loop: with second argument a (m+2) fixed, the first argument counts down
from a k to a 0 (4 steps each), and a 0 then rebuilds the next member (2 steps). -/
theorem count_down (m : Nat) : ∀ (k : Nat) (σ : List Term), ∃ σ' : List Term,
    headSteps (4 * k + 2) (ap A (a k :: a (m + 2) :: σ)) =
      some (ap A (a (m + 1) :: a (m + 3) :: σ'))
  | 0, σ => by
      refine ⟨.var 0 :: σ, ?_⟩
      have h := A_rule (a 0) (a (m + 2)) σ
      rw [a_ap] at h
      exact h
  | k + 1, σ => by
      have h1 := A_rule (a (k + 1)) (a (m + 2)) σ
      rw [a_ap] at h1
      have h2 := A_rule (a (m + 1)) (.app (a (k + 1)) (a (m + 2))) (.var 0 :: σ)
      have e : ap (.app (a (k + 1)) (a (m + 2)))
          (.app (a (m + 1)) (.app (a (k + 1)) (a (m + 2))) :: .var 0 :: .var 0 :: σ) =
          ap A (a k :: a (m + 2) ::
            (.app (a (m + 1)) (.app (a (k + 1)) (a (m + 2))) :: .var 0 :: .var 0 :: σ)) := rfl
      rw [e] at h2
      obtain ⟨σ', h3⟩ := count_down m k
        (.app (a (m + 1)) (.app (a (k + 1)) (a (m + 2))) :: .var 0 :: .var 0 :: σ)
      refine ⟨σ', ?_⟩
      have := hs_comp h1 (hs_comp h2 h3)
      rwa [show 2 + (2 + (4 * k + 2)) = 4 * (k + 1) + 2 by omega] at this

/-- The invariant family: X m rs = A (a m) (a (m+2)) rs. -/
def X (m : Nat) (rs : List Term) : Term := ap A (a m :: a (m + 2) :: rs)

theorem advance (m : Nat) (rs : List Term) :
    ∃ rs', headSteps (4 * m + 2) (X m rs) = some (X (m + 1) rs') :=
  count_down m m rs

def Fam (t : Term) : Prop := ∃ m rs, t = X m rs

theorem X_unsolvable (m : Nat) (rs : List Term) : ¬ Solvable (X m rs) := by
  refine unsolvable_of_advance Fam ?_ _ ⟨m, rs, rfl⟩
  rintro t ⟨m, rs, rfl⟩
  obtain ⟨rs', h⟩ := advance m rs
  exact ⟨4 * m + 1, _, h, m + 1, rs', rfl⟩

/-! ## The three sources, literally (MAIN_ENGINE_ONLY.tsv), and their entry into the family -/

/-- id 115, exception 7594: (λx. x x (x (x x))) A j -/
def r115 : Term := .app (.app (.lam (.app (.app (.var 0) (.var 0))
  (.app (.var 0) (.app (.var 0) (.var 0)))))
  (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))) (.var 1)
/-- id 119, exception 7640: (λx. x (x x) (x x)) A j -/
def r119 : Term := .app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0)))
  (.app (.var 0) (.var 0))))
  (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))) (.var 1)
/-- id 127, exception 7725: (λx. x x (x x) x) A j -/
def r127 : Term := .app (.app (.lam (.app (.app (.app (.var 0) (.var 0))
  (.app (.var 0) (.var 0))) (.var 0)))
  (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 2))))) (.var 1)

theorem r115_base : headSteps 1 r115 = some (X 0 [.var 1]) := by decide
theorem r119_base : headSteps 7 r119 =
    some (X 0 [.var 0, .app A (.app (a 1) (a 1)), .var 0, .var 0, .var 1]) := by decide
theorem r127_base : headSteps 3 r127 = some (X 0 [.var 0, A, .var 1]) := by decide

/-- Each source itself has no head normal form. -/
theorem r115_unsolvable : ¬ Solvable r115 := fun h => X_unsolvable _ _ (solvable_steps r115_base h)
theorem r119_unsolvable : ¬ Solvable r119 := fun h => X_unsolvable _ _ (solvable_steps r119_base h)
theorem r127_unsolvable : ¬ Solvable r127 := fun h => X_unsolvable _ _ (solvable_steps r127_base h)

/-- An unsolvable reader breaks the zero law: R Z =β r j would make R Z solvable. -/
theorem reject_unsolvable {r : Term} (hr : ¬ Solvable r) : ¬ Reader r := by
  intro h
  have hz : Solvable zeroOut := ⟨0, zeroOut, rfl, show headStep zeroOut = none from rfl⟩
  exact unsolvable_app hr Z (solvable_backwards h.zero_red hz)

/-- The zero probes themselves have no head normal form (the engine's DIVERGE, in Lean). -/
theorem zero_probes_unsolvable :
    ¬ Solvable (.app r115 Z) ∧ ¬ Solvable (.app r119 Z) ∧ ¬ Solvable (.app r127 Z) :=
  ⟨unsolvable_app r115_unsolvable Z, unsolvable_app r119_unsolvable Z,
   unsolvable_app r127_unsolvable Z⟩

theorem reject115 : ¬ Reader r115 := reject_unsolvable r115_unsolvable
theorem reject119 : ¬ Reader r119 := reject_unsolvable r119_unsolvable
theorem reject127 : ¬ Reader r127 := reject_unsolvable r127_unsolvable

end Blc.Combs2

#print axioms Blc.Combs2.reject115
#print axioms Blc.Combs2.reject119
#print axioms Blc.Combs2.reject127
#print axioms Blc.Combs2.zero_probes_unsolvable
