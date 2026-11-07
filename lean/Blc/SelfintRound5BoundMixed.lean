/-
Mixed source branching is necessary for exact BLC self-interpretation.

Forbid an application from separating a nonlinear binder from a live
local-capturing binder, in either orientation. This restriction is preserved
by arbitrary beta reduction. A closed normal source defeats it, hence every
exact interpreter has such a mixed branch in its literal source.

This is an unconditional source-topology obstruction. It does not prove a
new numerical interpreter floor and does not price separate parser modules.
-/
import Blc.SelfintNonlinearChain
import Blc.SelfintCapture

namespace Blc.SelfintRound5BoundMixed
open Term SelfintLowerBound SelfintCapture SelfintNonlinearChain

/-- No application separates nonlinear code from a live local capture. -/
def MixedChain : Nat → Term → Prop
  | _, .var _ => True
  | d, .lam b => MixedChain (d + 1) b
  | d, .app f a => MixedChain d f ∧ MixedChain d a ∧
      (nonlinear f = 0 ∨ Separated d a) ∧
      (Separated d f ∨ nonlinear a = 0)

def decMixedChain : (d : Nat) → (t : Term) → Decidable (MixedChain d t)
  | _, .var _ => .isTrue trivial
  | d, .lam b => decMixedChain (d + 1) b
  | d, .app f a =>
      have _ := decMixedChain d f
      have _ := decMixedChain d a
      inferInstanceAs (Decidable (_ ∧ _ ∧ _ ∧ _))

instance (d : Nat) (t : Term) : Decidable (MixedChain d t) := decMixedChain d t

theorem mixed_of_affine (t : Term) (d : Nat) (ht : nonlinear t = 0) :
    MixedChain d t := by
  induction t generalizing d with
  | var _ => trivial
  | lam b ih =>
      apply ih (d + 1)
      simp only [nonlinear] at ht
      omega
  | app f a ihf iha =>
      have hf : nonlinear f = 0 := by simp only [nonlinear] at ht; omega
      have ha : nonlinear a = 0 := by simp only [nonlinear] at ht; omega
      exact ⟨ihf d hf, iha d ha, Or.inl hf, Or.inr ha⟩

theorem mixed_of_separated (t : Term) (d : Nat) (ht : Separated d t) :
    MixedChain d t := by
  induction t generalizing d with
  | var _ => trivial
  | lam b ih => exact ih (d + 1) ht.1
  | app f a ihf iha => exact ⟨ihf d ht.1, iha d ht.2, Or.inr ht.2, Or.inl ht.1⟩

theorem mixed_shift (t : Term) (d c : Nat) (hc : c ≤ d)
    (ht : MixedChain d t) : MixedChain (d + 1) (shift 1 c t) := by
  induction t generalizing d c with
  | var _ => simp only [shift]; split <;> trivial
  | lam b ih => exact ih (d + 1) (c + 1) (by omega) ht
  | app f a ihf iha =>
      refine ⟨ihf d c hc ht.1, iha d c hc ht.2.1, ?_, ?_⟩
      · rcases ht.2.2.1 with hf | ha
        · left; simpa only [nonlinear_shift] using hf
        · exact Or.inr (separated_shift a d c hc ha)
      · rcases ht.2.2.2 with hf | ha
        · exact Or.inl (separated_shift f d c hc hf)
        · right; simpa only [nonlinear_shift] using ha

private theorem subst_absent (t : Term) (j : Nat) (s u : Term)
    (h : occ j t = 0) : substDec j s t = substDec j u t := by
  induction t generalizing j s u with
  | var n =>
      have hn : n ≠ j := by intro he; simp [occ, he] at h
      simp only [substDec, if_neg hn]
  | lam b ih => exact congrArg Term.lam (ih (j + 1) _ _ h)
  | app f a ihf iha =>
      simp only [occ, Nat.add_eq_zero_iff] at h
      simp only [substDec, ihf j s u h.1, iha j s u h.2]

private theorem separated_subst_absent (t a : Term) (d j : Nat)
    (hj : j ≤ d) (ht : Separated (d + 1) t) (ho : occ j t = 0) :
    Separated d (substDec j a t) := by
  rw [subst_absent t j a (.var 0) ho]
  exact separated_subst t (.var 0) d j hj ht trivial

/-- Code with neither resource can be copied arbitrarily. -/
theorem mixed_subst_safe (t a : Term) (d j : Nat) (hj : j ≤ d)
    (ht : MixedChain (d + 1) t) (ha : nonlinear a = 0)
    (hc : Separated d a) : MixedChain d (substDec j a t) := by
  induction t generalizing a d j with
  | var n =>
      simp only [substDec]
      split
      · exact mixed_of_affine a d ha
      · split <;> trivial
  | lam b ih =>
      exact ih (shift 1 0 a) (d + 1) (j + 1) (by omega) ht
        (by simpa only [nonlinear_shift] using ha)
        (separated_shift a d 0 (by omega) hc)
  | app f x ihf ihx =>
      refine ⟨ihf a d j hj ht.1 ha hc, ihx a d j hj ht.2.1 ha hc, ?_, ?_⟩
      · rcases ht.2.2.1 with hf | hx
        · left; simp only [nonlinear_subst, hf, ha, Nat.mul_zero, Nat.add_zero]
        · exact Or.inr (separated_subst x a d j hj hx hc)
      · rcases ht.2.2.2 with hf | hx
        · exact Or.inl (separated_subst f a d j hj hf hc)
        · right; simp only [nonlinear_subst, hx, ha, Nat.mul_zero, Nat.add_zero]

