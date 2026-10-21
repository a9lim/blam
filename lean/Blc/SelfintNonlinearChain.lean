/-
Nonlinear binders of an exact interpreter cannot all lie on one ancestor
chain. The chain property is preserved by full beta reduction, whereas
interpreting the closed source Omega must expose two incomparable binders.
-/
import Blc.SelfintLowerBound

namespace Blc.SelfintNonlinearChain
open Term SelfintLowerBound

/-- No application separates two subterms that each contain a nonlinear
binder. Equivalently, every nonlinear binder lies on one ancestor chain. -/
def Chain : Term → Prop
  | .var _ => True
  | .lam b => Chain b
  | .app f a => Chain f ∧ Chain a ∧ (nonlinear f = 0 ∨ nonlinear a = 0)

theorem chain_of_affine (t : Term) (ht : nonlinear t = 0) : Chain t := by
  induction t with
  | var n => trivial
  | lam b ih =>
    apply ih
    simp only [nonlinear] at ht
    omega
  | app f a ihf iha =>
    have hf : nonlinear f = 0 := by simp only [nonlinear] at ht; omega
    have ha : nonlinear a = 0 := by simp only [nonlinear] at ht; omega
    exact ⟨ihf hf, iha ha, Or.inl hf⟩

theorem chain_shift (t : Term) (d c : Nat) : Chain (shift d c t) ↔ Chain t := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> rfl
  | lam b ih => exact ih (c + 1)
  | app f a ihf iha =>
    simp only [shift, Chain, ihf, iha, nonlinear_shift_any]

/-- Inserting binder-affine code introduces no new nonlinear branch,
regardless of how often the substituted variable occurs. -/
theorem chain_subst_affine (t s : Term) (j : Nat)
    (ht : Chain t) (hs : nonlinear s = 0) : Chain (substDec j s t) := by
  induction t generalizing s j with
  | var n =>
    simp only [substDec]
    split
    · exact chain_of_affine s hs
    · split <;> trivial
  | lam b ih =>
    apply ih (shift 1 0 s) (j + 1) ht
    simpa only [nonlinear_shift] using hs
  | app f a ihf iha =>
    refine ⟨ihf s j ht.1 hs, iha s j ht.2.1 hs, ?_⟩
    simpa only [nonlinear_subst, hs, Nat.mul_zero, Nat.add_zero] using ht.2.2

/-- An affine body inserts a chain-shaped argument at most once. -/
theorem chain_subst_once (t s : Term) (j : Nat)
    (ht : nonlinear t = 0) (hs : Chain s) (ho : occ j t ≤ 1) :
    Chain (substDec j s t) := by
  induction t generalizing s j with
  | var n =>
    simp only [substDec]
    split
    · exact hs
    · split <;> trivial
  | lam b ih =>
    have hb : nonlinear b = 0 := by simp only [nonlinear] at ht; omega
    exact ih (shift 1 0 s) (j + 1) hb ((chain_shift s 1 0).2 hs) ho
  | app f a ihf iha =>
    have hf : nonlinear f = 0 := by simp only [nonlinear] at ht; omega
    have ha : nonlinear a = 0 := by simp only [nonlinear] at ht; omega
    have hof : occ j f ≤ 1 := by simp only [occ] at ho; omega
    have hoa : occ j a ≤ 1 := by simp only [occ] at ho; omega
    refine ⟨ihf s j hf hs hof, iha s j ha hs hoa, ?_⟩
    have hz : occ j f = 0 ∨ occ j a = 0 := by simp only [occ] at ho; omega
    rcases hz with hz | hz
    · left; simp only [nonlinear_subst, hf, hz, Nat.zero_mul, Nat.add_zero]
    · right; simp only [nonlinear_subst, ha, hz, Nat.zero_mul, Nat.add_zero]

