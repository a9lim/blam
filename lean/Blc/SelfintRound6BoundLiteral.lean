/-
A kernel-checked 38-bit floor for a literal exact-interpreter interface.

The public continuation and quotation cannot supply the required internal
live capture: both are internally separated, and substitution for globals
preserves internal separation. Thus the body of `lambda c s. B` contains
three live internal binders, including its incomparable nonlinear pair.

An index charge for internally bound occurrences is disjoint from the
public continuation occurrence. These source counts give 38 bits, without
Statman's theorem or a finite layout classification. This theorem concerns
the literal source interface, not an arbitrary source that later reduces
to that interface.
-/
import Blc.SelfintFloorLiteral
import Blc.SelfintWiden

namespace Blc.SelfintRound6BoundLiteral
open Term SelfintLowerBound SelfintCapture SelfintNonlinearChain
open SelfintFloor SelfintWireCost

/-- Public arguments cannot create a live capture between internal source
binders. The exact normal output for `lambda a b. a b` forces one in B. -/
theorem literal_body_not_separated {B : Term}
    (hE : IsSelfInterpreter (.lam (.lam B))) : ¬ Separated 0 B := by
  intro hs
  let Q := streamOf (blcCode mixed) (.var 1)
  have hQ : Separated 0 Q := separated_stream _ _ trivial
  have hB := SelfintWiden.separated_global_subst B (.var 1) 1 hs trivial
  have hR := SelfintWiden.separated_global_subst _ Q 0 hB hQ
  obtain ⟨w, hw, ho⟩ := hE.2 mixed (by decide)
  have he : w = target := normalForm_betas_eq target_normal ho
  subst w
  have hred := betas_preserve_nf (interface_betas B Q) hw target_normal
  exact target_not_separated (separated_betas hred 0 hR)

/-- The same internal-capture requirement holds after stripping just the
public continuation binder. -/
theorem one_lambda_body_not_separated {B : Term}
    (hE : IsSelfInterpreter (.lam B)) : ¬ Separated 0 B := by
  intro hs
  let Q := streamOf (blcCode mixed) (.var 1)
  have hQ : Separated 0 Q := separated_stream _ _ trivial
  have hB := SelfintWiden.separated_global_subst B (.var 0) 0 hs trivial
  obtain ⟨w, hw, ho⟩ := hE.2 mixed (by decide)
  have he : w = target := normalForm_betas_eq target_normal ho
  subst w
  have hb : Betas (.app (.app (.lam B) (.var 0)) Q)
      (.app (substDec 0 (.var 0) B) Q) :=
    .head (.appL Q (.beta B (.var 0))) (.refl _)
  have hred := betas_preserve_nf hb hw target_normal
  exact target_not_separated (separated_betas hred 0 ⟨hB, hQ⟩)

theorem one_lambda_body_three_live {B : Term}
    (hE : IsSelfInterpreter (.lam B)) : 3 ≤ live B := by
  have hc : ¬ Chain B := selfInterpreter_not_chain (E := .lam B) hE
  have h := not_chain_capture_live 0 B hc
    (hasLiveCapture_of_not_separated B 0 (one_lambda_body_not_separated hE))
  simpa only [outerLive, Nat.add_zero] using h

/-- The public continuation has a source occurrence, independently of how
the stream binder later emerges. -/
theorem one_lambda_public_occ {B : Term}
    (hE : IsSelfInterpreter (.lam B)) : 1 ≤ occ 0 B := by
  let Q := streamOf (blcCode mixed) (.var 1)
  have hQ : occ 0 Q = 0 := by
    rw [occ_stream_var]; decide
  have h1 : occ 1 B = 0 := occ_of_freeUnder B 1 1 hE.1 (by omega)
  obtain ⟨w, hw, ho⟩ := hE.2 mixed (by decide)
  have he : w = target := normalForm_betas_eq target_normal ho
  subst w
  have hb : Betas (.app (.app (.lam B) (.var 0)) Q)
      (.app (substDec 0 (.var 0) B) Q) :=
    .head (.appL Q (.beta B (.var 0))) (.refl _)
  have hred := betas_preserve_nf hb hw target_normal
  by_cases hz : occ 0 B = 0
  · have hs : occ 0 (.app (substDec 0 (.var 0) B) Q) = 0 := by
      rw [occ, occ_substDec_ge B (.var 0) 0 0 (by omega), h1, hz, hQ]
      simp
    have hh := occ_betas_zero hred 0 hs
    simp [target, mixed, occ] at hh
  · omega

theorem literal_body_has_live_capture {B : Term}
    (hE : IsSelfInterpreter (.lam (.lam B))) : HasLiveCapture 0 B :=
  hasLiveCapture_of_not_separated B 0 (literal_body_not_separated hE)

/-- The capture witness and incomparable nonlinear pair force three live
binders inside B, excluding both public binders. -/
theorem literal_body_three_live {B : Term}
    (hE : IsSelfInterpreter (.lam (.lam B))) : 3 ≤ live B := by
  have h := not_chain_capture_live 0 B (selfInterpreter_body_not_chain hE)
    (literal_body_has_live_capture hE)
  simpa only [outerLive, Nat.add_zero] using h

