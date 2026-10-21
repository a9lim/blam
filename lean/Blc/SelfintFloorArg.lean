/-
Wide arguments.

`ArgOne t` says every application argument in `t` mentions at most one
distinct free variable. The property is preserved by full beta reduction:
a contracted argument is itself an argument, so substituting it for a
variable never widens another argument's support. Scott quotation cells,
K and F satisfy it, and so does the public invocation `E C (⌜S⌝ ++ N)`
whenever `E` does. The required normal output for the closed source
`S = λf g x. f x (g x)` violates it at the argument `g x`. Hence every
self-interpreter contains an application whose argument mentions two
distinct variables.
-/
import Blc.SelfintProof
import Blc.Confluence
import Blc.SelfintCapture

namespace Blc.SelfintFloor
open Term SelfintCapture

/-- At most one distinct free variable. -/
def NoTwo (t : Term) : Prop := ∀ i j, 0 < occ i t → 0 < occ j t → i = j

/-- Every application argument has at most one distinct free variable. -/
def ArgOne : Term → Prop
  | .var _ => True
  | .lam b => ArgOne b
  | .app f a => ArgOne f ∧ ArgOne a ∧ NoTwo a

theorem occ_of_freeUnder (t : Term) (k i : Nat) (h : FreeUnder k t) (hi : k ≤ i) :
    occ i t = 0 := by
  induction t generalizing k i with
  | var n =>
    have hn : n < k := h
    simp only [occ]
    split <;> omega
  | lam b ih => exact ih (k + 1) (i + 1) h (by omega)
  | app f a ihf iha => simp only [occ, ihf k i h.1 hi, iha k i h.2 hi]

theorem noTwo_of_closed (t : Term) (h : Closed t) : NoTwo t := by
  intro i j hi _
  rw [occ_of_freeUnder t 0 i h (Nat.zero_le i)] at hi
  exact absurd hi (Nat.lt_irrefl 0)

theorem noTwo_var (n : Nat) : NoTwo (.var n) := by
  intro i j hi hj
  simp only [occ] at hi hj
  split at hi <;> split at hj <;> omega

/-- Reduction cannot introduce an absent free variable. -/
theorem noTwo_beta {t u : Term} (h : Beta t u) (ht : NoTwo t) : NoTwo u := by
  intro i j hi hj
  apply ht i j
  · by_cases hz : occ i t = 0
    · have := occ_beta_zero h i hz; omega
    · omega
  · by_cases hz : occ j t = 0
    · have := occ_beta_zero h j hz; omega
    · omega

/-- Occurrence count of `i` in `shift 1 c t`, as one expression. -/
theorem occ_shift_cases (t : Term) (i c : Nat) :
    occ i (shift 1 c t) =
      if i < c then occ i t else if i = c then 0 else occ (i - 1) t := by
  by_cases h1 : i < c
  · rw [if_pos h1, occ_shift_lt t i c h1]
  · rw [if_neg h1]
    by_cases h2 : i = c
    · rw [if_pos h2, h2, occ_shift_eq]
    · rw [if_neg h2]
      have hi : i = (i - 1) + 1 := by omega
      rw [hi, occ_shift_ge t (i - 1) c (by omega)]
      simp

