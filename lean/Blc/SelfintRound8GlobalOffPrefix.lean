/-
Completion of the normal two-lambda helper boundary.

For an off-prefix live capture, both abstraction bodies are applications.
The existing AppBodies invariant then prevents consuming the public
continuation and exposing a stream lambda. Combined with the flat binary
classification, no pure application context over any closed normal helper
with at most two source lambdas is an exact self-interpreter.
-/
import Blc.SelfintRound8GlobalOuterSelf
import Blc.SelfintRound7SourceShape
import Blc.SelfintRound6BoundNextPrice

namespace Blc.SelfintRound8GlobalOffPrefix
open Term SelfintLowerBound SelfintFloor SelfintCapture SelfintWireCost
  SelfintWiden SelfintRound6BoundNextPrice SelfintRound7SourceShape
open SelfintRound8GlobalOuterSpine (Pure)

/-- No size, application-shape, or duplication bound is imposed. -/
theorem offprefix_appBodies (b : Term) (hl : lamCount b≤1)
    (ha : IsApp b) (hc : ¬ Separated 0 (.lam b)) : AppBodies (.lam b) := by
  have hbc : ¬ Separated 1 b := fun hh => hc ⟨hh,by intro _ i hi; omega⟩
  exact ⟨ha,one_lam_capture_appBodies b 1 hl hbc⟩

theorem pure_appBodies {A E : Term} (ha : AppBodies A) (hE : Pure A E) : AppBodies E := by
  induction hE with
  | atom => exact ha
  | app hf ha ihf iha => exact ⟨ihf,iha⟩

theorem pure_offprefix_not_selfInterpreter {b E : Term}
    (hl : lamCount b≤1) (ha : IsApp b) (hc : ¬ Separated 0 (.lam b))
    (hE : Pure (.lam b) E) : ¬ IsSelfInterpreter E :=
  appBodies_not_selfInterpreter E (pure_appBodies (offprefix_appBodies b hl ha hc) hE)

/-- Every closed normal two-lambda helper is covered: separated helpers,
flat binary prefixes, and off-prefix captures. The pure generated context
has arbitrary size and self-application structure. -/
theorem pure_normal_two_lambda_not_selfInterpreter {A E : Term}
    (hA : Closed A) (hn : NFt A) (hl : lamCount A≤2) (hE : Pure A E) :
    ¬ IsSelfInterpreter E := by
  by_cases hc : Separated 0 A
  · intro hi
    exact selfinterpreter_not_separated E hi
      (SelfintRound8GlobalOuterSelf.pure_separated hc hE)
  · have hlam := closed_normal_lam hA hn
    cases A with
    | var n => exact hlam.elim
    | app f a => exact hlam.elim
    | lam b =>
        have hbl : lamCount b≤1 := by simp only [lamCount] at hl; omega
        cases b with
        | var n =>
            exact (hc (SelfintRound6BoundNext.one_leaf_separated _ 0 rfl)).elim
        | app f a => exact pure_offprefix_not_selfInterpreter hbl trivial hc hE
        | lam D =>
            have hd : lamCount D=0 := by simp only [lamCount] at hbl; omega
            exact SelfintRound8GlobalOuterSelf.pure_flat_binary_not_selfInterpreter hA hd hE

/-- Direct source bridge for an arbitrary flat sharing body. -/
theorem normal_two_lambda_sharing_not_selfInterpreter (B A : Term)
    (hB : FreeUnder 1 B) (hb : lamCount B=0)
    (hA : Closed A) (hn : NFt A) (hl : lamCount A≤2) :
    ¬ IsSelfInterpreter (.app (.lam B) A) := by
  intro hi
  exact pure_normal_two_lambda_not_selfInterpreter hA hn hl
    (SelfintRound8GlobalOuterSpine.flat_one_template hA .atom B hB hb)
    (descend_interpreter hi)

#print axioms offprefix_appBodies
#print axioms pure_normal_two_lambda_not_selfInterpreter
#print axioms normal_two_lambda_sharing_not_selfInterpreter
end Blc.SelfintRound8GlobalOffPrefix
