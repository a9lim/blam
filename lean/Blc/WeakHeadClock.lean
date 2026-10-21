/-
The number of deterministic weak-head contractions cannot increase under
arbitrary beta reduction. It strictly decreases at a weak-head contraction.
This also bounds head contractions interleaved with unrestricted reductions.
-/
import Blc.SelfintLowerBound
import Blc.SelfintControl

namespace Blc.WeakHeadClock
open Term SelfintLowerBound SelfintControl

inductive Count : Term → Nat → Prop where
  | stop {t : Term} : weakStep t = none → Count t 0
  | step {t u : Term} {n : Nat} :
      weakStep t = some u → Count u n → Count t (n + 1)

theorem weak_app {f g : Term} (h : weakStep f = some g) (a : Term) :
    weakStep (.app f a) = some (.app g a) := by
  cases f with
  | var n => simp [weakStep] at h
  | lam b => simp [weakStep] at h
  | app p q => simp only [weakStep, h, Option.map_some]

theorem rigid_stop {t : Term} (h : Rigid t) : weakStep t = none := by
  induction h with
  | var n => rfl
  | app a h ih =>
    rename_i f
    cases f with
    | var n => rfl
    | lam b => cases h
    | app p q => simp only [weakStep, ih, Option.map_none]

theorem stop_beta {t u : Term} (hs : weakStep t = none) (hb : Beta t u) :
    weakStep u = none := by
  cases t with
  | lam b => cases hb with | lam h => rfl
  | var n => cases hb
  | app f a =>
    exact rigid_stop (rigid_beta (weakStep_none_rigid hs (fun h => h)) hb)

theorem subst_arg {a b : Term} (h : Beta a b) (t : Term) :
    Betas (contract t a) (contract t b) := by
  obtain ⟨n, hn⟩ := beta_par h
  exact parN_betas (parN_substDec (parN_refl t) hn 0)

/-- A different contraction commutes past the head contraction, with
finitely many residual contractions after it. -/
theorem commute {t p u : Term} (hs : weakStep t = some p) (hb : Beta t u) :
    u = p ∨ ∃ q, weakStep u = some q ∧ Betas p q := by
  induction t generalizing p u with
  | var n => simp [weakStep] at hs
  | lam b ih => simp [weakStep] at hs
  | app f a ihf iha =>
    cases f with
    | var n => simp [weakStep] at hs
    | lam b =>
      simp only [weakStep, Option.some.injEq] at hs
      subst p
      cases hb with
      | beta b a => exact .inl rfl
      | appL a h =>
        cases h with
        | lam h =>
          exact .inr ⟨_, rfl, betas_subst (.head h (.refl _)) 0 a⟩
      | appR f h => exact .inr ⟨_, rfl, subst_arg h b⟩
    | app g b =>
      simp only [weakStep, Option.map_eq_some_iff] at hs
      obtain ⟨f', hf, rfl⟩ := hs
      cases hb with
      | appL a h =>
        rcases ihf hf h with he | ⟨q, hq, hp⟩
        · exact .inl (congrArg (Term.app · a) he)
        · exact .inr ⟨.app q a, weak_app hq a, betas_appL a hp⟩
      | appR f h =>
        exact .inr ⟨_, weak_app hf _, .head (.appR f' h) (.refl _)⟩

theorem count_reduct : ∀ n, ∀ {t u : Term}, Count t n → Betas t u →
    ∃ m, m ≤ n ∧ Count u m := by
  intro n
  induction n using Nat.strongRecOn with
  | ind n ih =>
    have single : ∀ k, k ≤ n → ∀ {t u : Term}, Count t k → Beta t u →
        ∃ m, m ≤ k ∧ Count u m := by
      intro k hk t u hc hb
      by_cases he : k = n
      · subst k
        cases hc with
        | stop hs => exact ⟨0, Nat.le_refl _, .stop (stop_beta hs hb)⟩
        | @step t p k hs hc =>
          rcases commute hs hb with he | ⟨q, hq, hpq⟩
          · subst u
            exact ⟨k, Nat.le_succ _, hc⟩
          · obtain ⟨m, hm, hcm⟩ := ih k (Nat.lt_succ_self _) hc hpq
            exact ⟨m + 1, Nat.succ_le_succ hm, .step hq hcm⟩
      · exact ih k (by omega) hc (.head hb (.refl _))
    have many : ∀ {t u : Term}, Betas t u →
        ∀ k, k ≤ n → Count t k → ∃ m, m ≤ k ∧ Count u m := by
      intro t u h
      induction h with
      | refl t => intro k hk hc; exact ⟨k, Nat.le_refl _, hc⟩
      | head hb hs iht =>
        intro k hk hc
        obtain ⟨q, hq, hcq⟩ := single k hk hc hb
        obtain ⟨m, hm, hcm⟩ := iht q (Nat.le_trans hq hk) hcq
        exact ⟨m, Nat.le_trans hm hq, hcm⟩
    intro t u hc h
    exact many h n (Nat.le_refl _) hc

theorem count_unique {t : Term} {m n : Nat} (hm : Count t m) (hn : Count t n) :
    m = n := by
  induction hm generalizing n with
  | stop hs => cases hn with
    | stop => rfl
    | step ht hc => simp [hs] at ht
  | step hs hc ih => cases hn with
    | stop ht => simp [ht] at hs
    | step ht hd =>
      have he := Option.some.inj (hs.symm.trans ht)
      subst he
      exact congrArg (· + 1) (ih hd)

theorem head_decreases {t u : Term} {n : Nat} (hc : Count t n)
    (hs : weakStep t = some u) : ∃ m, m < n ∧ Count u m := by
  cases hc with
  | stop ht => simp [ht] at hs
  | step ht hd =>
    have he := Option.some.inj (ht.symm.trans hs)
    subst he
    exact ⟨_, Nat.lt_succ_self _, hd⟩

/-- Selected head contractions, interspersed with arbitrary beta steps. -/
inductive Interleaved : Nat → Term → Term → Prop where
  | refl (t : Term) : Interleaved 0 t t
  | beta {t u v : Term} {n : Nat} :
      Beta t u → Interleaved n u v → Interleaved n t v
  | head {t u v : Term} {n : Nat} :
      weakStep t = some u → Interleaved n u v → Interleaved (n + 1) t v

theorem interleaved_bound {t u : Term} {n h : Nat} (ht : Count t h)
    (hr : Interleaved n t u) : n ≤ h := by
  induction hr generalizing h with
  | refl t => exact Nat.zero_le _
  | beta hb hr ih =>
    obtain ⟨m, hm, hcm⟩ := count_reduct h ht (.head hb (.refl _))
    exact Nat.le_trans (ih hcm) hm
  | head hs hr ih =>
    obtain ⟨m, hm, hcm⟩ := head_decreases ht hs
    have hn := ih hcm
    omega

end Blc.WeakHeadClock
