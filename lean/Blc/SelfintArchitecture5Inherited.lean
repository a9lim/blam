/-
Unary lookup can return both its semantic value and the exact source suffix.
The cell is `lambda b r. b (lambda k. k a r) (r e)`. This removes the
separate variable skip only when its environment is sufficiently defined.

This module proves the pair-cell lookup law for every adequate environment,
and a finite 41-bit bottom environment which makes lookup total for every
unary length. It also refutes the 239-bit inherited-environment rendering on
the closed source I, continuation F and suffix I. The full inherited-parser
induction and a lower bound for all such architectures are not claimed.
-/
import Blc.Selfint162
import Blc.SelfintClass
import Blc.SelfintControl

namespace Blc.SelfintArchitecture5Inherited
open Term SelfintControl
set_option maxRecDepth 8192
set_option maxHeartbeats 800000

/-- The source environment cell, with a value/suffix pair at its zero arm. -/
def cell (A E : Term) : Term :=
  .lam (.lam (.app (.app (.var 1) (pairT (shift 2 0 A) (.var 0)))
    (.app (.var 0) (shift 2 0 E))))

/-- The environment prefix contains actual semantic arguments. -/
def environment (as : List Term) (E : Term) : Term :=
  as.foldr cell E

/-- A finite fallback: `lambda b r k. k b (b r (r r b))`. The value is
arbitrary, but the suffix is correct for every unary index. -/
def bottom : Term :=
  .lam (.lam (.lam (.app (.app (.var 0) (.var 2))
    (.app (.app (.var 2) (.var 1)) (.app (.app (.var 1) (.var 1)) (.var 2))))))

theorem bottom_closed : Closed bottom := by decide
theorem bottom_bits : (blcCode bottom).length = 41 := by decide

theorem run_cell_zero :
    spineSteps 5 (.app (pairT churchTrue (.var 2)) (cell (.var 0) (.var 1))) =
      some (pairT (.var 0) (.var 2)) := by decide

theorem run_cell_successor :
    spineSteps 5 (.app (pairT churchFalse (.var 2)) (cell (.var 0) (.var 1))) =
      some (.app (.var 2) (.var 1)) := by decide

theorem cell_zero (A E R : Term) :
    SpineReds (.app (pairT churchTrue R) (cell A E)) (pairT A R) := by
  have h := spineReds_instN [A, E, R] 0 (spineReds_of_spineSteps _ run_cell_zero)
  simpa [instN, cell, pairT, substDec, shift, substDec_churchTrue,
    shift_churchTrue, shift_shift0, substDec_shift0, shift_zero] using h

theorem cell_successor (A E R : Term) :
    SpineReds (.app (pairT churchFalse R) (cell A E)) (.app R E) := by
  have h := spineReds_instN [A, E, R] 0 (spineReds_of_spineSteps _ run_cell_successor)
  simpa [instN, cell, pairT, substDec, shift, substDec_churchFalse,
    shift_churchFalse, shift_shift0, substDec_shift0, shift_zero] using h

