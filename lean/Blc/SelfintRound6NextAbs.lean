/-
The ABS target, like the APP target, cannot retain a quotation-origin
abstraction. Its five live lambdas must all have source origin. In
particular, the outer binder of the two-lambda environment cell has body
head shape (one leading lambda, two arguments), which is different
from every protected quotation head shape.
-/
import Blc.SelfintRound6BoundNextPrice
import Blc.SelfintRound6BoundPotential

namespace Blc.SelfintRound6NextAbs
open Term SelfintLowerBound SelfintFloor SelfintWireCost
open SelfintClass SelfintClassNext SelfintWiden QuoteOrigins
open QuoteOrigins.Marked SelfintRound6Next SelfintRound6BoundNextPrice

theorem spineAt_unique {i j m n : Nat} {t : Term}
    (hi : SpineAt i m t) (hj : SpineAt j n t) : i = j ∧ m = n := by
  induction hi generalizing j n with
  | var => cases hj; exact ⟨rfl, rfl⟩
  | app a hi ih =>
    cases hj with
    | app a hj =>
      obtain ⟨hij, hmn⟩ := ih hj
      exact ⟨hij, by omega⟩

theorem shapeAt_unique {i j k l m n : Nat} {t : Term}
    (hi : ShapeAt i k m t) (hj : ShapeAt j l n t) :
    i = j ∧ k = l ∧ m = n := by
  induction hi generalizing j l n with
  | spine hs =>
    cases hj with
    | spine hs' =>
      obtain ⟨hij, hmn⟩ := spineAt_unique hs hs'
      exact ⟨hij, rfl, hmn⟩
    | lam hs' => cases hs
  | lam hs ih =>
    cases hj with
    | spine hs' => cases hs'
    | lam hs' =>
      obtain ⟨hij, hkl, hmn⟩ := ih hs'
      exact ⟨by omega, by omega, hmn⟩

