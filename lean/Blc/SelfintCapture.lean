/-
No live abstraction may capture an enclosing local binder. Global free
variables are explicitly outside the forbidden range. The property is
preserved by full beta reduction, including reduction under lambdas.
Consequently every classical BLC self-interpreter contains a live lambda
that captures an enclosing local variable. The Scott quotation cannot
supply that dependency. This is an unconditional structural necessity,
not an unrestricted 165-bit size bound.
-/
import Blc.SelfintProof
import Blc.Confluence
import Blc.Par

namespace Blc
namespace SelfintCapture
open Term

/-- `Separated d t` regards free indices below d as enclosing local
binders; indices at or above d are unrestricted global rigid variables. -/
def Separated : Nat → Term → Prop
  | _, .var _ => True
  | d, .app f a => Separated d f ∧ Separated d a
  | d, .lam b => Separated (d + 1) b ∧
      (0 < occ 0 b → ∀ i, i < d → occ (i + 1) b = 0)

def decSeparated : (d : Nat) → (t : Term) → Decidable (Separated d t)
  | _, .var _ => .isTrue trivial
  | d, .app f a =>
      have _ := decSeparated d f
      have _ := decSeparated d a
      inferInstanceAs (Decidable (_ ∧ _))
  | d, .lam b =>
      have _ := decSeparated (d + 1) b
      inferInstanceAs (Decidable (_ ∧ _))

instance (d : Nat) (t : Term) : Decidable (Separated d t) := decSeparated d t

/-- Inserting an unused local slot preserves separation. -/
theorem separated_shift (t : Term) (d c : Nat) (hc : c ≤ d)
    (ht : Separated d t) : Separated (d + 1) (shift 1 c t) := by
  induction t generalizing d c with
  | var n => simp only [shift]; split <;> trivial
  | app f a ihf iha =>
      exact ⟨ihf d c hc ht.1, iha d c hc ht.2⟩
  | lam b ih =>
      refine ⟨ih (d + 1) (c + 1) (by omega) ht.1, ?_⟩
      intro live i hi
      rw [occ_shift_lt b 0 (c + 1) (by omega)] at live
      by_cases hlt : i + 1 < c + 1
      · rw [occ_shift_lt b (i + 1) (c + 1) hlt]
        exact ht.2 live i (by omega)
      · by_cases heq : i + 1 = c + 1
        · rw [heq, occ_shift_eq]
        · have hgt : c + 1 ≤ i := by omega
          have hip : 0 < i := by omega
          have he : i + 1 = (i - 1) + 1 + 1 := by omega
          rw [he, occ_shift_ge b ((i - 1) + 1) (c + 1) (by omega)]
          exact ht.2 live (i - 1) (by omega)

/-- Deleting a local slot by capture-avoiding substitution preserves
separation. A live inner binder cannot contain the substituted local,
so no inserted argument can newly connect two live nested binders. -/
theorem separated_subst (t a : Term) (d j : Nat) (hj : j ≤ d)
    (ht : Separated (d + 1) t) (ha : Separated d a) :
    Separated d (substDec j a t) := by
  induction t generalizing a d j with
  | var n =>
      simp only [substDec]
      split
      · exact ha
      · split <;> trivial
  | app f x ihf ihx =>
      exact ⟨ihf a d j hj ht.1 ha, ihx a d j hj ht.2 ha⟩
  | lam b ih =>
      refine ⟨ih (shift 1 0 a) (d + 1) (j + 1) (by omega) ht.1
        (separated_shift a d 0 (by omega) ha), ?_⟩
      intro live i hi
      rw [occ_substDec_lt b (shift 1 0 a) 0 (j + 1) (by omega),
        occ_shift_eq, Nat.mul_zero, Nat.add_zero] at live
      have hcut : occ (j + 1) b = 0 := ht.2 live j (by omega)
      by_cases hlt : i + 1 < j + 1
      · rw [occ_substDec_lt b (shift 1 0 a) (i + 1) (j + 1) hlt,
          hcut, Nat.zero_mul, Nat.add_zero]
        exact ht.2 live i (by omega)
      · rw [occ_substDec_ge b (shift 1 0 a) (i + 1) (j + 1) (by omega),
          hcut, Nat.zero_mul, Nat.add_zero]
        exact ht.2 live (i + 1) (by omega)

