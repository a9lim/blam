import Blc.SelfintSingleObject
import Blc.SelfintFloorArg
import Blc.SelfintFloorLambda

namespace Blc.SelfintSingleObject
open Term SelfintFloor SelfintCapture SelfintNonlinearChain SelfintLowerBound SelfintWireCost

/-- A syntactic factorization of a lambda through one object outside it. -/
def Factors (b : Term) : Prop :=
  ∃ r g, FreeUnder 1 (.lam g) ∧ .lam b = substDec 0 r (.lam g)

private theorem extract {t r : Term} {j : Nat} (h : SO (substDec j r t))
    (used : 0 < occ j t) : SO r := by
  induction t generalizing j r with
  | var n =>
    simp only [occ] at used
    split at used
    · simpa [substDec, *] using h
    · omega
  | lam b ih =>
    cases h with
    | lam hb _ _ _ =>
      have hr := ih hb used
      simpa only [substDec_shift] using so_subst hr (.var 0) 0
  | app f a ihf iha =>
    cases h with
    | app hf ha =>
      simp only [occ] at used
      by_cases hz : 0 < occ j f
      · exact ihf hf hz
      · exact iha ha (by omega)

private theorem of_factor {b} (hb : SO b) (hf : Factors b) : SO (.lam b) := by
  obtain ⟨r, g, hs, he⟩ := hf
  have eqb := Term.lam.inj he
  by_cases used : 0 < occ 1 g
  · have hr := extract (eqb ▸ hb) used
    have h := so_subst hr (.var 0) 0
    exact .lam hb (by simpa only [substDec_shift] using h) hs he
  · apply SO.lam hb (.var 0) hs
    exact he.trans (SelfintProjections.subst_absent _ 0 _ _ (by change occ 1 g = 0; omega))

/-- Collapse all external slots to one marker; keep the first d local slots. -/
private def collapse (d : Nat) : Term → Term
  | .var n => .var (min n d)
  | .lam b => .lam (collapse (d+1) b)
  | .app f a => .app (collapse d f) (collapse d a)

private theorem collapse_scope (t : Term) (d : Nat) : FreeUnder (d+1) (collapse d t) := by
  induction t generalizing d with
  | var n => exact Nat.lt_succ_of_le (Nat.min_le_right n d)
  | lam b ih => exact ih (d+1)
  | app f a ihf iha => exact ⟨ihf d, iha d⟩

private theorem collapse_restore (t : Term) (d i : Nat)
    (hs : ∀ k, d ≤ k → 0 < occ k t → k = i+d) :
    substDec d (.var (i+d)) (collapse d t) = t := by
  induction t generalizing d with
  | var n =>
    by_cases hn : n < d
    · simp [collapse, Nat.min_eq_left (by omega : n ≤ d), substDec,
        show n ≠ d by omega, show ¬n > d by omega]
    · have he := hs n (by omega) (by simp [occ])
      simp [collapse, Nat.min_eq_right (by omega : d ≤ n), substDec, ← he]
  | app f a ihf iha =>
    simp only [collapse, substDec]
    rw [ihf d (fun k hk ho => hs k hk (by simp [occ]; omega)),
      iha d (fun k hk ho => hs k hk (by simp [occ]; omega))]
  | lam b ih =>
    apply congrArg Term.lam
    simp only [shift, Nat.zero_le, if_true]
    apply ih
    intro k hk ho
    obtain ⟨l, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : k ≠ 0)
    have he := hs l (by omega) ho
    omega

private theorem factor_of_noTwo {b} (h : NoTwo (.lam b)) : Factors b := by
  classical
  obtain ⟨i, hi⟩ : ∃ i, ∀ j, 0 < occ j (.lam b) → j = i := by
    by_cases hx : ∃ i, 0 < occ i (.lam b)
    · obtain ⟨i, hi⟩ := hx
      exact ⟨i, fun j hj => h j i hj hi⟩
    · exact ⟨0, fun j hj => (hx ⟨j, hj⟩).elim⟩
  exact ⟨.var i, collapse 1 b, collapse_scope (.lam b) 0,
    (collapse_restore (.lam b) 0 i (fun j _ hj => hi j hj)).symm⟩