theorem shape_not_protected {j l n : Nat} {t : Term}
    (hs : ShapeAt j l n t) (ho : 0 < occ 0 t)
    (hbad : j ≠ 0 ∨ ¬ QuoteShape l n) : ¬ Protected t := by
  rintro (hz | ⟨l', n', hq, hs', _⟩)
  · omega
  · obtain ⟨hj, hl, hn⟩ := shapeAt_unique hs hs'
    rcases hbad with hbad | hbad
    · exact hbad hj
    · exact hbad (by simpa only [hl, hn] using hq)

theorem abs_target_rejectBlue : RejectBlue (.app nextZero (.var 2)) := by
  refine ⟨⟨trivial, ⟨⟨trivial, ?_⟩, ?_⟩⟩, trivial⟩
  · refine ⟨⟨⟨trivial, ?_⟩, ?_⟩, ?_⟩
    · refine ⟨⟨⟨⟨trivial, trivial⟩, ⟨trivial, trivial⟩⟩, ?_⟩, ?_⟩
      · exact rigidAt_not_protected (.app _ (.app _ .var)) (by decide) (by decide)
      · exact shape_not_protected (.lam (.spine (.app _ (.app _ .var))))
          (by decide) (Or.inr (by simp [QuoteShape]))
    · exact rigidAt_not_protected (.app _ .var) (by decide) (by decide)
    · exact shape_not_protected (.lam (.spine (.app _ .var)))
        (by decide) (Or.inl (by decide))
  · exact rigidAt_not_protected (.app _ .var) (by decide) (by decide)

theorem abs_target_all_red {t : Marked} (hg : Good t)
    (he : erase t = .app nextZero (.var 2)) :
    t = red (.app nextZero (.var 2)) := by
  have hr : RejectBlue (erase t) := he ▸ abs_target_rejectBlue
  exact (good_rejectBlue_red hg hr).trans (congrArg red he)

theorem abs_target_redLive : redLive (red (.app nextZero (.var 2))) = 5 := by decide

/-- The ABS probe gives an exact colored trace with five live source
binders. No normality or source-size condition is assumed for NEXT. -/
theorem rigidNext_abs_trace {Q : Term} (h : RigidNext Q) :
    ∃ u, Steps (.app (.app (red Q) (bit false)) (.var 2)) u ∧
      Good u ∧ u = red (.app nextZero (.var 2)) ∧ redLive u = 5 := by
  have hs : Good (.app (.app (red Q) (bit false)) (.var 2)) :=
    ⟨⟨red_good Q, bit_good false⟩, trivial⟩
  have he : erase (.app (.app (red Q) (bit false)) (.var 2)) =
      .app (.app Q churchTrue) (.var 2) := by
    simp only [erase, erase_red, erase_bit, churchBit, Bool.false_eq_true, if_false]
  have hr := h.red true
  simp only [tagValue, nextTarget, if_true] at hr
  rw [← he] at hr
  obtain ⟨u, hu, heu⟩ := lift_betas hr
  have hg := good_steps hu hs
  have huRed := abs_target_all_red hg heu
  exact ⟨u, hu, hg, huRed, huRed ▸ abs_target_redLive⟩

/-- Every source binder has at most two occurrences. -/
def NoTriple : Term → Prop
  | .var _ => True
  | .lam b => NoTriple b ∧ occ 0 b ≤ 2
  | .app f a => NoTriple f ∧ NoTriple a

/-- Equality in the bound-leaf charge leaves no third binder occurrence. -/
theorem tight_leaves_noTriple (t : Term)
    (ht : leafCount t = nonlinear t + live t + freeLeaves 0 t) : NoTriple t := by
  induction t with
  | var n => trivial
  | app f a ihf iha =>
    have hf := leaves_bound f
    have ha := leaves_bound a
    simp only [leafCount, nonlinear, live, freeLeaves] at ht
    exact ⟨ihf (by omega), iha (by omega)⟩
  | lam b ih =>
    have hb := leaves_bound b
    have hs := freeLeaves_split b 0
    simp only [Nat.zero_add] at hs
    simp only [leafCount, nonlinear, live, freeLeaves, Nat.reduceAdd] at ht
    have he : leafCount b = nonlinear b + live b + freeLeaves 0 b := by
      split at ht <;> split at ht <;> omega
    refine ⟨ih he, ?_⟩
    split at ht <;> split at ht <;> omega

/-- A literal NEXT below 42 has no slack for a third bound occurrence.
Its body has exactly three live binders and one nonlinear binder. -/
theorem literal_below_42_resources {b : Term} (h : RigidNext (.lam b))
    (hw : wire (.lam b) < 42) :
    live b = 3 ∧ nonlinear b = 1 ∧ NoTriple b := by
  have hl := rigidNext_lambda_four_live h
  have hn := rigidNext_nonlinear h
  have hf := rigidNext_two_captures h
  have hp := rigidNext_parameters h
  have hx := rigidNext_index_bound h
  have hc := count_wire_bound (.lam b)
  have hv := leaves_bound (.lam b)
  have hL := live_le_lamCount (.lam b)
  have he := wire_identity (.lam b)
  simp only [occ, occDepth] at hp hx
  have hnl : nonlinear (.lam b) = 1 := by omega
  have hlive : live (.lam b) = 4 := by omega
  have hfree : freeLeaves 0 (.lam b) = 2 := by omega
  have hleaves : leafCount (.lam b) = 7 := by omega
  have htight : leafCount (.lam b) =
      nonlinear (.lam b) + live (.lam b) + freeLeaves 0 (.lam b) := by omega
  have hb := rigidNext_body_nonlinear h
  have ho := rigidNext_lambda_live h
  have hnb : nonlinear b = 1 := by simp only [nonlinear] at hnl; split at hnl <;> omega
  exact ⟨by simp only [live, if_pos ho] at hlive; omega,
    hnb, (tight_leaves_noTriple (.lam b) htight).1⟩

theorem noTriple_binary_red {b : Term} (hb : NoTriple b) : Binary (red b) := by
  induction b with
  | var n => trivial
  | app f a ihf iha => exact ⟨ihf hb.1, iha hb.2⟩
  | lam b ih => exact ⟨ih hb.1, by simpa only [erase_red] using hb.2⟩

/-- The ABS result needs five live source binders. The three internal
binders affordable below 42 have binary potential four, which no full
beta trace can grow to that result. -/
theorem rigidNext_lambda_at_least_42 {b : Term} (h : RigidNext (.lam b)) :
    42 ≤ wire (.lam b) := by
  apply Classical.byContradiction
  intro hsmall
  obtain ⟨hl, hn, hb⟩ := literal_below_42_resources h (by omega)
  let t : Marked := .app (subst 0 (bit false) (red b)) (.var 2)
  have ht : erase t = .app (contract b churchTrue) (.var 2) := by
    simp only [t, erase, erase_subst, erase_red, erase_bit, churchBit,
      contract, Bool.false_eq_true, if_false]
  have hg : Good t := ⟨good_subst (red_good b) (bit_good false) 0, trivial⟩
  have hbinary : Binary t :=
    ⟨binary_subst (red b) (bit false) 0 (noTriple_binary_red hb) (binary_bit false), trivial⟩
  have hp : potential t ≤ 4 := by
    simp only [t, potential_app, potential_subst, potential_bit, potential_red,
      Nat.mul_zero, Nat.add_zero, hl, hn]
    decide
  have hr := betas_preserve_nf
    (Betas.head (Beta.appL (.var 2) (Beta.beta b churchTrue)) (.refl _))
    (h.red true) (nft_normal
      ⟨nextTarget_nonlam true, nextTarget_normal true, trivial⟩)
  rw [← ht] at hr
  obtain ⟨u, hu, he⟩ := lift_betas hr
  have hle := binary_small_steps hu hg hbinary hp
  have huRed := abs_target_all_red (good_steps hu hg) he
  rw [huRed, abs_target_redLive] at hle
  omega

theorem unrestricted_next_assembly_lower_79 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) :
    59 + cost R + 2 * depth R ≤ wire (assemble T R Q) ∧
    79 ≤ wire (assemble T R Q) := by
  have ha := arbitrary_assembly_lower hT hfix hR.scope hj hQ.scope
  have hq := rigidNext_at_least_35 hQ
  have hf := Nat.mul_le_mul_right (depth R) (rigidNext_two_captures hQ)
  have hr := reader_weight_two hR hj
  constructor <;> omega

