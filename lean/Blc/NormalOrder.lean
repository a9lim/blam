/-
Productive normal-form descent. A head-normal landing can expose another
member of a family below a binder or a rigid application. If this always
continues, no member has a finite normal form. The measure is the size of
the SAME normal form transported through head factorization, not a trace
budget or the size of a growing intermediate term.
-/
import Blc.Rigid

namespace Blc
open Term

def nodeSize : Term → Nat
  | .var _ => 1
  | .lam b => nodeSize b + 1
  | .app f a => nodeSize f + nodeSize a + 1

/-- A concrete head-normal landing retains exactly the original normal form. -/
theorem headLanding_nf {t s nf : Term} {k : Nat}
    (hs : headSteps k t = some s) (hsn : headStep s = none)
    (hred : Betas t nf) (hnf : NormalForm nf) : Betas s nf := by
  obtain ⟨j, p, hp, hpn, hredp⟩ := headFactorizes_nf hred hnf
  have heq := headSteps_unique hs hsn hp hpn
  subst heq
  exact hredp

theorem lam_betas_shape {b nf : Term} (h : Betas (.lam b) nf) :
    ∃ n, nf = .lam n ∧ Betas b n := by
  generalize hs : Term.lam b = s at h
  induction h generalizing b with
  | refl t => exact ⟨b, hs.symm, Betas.refl b⟩
  | head hb _ ih =>
      subst hs
      cases hb with
      | lam hb =>
          obtain ⟨n, hn, hr⟩ := ih rfl
          exact ⟨n, hn, Betas.head hb hr⟩

theorem rigid_betas_shape {f a nf : Term} (hr : Rigid f)
    (h : Betas (.app f a) nf) :
    ∃ g b, nf = .app g b ∧ Betas f g ∧ Betas a b := by
  generalize hs : Term.app f a = s at h
  induction h generalizing f a with
  | refl t => exact ⟨f, a, hs.symm, Betas.refl f, Betas.refl a⟩
  | head hb _ ih =>
      subst hs
      cases hb with
      | beta b a => cases hr
      | appL a hb =>
          obtain ⟨g, b, hn, hf, ha⟩ := ih (rigid_beta hr hb) rfl
          exact ⟨g, b, hn, Betas.head hb hf, ha⟩
      | appR f hb =>
          obtain ⟨g, b, hn, hf, ha⟩ := ih hr rfl
          exact ⟨g, b, hn, hf, Betas.head hb ha⟩

/-- A proper subterm whose normalization is forced by its surrounding
binders and rigid heads. Arbitrary application arguments do not qualify. -/
inductive NfChild : Term → Term → Prop where
  | lam (b : Term) : NfChild b (.lam b)
  | arg {f : Term} (hr : Rigid f) (a : Term) : NfChild a (.app f a)
  | left {f : Term} (hr : Rigid f) (a : Term) : NfChild f (.app f a)
  | trans {a b c : Term} : NfChild a b → NfChild b c → NfChild a c

theorem nfChild_smaller {a t nf : Term} (hc : NfChild a t)
    (hred : Betas t nf) (hnf : NormalForm nf) :
    ∃ n, Betas a n ∧ NormalForm n ∧ nodeSize n < nodeSize nf := by
  induction hc generalizing nf with
  | lam b =>
      obtain ⟨n, rfl, hn⟩ := lam_betas_shape hred
      exact ⟨n, hn, fun u hu => hnf _ (Beta.lam hu), by simp [nodeSize]⟩
  | arg hr a =>
      obtain ⟨g, b, rfl, _, hb⟩ := rigid_betas_shape hr hred
      exact ⟨b, hb, fun u hu => hnf _ (Beta.appR g hu), by simp [nodeSize]; omega⟩
  | left hr a =>
      obtain ⟨g, b, rfl, hg, _⟩ := rigid_betas_shape hr hred
      exact ⟨g, hg, fun u hu => hnf _ (Beta.appL b hu), by simp [nodeSize]; omega⟩
  | trans _ _ iha ihb =>
      obtain ⟨m, hm, hmn, hms⟩ := ihb hred hnf
      obtain ⟨n, hn, hnn, hns⟩ := iha hm hmn
      exact ⟨n, hn, hnn, Nat.lt_trans hns hms⟩

/-- Infinite productive readback excludes a finite normal form. Each
finite head computation exposes the next family member strictly below
the rigid/binder structure of its head-normal landing. -/
theorem productive_noNormalForm (S : Term → Prop)
    (advance : ∀ t, S t → ∃ k s a,
      headSteps k t = some s ∧ headStep s = none ∧ NfChild a s ∧ S a)
    {t : Term} (ht : S t) : ¬ HasNormalForm t := by
  have aux : ∀ n, ∀ nf, nodeSize nf = n →
      ∀ t, S t → Betas t nf → NormalForm nf → False := by
    intro n
    induction n using Nat.strongRecOn with
    | ind n ih =>
        intro nf hn t ht hred hnf
        obtain ⟨k, s, a, hs, hsn, hc, ha⟩ := advance t ht
        have hsnf := headLanding_nf hs hsn hred hnf
        obtain ⟨m, hm, hmn, hms⟩ := nfChild_smaller hc hsnf hnf
        exact ih (nodeSize m) (hn ▸ hms) m rfl a ha hm hmn
  rintro ⟨nf, hred, hnf⟩
  exact aux (nodeSize nf) nf rfl t ht hred hnf

end Blc
