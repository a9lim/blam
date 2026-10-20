/-
Replacing a selected inert operand. Substitution by a rigid normal term
cannot create a beta redex. If the required output contains no shifted
copy of that operand, every marked occurrence was erased, so another
operand can be substituted in the same reduction.
-/
import Blc.SelfintProjections
import Blc.SelfintOrigins

namespace Blc.SelfintInert
open Term SelfintControl SelfintProjections

theorem rigid_shift {t : Term} (h : Rigid t) (c : Nat) : Rigid (shift 1 c t) := by
  induction h with
  | var n => simp only [shift]; split <;> exact .var _
  | app a h ih => exact .app _ ih

theorem subst_lam_shape {t s b : Term} (hr : Rigid s) (j : Nat)
    (he : substDec j s t = .lam b) :
    ∃ a, t = .lam a ∧ b = substDec (j + 1) (shift 1 0 s) a := by
  cases t with
  | var n =>
    simp only [substDec] at he
    split at he
    · exact (rigid_not_lam hr _ he).elim
    · split at he <;> cases he
  | lam a => exact ⟨a, rfl, (Term.lam.inj he).symm⟩
  | app f a => cases he

theorem beta_reflect (t : Term) (j : Nat) (s : Term)
    (hr : Rigid s) (hn : NFt s) {u : Term}
    (h : Beta (substDec j s t) u) :
    ∃ v, Beta t v ∧ substDec j s v = u := by
  induction t generalizing j s u with
  | var n =>
    simp only [substDec] at h
    split at h
    · exact (nft_no_beta hn h).elim
    · split at h <;> cases h
  | lam b ih =>
    cases h with
    | lam hb =>
      obtain ⟨v, hv, he⟩ := ih (j + 1) (shift 1 0 s) (rigid_shift hr 0)
        (QuoteOrigins.Marked.nft_shift hn 0) hb
      exact ⟨.lam v, .lam hv, congrArg Term.lam he⟩
  | app f a ihf iha =>
    generalize he : substDec j s (.app f a) = w at h
    cases h with
    | beta b a' =>
      obtain ⟨hf, ha⟩ := Term.app.inj he
      obtain ⟨b', rfl, hb⟩ := subst_lam_shape hr j hf
      refine ⟨contract b' a, .beta _ _, ?_⟩
      rw [substDec_contract, ← hb, ha]
    | appL a' hb =>
      obtain ⟨hf, ha⟩ := Term.app.inj he
      rw [← hf] at hb
      obtain ⟨v, hv, he'⟩ := ihf j s hr hn hb
      exact ⟨.app v a, .appL a hv, by simp only [substDec, he', ha]⟩
    | appR f' hb =>
      obtain ⟨hf, ha⟩ := Term.app.inj he
      rw [← ha] at hb
      obtain ⟨v, hv, he'⟩ := iha j s hr hn hb
      exact ⟨.app f v, .appR f hv, by simp only [substDec, he', hf]⟩
    | lam hb => cases he

theorem betas_reflect {t u : Term} (h : Betas t u) :
    ∀ (v : Term) (j : Nat) (s : Term), Rigid s → NFt s →
      t = substDec j s v → ∃ w, Betas v w ∧ substDec j s w = u := by
  induction h with
  | refl t =>
    intro v j s hr hn he
    exact ⟨v, .refl _, he.symm⟩
  | head hb hs ih =>
    intro v j s hr hn he
    rw [he] at hb
    obtain ⟨v', hv, he'⟩ := beta_reflect v j s hr hn hb
    obtain ⟨w, hw, hew⟩ := ih v' j s hr hn he'.symm
    exact ⟨w, .head hv hw, hew⟩

/-- No subterm is a copy of `needle`, shifted at each enclosing binder. -/
def Avoid (needle : Term) : Term → Prop
  | .var n => .var n ≠ needle
  | .lam b => .lam b ≠ needle ∧ Avoid (shift 1 0 needle) b
  | .app f a => .app f a ≠ needle ∧ Avoid needle f ∧ Avoid needle a

theorem avoid_not_self (t : Term) : ¬ Avoid t t := by
  cases t with
  | var n => exact fun h => h rfl
  | lam b => exact fun h => h.1 rfl
  | app f a => exact fun h => h.1 rfl

theorem avoid_subst_occ (t : Term) (j : Nat) (s : Term)
    (h : Avoid s (substDec j s t)) : occ j t = 0 := by
  induction t generalizing j s with
  | var n =>
    by_cases he : n = j
    · simp only [substDec, he, if_true] at h
      exact (avoid_not_self s h).elim
    · simp only [occ, he, if_false]
  | lam b ih => exact ih (j + 1) (shift 1 0 s) h.2
  | app f a ihf iha =>
    simp only [occ, ihf j s h.2.1, iha j s h.2.2, Nat.zero_add]

/-- A reduction to an output avoiding an inert selected operand erases
that operand, and the very same source trace works for any replacement. -/
theorem replace_inert {t n a : Term} (j : Nat) (hr : Rigid a) (hn : NFt a)
    (ha : Avoid a n) (h : Betas (substDec j a t) n) (b : Term) :
    Betas (substDec j b t) n := by
  obtain ⟨w, hw, he⟩ := betas_reflect h t j a hr hn rfl
  have ho := avoid_subst_occ w j a (he ▸ ha)
  have he' := subst_absent w j a b ho
  rw [← he, he']
  exact betas_subst hw j b

/-- Beta-join correctness has the same replacement property when the
required output is normal. No directed-correctness hypothesis is needed. -/
theorem replace_inert_join {t n a : Term} (j : Nat) (hr : Rigid a) (hn : NFt a)
    (ha : Avoid a n) (hN : NormalForm n)
    (h : BetaJoin (substDec j a t) n) (b : Term) :
    Betas (substDec j b t) n := by
  obtain ⟨w, ht, hnw⟩ := h
  have he := normalForm_betas_eq hN hnw
  subst w
  exact replace_inert j hr hn ha ht b

/-- The common reader use: replace only the final argument, while the
function may contain other copies of that argument or of the stream. -/
theorem replace_final_argument {f n a : Term} (hr : Rigid a) (hn : NFt a)
    (ha : Avoid a n) (hN : NormalForm n) (h : BetaJoin (.app f a) n)
    (b : Term) : Betas (.app f b) n := by
  let t : Term := .app (shift 1 0 f) (.var 0)
  have hs (v : Term) : substDec 0 v t = .app f v := by
    simp only [t, substDec, substDec_shift, ↓reduceIte]
  have ht : BetaJoin (substDec 0 a t) n := by rw [hs]; exact h
  have hb := replace_inert_join 0 hr hn ha hN ht b
  simpa only [hs] using hb

end Blc.SelfintInert