/-- At depth d, a path to a live binder whose body uses the external slots
i+1 and j+1 in addition to slot 0, and has no one-object factorization.
All three slots refer to binders of the closed source when d starts at 0. -/
def Witness (d : Nat) : Term → Prop
  | .var _ => False
  | .app f a => Witness d f ∨ Witness d a
  | .lam b => Witness (d+1) b ∨
      (0 < occ 0 b ∧ ∃ i j, i < j ∧ j < d ∧ 0 < occ (i+1) b ∧
        0 < occ (j+1) b ∧ ¬ Factors b)

theorem witness_of_not_so (t : Term) (d : Nat) (hc : FreeUnder d t)
    (h : ¬ SO t) : Witness d t := by
  classical
  induction t generalizing d with
  | var n => exact (h (.var n)).elim
  | app f a ihf iha =>
    by_cases hf : SO f
    · exact .inr (iha d hc.2 (fun ha => h (.app hf ha)))
    · exact .inl (ihf d hc.1 hf)
  | lam b ih =>
    by_cases hb : SO b
    · right
      have hl : 0 < occ 0 b := Nat.pos_of_ne_zero (fun he => h (so_dead he hb))
      have hn : ¬ Factors b := fun hf => h (of_factor hb hf)
      have htwo : ¬ NoTwo (.lam b) := fun h => hn (factor_of_noTwo h)
      unfold NoTwo at htwo
      simp only [Classical.not_forall] at htwo
      obtain ⟨i, j, hi, hj, hne⟩ := htwo
      have bound (k : Nat) (hpos : 0 < occ k (.lam b)) : k < d := by
        apply Classical.byContradiction
        intro hnot
        have hh : d ≤ k := by omega
        rw [occ_of_freeUnder _ d k hc hh] at hpos
        omega
      by_cases hij : i < j
      · exact ⟨hl, i, j, hij, bound j hj, hi, hj, hn⟩
      · exact ⟨hl, j, i, by omega, bound i hi, hj, hi, hn⟩
    · exact .inl (ih (d+1) hc hb)

theorem selfInterpreter_width {E} (hE : IsSelfInterpreter E) : Witness 0 E :=
  witness_of_not_so E 0 hE.1 (selfInterpreter_not_so hE)