/-- Reduction cannot introduce an absent free variable. -/
theorem occ_beta_zero {t u : Term} (h : Beta t u) (j : Nat)
    (ht : occ j t = 0) : occ j u = 0 := by
  induction h generalizing j with
  | beta b a =>
      simp only [occ, Nat.add_eq_zero_iff] at ht
      rw [contract, occ_substDec_ge b a j 0 (by omega), ht.1, ht.2]
      simp
  | appL a h ih =>
      simp only [occ, Nat.add_eq_zero_iff] at ht ⊢
      exact ⟨ih j ht.1, ht.2⟩
  | appR f h ih =>
      simp only [occ, Nat.add_eq_zero_iff] at ht ⊢
      exact ⟨ht.1, ih j ht.2⟩
  | lam h ih => exact ih (j + 1) ht

theorem separated_beta {t u : Term} (h : Beta t u) (d : Nat)
    (ht : Separated d t) : Separated d u := by
  induction h generalizing d with
  | beta b a => exact separated_subst b a d 0 (by omega) ht.1.1 ht.2
  | appL a h ih => exact ⟨ih d ht.1, ht.2⟩
  | appR f h ih => exact ⟨ht.1, ih d ht.2⟩
  | @lam b b' h ih =>
      refine ⟨ih (d + 1) ht.1, ?_⟩
      intro live i hi
      have oldlive : 0 < occ 0 b := by
        by_cases hz : occ 0 b = 0
        · have := occ_beta_zero h 0 hz
          omega
        · omega
      exact occ_beta_zero h (i + 1) (ht.2 oldlive i hi)

theorem separated_betas {t u : Term} (h : Betas t u) (d : Nat)
    (ht : Separated d t) : Separated d u := by
  induction h with
  | refl => exact ht
  | head hb _ ih => exact ih (separated_beta hb d ht)

/-- Scott quotation contributes no live capture among its own binders. -/
theorem separated_pair (a r : Term) (ha : Separated 0 a) (hr : Separated 0 r) :
    Separated 0 (pairT a r) := by
  refine ⟨⟨⟨trivial, separated_shift a 0 0 (by omega) ha⟩,
    separated_shift r 0 0 (by omega) hr⟩, ?_⟩
  intro _ i hi
  omega

theorem separated_bit (b : Bool) : Separated 0 (churchBit b) := by
  cases b <;> decide

theorem separated_stream (bs : List Bool) (r : Term) (hr : Separated 0 r) :
    Separated 0 (streamOf bs r) := by
  induction bs with
  | nil => exact hr
  | cons b bs ih => exact separated_pair _ _ (separated_bit b) ih

/-- The source lambda a b.a b uses both a local binder and a capture. -/
def mixed : Term := .lam (.lam (.app (.var 1) (.var 0)))

def target : Term := .app (.app (.var 0) (.lam mixed)) (.var 1)

theorem target_normal : NormalForm target :=
  fun _ hb => nft_no_beta (by decide : NFt target) hb

theorem target_not_separated : ¬ Separated 0 target := by decide

/-- Unconditional structural necessity: some live abstraction of every
self-interpreter captures an enclosing local variable. Input K/F/cells
cannot supply this mixed dependency from nothing. -/
theorem selfinterpreter_not_separated (E : Term) (hE : IsSelfInterpreter E) :
    ¬ Separated 0 E := by
  intro hsep
  obtain ⟨u, hsource, htarget⟩ := hE.2 mixed (by decide)
  have heq : u = target := normalForm_betas_eq target_normal htarget
  subst u
  have hs : Separated 0 (.app (.app E (.var 0))
      (streamOf (blcCode mixed) (.var 1))) :=
    ⟨⟨hsep, trivial⟩, separated_stream _ _ trivial⟩
  exact target_not_separated (separated_betas hsource 0 hs)


/-- A concrete live-capture witness, found at some abstraction subterm. -/
def HasLiveCapture : Nat → Term → Prop
  | _, .var _ => False
  | d, .app f a => HasLiveCapture d f ∨ HasLiveCapture d a
  | d, .lam b => HasLiveCapture (d + 1) b ∨
      (0 < occ 0 b ∧ ∃ i, i < d ∧ 0 < occ (i + 1) b)

