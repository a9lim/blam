import Blc.SelfintSingleObjectWidth
import Blc.SelfintRound6BoundLiteral

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintCapture SelfintNonlinearChain SelfintLowerBound SelfintWireCost

private theorem factor_subst {b} (h : Factors b) (j : Nat) (s : Term) :
    Factors (substDec (j+1) (shift 1 0 s) b) := by
  obtain ⟨r, g, hs, he⟩ := h
  refine ⟨substDec j s r, g, hs, ?_⟩
  change substDec j s (.lam b) = _
  rw [he, substDec_substDec _ _ _ _ _ (Nat.zero_le _),
    substDec_of_freeUnder _ _ _ (freeUnder_mono (by omega : 1 ≤ j+1) hs)]

private theorem no_witness_so {t} (h : SO t) (d : Nat) : ¬ Witness d t := by
  induction h generalizing d with
  | var => exact id
  | app _ _ ihf iha => exact fun hh => hh.elim (ihf d) (iha d)
  | lam _ _ hs he ih _ =>
    rintro (hw | ⟨_, _, _, _, _, _, _, hn⟩)
    · exact ih _ hw
    · exact hn ⟨_, _, hs, he⟩

/-- A closed SO argument cannot introduce a witness using local slots. -/
theorem witness_subst_reflect {s : Term} (hs : Closed s) (ho : SO s)
    (t : Term) (d : Nat) (h : Witness d (substDec d s t)) : Witness d t := by
  induction t generalizing d with
  | var n =>
    simp only [substDec] at h
    split at h
    · exact (no_witness_so ho d h).elim
    · split at h <;> cases h
  | app f a ihf iha =>
    rcases h with h | h
    · exact .inl (ihf d h)
    · exact .inr (iha d h)
  | lam b ih =>
    simp only [substDec, shift_of_freeUnder 1 s 0 0 hs (Nat.le_refl _), Witness] at h
    rcases h with hw | ⟨hl, i, j, hij, hj, hi', hj', hn⟩
    · exact .inl (ih (d+1) hw)
    · have eqocc (k : Nat) (hk : k < d+1) :
          occ k (substDec (d+1) s b) = occ k b := by
          rw [occ_substDec_lt _ _ _ _ hk, occ_of_freeUnder s 0 k hs (Nat.zero_le _)]
          simp
      refine .inr ⟨(eqocc 0 (by omega)) ▸ hl, i, j, hij, hj,
        (eqocc (i+1) (by omega)) ▸ hi', (eqocc (j+1) (by omega)) ▸ hj', ?_⟩
      intro hf
      exact hn (by simpa only [shift_of_freeUnder 1 s 0 0 hs (Nat.le_refl _)]
        using factor_subst hf d s)

theorem one_lambda_width {b} (h : IsSelfInterpreter (.lam b)) : Witness 0 b := by
  have hk : Closed churchTrue := by decide
  have hso : SO churchTrue := so_closed_lam hk (so_dead (by decide) (.var 1))
  exact witness_subst_reflect hk hso b 0 (witness_of_not_so _ 0
    (SelfintValues.freeUnder_substDec b _ 0 0 (by decide) h.1 hk)
    (specialized_not_so h (.head (.beta b _) (.refl _))))

theorem one_lambda_bound_39 {b} (h : IsSelfInterpreter (.lam b)) : 39 ≤ wire (.lam b) := by
  have hw := one_lambda_width h
  have hl := width_split_live b 0 (selfInterpreter_not_chain (E := .lam b) h) hw
  have hx := width_price b 0 hw
  have hp := SelfintRound6BoundLiteral.one_lambda_public_occ h
  have hn := selfInterpreter_two_nonlinear h
  have hc := count_wire_bound (.lam b)
  simp only [outerLive, Nat.add_zero] at hl
  simp only [live, if_pos (show 0 < occ 0 b by omega), indexSum] at hc
  omega

#print axioms one_lambda_width
#print axioms one_lambda_bound_39
end Blc.SelfintSingleObject
