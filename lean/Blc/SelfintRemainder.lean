/-
A 93-bit exact syntactic remainder extractor. It parses arbitrary BLC
terms, including open and divergent terms, without evaluating the source.
The proof is structural induction, with fixed symbolic head clauses.
This is a construction, not an optimality result for remainder extraction.
-/
import Blc.Selfint165

namespace Blc
open Term
namespace SelfintRemainder

/-- NEXT, with parser p free at index j outside its two local binders. -/
def nextAt (j : Nat) : Term :=
  .lam (.lam (.app (.var (j + 2))
    (.app (.app (.var 1) (.var 0)) (.app (.var (j + 2)) (.var 0)))))

/-- The inline reader under p and s. -/
def handlerBody : Term :=
  .lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (nextAt 4))))) (.var 0))

def body : Term :=
  .lam (.lam (.app (.app (.var 0) handlerBody)
    (.app (.app (.var 0) (.var 0)) (.var 0))))

def knot : Term := .lam (.app body (.app (.var 0) (.var 0)))
def parser : Term := .app knot knot
def rem93 : Term := .app (.lam (.app (.var 0) (.var 0))) knot

def rem93Wire : List Bool := [false, true, false, false, false, true, true, false, true, false, false, false, false, true, false, false, false, false, false, true, false, true, true, false, false, false, false, true, false, true, true, false, false, false, false, false, false, true, true, false, false, false, false, false, false, true, true, true, true, true, true, true, true, false, false, true, false, true, true, true, false, true, false, false, true, true, true, true, true, true, true, true, false, true, false, true, false, false, true, false, true, true, false, true, false, true, false, false, true, true, false, true, false]

theorem wire_rem93 : blcCode rem93 = rem93Wire := by decide

def next : Term :=
  .lam (.lam (.app parser
    (.app (.app (.var 1) (.var 0)) (.app parser (.var 0)))))

def handler : Term :=
  .lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) next)))) (.var 0))

theorem parser_closed : Closed parser := by decide
theorem next_closed : Closed next := by decide
theorem handler_closed : Closed handler := by decide
theorem rem93_closed : Closed rem93 := by decide
theorem rem93_size : (blcCode rem93).length = 93 := by decide

theorem subst_parser (j : Nat) (s : Term) : substDec j s parser = parser :=
  substDec_closed j s parser_closed
theorem subst_next (j : Nat) (s : Term) : substDec j s next = next :=
  substDec_closed j s next_closed
theorem subst_handler (j : Nat) (s : Term) : substDec j s handler = handler :=
  substDec_closed j s handler_closed

theorem run_knot : spineSteps 1 rem93 = some parser := by decide

theorem run_unfold : spineSteps 3 (.app parser (.var 0)) =
    some (.app (.app (.var 0) handler)
      (.app (.app (.var 0) (.var 0)) (.var 0))) := by decide

theorem run_var :
    spineSteps 6 (.app (.app (pairT churchFalse (.var 0)) handler) (.var 1)) =
      some (.var 1) := by decide

theorem run_zero :
    spineSteps 6 (.app (.app (pairT churchTrue (.var 0)) handler) (.var 1)) =
      some (.app (.var 1) next) := by decide

theorem run_lam : spineSteps 3 (.app (pairT churchTrue (.var 0)) next) =
    some (.app parser (.app (.app churchTrue (.var 0)) (.app parser (.var 0)))) := by decide

theorem run_app : spineSteps 3 (.app (pairT churchFalse (.var 0)) next) =
    some (.app parser (.app (.app churchFalse (.var 0)) (.app parser (.var 0)))) := by decide

theorem unfold_parser (s : Term) :
    SpineReds (.app parser s) (.app (.app s handler) (.app (.app s s) s)) := by
  have h := spineReds_instN [s] 0 (spineReds_of_spineSteps _ run_unfold)
  simpa [instN, substDec, shift, subst_parser, subst_handler, shift_zero] using h

