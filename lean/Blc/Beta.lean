/-
Full β-reduction and normal forms, plus the single-redex discipline
(`Spine`) that makes the ratchet's divergence transfer from head
reduction to arbitrary β-reduction without a standardization theorem:
on terms whose only redex is the head redex, β-reduction IS head
reduction, so an invariant family of such terms that always steps can
never reach a normal form.
-/

import Blc.Step

namespace Blc
open Term

/-- One-step β-reduction, full compatible closure. -/
inductive Beta : Term → Term → Prop where
  | beta (b a : Term) : Beta (.app (.lam b) a) (contract b a)
  | appL {f f' : Term} (a : Term) (h : Beta f f') : Beta (.app f a) (.app f' a)
  | appR (f : Term) {a a' : Term} (h : Beta a a') : Beta (.app f a) (.app f a')
  | lam {b b' : Term} (h : Beta b b') : Beta (.lam b) (.lam b')

/-- Reflexive-transitive closure of β. -/
inductive Betas : Term → Term → Prop where
  | refl (t : Term) : Betas t t
  | head {t u v : Term} (h : Beta t u) (hs : Betas u v) : Betas t v

/-- β-normal: no step leaves. -/
def NormalForm (t : Term) : Prop := ∀ u, ¬ Beta t u

def HasNormalForm (t : Term) : Prop := ∃ n, Betas t n ∧ NormalForm n

/-- Head steps are β steps. -/
theorem beta_of_headStep : ∀ {t u : Term}, HeadStep t u → Beta t u := by
  intro t u h
  induction h with
  | beta b a => exact Beta.beta b a
  | appL a _ _ ih => exact Beta.appL a ih
  | under _ ih => exact Beta.lam ih

/-- Lambda-headedness, in the decidable-by-structure form. -/
def IsLam : Term → Prop
  | .lam _ => True
  | _ => False

def decIsLam : (t : Term) → Decidable (IsLam t)
  | .lam _ => .isTrue trivial
  | .var _ => .isFalse fun h => h
  | .app _ _ => .isFalse fun h => h

instance (t : Term) : Decidable (IsLam t) := decIsLam t

theorem notLam_ne {f : Term} (h : ¬ IsLam f) : ∀ b, f ≠ .lam b := by
  intro b hb
  subst hb
  exact h trivial

/-- Syntactically redex-free: the structural normal-form predicate. -/
def NFt : Term → Prop
  | .var _ => True
  | .lam b => NFt b
  | .app f a => ¬ IsLam f ∧ NFt f ∧ NFt a

def decNFt : (t : Term) → Decidable (NFt t)
  | .var _ => .isTrue trivial
  | .lam b => decNFt b
  | .app f a =>
      have _hf := decNFt f
      have _ha := decNFt a
      inferInstanceAs (Decidable (_ ∧ _ ∧ _))

instance (t : Term) : Decidable (NFt t) := decNFt t

/-- Redex-free terms don't step. -/
theorem nft_no_beta : ∀ {t u : Term}, NFt t → Beta t u → False := by
  intro t u h hb
  induction hb with
  | beta b a => exact h.1 trivial
  | appL a _ ih => exact ih h.2.1
  | appR f _ ih => exact ih h.2.2
  | lam _ ih => exact ih h

/-- The single-redex discipline: a left spine of applications whose
sole redex is the head redex — every off-path subterm is syntactically
normal. On such terms arbitrary β-reduction has no choice but the head
step. -/
inductive Spine : Term → Prop where
  | redex {b a : Term} (hb : NFt b) (ha : NFt a) : Spine (.app (.lam b) a)
  | appL {f : Term} (a : Term) (nonlam : ∀ b, f ≠ .lam b)
      (hf : Spine f) (ha : NFt a) : Spine (.app f a)

/-- On a `Spine` term, every β step is the head step: β-reduction is
deterministic there and agrees with the trusted checker's stepper. -/
theorem spine_beta_head : ∀ {t u : Term}, Spine t → Beta t u → HeadStep t u := by
  intro t u hs
  induction hs generalizing u with
  | redex hb ha =>
      intro hbeta
      cases hbeta with
      | beta _ _ => exact HeadStep.beta _ _
      | appL a h =>
          cases h with
          | lam h' => exact (nft_no_beta hb h').elim
      | appR f h => exact (nft_no_beta ha h).elim
  | appL a nonlam hf ha ih =>
      intro hbeta
      cases hbeta with
      | beta b _ => exact absurd rfl (nonlam b)
      | appL a h => exact HeadStep.appL a nonlam (ih h)
      | appR f h => exact (nft_no_beta ha h).elim

end Blc
