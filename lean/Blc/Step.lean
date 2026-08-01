/-
Head reduction: the executable stepper (mirroring the trusted Rust
checker's `head_step`) and its relational counterpart, with the
agreement theorem. Concrete reduction chains then prove by `decide`
or `rfl` on `headSteps`, while the symbolic layer reasons through the
relation.
-/

import Blc.Term

namespace Blc
open Term

/-- Executable head step: contract the head redex, or `none` at head
normal form. The head redex of `app f a` is the outer β when `f` is a
lambda, else the head redex of `f`; under leading lambdas the body's
head redex. Deterministic by construction. -/
def headStep : Term → Option Term
  | Term.var _ => none
  | Term.lam b => (headStep b).map Term.lam
  | Term.app f a =>
      match f with
      | Term.lam b => some (contract b a)
      | _ => (headStep f).map (Term.app · a)

/-- `headSteps n t`: `n` head steps from `t` (`none` if hnf reached
earlier). -/
def headSteps : Nat → Term → Option Term
  | 0, t => some t
  | n + 1, t => (headStep t).bind (headSteps n)

/-- Relational head step, mirroring `headStep`. -/
inductive HeadStep : Term → Term → Prop where
  | beta (b a : Term) : HeadStep (Term.app (Term.lam b) a) (contract b a)
  | appL {f f' : Term} (a : Term)
      (nonlam : ∀ b, f ≠ Term.lam b) (h : HeadStep f f') :
      HeadStep (Term.app f a) (Term.app f' a)
  | under {b b' : Term} (h : HeadStep b b') :
      HeadStep (Term.lam b) (Term.lam b')

theorem headStep_sound : ∀ {t u : Term}, headStep t = some u → HeadStep t u := by
  intro t
  induction t with
  | var n => intro u h; simp [headStep] at h
  | lam b ih =>
      intro u h
      simp only [headStep, Option.map_eq_some_iff] at h
      obtain ⟨b', hb, rfl⟩ := h
      exact HeadStep.under (ih hb)
  | app f a ihf _ =>
      intro u h
      match hf : f with
      | Term.lam b =>
          simp only [headStep] at h
          cases h
          exact HeadStep.beta b a
      | Term.var n =>
          simp [headStep] at h
      | Term.app g x =>
          simp only [headStep, Option.map_eq_some_iff] at h
          obtain ⟨f', hstep, rfl⟩ := h
          exact HeadStep.appL a (by intro b hb; cases hb) (ihf hstep)

theorem headStep_complete : ∀ {t u : Term}, HeadStep t u → headStep t = some u := by
  intro t u h
  induction h with
  | beta b a => rfl
  | appL a nonlam h ih =>
      rename_i f f'
      cases f with
      | var n => simp [headStep] at ih
      | lam b => exact absurd rfl (nonlam b)
      | app g x =>
          simp only [headStep] at ih ⊢
          rw [ih]
          rfl
  | under h ih =>
      simp only [headStep] at ih ⊢
      rw [ih]
      rfl

/-- Head reduction is deterministic. -/
theorem headStep_det {t u v : Term} (hu : HeadStep t u) (hv : HeadStep t v) :
    u = v := by
  have := headStep_complete hu
  have := headStep_complete hv
  simp_all

/-- Transitive closure with an explicit step count. -/
inductive HeadReds : Nat → Term → Term → Prop where
  | refl (t : Term) : HeadReds 0 t t
  | head {t u v : Term} {n : Nat}
      (h : HeadStep t u) (hs : HeadReds n u v) : HeadReds (n + 1) t v

theorem headReds_of_headSteps :
    ∀ (n : Nat) {t u : Term}, headSteps n t = some u → HeadReds n t u := by
  intro n
  induction n with
  | zero => intro t u h; cases h; exact HeadReds.refl t
  | succ m ih =>
      intro t u h
      simp only [headSteps, Option.bind_eq_some_iff] at h
      obtain ⟨v, hv, hrest⟩ := h
      exact HeadReds.head (headStep_sound hv) (ih hrest)

theorem headReds_trans {a b c : Term} {m n : Nat}
    (h₁ : HeadReds m a b) (h₂ : HeadReds n b c) : HeadReds (m + n) a c := by
  induction h₁ with
  | refl t => simpa using h₂
  | head h hs ih =>
      have := HeadReds.head h (ih h₂)
      simpa [Nat.add_right_comm] using this

theorem headSteps_of_headReds :
    ∀ {n : Nat} {t u : Term}, HeadReds n t u → headSteps n t = some u := by
  intro n t u h
  induction h with
  | refl t => rfl
  | head hstep hs ih =>
      simp only [headSteps, headStep_complete hstep, Option.bind_some]
      exact ih

/-- Splitting a step-indexed reduction at any prefix length. -/
theorem headSteps_add {m n : Nat} {t v : Term}
    (h : headSteps (m + n) t = some v) :
    ∃ u, headSteps m t = some u ∧ headSteps n u = some v := by
  induction m generalizing t with
  | zero => exact ⟨t, rfl, by simpa using h⟩
  | succ k ih =>
      have : headSteps (k + n + 1) t = some v := by
        simpa [Nat.add_right_comm] using h
      simp only [headSteps, Option.bind_eq_some_iff] at this
      obtain ⟨w, hw, hrest⟩ := this
      obtain ⟨u, hu, hv⟩ := ih hrest
      exact ⟨u, by simp [headSteps, hw, hu], hv⟩

/-- Divergence: an infinite head reduction — from every stage there is
a next step. Equivalently, `headSteps n` never reaches hnf. -/
def HeadDiverges (t : Term) : Prop :=
  ∀ n : Nat, ∃ u : Term, headSteps n t = some u ∧ headStep u ≠ none

/-- To diverge it suffices to reach, beyond every step count, some
further state: the prefix exists and has a successor. -/
theorem headDiverges_of_unbounded {t : Term}
    (h : ∀ n : Nat, ∃ (m : Nat) (v : Term), n < m ∧ headSteps m t = some v) :
    HeadDiverges t := by
  intro n
  obtain ⟨m, v, hlt, hm⟩ := h n
  obtain ⟨k, hk⟩ := Nat.exists_eq_add_of_lt hlt
  -- m = n + k + 1
  subst hk
  have h' : headSteps (n + (k + 1)) t = some v := by
    simpa [Nat.add_assoc] using hm
  obtain ⟨u, hu, hrest⟩ := headSteps_add h'
  refine ⟨u, hu, ?_⟩
  intro hnone
  simp [headSteps, hnone] at hrest

end Blc
