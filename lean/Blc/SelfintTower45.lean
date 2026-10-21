/-
A 45-bit exact reader for all-zero prefixes followed by a unary variable
code. This handles every lambda tower, but is NOT a general remainder
extractor. It limits lower bounds using only the infinite-zero execution.
-/
import Blc.SelfintRemainder
import Blc.SelfintZero

namespace Blc.SelfintTower45
open Term SelfintZero

/-- D = λb r d. r (b d r) d. -/
def context : Term := .lam (.lam (.lam
  (.app (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))))

def parse (s : Term) : Term := .app (.app s context) context

def reader : Term := .lam
  (.app (.lam (.app (.app (.var 1) (.var 0)) (.var 0))) context)

theorem context_closed : Closed context := by decide
theorem reader_closed : Closed reader := by decide
theorem reader_size : (blcCode reader).length = 45 := by decide

theorem subst_context (j : Nat) (s : Term) : substDec j s context = context :=
  substDec_closed j s context_closed
theorem subst_reader (j : Nat) (s : Term) : substDec j s reader = reader :=
  substDec_closed j s reader_closed

theorem run_unfold : spineSteps 2 (.app reader (.var 0)) =
    some (parse (.var 0)) := by decide

theorem unfold_reader (s : Term) : SpineReds (.app reader s) (parse s) := by
  have h := spineReds_instN [s] 0 (spineReds_of_spineSteps _ run_unfold)
  simpa [instN, parse, substDec, shift, subst_reader, subst_context, shift_zero] using h

theorem run_bit (b : Bool) : spineSteps 4 (parse (pairT (churchBit b) (.var 0))) =
    some (.app (.app (.var 0) (.app (.app (churchBit b) context) (.var 0))) context) := by
  cases b <;> decide

theorem bit_clause (b : Bool) (r : Term) :
    Betas (parse (pairT (churchBit b) r))
      (.app (.app r (.app (.app (churchBit b) context) r)) context) := by
  have h := spineReds_instN [r] 0 (spineReds_of_spineSteps _ (run_bit b))
  have h' : SpineReds (parse (pairT (churchBit b) r))
      (.app (.app r (.app (.app (churchBit b) context) r)) context) := by
    cases b <;>
      simpa [churchBit, instN, parse, pairT, substDec, shift, subst_context,
        shift_churchTrue, substDec_churchTrue, shift_churchFalse,
        substDec_churchFalse, substDec_shift0, shift_zero] using h
  exact betas_of_spineReds h'

theorem zero (r : Term) : Betas (parse (pairT churchTrue r)) (parse r) :=
  betas_trans (bit_clause false r)
    (betas_appL context (betas_appR r (betas_of_spineReds (spine_true2 context r))))

theorem one (r : Term) : Betas (parse (pairT churchFalse r)) (.app (.app r r) context) :=
  betas_trans (bit_clause true r)
    (betas_appL context (betas_appR r (betas_of_spineReds (spine_false2 context r))))

theorem variable_clause (i : Nat) (N : Term) :
    Betas (parse (streamOf (blcCode (.var i)) N)) N := by
  rw [code_var, streamOf_cons]
  refine betas_trans (one _) ?_
  refine betas_trans (betas_of_spineReds (spineReds_appL context (skip_self i N))) ?_
  have h := spine_beta (shift 1 0 N) context
  have e : contract (shift 1 0 N) context = N := substDec_shift N _ 0
  rw [e] at h
  exact betas_of_spineReds h

/-- No parity, closedness, or suffix restriction: 0^k 1^(i+1) 0 ++ N. -/
theorem parse_zeros_variable (k i : Nat) (N : Term) :
    Betas (parse (zeros k (streamOf (blcCode (.var i)) N))) N := by
  induction k with
  | zero => exact variable_clause i N
  | succ k ih => exact betas_trans (zero _) ih

theorem reader_zeros_variable (k i : Nat) (N : Term) :
    Betas (.app reader (zeros k (streamOf (blcCode (.var i)) N))) N :=
  betas_trans (betas_of_spineReds (unfold_reader _)) (parse_zeros_variable k i N)

/-- In particular every closed source λ^n.I, the family used by the
zero-stream obstruction, is parsed exactly for every suffix. -/
theorem reader_towers (n : Nat) (N : Term) :
    Betas (.app reader (streamOf (blcCode (SelfintZero.tower n)) N)) N := by
  rw [SelfintZero.tower_stream]
  have he : zeros (2 * n) (streamOf (blcCode (.lam (.var 0))) N) =
      zeros (2 * n + 2) (streamOf (blcCode (.var 0)) N) := by
    induction (2 * n) with
    | zero => rfl
    | succ k ih => simpa only [zeros] using congrArg (pairT churchTrue) ih
  rw [he]
  exact reader_zeros_variable _ _ _


end Blc.SelfintTower45