/-- Charge only indices of variables bound inside the selected source
subterm. Its globals are excluded, even beneath internal abstractions. -/
def internalIndex : Nat → Term → Nat
  | d, .var n => if n < d then n else 0
  | d, .lam b => internalIndex (d + 1) b
  | d, .app f a => internalIndex d f + internalIndex d a

theorem internalIndex_ge_occ (t : Term) (d j : Nat) (hj : j < d) :
    occ j t * j ≤ internalIndex d t := by
  induction t generalizing d j with
  | var n =>
      simp only [occ, internalIndex]
      split <;> split <;> omega
  | lam b ih =>
      have h := ih (d + 1) (j + 1) (by omega)
      have hh := Nat.mul_le_mul_left (occ (j + 1) b) (Nat.le_succ j)
      exact Nat.le_trans hh h
  | app f a ihf iha =>
      have hf := ihf d j hj
      have ha := iha d j hj
      simp only [occ, internalIndex, Nat.add_mul]
      omega

/-- Internal index zero forbids every live internal capture. -/
theorem separated_of_internalIndex_zero (t : Term) (d : Nat)
    (h : internalIndex d t = 0) : Separated d t := by
  induction t generalizing d with
  | var n => trivial
  | app f a ihf iha =>
      simp only [internalIndex, Nat.add_eq_zero_iff] at h
      exact ⟨ihf d h.1, iha d h.2⟩
  | lam b ih =>
      change internalIndex (d + 1) b = 0 at h
      refine ⟨ih (d + 1) h, ?_⟩
      intro _ i hi
      have hh := internalIndex_ge_occ b (d + 1) (i + 1) (by omega)
      have hz : occ (i + 1) b * (i + 1) = 0 := by omega
      exact (Nat.mul_eq_zero.mp hz).resolve_right (by omega)

/-- The internal index charge and every chosen global's index charge use
disjoint leaves of the original syntax. -/
theorem indexSum_internal_add_global (t : Term) (d j : Nat) (hj : d ≤ j) :
    internalIndex d t + occ j t * j ≤ indexSum t := by
  induction t generalizing d j with
  | var n =>
      simp only [internalIndex, occ, indexSum]
      split <;> split <;> omega
  | lam b ih =>
      have h := ih (d + 1) (j + 1) (by omega)
      have hh := Nat.mul_le_mul_left (occ (j + 1) b) (Nat.le_succ j)
      exact Nat.le_trans (Nat.add_le_add_left hh _) h
  | app f a ihf iha =>
      have hf := ihf d j hj
      have ha := iha d j hj
      simp only [internalIndex, occ, indexSum, Nat.add_mul]
      omega

/-- One index bit belongs to an internal capture; another belongs to c,
whose bound occurrence lies beneath the public s binder. -/
theorem literal_body_two_index_bits {B : Term}
    (hE : IsSelfInterpreter (.lam (.lam B))) : 2 ≤ indexSum B := by
  have hi : 0 < internalIndex 0 B := by
    by_cases hz : internalIndex 0 B = 0
    · exact (literal_body_not_separated hE (separated_of_internalIndex_zero B 0 hz)).elim
    · omega
  have hc := (literal_public_occ hE).2
  have hs := indexSum_internal_add_global B 0 1 (by omega)
  omega

/-- Every literal two-lambda exact BLC self-interpreter has at least 38
bits. This is an unconditional theorem for that source shape. -/
theorem literal_interface_bound_38 {B : Term}
    (hE : IsSelfInterpreter (.lam (.lam B))) :
    38 ≤ (blcCode (.lam (.lam B))).length := by
  have hn := not_chain_two_nonlinear B (selfInterpreter_body_not_chain hE)
  have hl := literal_body_three_live hE
  obtain ⟨h0, h1⟩ := literal_public_occ hE
  have hf0 := freeLeaves_split B 0
  have hf1 := freeLeaves_split B 1
  have hx := literal_body_two_index_bits hE
  have hw := count_wire_bound B
  change 38 ≤ wire (.lam (.lam B))
  simp only [wire_lam]
  simp only [Nat.zero_add] at hf0
  omega

/-- Any abstraction-rooted exact interpreter has at least 31 bits. The
three internal live binders are disjoint from its live public binder. -/
theorem one_lambda_interface_bound_31 {B : Term}
    (hE : IsSelfInterpreter (.lam B)) : 31 ≤ (blcCode (.lam B)).length := by
  have hn := not_chain_two_nonlinear B
    (show ¬ Chain B from selfInterpreter_not_chain (E := .lam B) hE)
  have hl := one_lambda_body_three_live hE
  have hc := one_lambda_public_occ hE
  have hf := freeLeaves_split B 0
  have hx : 0 < indexSum B := by
    by_cases hz : indexSum B = 0
    · exact (one_lambda_body_not_separated hE
        (zeroIndices_separated B (zeroIndices_of_indexSum_zero B hz) 0)).elim
    · omega
  have hw := count_wire_bound B
  change 31 ≤ wire (.lam B)
  simp only [wire_lam]
  simp only [Nat.zero_add] at hf
  omega

#print axioms literal_body_not_separated
#print axioms literal_interface_bound_38
#print axioms one_lambda_interface_bound_31
end Blc.SelfintRound6BoundLiteral
