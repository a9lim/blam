import Blc.SelfintSingleObjectWidth

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

theorem narrow_not_join_s {T : Term} (hc : Closed T) (h : NarrowBinders T) : ¬ BetaJoin T sTerm := by
  apply not_join_s
  exact Classical.byContradiction fun hn => narrow_no_witness T h 0 (witness_of_not_so T 0 hc hn)

#print axioms not_join_s
#print axioms narrow_not_join_s
end Blc.SelfintSingleObject