/-- Arbitrary values and arbitrary rigid suffixes: enough environment cells
make raw unary lookup recover the selected value and the exact suffix. -/
theorem lookup_environment (as : List Term) (E R : Term) (i : Nat)
    (hi : i < as.length) :
    SpineReds (.app (streamOf (vbits i) R) (environment as E))
      (pairT (as[i]'hi) R) := by
  induction as generalizing i with
  | nil => simp at hi
  | cons A as ih =>
      cases i with
      | zero => simpa [environment, stream_vbits_zero] using cell_zero A (environment as E) R
      | succ i =>
          have hi' : i < as.length := by simpa using hi
          exact spineReds_trans (cell_successor A (environment as E) (streamOf (vbits i) R))
            (ih i hi')

theorem run_bottom_zero :
    SelfintClass.normalSteps 6
      (.app (.app (pairT churchTrue (.var 1)) bottom) (.var 0)) =
        some (.app (.app (.var 0) churchTrue) (.var 1)) := by decide

theorem run_bottom_successor :
    SelfintClass.normalSteps 6
      (.app (.app (pairT churchFalse (.var 1)) bottom) (.var 0)) =
        some (.app (.app (.var 0) churchFalse)
          (.app (.app (.var 1) (.var 1)) churchFalse)) := by decide

theorem bottom_zero (C R : Term) :
    Betas (.app (.app (pairT churchTrue R) bottom) C)
      (.app (.app C churchTrue) R) := by
  have h := betas_inst [C, R] 0 (SelfintClass.normalSteps_sound run_bottom_zero)
  simpa [instN, subst_pairT, inst_closed _ _ bottom_closed, substDec,
    substDec_closed _ _ bottom_closed, substDec_churchTrue, shift_zero,
    substDec_shift] using h

theorem bottom_successor (C R : Term) :
    Betas (.app (.app (pairT churchFalse R) bottom) C)
      (.app (.app C churchFalse) (.app (.app R R) churchFalse)) := by
  have h := betas_inst [C, R] 0 (SelfintClass.normalSteps_sound run_bottom_successor)
  simpa [instN, subst_pairT, inst_closed _ _ bottom_closed, substDec,
    substDec_closed _ _ bottom_closed, substDec_churchFalse, shift_zero,
    substDec_shift] using h

theorem raw_skip (i : Nat) (R J : Term) :
    SpineReds (.app (.app (streamOf (vbits i) R) (streamOf (vbits i) R)) J) R := by
  refine spineReds_trans (spineReds_appL J (skip_self i R)) ?_
  have h := spine_beta (shift 1 0 R) J
  simpa [contract, substDec_shift] using h

/-- No recursive helper is needed at the bottom: its diagonal branch skips
the remaining unary tail in one uniform equation. -/
theorem lookup_bottom (i : Nat) (R C : Term) :
    Betas (.app (.app (streamOf (vbits i) R) bottom) C)
      (.app (.app C (if i = 0 then churchTrue else churchFalse)) R) := by
  cases i with
  | zero => simpa [stream_vbits_zero] using bottom_zero C R
  | succ i =>
      exact betas_trans (bottom_successor C (streamOf (vbits i) R))
        (betas_appR (.app C churchFalse) (betas_of_spineReds (raw_skip i R churchFalse)))

/-- Totality here concerns lookup and suffix recovery, not evaluation of
the semantic value returned to the continuation. -/
def Total (E : Term) : Prop :=
  ∀ i R C, ∃ A, Betas (.app (.app (streamOf (vbits i) R) E) C) (.app (.app C A) R)

theorem bottom_total : Total bottom := by
  intro i R C
  exact ⟨_, lookup_bottom i R C⟩

theorem cell_total (A E : Term) (hE : Total E) : Total (cell A E) := by
  intro i R C
  cases i with
  | zero =>
      refine ⟨A, betas_trans (betas_appL C (betas_of_spineReds (cell_zero A E R))) ?_⟩
      exact betas_of_spineReds (spine_pairT A R C)
  | succ i =>
      obtain ⟨V, hV⟩ := hE i R C
      exact ⟨V, betas_trans (betas_appL C
        (betas_of_spineReds (cell_successor A E (streamOf (vbits i) R)))) hV⟩

theorem environment_total (as : List Term) : Total (environment as bottom) := by
  induction as with
  | nil => exact bottom_total
  | cons A as ih => exact cell_total A _ ih

/-- The exact failed source printed by `architecture5_inherited.py --source failed239`.
The script checks this literal against its named-source compilation. -/
def failed239 : Term := (.app (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 1) (.lam (.var 1))))))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.lam (.app (.lam (.lam (.lam (.app (.app (.app (.var 0) (.lam (.var 0))) (.lam (.app (.var 1) (.lam (.lam (.app (.app (.var 0) (.var 6)) (.var 4))))))) (.lam (.lam (.app (.app (.var 4) (.lam (.app (.app (.var 2) (.app (.var 4) (.lam (.app (.app (.app (.var 8) (.lam (.lam (.app (.app (.var 1) (.lam (.app (.app (.var 0) (.var 3)) (.var 1)))) (.app (.var 0) (.var 9)))))) (.var 3)) (.var 2))))) (.app (.var 5) (.lam (.app (.var 5) (.app (.var 1) (.var 0)))))))) (.var 0)))))))) (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 0))))))

theorem failed239_bits : (blcCode failed239).length = 239 := by decide
theorem failed239_closed : Closed failed239 := by decide

/-- The omitted dummy environment is observable even with closed arguments. -/
theorem failed239_identity_probe :
    SelfintClass.normalSteps 38
      (.app (.app failed239 churchFalse) (streamOf (blcCode idT) idT)) =
        some churchFalse := by decide

theorem failed239_not_self_interpreter : ¬ IsSelfInterpreter failed239 := by
  intro hE
  have hactual := SelfintClass.normalSteps_sound failed239_identity_probe
  have hexpected := betas_of_spineReds (spine_false2 (.lam idT) idT)
  have hbad := join_trans (join_symm (join_of_betas hactual))
    (join_trans (contract_join hE (by decide : Closed idT) churchFalse idT)
      (join_of_betas hexpected))
  obtain ⟨W, hF, hI⟩ := hbad
  have hFn : NormalForm churchFalse := fun _ hb => nft_no_beta (by decide) hb
  have hIn : NormalForm idT := fun _ hb => nft_no_beta (by decide) hb
  have heq := (normalForm_betas_eq hFn hF).symm.trans (normalForm_betas_eq hIn hI)
  exact (by decide : churchFalse ≠ idT) heq

#print axioms lookup_environment
#print axioms lookup_bottom
#print axioms environment_total
#print axioms failed239_not_self_interpreter

end Blc.SelfintArchitecture5Inherited