theorem local_capture_of_not_all_zero (d : Nat) (b : Term)
    (h : ¬ ∀ i, i < d → occ (i + 1) b = 0) :
    ∃ i, i < d ∧ 0 < occ (i + 1) b := by
  induction d with
  | zero => exact (h (fun i hi => (Nat.not_lt_zero i hi).elim)).elim
  | succ d ih =>
      by_cases hz : occ (d + 1) b = 0
      · by_cases hall : ∀ i, i < d → occ (i + 1) b = 0
        · apply False.elim
          apply h
          intro i hi
          by_cases hlt : i < d
          · exact hall i hlt
          · have heq : i = d := by omega
            simpa [heq] using hz
        · obtain ⟨i, hi, hc⟩ := ih hall
          exact ⟨i, by omega, hc⟩
      · exact ⟨d, by omega, by omega⟩

theorem hasLiveCapture_of_not_separated (t : Term) (d : Nat)
    (h : ¬ Separated d t) : HasLiveCapture d t := by
  induction t generalizing d with
  | var n => exact (h trivial).elim
  | app f a ihf iha =>
      by_cases hf : Separated d f
      · exact Or.inr (iha d (fun ha => h ⟨hf, ha⟩))
      · exact Or.inl (ihf d hf)
  | lam b ih =>
      by_cases hb : Separated (d + 1) b
      · by_cases hlive : 0 < occ 0 b
        · right
          exact ⟨hlive, local_capture_of_not_all_zero d b
            (fun hzero => h ⟨hb, fun _ => hzero⟩)⟩
        · exact (h ⟨hb, fun live => (hlive live).elim⟩).elim
      · exact Or.inl (ih (d + 1) hb)

theorem selfinterpreter_has_live_capture (E : Term) (hE : IsSelfInterpreter E) :
    HasLiveCapture 0 E :=
  hasLiveCapture_of_not_separated E 0 (selfinterpreter_not_separated E hE)

/-- All variable leaves use de Bruijn index zero. -/
def ZeroIndices : Term → Prop
  | .var n => n = 0
  | .lam b => ZeroIndices b
  | .app f a => ZeroIndices f ∧ ZeroIndices a

theorem zeroIndices_occ (t : Term) (h : ZeroIndices t) (j : Nat) (hj : 0 < j) :
    occ j t = 0 := by
  induction t generalizing j with
  | var n =>
      simp only [ZeroIndices] at h
      subst n
      simp [occ, Nat.ne_of_lt hj]
  | lam b ih => exact ih h (j + 1) (by omega)
  | app f a ihf iha => simp only [occ, ihf h.1 j hj, iha h.2 j hj, Nat.add_zero]

theorem zeroIndices_separated (t : Term) (h : ZeroIndices t) (d : Nat) :
    Separated d t := by
  induction t generalizing d with
  | var n => trivial
  | app f a ihf iha => exact ⟨ihf h.1 d, iha h.2 d⟩
  | lam b ih =>
      exact ⟨ih h (d + 1), fun _ i _ => zeroIndices_occ b h (i + 1) (by omega)⟩

theorem selfinterpreter_not_zeroIndices (E : Term) (hE : IsSelfInterpreter E) :
    ¬ ZeroIndices E :=
  fun h => selfinterpreter_not_separated E hE (zeroIndices_separated E h 0)

/-- The X term in the BLC size identity. -/
def indexSum : Term → Nat
  | .var n => n
  | .lam b => indexSum b
  | .app f a => indexSum f + indexSum a

theorem zeroIndices_of_indexSum_zero (t : Term) (h : indexSum t = 0) : ZeroIndices t := by
  induction t with
  | var n => exact h
  | lam b ih => exact ih h
  | app f a ihf iha =>
      simp only [indexSum, Nat.add_eq_zero_iff] at h
      exact ⟨ihf h.1, iha h.2⟩

theorem selfinterpreter_indexSum_pos (E : Term) (hE : IsSelfInterpreter E) :
    0 < indexSum E := by
  by_cases hz : indexSum E = 0
  · exact (selfinterpreter_not_zeroIndices E hE (zeroIndices_of_indexSum_zero E hz)).elim
  · omega

end SelfintCapture
end Blc
