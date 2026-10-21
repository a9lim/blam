/-
Closed-source exact remainder extractors need incomparable nonlinear binders.
This is an independent extension of SelfintZero, not a transfer of the
interpreter's output-Omega argument (the suffix already contains its Omega).
-/
import Blc.SelfintZero
import Blc.SelfintNonlinearChain
import Blc.SelfintControl
import Blc.SelfintRemainder

namespace Blc.SelfintRemainderChain
open Term SelfintLowerBound SelfintZero SelfintNonlinearChain

def ChainQ (t : Q) : Prop := Chain (erase t)

theorem step_affine {t u : Q} (h : Step t u) (hn : nl t = 0) : nl u = 0 := by
  induction h with
  | beta b a =>
    have hb : nl b = 0 := by simp only [nl_app, nl_lam] at hn; omega
    have ha : nl a = 0 := by simp only [nl_app, nl_lam] at hn; omega
    simp only [nl_subst, hb, ha, Nat.mul_zero, Nat.add_zero]
  | k a b => simp only [nl_app, nl_k] at hn; omega
  | z i a => simpa only [nl_app, nl_k, nl_z, Nat.zero_add, Nat.add_zero] using hn
  | @left f g a h ih =>
    have hf : nl f = 0 := by simp only [nl_app] at hn; omega
    have hh := ih hf
    simp only [nl_app] at hn ⊢
    omega
  | @right f a b h ih =>
    have ha : nl a = 0 := by simp only [nl_app] at hn; omega
    have hh := ih ha
    simp only [nl_app] at hn ⊢
    omega

theorem step_chain {t u : Q} (h : Step t u) (hc : ChainQ t) : ChainQ u := by
  induction h with
  | beta b a =>
    unfold ChainQ
    rw [erase_subst]
    exact chain_beta (.beta (erase b) (erase a)) hc
  | k a b => exact hc.1.2.1
  | z i a =>
    exact ⟨⟨hc.2.1, trivial, Or.inr rfl⟩, trivial, Or.inr rfl⟩
  | left a h ih =>
    refine ⟨ih hc.1, hc.2.1, ?_⟩
    rcases hc.2.2 with hf | ha
    · exact Or.inl (step_affine h hf)
    · exact Or.inr ha
  | right f h ih =>
    refine ⟨hc.1, ih hc.2.1, ?_⟩
    rcases hc.2.2 with hf | ha
    · exact Or.inl hf
    · exact Or.inr (step_affine h ha)

theorem steps_chain {t u : Q} (h : Steps t u) (hc : ChainQ t) : ChainQ u := by
  induction h with
  | refl => exact hc
  | head h _ ih => exact ih (step_chain h hc)

/-- A nonlinear head contractor has an affine argument, so consumes one
nonlinear binder. An affine contractor decreases the program-lambda count. -/
theorem red_chain_progress {t u : Q} (h : RStep t u) (hc : ChainQ t) :
    nl u < nl t ∨ (nl u ≤ nl t ∧ red u < red t) := by
  induction h with
  | beta b a =>
    by_cases ho : oc 0 b ≤ 1
    · right
      rcases Nat.le_one_iff_eq_zero_or_eq_one.mp ho with hz | hz
      · simp only [nl_subst, red_subst, nl_app, nl_lam, red,
          hz, Nat.zero_mul, Nat.add_zero]
        constructor <;> omega
      · simp only [nl_subst, red_subst, nl_app, nl_lam, red,
          hz, Nat.one_mul]
        constructor <;> omega
    · left
      have hn : 1 < oc 0 b := by omega
      have ha : nl a = 0 := by
        rcases hc.2.2 with hl | ha
        · change nl (.lam b) = 0 at hl
          simp only [nl_lam, if_pos hn] at hl
          omega
        · exact ha
      simp only [nl_subst, nl_app, nl_lam, if_pos hn, ha,
        Nat.mul_zero, Nat.add_zero]
      omega
  | left a h ih =>
    rcases ih hc.1 with hn | ⟨hn, hr⟩
    · left; simp only [nl_app]; omega
    · right; simp only [nl_app, red]; constructor <;> omega

/-- No assumption on the number of binders on the one chain is needed. -/
theorem chain_terminates (t : Q) (hclosed : ClosedQ t) (hc : ChainQ t) :
    ∃ u, Steps t u ∧ Done u := by
  have hb := blue_sound t
  have hbr := blue_red t
  have hbn := blue_nl t
  have hbc := steps_chain hb hc
  rcases val_progress (blue t) (steps_closed hb hclosed) with hd | ⟨u, hu⟩
  · exact ⟨_, hb, hd⟩
  · have hp := red_chain_progress hu hbc
    have hc' := step_chain hu.step hbc
    have hclosed' := step_closed hu.step (steps_closed hb hclosed)
    obtain ⟨v, hv, hd⟩ := chain_terminates u hclosed' hc'
    exact ⟨v, SelfintZero.trans hb (Steps.head hu.step hv), hd⟩
termination_by (nl t, red t)
decreasing_by
  simp_wf
  rcases hp with hn | ⟨hn, hr⟩
  · exact Prod.Lex.left _ _ (by omega)
  · by_cases he : nl u < nl t
    · exact Prod.Lex.left _ _ he
    · have heq : nl u = nl t := by omega
      rw [heq]
      exact Prod.Lex.right _ (by omega)