/-- Affine reduction cannot duplicate a free occurrence or create a nonlinear binder. -/
theorem affine_beta_progress {t u : Term} (h : Beta t u)
    (ht : nonlinear t = 0) :
    nonlinear u = 0 ∧ ∀ j, occ j u ≤ occ j t := by
  induction h with
  | beta b a =>
    have hb : nonlinear b = 0 := by simp only [nonlinear] at ht; omega
    have ha : nonlinear a = 0 := by simp only [nonlinear] at ht; omega
    have hk : occ 0 b ≤ 1 := by
      by_cases hn : occ 0 b ≤ 1
      · exact hn
      · have hyes : 1 < occ 0 b := by omega
        simp [nonlinear, hyes] at ht
    refine ⟨by simp [contract, nonlinear_subst, hb, ha], ?_⟩
    intro j
    rw [contract, occ_substDec_ge b a j 0 (by omega)]
    simp only [occ]
    have hm : occ 0 b * occ j a ≤ occ j a := by
      simpa using Nat.mul_le_mul_right (occ j a) hk
    omega
  | appL a h ih =>
    rename_i f f'
    have hf : nonlinear f = 0 := by simp only [nonlinear] at ht; omega
    have ha : nonlinear a = 0 := by simp only [nonlinear] at ht; omega
    obtain ⟨hf', ho⟩ := ih hf
    refine ⟨by simp [nonlinear, hf', ha], ?_⟩
    intro j
    simp only [occ]
    exact Nat.add_le_add_right (ho j) _
  | appR f h ih =>
    rename_i a a'
    have hf : nonlinear f = 0 := by simp only [nonlinear] at ht; omega
    have ha : nonlinear a = 0 := by simp only [nonlinear] at ht; omega
    obtain ⟨ha', ho⟩ := ih ha
    refine ⟨by simp [nonlinear, hf, ha'], ?_⟩
    intro j
    simp only [occ]
    exact Nat.add_le_add_left (ho j) _
  | lam h ih =>
    rename_i b b'
    have hb : nonlinear b = 0 := by simp only [nonlinear] at ht; omega
    have hk : occ 0 b ≤ 1 := by
      by_cases hn : occ 0 b ≤ 1
      · exact hn
      · have hyes : 1 < occ 0 b := by omega
        simp [nonlinear, hyes] at ht
    obtain ⟨hb', ho⟩ := ih hb
    have hk' : ¬ 1 < occ 0 b' := by have hh := ho 0; omega
    refine ⟨by simp [nonlinear, hb', hk'], ?_⟩
    intro j
    simpa only [occ] using ho (j + 1)


/-- Full reduction preserves the chain property. In a root redex, either
its argument is affine or its binder and body are affine. -/
theorem chain_beta {t u : Term} (h : Beta t u) (ht : Chain t) : Chain u := by
  induction h with
  | beta b a =>
    change Chain (substDec 0 a b)
    rcases ht.2.2 with hf | ha
    · have hb : nonlinear b = 0 := by simp only [nonlinear] at hf; omega
      have ho : occ 0 b ≤ 1 := by
        by_cases ho : occ 0 b ≤ 1
        · exact ho
        · have hn : 1 < occ 0 b := by omega
          simp [nonlinear, hn] at hf
      exact chain_subst_once b a 0 hb ht.2.1 ho
    · exact chain_subst_affine b a 0 ht.1 ha
  | appL a h ih =>
    refine ⟨ih ht.1, ht.2.1, ?_⟩
    rcases ht.2.2 with hf | ha
    · exact Or.inl (affine_beta_progress h hf).1
    · exact Or.inr ha
  | appR f h ih =>
    refine ⟨ht.1, ih ht.2.1, ?_⟩
    rcases ht.2.2 with hf | ha
    · exact Or.inl hf
    · exact Or.inr (affine_beta_progress h ha).1
  | lam _ ih => exact ih ht

theorem chain_betas {t u : Term} (h : Betas t u) (ht : Chain t) : Chain u := by
  induction h with
  | refl => exact ht
  | head hb _ ih => exact ih (chain_beta hb ht)

private def delta : Term := .lam (.app (.var 0) (.var 0))
private def omegaTerm : Term := .app delta delta
private theorem omega_spine : Spine omegaTerm := Spine.redex (by decide) (by decide)
private theorem omega_beta_eq {u : Term} (h : Beta omegaTerm u) : u = omegaTerm := by
  have hs := headStep_complete (spine_beta_head omega_spine h)
  exact Option.some.inj hs.symm

private def omegaOutput : Term := .app (.app (.var 0) (.lam omegaTerm)) (.var 1)

private theorem omega_output_beta_eq {u : Term} (h : Beta omegaOutput u) :
    u = omegaOutput := by
  cases h with
  | appL _ h =>
    cases h with
    | appL _ h => cases h
    | appR _ h =>
      cases h with
      | lam h =>
        have he := omega_beta_eq h
        subst he
        rfl
  | appR _ h => cases h

private theorem omega_output_betas_eq {u : Term} (h : Betas omegaOutput u) :
    u = omegaOutput := by
  have aux : ∀ t v, Betas t v → t = omegaOutput → v = omegaOutput := by
    intro t v hs
    induction hs with
    | refl => exact id
    | head hb _ ih =>
      intro ht
      apply ih
      subst ht
      exact omega_output_beta_eq hb
  exact aux _ _ h rfl

private theorem omega_output_not_chain : ¬ Chain omegaOutput := by
  simp [omegaOutput, omegaTerm, delta, Chain, nonlinear, occ]

/-- An exact interpreter has two incomparable nonlinear binders somewhere
in its full source tree. This is a global obstruction: the statement assumes
no parser decomposition, normal form, or literal interface lambdas. -/
theorem selfInterpreter_not_chain {E : Term} (hE : IsSelfInterpreter E) :
    ¬ Chain E := by
  intro hc
  let input := streamOf (blcCode omegaTerm) (.var 1)
  have hi : nonlinear input = 0 := by
    simp only [input, nonlinear_stream, nonlinear]
  have hs : Chain (.app (.app E (.var 0)) input) :=
    ⟨⟨hc, trivial, Or.inr rfl⟩, chain_of_affine input hi, Or.inr hi⟩
  obtain ⟨w, hw1, hw2⟩ := hE.2 omegaTerm (by decide)
  have hw : Chain w := chain_betas hw1 hs
  have he := omega_output_betas_eq hw2
  rw [he] at hw
  exact omega_output_not_chain hw

/-- The public continuation and stream lambdas cannot supply this branching:
they are ancestors of every binder in the literal body. -/
theorem selfInterpreter_body_not_chain {B : Term}
    (hE : IsSelfInterpreter (.lam (.lam B))) : ¬ Chain B :=
  selfInterpreter_not_chain (E := .lam (.lam B)) hE

end Blc.SelfintNonlinearChain