theorem noTwo_shift (t : Term) (c : Nat) (h : NoTwo t) : NoTwo (shift 1 c t) := by
  intro i j hi hj
  rw [occ_shift_cases] at hi hj
  by_cases hic : i < c
  · rw [if_pos hic] at hi
    by_cases hjc : j < c
    · rw [if_pos hjc] at hj
      exact h i j hi hj
    · rw [if_neg hjc] at hj
      by_cases hjc' : j = c
      · rw [if_pos hjc'] at hj; omega
      · rw [if_neg hjc'] at hj
        have := h i (j - 1) hi hj
        omega
  · rw [if_neg hic] at hi
    by_cases hic' : i = c
    · rw [if_pos hic'] at hi; omega
    · rw [if_neg hic'] at hi
      by_cases hjc : j < c
      · rw [if_pos hjc] at hj
        have := h (i - 1) j hi hj
        omega
      · rw [if_neg hjc] at hj
        by_cases hjc' : j = c
        · rw [if_pos hjc'] at hj; omega
        · rw [if_neg hjc'] at hj
          have := h (i - 1) (j - 1) hi hj
          omega

/-- Occurrence count of `i` in `substDec j s t`, as one expression. -/
theorem occ_substDec_cases (t s : Term) (i j : Nat) :
    occ i (substDec j s t) =
      occ (if i < j then i else i + 1) t + occ j t * occ i s := by
  by_cases h : i < j
  · rw [if_pos h, occ_substDec_lt t s i j h]
  · rw [if_neg h, occ_substDec_ge t s i j (by omega)]

theorem noTwo_subst (t s : Term) (j : Nat) (ht : NoTwo t) (hs : NoTwo s) :
    NoTwo (substDec j s t) := by
  intro i k hi hk
  rw [occ_substDec_cases] at hi hk
  have hi' : 0 < occ (if i < j then i else i + 1) t ∨ (0 < occ j t ∧ 0 < occ i s) := by
    by_cases h1 : 0 < occ (if i < j then i else i + 1) t
    · exact Or.inl h1
    · right
      have hm : 0 < occ j t * occ i s := by omega
      exact ⟨Nat.pos_of_mul_pos_right hm, Nat.pos_of_mul_pos_left hm⟩
  have hk' : 0 < occ (if k < j then k else k + 1) t ∨ (0 < occ j t ∧ 0 < occ k s) := by
    by_cases h1 : 0 < occ (if k < j then k else k + 1) t
    · exact Or.inl h1
    · right
      have hm : 0 < occ j t * occ k s := by omega
      exact ⟨Nat.pos_of_mul_pos_right hm, Nat.pos_of_mul_pos_left hm⟩
  rcases hi' with hi' | ⟨hjt, his⟩ <;> rcases hk' with hk' | ⟨hjt', hks⟩
  · have := ht _ _ hi' hk'
    split at this <;> split at this <;> omega
  · have := ht _ _ hi' hjt'
    split at this <;> omega
  · have := ht _ _ hjt hk'
    split at this <;> omega
  · exact hs i k his hks

theorem argOne_shift (t : Term) (c : Nat) (h : ArgOne t) : ArgOne (shift 1 c t) := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> trivial
  | lam b ih => exact ih (c + 1) h
  | app f a ihf iha =>
    exact ⟨ihf c h.1, iha c h.2.1, noTwo_shift a c h.2.2⟩

/-- Substituting a narrow argument for a variable keeps every argument narrow. -/
theorem argOne_subst (t s : Term) (j : Nat) (ht : ArgOne t) (hs : ArgOne s)
    (hn : NoTwo s) : ArgOne (substDec j s t) := by
  induction t generalizing s j with
  | var n =>
    simp only [substDec]
    split
    · exact hs
    · split <;> trivial
  | lam b ih => exact ih (shift 1 0 s) (j + 1) ht (argOne_shift s 0 hs) (noTwo_shift s 0 hn)
  | app f a ihf iha =>
    exact ⟨ihf s j ht.1 hs hn, iha s j ht.2.1 hs hn, noTwo_subst a s j ht.2.2 hn⟩

theorem argOne_beta {t u : Term} (h : Beta t u) (ht : ArgOne t) : ArgOne u := by
  induction h with
  | beta b a => exact argOne_subst b a 0 ht.1 ht.2.1 ht.2.2
  | appL a h ih => exact ⟨ih ht.1, ht.2.1, ht.2.2⟩
  | appR f h ih => exact ⟨ht.1, ih ht.2.1, noTwo_beta h ht.2.2⟩
  | lam h ih => exact ih ht

theorem argOne_betas {t u : Term} (h : Betas t u) (ht : ArgOne t) : ArgOne u := by
  induction h with
  | refl => exact ht
  | head hb _ ih => exact ih (argOne_beta hb ht)

/-- A cell with closed data mentions exactly the variables of its tail. -/
theorem occ_pairT_closed (a r : Term) (ha : Closed a) (i : Nat) :
    occ i (pairT a r) = occ i r := by
  simp only [pairT, occ, shift_closed 1 0 ha, occ_of_freeUnder a 0 (i + 1) ha (by omega),
    occ_shift_ge r i 0 (by omega)]
  simp

/-- Quotation cells with closed argument-narrow data keep every argument
narrow, and mention no variable beyond those of their tail. -/
theorem argOne_pair (a r : Term) (ha : Closed a) (haa : ArgOne a)
    (hr : ArgOne r) (hn : NoTwo r) :
    ArgOne (pairT a r) ∧ NoTwo (pairT a r) := by
  refine ⟨⟨⟨trivial, argOne_shift a 0 haa, noTwo_shift a 0 (noTwo_of_closed a ha)⟩,
    argOne_shift r 0 hr, noTwo_shift r 0 hn⟩, ?_⟩
  intro i j hi hj
  rw [occ_pairT_closed a r ha] at hi hj
  exact hn i j hi hj

theorem argOne_bit (b : Bool) : ArgOne (churchBit b) := by
  cases b <;> exact trivial

theorem argOne_stream (bs : List Bool) (r : Term) (hr : ArgOne r) (hn : NoTwo r) :
    ArgOne (streamOf bs r) ∧ NoTwo (streamOf bs r) := by
  induction bs with
  | nil => exact ⟨hr, hn⟩
  | cons b bs ih =>
    exact argOne_pair (churchBit b) (streamOf bs r) (churchBit_closed b) (argOne_bit b)
      ih.1 ih.2

/-- The closed source `S = λf g x. f x (g x)`. -/
def sTerm : Term :=
  .lam (.lam (.lam (.app (.app (.var 2) (.var 0)) (.app (.var 1) (.var 0)))))

/-- The required normal output `C (λz. S) N`. -/
def sOutput : Term := .app (.app (.var 0) (.lam sTerm)) (.var 1)

theorem sOutput_normal : NormalForm sOutput :=
  fun _ hb => nft_no_beta (by decide : NFt sOutput) hb

/-- The argument `g x` of the output mentions two distinct variables. -/
theorem sOutput_not_argOne : ¬ ArgOne sOutput := by
  intro h
  have h1 : NoTwo (.app (.var 1) (.var 0)) := h.1.2.1.2.2
  have := h1 0 1 (by decide) (by decide)
  omega

/-- Unconditional structural necessity: some application argument of
every self-interpreter mentions two distinct variables. The quotation
cannot supply such an argument; the output for `S` requires one. -/
theorem selfInterpreter_not_argOne (E : Term) (hE : IsSelfInterpreter E) :
    ¬ ArgOne E := by
  intro hA
  obtain ⟨u, hsource, htarget⟩ := hE.2 sTerm (by decide)
  have heq : u = sOutput := normalForm_betas_eq sOutput_normal htarget
  subst heq
  have hstream := argOne_stream (blcCode sTerm) (.var 1) trivial (noTwo_var 1)
  have hs : ArgOne (.app (.app E (.var 0)) (streamOf (blcCode sTerm) (.var 1))) :=
    ⟨⟨hA, trivial, noTwo_var 0⟩, hstream.1, hstream.2⟩
  exact sOutput_not_argOne (argOne_betas hsource hs)

/-- A concrete wide-argument witness: some application argument mentions
two distinct free variables. -/
def HasWideArg : Term → Prop
  | .var _ => False
  | .lam b => HasWideArg b
  | .app f a => HasWideArg f ∨ HasWideArg a ∨ ∃ i j, i ≠ j ∧ 0 < occ i a ∧ 0 < occ j a

theorem hasWideArg_of_not_argOne (t : Term) (h : ¬ ArgOne t) : HasWideArg t := by
  induction t with
  | var n => exact (h trivial).elim
  | lam b ih => exact ih h
  | app f a ihf iha =>
    by_cases hf : ArgOne f
    · by_cases ha : ArgOne a
      · refine Or.inr (Or.inr ?_)
        apply Classical.byContradiction
        intro hw
        apply h
        refine ⟨hf, ha, ?_⟩
        intro i j hi hj
        apply Classical.byContradiction
        intro hij
        exact hw ⟨i, j, hij, hi, hj⟩
      · exact Or.inr (Or.inl (iha ha))
    · exact Or.inl (ihf hf)

theorem selfInterpreter_hasWideArg (E : Term) (hE : IsSelfInterpreter E) :
    HasWideArg E :=
  hasWideArg_of_not_argOne E (selfInterpreter_not_argOne E hE)

end Blc.SelfintFloor