/-- A context with neither resource may receive one copy of arbitrary
mixed-chain code. At each application one child does not contain the hole. -/
theorem mixed_subst_once (t a : Term) (d j : Nat) (hj : j ≤ d)
    (ht : nonlinear t = 0) (hc : Separated (d + 1) t)
    (ha : MixedChain d a) (ho : occ j t ≤ 1) :
    MixedChain d (substDec j a t) := by
  induction t generalizing a d j with
  | var n =>
      simp only [substDec]
      split
      · exact ha
      · split <;> trivial
  | lam b ih =>
      have hb : nonlinear b = 0 := by simp only [nonlinear] at ht; omega
      exact ih (shift 1 0 a) (d + 1) (j + 1) (by omega) hb hc.1
        (mixed_shift a d 0 (by omega) ha) ho
  | app f x ihf ihx =>
      have hf : nonlinear f = 0 := by simp only [nonlinear] at ht; omega
      have hx : nonlinear x = 0 := by simp only [nonlinear] at ht; omega
      have hof : occ j f ≤ 1 := by simp only [occ] at ho; omega
      have hox : occ j x ≤ 1 := by simp only [occ] at ho; omega
      refine ⟨ihf a d j hj hf hc.1 ha hof, ihx a d j hj hx hc.2 ha hox, ?_, ?_⟩
      · have hz : occ j f = 0 ∨ occ j x = 0 := by simp only [occ] at ho; omega
        rcases hz with hz | hz
        · left; simp only [nonlinear_subst, hf, hz, Nat.zero_mul, Nat.add_zero]
        · exact Or.inr (separated_subst_absent x a d j hj hc.2 hz)
      · have hz : occ j f = 0 ∨ occ j x = 0 := by simp only [occ] at ho; omega
        rcases hz with hz | hz
        · exact Or.inl (separated_subst_absent f a d j hj hc.1 hz)
        · right; simp only [nonlinear_subst, hx, hz, Nat.zero_mul, Nat.add_zero]

/-- The four root-redex cases are: affine on both sides; separated on both
sides; safe argument; or safe affine context with a unique insertion. -/
theorem mixed_beta {t u : Term} (h : Beta t u) (d : Nat)
    (ht : MixedChain d t) : MixedChain d u := by
  induction h generalizing d with
  | beta b a =>
      change MixedChain d (substDec 0 a b)
      rcases ht.2.2.1 with hf | ha
      · rcases ht.2.2.2 with hc | hn
        · have hb : nonlinear b = 0 := by simp only [nonlinear] at hf; omega
          have ho : occ 0 b ≤ 1 := by
            by_cases ho : occ 0 b ≤ 1
            · exact ho
            · have hn : 1 < occ 0 b := by omega
              simp [nonlinear, hn] at hf
          exact mixed_subst_once b a d 0 (by omega) hb hc.1 ht.2.1 ho
        · have hb : nonlinear b = 0 := by simp only [nonlinear] at hf; omega
          apply mixed_of_affine
          simp only [nonlinear_subst, hb, hn, Nat.mul_zero, Nat.add_zero]
      · rcases ht.2.2.2 with hc | hn
        · exact mixed_of_separated _ d (separated_subst b a d 0 (by omega) hc.1 ha)
        · exact mixed_subst_safe b a d 0 (by omega) ht.1 hn ha
  | appL a h ih =>
      refine ⟨ih d ht.1, ht.2.1, ?_, ?_⟩
      · rcases ht.2.2.1 with hf | ha
        · exact Or.inl (affine_beta_progress h hf).1
        · exact Or.inr ha
      · rcases ht.2.2.2 with hf | ha
        · exact Or.inl (separated_beta h d hf)
        · exact Or.inr ha
  | appR f h ih =>
      refine ⟨ht.1, ih d ht.2.1, ?_, ?_⟩
      · rcases ht.2.2.1 with hf | ha
        · exact Or.inl hf
        · exact Or.inr (separated_beta h d ha)
      · rcases ht.2.2.2 with hf | ha
        · exact Or.inl hf
        · exact Or.inr (affine_beta_progress h ha).1
  | lam _ ih => exact ih (d + 1) ht

theorem mixed_betas {t u : Term} (h : Betas t u) (d : Nat)
    (ht : MixedChain d t) : MixedChain d u := by
  induction h with
  | refl => exact ht
  | head hb _ ih => exact ih (mixed_beta hb d ht)

