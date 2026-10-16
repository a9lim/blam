/- Full beta confluence via Takahashi complete development. -/
import Blc.Factor

namespace Blc
open Term

def develop : Term → Term
  | .var n => .var n
  | .lam b => .lam (develop b)
  | .app (.lam b) a => contract (develop b) (develop a)
  | .app f a => .app (develop f) (develop a)

theorem par_lam {b c : Term} (h : Par b c) : Par (.lam b) (.lam c) := by
  obtain ⟨n, hn⟩ := h
  exact ⟨n, .lam hn⟩

theorem par_app {f g a b : Term} (hf : Par f g) (ha : Par a b) :
    Par (.app f a) (.app g b) := by
  obtain ⟨n, hn⟩ := hf
  obtain ⟨m, hm⟩ := ha
  exact ⟨_, .app hn hm⟩

theorem par_beta {b c a d : Term} (hb : Par b c) (ha : Par a d) :
    Par (.app (.lam b) a) (contract c d) := by
  obtain ⟨n, hn⟩ := hb
  obtain ⟨m, hm⟩ := ha
  exact ⟨_, .beta hn hm⟩

theorem par_contract {b c a d : Term} (hb : Par b c) (ha : Par a d) :
    Par (contract b a) (contract c d) := by
  obtain ⟨n, hn⟩ := hb
  obtain ⟨m, hm⟩ := ha
  exact ⟨_, parN_substDec hn hm 0⟩

theorem par_triangle {n : Nat} {t u : Term} (h : ParN n t u) :
    Par u (develop t) := by
  induction h with
  | var i => exact ⟨0, .var i⟩
  | lam h ih => exact par_lam ih
  | app hf ha ihf iha =>
      rename_i n m f g a b
      cases f with
      | var i => exact par_app ihf iha
      | app f x => exact par_app ihf iha
      | lam body =>
          cases hf with
          | lam hb =>
              obtain ⟨k, hk⟩ := ihf
              cases hk with
              | lam hk => exact par_beta ⟨_, hk⟩ iha
  | beta hb ha ihb iha => exact par_contract ihb iha

theorem par_diamond {t u v : Term} (hu : Par t u) (hv : Par t v) :
    ∃ w, Par u w ∧ Par v w := by
  obtain ⟨n, hu⟩ := hu
  obtain ⟨m, hv⟩ := hv
  exact ⟨develop t, par_triangle hu, par_triangle hv⟩

inductive Pars : Term → Term → Prop where
  | refl (t : Term) : Pars t t
  | head {t u v : Term} : Par t u → Pars u v → Pars t v

theorem pars_trans {t u v : Term} (h : Pars t u) (h' : Pars u v) : Pars t v := by
  induction h with
  | refl t => exact h'
  | head hp hs ih => exact .head hp (ih h')

theorem par_strip {t u v : Term} (hu : Par t u) (hv : Pars t v) :
    ∃ w, Pars u w ∧ Par v w := by
  induction hv generalizing u with
  | refl t => exact ⟨u, .refl u, hu⟩
  | head hp hs ih =>
      obtain ⟨w, huw, hpw⟩ := par_diamond hu hp
      obtain ⟨z, hwz, hvz⟩ := ih hpw
      exact ⟨z, .head huw hwz, hvz⟩

theorem pars_confluent {t u v : Term} (hu : Pars t u) (hv : Pars t v) :
    ∃ w, Pars u w ∧ Pars v w := by
  induction hu generalizing v with
  | refl t => exact ⟨v, hv, .refl v⟩
  | head hp hs ih =>
      obtain ⟨w, huw, hvw⟩ := par_strip hp hv
      obtain ⟨z, huz, hwz⟩ := ih huw
      exact ⟨z, huz, .head hvw hwz⟩

theorem betas_pars {t u : Term} (h : Betas t u) : Pars t u := by
  induction h with
  | refl t => exact .refl t
  | head hb hs ih => exact .head (beta_par hb) ih

theorem pars_betas {t u : Term} (h : Pars t u) : Betas t u := by
  induction h with
  | refl t => exact .refl t
  | head hp hs ih =>
      obtain ⟨n, hp⟩ := hp
      exact betas_trans (parN_betas hp) ih

theorem betas_confluent {t u v : Term} (hu : Betas t u) (hv : Betas t v) :
    ∃ w, Betas u w ∧ Betas v w := by
  obtain ⟨w, huw, hvw⟩ := pars_confluent (betas_pars hu) (betas_pars hv)
  exact ⟨w, pars_betas huw, pars_betas hvw⟩

theorem normalForm_betas_eq {t u : Term} (hn : NormalForm t)
    (h : Betas t u) : u = t := by
  cases h with
  | refl t => rfl
  | head hb hs => exact (hn _ hb).elim

theorem betas_preserve_nf {t u nf : Term} (hu : Betas t u)
    (hn : Betas t nf) (hnf : NormalForm nf) : Betas u nf := by
  obtain ⟨w, huw, hnw⟩ := betas_confluent hu hn
  have heq := normalForm_betas_eq hnf hnw
  subst heq
  exact huw

theorem betas_preserve_hasNormalForm {t u : Term} (h : Betas t u)
    (hn : HasNormalForm t) : HasNormalForm u := by
  obtain ⟨nf, hr, hn⟩ := hn
  exact ⟨nf, betas_preserve_nf h hr hn, hn⟩

theorem betas_noNormalForm {t u : Term} (h : Betas t u)
    (hn : ¬ HasNormalForm u) : ¬ HasNormalForm t :=
  fun ht => hn (betas_preserve_hasNormalForm h ht)

theorem normalForm_unique {t u v : Term} (hu : Betas t u) (hv : Betas t v)
    (hnu : NormalForm u) (hnv : NormalForm v) : u = v := by
  obtain ⟨w, huw, hvw⟩ := betas_confluent hu hv
  exact (normalForm_betas_eq hnu huw).symm.trans (normalForm_betas_eq hnv hvw)

end Blc