theorem unrestricted_knot_multiplicity_61 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q) :
    18 + 61 * freeLeaves 0 T ≤ wire (assemble T R Q) := by
  have ha := (unrestricted_knot_multiplicity hT hfix hR hj hQ).1
  have hq := rigidNext_at_least_35 hQ
  have hm := Nat.mul_le_mul_left (freeLeaves 0 T) (show 61 ≤ 26 + wire Q by omega)
  simp only [Nat.mul_comm (freeLeaves 0 T) 61] at hm
  omega

theorem sub162_knot_localization_35 {T R Q : Term}
    (hT : FreeUnder 1 T) (hfix : BetaJoin T (.app (.var 0) T))
    (hR : Reader R) (hj : occ 1 R = 1) (hQ : RigidNext Q)
    (hsmall : wire (assemble T R Q) < 162) :
    freeLeaves 0 T = 1 ∨
      (freeLeaves 0 T = 2 ∧ 35 ≤ wire Q ∧ wire Q ≤ 45) := by
  have hq := rigidNext_at_least_35 hQ
  rcases sub162_knot_localization hT hfix hR hj hQ hsmall with h1 | ⟨h2, hq2⟩
  · exact Or.inl h1
  · exact Or.inr ⟨h2, hq, hq2⟩

#print axioms abs_target_all_red
#print axioms rigidNext_abs_trace
#print axioms literal_below_42_resources
#print axioms rigidNext_lambda_at_least_42
#print axioms unrestricted_next_assembly_lower_79
end Blc.SelfintRound6NextAbs
