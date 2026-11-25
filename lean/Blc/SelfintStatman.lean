import Blc.SelfintSingleObjectLiteral

namespace Blc.SelfintSingleObject
open Term SelfintControl SelfintFloor

/-- Two one-slot observations of S. Its first argument sends the true
selector to a constant returning marker 0 and the false selector to I.
Its second argument supplies marker 1. -/
theorem not_join_s {T : Term} (hT : SO T) : ¬ BetaJoin T sTerm := by
  intro h
  let A := Term.lam (.app (.app (.var 0) (.lam (.var 2))) identity)
  let B := Term.lam (.var 2)
  have hA : SO A := .lam (r := .var 0) (g := .app (.app (.var 0) (.lam (.var 2))) identity)
    (.app (.app (.var 0) (so_dead (by decide) (.var 2))) (so_closed_lam (by decide) (.var 0)))
    (.var 0) (by decide) (by decide)
  have hB : SO B := so_dead (by decide) (.var 2)
  have hj := join_appL B (join_appL A h)
  have proj (k : Term) {v : Nat} {n : Nat}
      (hs : spineSteps n (.app (.app (.app sTerm A) B) k) = some (.var v)) :=
    join_trans (join_appL k hj) (join_of_betas (betas_of_spineReds (spineReds_of_spineSteps _ hs)))
  have bad := single_object_unique (g := .app (.var 0) churchTrue) (h := .app (.var 0) churchFalse)
    (.app (.app hT hA) hB) (by decide) (by decide)
    (proj churchTrue (v := 0) (n := 7) (by decide))
    (proj churchFalse (v := 1) (n := 8) (by decide))
  cases bad

/-- Every live abstraction captures at most one distinct variable.
A source with at most two free variables in every subterm satisfies this. -/
def NarrowBinders : Term → Prop
  | .var _ => True
  | .app f a => NarrowBinders f ∧ NarrowBinders a
  | .lam b => NarrowBinders b ∧ (0 < occ 0 b → NoTwo (.lam b))

private theorem narrow_no_witness (t : Term) (h : NarrowBinders t) (d : Nat) : ¬ Witness d t := by
  induction t generalizing d with
  | var => exact id
  | app _ _ hf ha => exact fun hh => hh.elim (hf h.1 d) (ha h.2 d)
  | lam b ih =>
    rintro (hw | ⟨hl,i,j,hij,_,hi,hj,_⟩)
    · exact ih h.1 (d+1) hw
    · have := h.2 hl i j hi hj; omega

private theorem finite_scope (t : Term) : ∃ d, FreeUnder d t := by
  induction t with
  | var i => exact ⟨i+1,Nat.lt_succ_self _⟩
  | lam b ih => obtain ⟨d,h⟩ := ih; exact ⟨d,freeUnder_mono (t := b) (Nat.le_succ d) h⟩
  | app f a hf ha =>
    obtain ⟨d,hd⟩ := hf
    obtain ⟨k,hk⟩ := ha
    exact ⟨max d k,freeUnder_mono (Nat.le_max_left _ _) hd,freeUnder_mono (Nat.le_max_right _ _) hk⟩

/-- Closing arbitrary external slots with I reflects the internal witness
at each substitution. This also covers open presentations of S. -/
theorem join_s_width {T : Term} (hj : BetaJoin T sTerm) : Witness 0 T := by
  obtain ⟨d,hc⟩ := finite_scope T
  induction d generalizing T with
  | zero => exact witness_of_not_so T 0 hc (fun h => not_join_s h hj)
  | succ d ih =>
    have hi : Closed identity := by decide
    have hs := SelfintValues.freeUnder_substDec T identity d 0 (Nat.zero_le _) hc (closed_freeUnder hi d)
    have j := SelfintValues.join_subst hj 0 identity
    rw [substDec_closed _ _ (by decide : Closed sTerm)] at j
    exact witness_subst_reflect hi (so_closed_lam hi (.var 0)) T 0 (ih j hs)

theorem narrow_not_join_s {T : Term} (h : NarrowBinders T) : ¬ BetaJoin T sTerm :=
  fun hj => narrow_no_witness T h 0 (join_s_width hj)

#print axioms not_join_s
#print axioms join_s_width
#print axioms narrow_not_join_s
end Blc.SelfintSingleObject
