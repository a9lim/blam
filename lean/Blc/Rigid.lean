/-
The rigid-head argument bridge: the `*-ARG` kills. Their shape — the
killed term head-reduces to `λᵏ.(x a⃗)` (a head normal form with a
free-variable head) where some closed spine argument `aᵢ` carries a
divergence certificate — needs one more piece of reduction theory
than the head-divergence bridge: a NORMAL FORM of a rigid-head term
forces normal forms of every spine argument, and having a normal form
transports forward through head reduction (the strengthened pullback
in Blc/Factor.lean, no confluence anywhere).

Chain: HasNormalForm t → (factorize) head reduction lands head-normal
WITH a normal form → (determinism) that landing IS the computed hnf →
(rigid shape) its spine argument aᵢ has a normal form → contradiction
with aᵢ's certificate. Contrapositive: `argKill`.
-/

import Blc.Factor

namespace Blc
open Term

/-- Rigid terms: a variable head under applications. No β step can
expose a redex at the head — the shape is stable under reduction. -/
inductive Rigid : Term → Prop where
  | var (n : Nat) : Rigid (.var n)
  | app {f : Term} (a : Term) (h : Rigid f) : Rigid (.app f a)

theorem rigid_not_lam {f : Term} (h : Rigid f) : ∀ b, f ≠ .lam b := by
  intro b hb
  subst hb
  cases h

