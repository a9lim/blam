/-
Finite realization of data/program traces whose zero labels have one
uniform bound. A finite ordinary weak-head clock bounds every selected
program head contraction, even with unrestricted data reductions between.
-/
import Blc.SelfintGrowthLabels
import Blc.WeakHeadClock

namespace Blc.SelfintGrowthSimulation
open Term SelfintZero SelfintGrowthBlue SelfintGrowthLabels SelfintLowerBound WeakHeadClock

theorem bounded_demand (t : Q) (l : Nat) (h : Bounded l t) : demand t ≤ l + 1 := by
  induction t with
  | var | k => exact Nat.zero_le _
  | z i => exact Nat.succ_le_succ h
  | lam b ih => exact ih h
  | app f a ihf iha => exact Nat.max_le.mpr ⟨ihf h.1, iha h.2⟩

theorem data_sim {t u : Q} (h : DataStep t u) (m : Nat) (T : Term)
    (hT : Closed T) (hm : demand t ≤ m) :
    Betas (realize m T t) (realize m T u) := by
  induction h with
  | k a b => exact step_sim (.k a b) m T hT hm
  | z i a => exact step_sim (.z i a) m T hT hm
  | left a h ih =>
    exact betas_appL _ (ih (Nat.le_trans (Nat.le_max_left _ _) hm))
  | right f h ih =>
    exact betas_appR _ (ih (Nat.le_trans (Nat.le_max_right _ _) hm))
  | lam h ih => exact betas_lam (ih hm)

theorem data_steps_sim {t u : Q} (h : DataSteps t u) :
    ∃ b, ∀ m, b ≤ m → ∀ T, Closed T →
      Betas (realize m T t) (realize m T u) := by
  induction h with
  | refl t => exact ⟨0, fun _ _ _ _ => .refl _⟩
  | @head t v u h hs ih =>
    obtain ⟨b, hb⟩ := ih
    refine ⟨max (demand t) b, fun m hm T hT => ?_⟩
    exact betas_trans (data_sim h m T hT (Nat.le_trans (Nat.le_max_left _ _) hm))
      (hb m (Nat.le_trans (Nat.le_max_right _ _) hm) T hT)

/-- A program head contraction remains exactly one ordinary head step,
regardless of the number of zero cells used to realize data constants. -/
theorem red_head_sim {t u : Q} (h : RedHead t u) (m : Nat) (T : Term)
    (hT : Closed T) : weakStep (realize m T t) = some (realize m T u) := by
  induction h with
  | beta b a =>
    unfold realize
    rw [interp_subst _ (fun i => zeros_closed _ hT)]
    rfl
  | left a h ih => exact WeakHeadClock.weak_app ih _

theorem interleaved_prepend {t u v : Term} {n : Nat} (h : Betas t u)
    (g : Interleaved n u v) : Interleaved n t v := by
  induction h with
  | refl => exact g
  | head h _ ih => exact .beta h (ih g)

/-- Data labels are bounded at every data step; program head steps are
counted. No constant-code-count or normal-form assumption is imposed. -/
inductive Run (l : Nat) : Nat → Q → Q → Prop where
  | refl (t : Q) : Run l 0 t t
  | data {n : Nat} {t u v : Q} : Bounded l t → DataStep t u →
      Run l n u v → Run l n t v
  | head {n : Nat} {t u v : Q} : RedHead t u →
      Run l n u v → Run l (n + 1) t v

theorem Run.realize {l n : Nat} {t u : Q} (h : Run l n t u)
    (m : Nat) (hm : l < m) (T : Term) (hT : Closed T) :
    Interleaved n (SelfintZero.realize m T t) (SelfintZero.realize m T u) := by
  induction h with
  | refl t => exact .refl _
  | @data n t v u hb hd hs ih =>
    have hdemand : demand t ≤ m := Nat.le_trans (bounded_demand t l hb) hm
    exact interleaved_prepend (data_sim hd m T hT hdemand) ih
  | head h hs ih => exact .head (red_head_sim h m T hT) ih

/-- A uniformly bounded-label execution cannot contain arbitrarily many
program head contractions when its finite realization head-normalizes. -/
theorem Run.head_bound {l n h : Nat} {t u : Q} (hr : Run l n t u)
    (m : Nat) (hm : l < m) (T : Term) (hT : Closed T)
    (hc : Count (SelfintZero.realize m T t) h) : n ≤ h :=
  interleaved_bound hc (hr.realize m hm T hT)

theorem no_unbounded_run {l h : Nat} {t : Q} (m : Nat) (hm : l < m)
    (T : Term) (hT : Closed T) (hc : Count (realize m T t) h) :
    ¬ (∀ n, ∃ u, Run l n t u) := by
  intro hr
  obtain ⟨u, hu⟩ := hr (h + 1)
  have hn := hu.head_bound m hm T hT hc
  omega

/-- A finite initial data phase is harmless: a uniform later demand bound
still contradicts normalization of every sufficiently long even prefix. -/
theorem normal_prefixes_no_run {l : Nat} {t u : Q} (hd : DataSteps t u)
    (T : Term) (hT : Closed T)
    (hn : ∀ n, HasNormalForm (realize (2 * n) T t)) :
    ¬ (∀ n, ∃ v, Run l n u v) := by
  obtain ⟨b, hb⟩ := data_steps_sim hd
  let n := max b (l + 1)
  have hb' : b ≤ 2 * n := by have := Nat.le_max_left b (l + 1); omega
  have hl : l < 2 * n := by have := Nat.le_max_right b (l + 1); omega
  have hred := hb (2 * n) hb' T hT
  obtain ⟨h, hc⟩ := hasNormalForm_count (betas_preserve_hasNormalForm hred (hn n))
  exact no_unbounded_run (2 * n) hl T hT hc

private def identity : Term := .lam (.var 0)

private theorem identity_normal : NormalForm identity := by
  intro u h
  cases h with
  | lam h => cases h

/-- Exact remainder extraction rules out an unbounded selected-head trace
with one finite label bound after any finite initial data phase. This
specialization uses only the valid sources lambda^n.I and the suffix I. -/
theorem remainder_no_bounded_run (R : Term)
    (hR : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (.app R (streamOf (blcCode M) N)) N)
    {l : Nat} {u : Q} (hd : DataSteps (.app (embed R) (.z 0)) u) :
    ¬ (∀ n, ∃ v, Run l n u v) := by
  let T := streamOf (blcCode identity) identity
  have hT : Closed T := by decide
  apply normal_prefixes_no_run hd T hT
  intro n
  obtain ⟨w, hw, hi⟩ := hR (SelfintZero.tower n) (SelfintZero.tower_closed n) identity (by decide)
  have he : w = identity := normalForm_betas_eq identity_normal hi
  subst w
  rw [SelfintZero.tower_stream n identity] at hw
  refine ⟨identity, ?_, identity_normal⟩
  simpa only [realize, interp, interp_embed, Nat.sub_zero, tower_stream, T, identity] using hw

end Blc.SelfintGrowthSimulation
