/-
The literal two-lambda interface costs at
least 31 bits.

For `E = λc s. B`: the body has two incomparable nonlinear binders
(`selfInterpreter_body_not_chain`), and both public variables occur in it,
since the required output `C (λz.I) N` mentions both `C` and `N` and beta
reduction cannot introduce an absent variable. Charging the body's binders
and free leaves gives `wire B ≥ 27`, hence `wire E ≥ 31`.
This complements `SelfintProjections.headForm_fifty_five` (55 bits for the
continuation-headed display form) and is the literal-interface analogue of
`selfintSizeBound_25`.
-/
import Blc.SelfintFloorCount
import Blc.SelfintFloorArg

namespace Blc.SelfintFloor
open Term SelfintLowerBound SelfintNonlinearChain SelfintCapture SelfintWireCost

theorem indexSum_ge_occ (t : Term) (j : Nat) : occ j t * j ≤ indexSum t := by
  induction t generalizing j with
  | var n =>
    simp only [occ, indexSum]
    split <;> omega
  | lam b ih =>
    have := ih (j + 1)
    simp only [occ, indexSum]
    have h2 : occ (j + 1) b * j ≤ occ (j + 1) b * (j + 1) :=
      Nat.mul_le_mul_left _ (Nat.le_succ j)
    omega
  | app f a ihf iha =>
    have := ihf j
    have := iha j
    simp only [occ, indexSum, Nat.add_mul]
    omega

theorem occ_betas_zero {t u : Term} (h : Betas t u) (j : Nat) (ht : occ j t = 0) :
    occ j u = 0 := by
  induction h with
  | refl => exact ht
  | head hb _ ih => exact ih (occ_beta_zero hb j ht)

theorem occ_stream_var (bits : List Bool) (n i : Nat) :
    occ i (streamOf bits (.var n)) = occ i (.var n) := by
  induction bits with
  | nil => rfl
  | cons b bs ih =>
    rw [streamOf_cons, occ_pairT_closed _ _ (churchBit_closed b), ih]

/-- The two interface contractions of `λc s. B` on `C = var 0` and the stream. -/
theorem interface_betas (B Q : Term) :
    Betas (.app (.app (.lam (.lam B)) (.var 0)) Q)
      (substDec 0 Q (substDec 1 (.var 1) B)) := by
  refine Betas.head (Beta.appL Q (Beta.beta (.lam B) (.var 0))) ?_
  have h : contract (.lam B) (.var 0) = .lam (substDec 1 (.var 1) B) := rfl
  rw [h]
  exact Betas.head (Beta.beta _ Q) (Betas.refl _)

private def idOut : Term := .app (.app (.var 0) (.lam (.lam (.var 0)))) (.var 1)

private theorem idOut_normal : NormalForm idOut :=
  fun _ hb => nft_no_beta (by decide : NFt idOut) hb

/-- Both public variables occur in a literal two-lambda interface body. -/
theorem literal_public_occ {B : Term} (hE : IsSelfInterpreter (.lam (.lam B))) :
    1 ≤ occ 0 B ∧ 1 ≤ occ 1 B := by
  have hfree : FreeUnder 2 B := hE.1
  have h2 : occ 2 B = 0 := occ_of_freeUnder B 2 2 hfree (Nat.le_refl 2)
  have h3 : occ 3 B = 0 := occ_of_freeUnder B 2 3 hfree (by omega)
  obtain ⟨w, hw, ho⟩ := hE.2 (.lam (.var 0)) (by decide)
  have hweq : w = idOut := normalForm_betas_eq idOut_normal ho
  subst hweq
  have hR := betas_preserve_nf (interface_betas B (streamOf (blcCode (.lam (.var 0))) (.var 1)))
    hw idOut_normal
  have hQ0 : occ 0 (streamOf (blcCode (.lam (.var 0))) (.var 1)) = 0 := by
    rw [occ_stream_var]; decide
  have hQ1 : occ 1 (streamOf (blcCode (.lam (.var 0))) (.var 1)) = 1 := by
    rw [occ_stream_var]; decide
  have hT0 : occ 0 (substDec 1 (.var 1) B) = occ 0 B := by
    rw [occ_substDec_lt B (.var 1) 0 1 (by omega)]
    simp [occ]
  have hT1 : occ 1 (substDec 1 (.var 1) B) = occ 1 B := by
    rw [occ_substDec_ge B (.var 1) 1 1 (Nat.le_refl 1), h2]
    simp [occ]
  have hT2 : occ 2 (substDec 1 (.var 1) B) = 0 := by
    rw [occ_substDec_ge B (.var 1) 2 1 (by omega), h3]
    simp [occ]
  have hR0 : occ 0 (substDec 0 (streamOf (blcCode (.lam (.var 0))) (.var 1))
      (substDec 1 (.var 1) B)) = occ 1 B := by
    rw [occ_substDec_ge _ _ 0 0 (Nat.le_refl 0), hT1, hQ0]
    simp
  have hR1 : occ 1 (substDec 0 (streamOf (blcCode (.lam (.var 0))) (.var 1))
      (substDec 1 (.var 1) B)) = occ 0 B := by
    rw [occ_substDec_ge _ _ 1 0 (by omega), hT2, hT0, hQ1]
    simp
  constructor
  · by_cases hz : occ 0 B = 0
    · have := occ_betas_zero hR 1 (by rw [hR1, hz])
      simp [idOut, occ] at this
    · omega
  · by_cases hz : occ 1 B = 0
    · have := occ_betas_zero hR 0 (by rw [hR0, hz])
      simp [idOut, occ] at this
    · omega

/-- A literal two-lambda interface has at least 31 bits: two nonlinear
binders, two live public leaves, and one index unit for `c` beneath `s`. -/
theorem literal_interface_bound {B : Term} (hE : IsSelfInterpreter (.lam (.lam B))) :
    31 ≤ wire (.lam (.lam B)) := by
  have hc := selfInterpreter_body_not_chain hE
  have hn := not_chain_two_nonlinear B hc
  have hl := nonlinear_le_live B
  obtain ⟨h0, h1⟩ := literal_public_occ hE
  have hf0 := freeLeaves_split B 0
  have hf1 := freeLeaves_split B 1
  simp only [Nat.zero_add] at hf0
  have hx := indexSum_ge_occ B 1
  have hw := count_wire_bound B
  simp only [wire_lam]
  omega

end Blc.SelfintFloor
