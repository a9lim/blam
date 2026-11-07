/-
The 162-bit reader on reader-valued inputs.

For arbitrary terms J,C put

    R(J,C) = \s. s I (\u. s (\q.C) (s s u)) J.

Its two-reader equation is R(Ji,Ci) R(Jj,Cj) ->*
Cj (V(Ci,R(Jj,Cj))) Ji.  At C=I this gives

    R R ->* J (R R J),  and P := R R J ->* J P J.

Consequently J = \p ignored. F p supplies a fixed point of F.  This is
an exact beta-reduction fact, not a smaller self-interpreter or a source
price claim.  It retains the additional generator argument explicitly.
-/
import Blc.Selfint162

namespace Blc.SelfintArchitecture7ReaderDiagonal
open Term

set_option maxRecDepth 8192

/-- The literal reader, with its NEXT and continuation left arbitrary. -/
def reader (J C : Term) : Term :=
  .lam (.app (.app (.app (.var 0) idT)
    (vK162 (shift 1 0 C) (.var 0))) (shift 1 0 J))

private theorem run_apply :
    spineSteps 1 (.app (reader (.var 1) (.var 0)) (.var 2)) =
      some (.app (.app (.app (.var 2) idT) (vK162 (.var 0) (.var 2)))
        (.var 1)) := by decide

/-- Unfolding R does not inspect either parameter. -/
theorem apply_reader (J C S : Term) :
    SpineReds (.app (reader J C) S)
      (.app (.app (.app S idT) (vK162 C S)) J) := by
  have h := spineReds_instN [C,J,S] 0 (spineReds_of_spineSteps _ run_apply)
  simpa [instN,reader,vK162,substDec,shift,substDec_idT,
    shift_shift0,substDec_shift0,shift_zero] using h

private theorem run_identity :
    spineSteps 6 (.app (reader (.var 1) (.var 0)) idT) =
      some (.var 0) := by decide

/-- Identity probes the stored continuation, independently of NEXT. -/
theorem identity_service (J C : Term) :
    SpineReds (.app (reader J C) idT) C := by
  have h := spineReds_instN [C,J] 0 (spineReds_of_spineSteps _ run_identity)
  simpa [instN,reader,vK162,substDec,shift,substDec_idT,
    shift_shift0,substDec_shift0,shift_zero] using h

private theorem run_false :
    spineSteps 8 (.app (reader (.var 1) (.var 0)) churchFalse) =
      some (.var 1) := by decide

/-- False probes NEXT. This is the 162 reader, not the 165 parser bundle. -/
theorem false_service (J C : Term) :
    SpineReds (.app (reader J C) churchFalse) J := by
  have h := spineReds_instN [C,J] 0 (spineReds_of_spineSteps _ run_false)
  simpa [instN,reader,vK162,substDec,shift,substDec_idT,substDec_churchFalse,
    shift_shift0,substDec_shift0,shift_zero] using h

/-- The exact two-reader identity, for four arbitrary possibly open terms. -/
theorem two_readers (Ji Ci Jj Cj : Term) :
    SpineReds (.app (reader Ji Ci) (reader Jj Cj))
      (.app (.app Cj (vK162 Ci (reader Jj Cj))) Ji) := by
  exact spineReds_trans (apply_reader Ji Ci (reader Jj Cj))
    (spineReds_appL Ji (spineReds_appL _ (identity_service Jj Cj)))

private theorem run_diagonal :
    spineSteps 17 (.app (reader (.var 0) idT) (reader (.var 0) idT)) =
      some (.app (.var 0)
        (.app (.app (reader (.var 0) idT) (reader (.var 0) idT)) (.var 0))) := by
  decide

/-- At C=I, the literal reader implements R R ->* J (R R J). -/
theorem identity_diagonal (J : Term) :
    SpineReds (.app (reader J idT) (reader J idT))
      (.app J (.app (.app (reader J idT) (reader J idT)) J)) := by
  have h := spineReds_instN [J] 0 (spineReds_of_spineSteps _ run_diagonal)
  simpa [instN,reader,vK162,substDec,shift,idT,
    shift_shift0,substDec_shift0,shift_zero] using h

/-- The reader-carried candidate with its extra final generator argument. -/
def diagonal (J : Term) : Term :=
  .app (.app (reader J idT) (reader J idT)) J

theorem diagonal_equation (J : Term) :
    SpineReds (diagonal J) (.app (.app J (diagonal J)) J) :=
  spineReds_appL J (identity_diagonal J)

/-- A generator condition, explicit about the extra supplied J. -/
theorem conditional_fixed_point (J F : Term)
    (h : ∀ P, SpineReds (.app (.app J P) J) (.app F P)) :
    SpineReds (diagonal J) (.app F (diagonal J)) :=
  spineReds_trans (diagonal_equation J) (h (diagonal J))

/-- An explicit sufficient specialization: `\p ignored. F p`. -/
def generator (F : Term) : Term :=
  .lam (.lam (.app (shift 2 0 F) (.var 1)))

private theorem run_generator :
    spineSteps 2 (.app (.app (generator (.var 0)) (.var 1)) (.var 2)) =
      some (.app (.var 0) (.var 1)) := by decide

theorem generator_equation (F P Q : Term) :
    SpineReds (.app (.app (generator F) P) Q) (.app F P) := by
  have h := spineReds_instN [F,P,Q] 0 (spineReds_of_spineSteps _ run_generator)
  simpa [instN,generator,substDec,shift,shift_shift0,substDec_shift0,shift_zero] using h

/-- Every F has this reader-carried fixed point. No parser contract is
asserted for F or for its fixed point. -/
theorem generator_fixed_point (F : Term) :
    SpineReds (diagonal (generator F)) (.app F (diagonal (generator F))) :=
  conditional_fixed_point (generator F) F (fun P => generator_equation F P _)

#print axioms two_readers
#print axioms identity_diagonal
#print axioms conditional_fixed_point
#print axioms generator_fixed_point

end Blc.SelfintArchitecture7ReaderDiagonal