private def delta : Term := .lam (.app (.var 0) (.var 0))
private def witness : Term := .lam (.app (.app (.var 0) delta) mixed)
private def output : Term := .app (.app (.var 0) (.lam witness)) (.var 1)

private theorem output_normal : NormalForm output :=
  fun _ hb => nft_no_beta (by decide : NFt output) hb

private theorem output_not_mixed : ¬ MixedChain 0 output := by decide

/-- An exact interpreter's source has a nonlinear binder incomparable with
a live binder capturing a local ancestor. No interpreter architecture,
normality or literal public interface is assumed. -/
theorem selfInterpreter_not_mixedChain {E : Term} (hE : IsSelfInterpreter E) :
    ¬ MixedChain 0 E := by
  intro hm
  let input := streamOf (blcCode witness) (.var 1)
  have hi : nonlinear input = 0 := by simp only [input, nonlinear_stream, nonlinear]
  have hc : Separated 0 input := separated_stream _ _ trivial
  have hs : MixedChain 0 (.app (.app E (.var 0)) input) :=
    ⟨⟨hm, trivial, Or.inr trivial, Or.inr rfl⟩,
      mixed_of_affine input 0 hi, Or.inr hc, Or.inr hi⟩
  obtain ⟨u, hu, hout⟩ := hE.2 witness (by decide)
  have he : u = output := normalForm_betas_eq output_normal hout
  exact output_not_mixed (he ▸ mixed_betas hu 0 hs)

/-- Both resource-bearing binders occur in the body when a source explicitly
exposes its continuation and stream lambdas. -/
theorem selfInterpreter_body_not_mixedChain {B : Term}
    (hE : IsSelfInterpreter (.lam (.lam B))) : ¬ MixedChain 2 B :=
  selfInterpreter_not_mixedChain hE

/-- An explicit branching witness, with both resource-bearing binders below
opposite children of one source application. -/
def HasMixedBranch : Nat → Term → Prop
  | _, .var _ => False
  | d, .lam b => HasMixedBranch (d + 1) b
  | d, .app f a => HasMixedBranch d f ∨ HasMixedBranch d a ∨
      (0 < nonlinear f ∧ HasLiveCapture d a) ∨
      (HasLiveCapture d f ∧ 0 < nonlinear a)

theorem hasMixedBranch_of_not_mixedChain (t : Term) (d : Nat)
    (h : ¬ MixedChain d t) : HasMixedBranch d t := by
  induction t generalizing d with
  | var _ => exact (h trivial).elim
  | lam b ih => exact ih (d + 1) h
  | app f a ihf iha =>
      by_cases hf : MixedChain d f
      · by_cases ha : MixedChain d a
        · by_cases hfc : nonlinear f = 0 ∨ Separated d a
          · by_cases hca : Separated d f ∨ nonlinear a = 0
            · exact (h ⟨hf, ha, hfc, hca⟩).elim
            · right; right; right
              exact ⟨hasLiveCapture_of_not_separated f d
                (fun hs => hca (Or.inl hs)), by
                  have hh : nonlinear a ≠ 0 := fun hz => hca (Or.inr hz)
                  omega⟩
          · right; right; left
            exact ⟨by
              have hh : nonlinear f ≠ 0 := fun hz => hfc (Or.inl hz)
              omega,
              hasLiveCapture_of_not_separated a d (fun hs => hfc (Or.inr hs))⟩
        · exact Or.inr (Or.inl (iha d ha))
      · exact Or.inl (ihf d hf)

theorem selfInterpreter_has_mixedBranch {E : Term} (hE : IsSelfInterpreter E) :
    HasMixedBranch 0 E :=
  hasMixedBranch_of_not_mixedChain E 0 (selfInterpreter_not_mixedChain hE)

/-- The new obstruction is not merely the conjunction of the old separate
capture and nonlinear-branching obstructions: both nonlinear binders here
lie beneath the capturing prefix. This closed normal 39-bit term also has
a three-variable subterm, but has no mixed branch and is not an interpreter. -/
def prefixCaptureExample : Term := .lam (.lam (.lam
  (.app (.app (.app (.app (.var 2) (.var 1)) (.var 0)) delta) delta)))

theorem prefixCaptureExample_profile :
    Closed prefixCaptureExample ∧ NFt prefixCaptureExample ∧
    ¬ Chain prefixCaptureExample ∧ ¬ Separated 0 prefixCaptureExample ∧
    MixedChain 0 prefixCaptureExample ∧ (blcCode prefixCaptureExample).length = 39 := by
  refine ⟨by decide, by decide, ?_, by decide, by decide, by decide⟩
  simp [prefixCaptureExample, Chain, nonlinear, delta, occ]

#print axioms mixed_beta
#print axioms selfInterpreter_not_mixedChain
#print axioms selfInterpreter_has_mixedBranch
end Blc.SelfintRound5BoundMixed
