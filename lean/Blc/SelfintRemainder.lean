/-
A 70-bit exact syntactic remainder extractor. It parses arbitrary BLC
terms, including open and divergent terms, without evaluating the source.
The source stream activates a shared context that supplies its own recursion.
This is a construction, not an optimality result for remainder extraction.
-/
import Blc.Selfint165

namespace Blc
open Term
namespace SelfintRemainder

/-- Q = λt u d.t u (u d d) d d. The input's two fields are consumed
before the self-passed context, keeping its four occurrences innermost. -/
def next : Term :=
  .lam (.lam (.lam (.app (.app
    (.app (.app (.var 2) (.var 1))
      (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0)) (.var 0))))

/-- D = λb r.r (b Q r). Boolean selection shares the operator r. -/
def context : Term :=
  .lam (.lam (.app (.var 0) (.app (.app (.var 1) next) (.var 0))))

/-- The recursive operation is self-passing, with no fixed-point wrapper. -/
def parse (s : Term) : Term := .app (.app s context) context

def rem70 : Term :=
  .lam (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) context)

def rem70Wire : List Bool := [false, false, false, true, false, false, false, true, false, true, true, true, false, true, false, true, false, false, false, false, false, false, true, true, false, false, true, false, true, true, true, false, false, false, false, false, false, false, false, true, false, true, false, true, false, true, true, true, true, false, true, true, false, false, true, false, true, true, true, false, true, false, true, false, true, false, true, false, true, false]

theorem wire_rem70 : blcCode rem70 = rem70Wire := by decide

theorem context_closed : Closed context := by decide
theorem next_closed : Closed next := by decide
theorem rem70_closed : Closed rem70 := by decide
theorem rem70_size : (blcCode rem70).length = 70 := by decide

theorem subst_context (j : Nat) (s : Term) : substDec j s context = context :=
  substDec_closed j s context_closed
theorem subst_next (j : Nat) (s : Term) : substDec j s next = next :=
  substDec_closed j s next_closed
theorem subst_rem70 (j : Nat) (s : Term) : substDec j s rem70 = rem70 :=
  substDec_closed j s rem70_closed

theorem run_unfold : spineSteps 2 (.app rem70 (.var 0)) =
    some (parse (.var 0)) := by decide

theorem run_var : spineSteps 3 (parse (pairT churchFalse (.var 0))) =
    some (.app (.app (.var 0) (.app (.app churchFalse next) (.var 0))) context) := by decide

theorem run_zero : spineSteps 3 (parse (pairT churchTrue (.var 0))) =
    some (.app (.app (.var 0) (.app (.app churchTrue next) (.var 0))) context) := by decide

theorem run_lam : spineSteps 6 (.app (.app (pairT churchTrue (.var 0)) next) context) =
    some (parse (.var 0)) := by decide

theorem run_app : spineSteps 6 (.app (.app (pairT churchFalse (.var 0)) next) context) =
    some (parse (parse (.var 0))) := by decide

theorem unfold_rem70 (s : Term) : SpineReds (.app rem70 s) (parse s) := by
  have h := spineReds_instN [s] 0 (spineReds_of_spineSteps _ run_unfold)
  simpa [instN, parse, substDec, shift, subst_rem70, subst_context, shift_zero] using h

theorem variable_clause (r : Term) :
    Betas (parse (pairT churchFalse r)) (.app (.app r r) context) := by
  have h := spineReds_instN [r] 0 (spineReds_of_spineSteps _ run_var)
  have h' : SpineReds (parse (pairT churchFalse r))
      (.app (.app r (.app (.app churchFalse next) r)) context) := by
    simpa [instN, parse, pairT, substDec, shift, subst_context, subst_next,
      shift_churchFalse, substDec_churchFalse, substDec_shift0, shift_zero] using h
  exact betas_trans (betas_of_spineReds h')
    (betas_appL context (betas_appR r (betas_of_spineReds (spine_false2 next r))))

theorem zero (r : Term) :
    Betas (parse (pairT churchTrue r)) (.app (.app r next) context) := by
  have h := spineReds_instN [r] 0 (spineReds_of_spineSteps _ run_zero)
  have h' : SpineReds (parse (pairT churchTrue r))
      (.app (.app r (.app (.app churchTrue next) r)) context) := by
    simpa [instN, parse, pairT, substDec, shift, subst_context, subst_next,
      shift_churchTrue, substDec_churchTrue, substDec_shift0, shift_zero] using h
  exact betas_trans (betas_of_spineReds h')
    (betas_appL context (betas_appR r (betas_of_spineReds (spine_true2 next r))))

theorem abstraction (r : Term) :
    SpineReds (.app (.app (pairT churchTrue r) next) context) (parse r) := by
  have h := spineReds_instN [r] 0 (spineReds_of_spineSteps _ run_lam)
  simpa [instN, parse, pairT, substDec, shift, subst_next, subst_context,
    shift_churchTrue, substDec_churchTrue, substDec_shift0, shift_zero] using h

theorem application (r : Term) :
    SpineReds (.app (.app (pairT churchFalse r) next) context) (parse (parse r)) := by
  have h := spineReds_instN [r] 0 (spineReds_of_spineSteps _ run_app)
  simpa [instN, parse, pairT, substDec, shift, subst_next, subst_context,
    shift_churchFalse, substDec_churchFalse, substDec_shift0, shift_zero] using h

/-- The recursion theorem is uniform in the entire suffix, so the APP
case can use another complete term's stream as that suffix. -/
theorem parse_contract : ∀ (M N : Term),
    Betas (parse (streamOf (blcCode M) N)) N := by
  intro M
  induction M with
  | var i =>
    intro N
    rw [code_var, streamOf_cons]
    refine betas_trans (variable_clause _) ?_
    refine betas_trans (betas_of_spineReds (spineReds_appL context (skip_self i N))) ?_
    have h := spine_beta (shift 1 0 N) context
    have e : contract (shift 1 0 N) context = N := substDec_shift N _ 0
    rw [e] at h
    exact betas_of_spineReds h
  | lam M ih =>
    intro N
    refine betas_trans (zero _) ?_
    exact betas_trans (betas_of_spineReds (abstraction _)) (ih N)
  | app M Q ihM ihQ =>
    intro N
    refine betas_trans (zero _) ?_
    refine betas_trans (betas_of_spineReds (application _)) ?_
    change Betas (parse (parse (streamOf (blcCode M ++ blcCode Q) N))) N
    rw [streamOf_append]
    exact betas_trans
      (betas_appL context (betas_appL context (ihM (streamOf (blcCode Q) N))))
      (ihQ N)

/-- Exact remainder extraction for every syntactically valid source,
with no closedness, normalization, or suffix hypothesis. -/
theorem rem70_contract (M N : Term) :
    Betas (.app rem70 (streamOf (blcCode M) N)) N :=
  betas_trans (betas_of_spineReds (unfold_rem70 _)) (parse_contract M N)

end SelfintRemainder
end Blc