private theorem outer_pair (t : Term) (d i j : Nat) (hij : i < j) (hj : j < d)
    (hi' : 0 < occ i t) (hj' : 0 < occ j t) : 2 ≤ outerLive d t := by
  induction d with
  | zero => omega
  | succ d ih =>
    change 2 ≤ outerLive d t + (if 0 < occ d t then 1 else 0)
    by_cases he : j = d
    · subst j
      have := outerLive_pos d i t hij hi'
      rw [if_pos hj']; omega
    · have := ih (by omega)
      omega

theorem width_live (t : Term) (d : Nat) (h : Witness d t) :
    3 ≤ live t + outerLive d t := by
  induction t generalizing d with
  | var => cases h
  | lam b ih =>
    rcases h with h | ⟨hl, i, j, hij, hj, hi', hj', _⟩
    · have := ih (d+1) h
      rw [outerLive_lam] at this
      simp only [live]; omega
    · have := outer_pair (.lam b) d i j hij hj hi' hj'
      simp only [live, if_pos hl]; omega
  | app f a ihf iha =>
    have := outerLive_app_left d f a
    have := outerLive_app_right d f a
    rcases h with h | h
    · have := ihf d h; simp only [live]; omega
    · have := iha d h; simp only [live]; omega

theorem width_split_live (t : Term) (d : Nat) (hc : ¬ Chain t) (h : Witness d t) :
    4 ≤ live t + outerLive d t := by
  induction t generalizing d with
  | var => cases h
  | lam b ih =>
    rcases h with h | ⟨hl, i, j, hij, hj, hi', hj', _⟩
    · have := ih (d+1) hc h
      rw [outerLive_lam] at this
      simp only [live]; omega
    · have := outer_pair (.lam b) d i j hij hj hi' hj'
      have := not_chain_two_nonlinear b hc
      have := nonlinear_le_live b
      simp only [live, if_pos hl]; omega
  | app f a ihf iha =>
    have := outerLive_app_left d f a
    have := outerLive_app_right d f a
    have := nonlinear_le_live f
    have := nonlinear_le_live a
    rcases h with h | h
    · by_cases hf : Chain f
      · have hn : nonlinear a ≠ 0 := by
          intro hz
          have ha : Chain a := by
            apply Classical.byContradiction
            intro hh
            have := not_chain_two_nonlinear a hh; omega
          exact hc ⟨hf, ha, .inr hz⟩
        have := width_live f d h; simp only [live]; omega
      · have := ihf d hf h; simp only [live]; omega
    · by_cases ha : Chain a
      · have hn : nonlinear f ≠ 0 := by
          intro hz
          have hf : Chain f := by
            apply Classical.byContradiction
            intro hh
            have := not_chain_two_nonlinear f hh; omega
          exact hc ⟨hf, ha, .inl hz⟩
        have := width_live a d h; simp only [live]; omega
      · have := iha d ha h; simp only [live]; omega

private theorem occ_price (t : Term) (i : Nat) (h : 0 < occ i t) : i ≤ indexSum t := by
  induction t generalizing i with
  | var n => simp only [occ] at h; split at h <;> simp_all [indexSum]
  | lam b ih => have := ih (i+1) h; change i ≤ indexSum b; omega
  | app f a ihf iha =>
    simp only [occ] at h
    by_cases hf : 0 < occ i f
    · have := ihf i hf; simp only [indexSum]; omega
    · have := iha i (by omega); simp only [indexSum]; omega

private theorem pair_price (t : Term) (i j : Nat) (hij : i < j)
    (hi : 0 < occ i t) (hj : 0 < occ j t) : i+j ≤ indexSum t := by
  induction t generalizing i j with
  | var n => simp only [occ] at hi hj; split at hi <;> split at hj <;> omega
  | lam b ih =>
    have := ih (i+1) (j+1) (by omega) hi hj
    change i+j ≤ indexSum b; omega
  | app f a ihf iha =>
    simp only [occ] at hi hj
    simp only [indexSum]
    by_cases hif : 0 < occ i f <;> by_cases hjf : 0 < occ j f
    · have := ihf i j hij hif hjf; omega
    · have := occ_price f i hif; have := occ_price a j (by omega); omega
    · have := occ_price a i (by omega); have := occ_price f j hjf; omega
    · have := iha i j hij (by omega) (by omega); omega

theorem width_price (t : Term) (d : Nat) (h : Witness d t) : 3 ≤ indexSum t := by
  induction t generalizing d with
  | var => cases h
  | lam b ih =>
    rcases h with h | ⟨_, i, j, hij, _, hi, hj, _⟩
    · exact ih (d+1) h
    · have := pair_price b (i+1) (j+1) (by omega) hi hj
      change 3 ≤ indexSum b; omega
  | app f a ihf iha =>
    rcases h with h | h
    · have := ihf d h; simp only [indexSum]; omega
    · have := iha d h; simp only [indexSum]; omega

theorem interpreter_counts {E} (h : IsSelfInterpreter E) :
    4 ≤ live E ∧ 6 ≤ leafCount E ∧ 3 ≤ indexSum E := by
  have hw := selfInterpreter_width h
  have hl := width_split_live E 0 (selfInterpreter_not_chain h) hw
  simp only [outerLive, Nat.add_zero] at hl
  have := leaves_bound E
  have := selfInterpreter_two_nonlinear h
  exact ⟨hl, by omega, width_price E 0 hw⟩

theorem selfintSizeBound_33 : SelfintSizeBound 33 := by
  intro E h
  obtain ⟨hl, hv, hx⟩ := interpreter_counts h
  have := live_le_lamCount E
  have := wire_identity E
  change 33 ≤ wire E
  omega

#print axioms selfInterpreter_width
#print axioms interpreter_counts
#print axioms selfintSizeBound_33
end Blc.SelfintSingleObject