theorem rigid_beta : ∀ {f f' : Term}, Rigid f → Beta f f' → Rigid f' := by
  intro f f' hr hb
  induction hb with
  | beta b a => cases hr with | app _ hf => cases hf
  | appL a _ ih => cases hr with | app _ hf => exact Rigid.app a (ih hf)
  | appR f _ _ => cases hr with | app _ hf => exact Rigid.app _ hf
  | lam _ _ => cases hr

/-- The workhorse: a rigid application reaching a normal form forces
normal forms of BOTH components. Elementary — a β step under a rigid
head is componentwise, so the reduction never mixes them. -/
theorem rigid_app_betas_nf : ∀ {s N : Term}, Betas s N → NormalForm N →
    ∀ {f a : Term}, s = .app f a → Rigid f →
    HasNormalForm f ∧ HasNormalForm a := by
  intro s N hred
  induction hred with
  | refl t =>
      intro hnf f a hs hr
      subst hs
      refine ⟨⟨f, Betas.refl f, ?_⟩, ⟨a, Betas.refl a, ?_⟩⟩
      · intro u hu; exact hnf _ (Beta.appL a hu)
      · intro u hu; exact hnf _ (Beta.appR f hu)
  | head hb hs ih =>
      intro hnf f a hseq hr
      subst hseq
      cases hb with
      | beta b a' => cases hr
      | appL a hb' =>
          obtain ⟨⟨Nf, hNf, hnff⟩, ha⟩ := ih hnf rfl (rigid_beta hr hb')
          exact ⟨⟨Nf, Betas.head hb' hNf, hnff⟩, ha⟩
      | appR f hb' =>
          obtain ⟨hf, Na, hNa, hnfa⟩ := ih hnf rfl hr
          exact ⟨hf, ⟨Na, Betas.head hb' hNa, hnfa⟩⟩

/-- Binders pass normal forms down to their bodies. -/
theorem lam_betas_nf : ∀ {s N : Term}, Betas s N → NormalForm N →
    ∀ {b : Term}, s = .lam b → HasNormalForm b := by
  intro s N hred
  induction hred with
  | refl t =>
      intro hnf b hs
      subst hs
      exact ⟨b, Betas.refl b, fun u hu => hnf _ (Beta.lam hu)⟩
  | head hb hs ih =>
      intro hnf b hseq
      subst hseq
      cases hb with
      | lam hb' =>
          obtain ⟨Nb, hNb, hnfb⟩ := ih hnf rfl
          exact ⟨Nb, Betas.head hb' hNb, hnfb⟩

/-- `a` sits in argument position on the rigid spine of `s`. -/
inductive SpineArg (a : Term) : Term → Prop where
  | here {f : Term} (h : Rigid f) : SpineArg a (.app f a)
  | left {f : Term} (b : Term) (h : SpineArg a f) : SpineArg a (.app f b)

theorem spineArg_rigid {a s : Term} (h : SpineArg a s) : Rigid s := by
  induction h with
  | here hf => exact Rigid.app _ hf
  | left b _ ih => exact Rigid.app b ih

theorem spineArg_hasNf : ∀ {a s : Term}, SpineArg a s →
    ∀ {N : Term}, Betas s N → NormalForm N → HasNormalForm a := by
  intro a s hsp
  induction hsp with
  | here hf =>
      intro N hred hnf
      exact (rigid_app_betas_nf hred hnf rfl hf).2
  | left b hsp' ih =>
      intro N hred hnf
      obtain ⟨Nf, hNf, hnff⟩ :=
        (rigid_app_betas_nf hred hnf rfl (spineArg_rigid hsp')).1
      exact ih hNf hnff

/-- `a` sits on the rigid spine of the hnf `s`, under its binders. -/
inductive HnfArg (a : Term) : Term → Prop where
  | spine {s : Term} (h : SpineArg a s) : HnfArg a s
  | under {b : Term} (h : HnfArg a b) : HnfArg a (.lam b)

theorem hnfArg_hasNf : ∀ {a s : Term}, HnfArg a s → HasNormalForm s →
    HasNormalForm a := by
  intro a s h
  induction h with
  | spine hsp =>
      intro hnf
      obtain ⟨N, hred, hN⟩ := hnf
      exact spineArg_hasNf hsp hred hN
  | under _ ih =>
      intro hnf
      obtain ⟨N, hred, hN⟩ := hnf
      exact ih (lam_betas_nf hred hN rfl)

/-! Executable shape checkers, for one `decide` per certificate. -/

def rigidB : Term → Bool
  | .var _ => true
  | .app f _ => rigidB f
  | .lam _ => false

theorem rigidB_sound : ∀ {t : Term}, rigidB t = true → Rigid t := by
  intro t
  induction t with
  | var n => intro _; exact Rigid.var n
  | lam b _ => intro h; exact Bool.noConfusion h
  | app f a ihf _ => intro h; exact Rigid.app a (ihf h)

def spineArgB (a : Term) : Term → Bool
  | .app f x => (decide (x = a) && rigidB f) || spineArgB a f
  | _ => false

theorem spineArgB_sound : ∀ {a s : Term}, spineArgB a s = true →
    SpineArg a s := by
  intro a s
  induction s with
  | var n => intro h; exact Bool.noConfusion h
  | lam b _ => intro h; exact Bool.noConfusion h
  | app f x ihf _ =>
      intro h
      simp only [spineArgB, Bool.or_eq_true, Bool.and_eq_true,
        decide_eq_true_eq] at h
      cases h with
      | inl h =>
          obtain ⟨hx, hf⟩ := h
          subst hx
          exact SpineArg.here (rigidB_sound hf)
      | inr h => exact SpineArg.left x (ihf h)

def hnfArgB (a : Term) : Term → Bool
  | .lam b => hnfArgB a b
  | .var n => spineArgB a (.var n)
  | .app f x => spineArgB a (.app f x)

theorem hnfArgB_sound : ∀ {a s : Term}, hnfArgB a s = true → HnfArg a s := by
  intro a s
  induction s with
  | var n => intro h; exact HnfArg.spine (spineArgB_sound h)
  | lam b ihb => intro h; exact HnfArg.under (ihb h)
  | app f x _ _ => intro h; exact HnfArg.spine (spineArgB_sound h)

/-- Head reduction is a function: two head-normal landings from the
same term coincide. -/
theorem headSteps_stop {s p : Term} {j : Nat}
    (hsn : headStep s = none) (h : headSteps j s = some p) : p = s := by
  cases j with
  | zero =>
      simp only [headSteps] at h
      injection h with h
      exact h.symm
  | succ m =>
      simp only [headSteps, hsn, Option.bind] at h
      cases h

theorem headSteps_unique {t s p : Term} {k k' : Nat}
    (hs : headSteps k t = some s) (hsn : headStep s = none)
    (hp : headSteps k' t = some p) (hpn : headStep p = none) : p = s := by
  cases Nat.le_total k k' with
  | inl h =>
      obtain ⟨j, rfl⟩ := Nat.exists_eq_add_of_le h
      obtain ⟨u, hu, hj⟩ := headSteps_add hp
      rw [hs] at hu
      injection hu with hu
      subst hu
      exact headSteps_stop hsn hj
  | inr h =>
      obtain ⟨j, rfl⟩ := Nat.exists_eq_add_of_le h
      obtain ⟨u, hu, hj⟩ := headSteps_add hs
      rw [hp] at hu
      injection hu with hu
      subst hu
      exact (headSteps_stop hpn hj).symm

/-- **The rigid-head argument bridge**: `t` head-reduces to a head
normal form `s` carrying `a` on its rigid spine; if `a` has no normal
form, neither has `t`. All three shape premises are one `decide`. -/
theorem argKill {t s a : Term} {k : Nat}
    (hs : headSteps k t = some s) (hsn : headStep s = none)
    (hin : hnfArgB a s = true)
    (hdiv : ¬ HasNormalForm a) : ¬ HasNormalForm t := by
  intro hnf
  obtain ⟨k', p, hp, hpn, hpnf⟩ := hasNormalForm_headFactorizes hnf
  have hps : p = s := headSteps_unique hs hsn hp hpn
  subst hps
  exact hdiv (hnfArg_hasNf (hnfArgB_sound hin) hpnf)

end Blc