theorem variable_clause (r S : Term) :
    SpineReds (.app (.app (pairT churchFalse r) handler) S) S := by
  have h := spineReds_instN [r, S] 0 (spineReds_of_spineSteps _ run_var)
  simpa [instN, pairT, substDec, shift, subst_handler, shift_churchFalse,
    substDec_churchFalse, shift_shift0, substDec_shift0, shift_zero] using h

theorem zero (r S : Term) :
    SpineReds (.app (.app (pairT churchTrue r) handler) S) (.app S next) := by
  have h := spineReds_instN [r, S] 0 (spineReds_of_spineSteps _ run_zero)
  simpa [instN, pairT, substDec, shift, subst_handler, subst_next, shift_churchTrue,
    substDec_churchTrue, shift_shift0, substDec_shift0, shift_zero] using h

theorem abstraction (r : Term) :
    Betas (.app (pairT churchTrue r) next) (.app parser r) := by
  have h := spineReds_instN [r] 0 (spineReds_of_spineSteps _ run_lam)
  have h' : SpineReds (.app (pairT churchTrue r) next)
      (.app parser (.app (.app churchTrue r) (.app parser r))) := by
    simpa [instN, pairT, substDec, shift, subst_next, subst_parser, shift_churchTrue,
      substDec_churchTrue, substDec_shift0, shift_zero] using h
  exact betas_trans (betas_of_spineReds h')
    (betas_appR parser (betas_of_spineReds (spine_true2 r (.app parser r))))

theorem application (r : Term) :
    Betas (.app (pairT churchFalse r) next) (.app parser (.app parser r)) := by
  have h := spineReds_instN [r] 0 (spineReds_of_spineSteps _ run_app)
  have h' : SpineReds (.app (pairT churchFalse r) next)
      (.app parser (.app (.app churchFalse r) (.app parser r))) := by
    simpa [instN, pairT, substDec, shift, subst_next, subst_parser, shift_churchFalse,
      substDec_churchFalse, substDec_shift0, shift_zero] using h
  exact betas_trans (betas_of_spineReds h')
    (betas_appR parser (betas_of_spineReds (spine_false2 r (.app parser r))))

/-- The recursion theorem is uniform in the entire suffix, so the APP
case can use another complete term's stream as that suffix. -/
theorem parser_contract : ∀ (M N : Term),
    Betas (.app parser (streamOf (blcCode M) N)) N := by
  intro M
  induction M with
  | var i =>
    intro N
    refine betas_trans (betas_of_spineReds (unfold_parser _)) ?_
    rw [code_var, streamOf_cons]
    exact betas_trans (betas_of_spineReds (variable_clause _ _))
      (betas_of_spineReds (pastZero_self (.var i) N _ (.refl _)))
  | lam M ih =>
    intro N
    refine betas_trans (betas_of_spineReds (unfold_parser _)) ?_
    refine betas_trans (betas_of_spineReds (zero _ _)) ?_
    refine betas_trans (betas_appL next
      (betas_of_spineReds (pastZero_self (.lam M) N _ (.refl _)))) ?_
    exact betas_trans (abstraction _) (ih N)
  | app M Q ihM ihQ =>
    intro N
    refine betas_trans (betas_of_spineReds (unfold_parser _)) ?_
    refine betas_trans (betas_of_spineReds (zero _ _)) ?_
    refine betas_trans (betas_appL next
      (betas_of_spineReds (pastZero_self (.app M Q) N _ (.refl _)))) ?_
    refine betas_trans (application _) ?_
    change Betas (.app parser (.app parser (streamOf (blcCode M ++ blcCode Q) N))) N
    rw [streamOf_append]
    exact betas_trans (betas_appR parser (ihM (streamOf (blcCode Q) N))) (ihQ N)

/-- Exact remainder extraction for every syntactically valid source,
with no closedness, normalization, or suffix hypothesis. -/
theorem rem93_contract (M N : Term) :
    Betas (.app rem93 (streamOf (blcCode M) N)) N :=
  betas_trans (betas_appL _ (betas_of_spineReds
    (spineReds_of_spineSteps _ run_knot))) (parser_contract M N)

end SelfintRemainder
end Blc