private def omegaTerm : Term :=
  .app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))

private theorem omega_beta_eq {u : Term} (h : Beta omegaTerm u) : u = omegaTerm := by
  have hs := headStep_complete (spine_beta_head (Spine.redex (by decide) (by decide)) h)
  exact Option.some.inj hs.symm

private theorem omega_betas_eq {u : Term} (h : Betas omegaTerm u) : u = omegaTerm := by
  have aux : ∀ t v, Betas t v → t = omegaTerm → v = omegaTerm := by
    intro t v hs
    induction hs with
    | refl => exact id
    | head hb _ ih =>
      intro ht
      apply ih
      subst ht
      exact omega_beta_eq hb
  exact aux _ _ h rfl

private theorem omega_not_lam {B : Term} : ¬ BetaJoin (.lam B) omegaTerm := by
  rintro ⟨u, hu, ho⟩
  have he := omega_betas_eq ho
  subst u
  obtain ⟨v, hv, _⟩ := lam_betas_shape hu
  cases hv

theorem remainder_not_chain (R : Term) (hclosed : Closed R)
    (hR : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (.app R (streamOf (blcCode M) N)) N) : ¬ Chain R := by
  intro hc
  let t : Q := .app (embed R) (.z 0)
  have htclosed : ClosedQ t := by
    change Closed (.app (erase (embed R)) (.lam (.var 0)))
    rw [erase_embed]
    exact ⟨hclosed, by decide⟩
  have htchain : ChainQ t := by
    change Chain (.app (erase (embed R)) (.lam (.var 0)))
    rw [erase_embed]
    exact ⟨hc, trivial, Or.inr (by decide)⟩
  obtain ⟨u, hu, hd⟩ := chain_terminates t htclosed htchain
  obtain ⟨a, ha⟩ := steps_sim hu
  obtain ⟨b, hb⟩ := done_sim hd
  let m := 2 * max a b
  let T := streamOf (blcCode (.lam (.var 0))) omegaTerm
  have hT : Closed T := by decide
  obtain ⟨B, hB⟩ := hb m (by dsimp [m]; omega) T
  have hsim := betas_trans (ha m (by dsimp [m]; omega) T hT) hB
  have he : realize m T t =
      .app R (streamOf (blcCode (SelfintZero.tower (max a b))) omegaTerm) := by
    rw [SelfintZero.tower_stream]
    simp only [realize, t, interp, interp_embed, Nat.sub_zero, m, T]
  rw [he] at hsim
  obtain ⟨v, hv, ho⟩ := hR (SelfintZero.tower (max a b)) (SelfintZero.tower_closed _) omegaTerm (by decide)
  obtain ⟨w, hw, hw'⟩ := betas_confluent hsim hv
  exact omega_not_lam ⟨w, hw, betas_trans ho hw'⟩

theorem literal_remainder_body_not_chain (B : Term) (hclosed : Closed (.lam B))
    (hR : ∀ M, Closed M → ∀ N, Closed N →
      BetaJoin (.app (.lam B) (streamOf (blcCode M) N)) N) : ¬ Chain B :=
  remainder_not_chain (.lam B) hclosed hR


/-- Closed-source exact remainder extraction, with arbitrary suffixes.
The rigid-tail law entails this by substitution. -/
def IsRemainder (R : Term) : Prop := Closed R ∧
  ∀ M, Closed M → ∀ N, BetaJoin (.app R (streamOf (blcCode M) N)) N

def RemainderSizeBound (n : Nat) : Prop :=
  ∀ R, IsRemainder R → n ≤ (blcCode R).length

theorem projection_remainder {E : Term} (hE : IsSelfInterpreter E) :
    IsRemainder (.app E churchFalse) := by
  refine ⟨⟨hE.1, by decide⟩, ?_⟩
  intro M hM N
  exact SelfintControl.join_trans (SelfintControl.contract_join hE hM churchFalse N)
    (SelfintControl.join_of_betas (betas_of_spineReds (spine_false2 (.lam M) N)))

theorem projection_size (E : Term) :
    (blcCode (.app E churchFalse)).length = (blcCode E).length + 8 := by
  simp [blcCode, churchFalse, List.length_append, Nat.add_comm, Nat.add_left_comm]

/-- No normalization or separate-module assumption is used in the transfer. -/
theorem remainder_bound_transfers (n : Nat) (hn : RemainderSizeBound n) :
    SelfintSizeBound (n - 8) := by
  intro E hE
  have h := hn (.app E churchFalse) (projection_remainder hE)
  rw [projection_size] at h
  omega

theorem remainder_bound_eighteen : RemainderSizeBound 18 := by
  intro R hR
  have hn := SelfintZero.remainder_two_nonlinear R hR.1 (fun M hm N _ => hR.2 M hm N)
  have hs := nonlinear_wire_bound R
  omega

theorem remainder_bound_at_most_seventy (n : Nat) (hn : RemainderSizeBound n) :
    n ≤ 70 := by
  have h := hn SelfintRemainder.rem70
    ⟨SelfintRemainder.rem70_closed, fun M _ N =>
      SelfintControl.join_of_betas (SelfintRemainder.rem70_contract M N)⟩
  simpa only [SelfintRemainder.rem70_size] using h


end Blc.SelfintRemainderChain
