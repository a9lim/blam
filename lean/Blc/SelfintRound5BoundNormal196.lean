/-
A 196-bit beta-normal exact self-interpreter.

Normalize the administrative parser-binding redex inside the 162's knot
generator, leaving both recursive uses as x x. The resulting 157-bit
generator is beta-normal. The existing 39-bit first-zero gate activates its
self-application without a source redex. This improves the 204-bit normal
witness, not the 162-bit unrestricted record.

The proof is a finite reduction from the verified 162 to the new parser,
then the same closed-source first-zero gate. Correctness is beta joinability
for arbitrary continuations and suffixes, including divergent sources.
-/
import Blc.Selfint162
import Blc.SelfintControl

namespace Blc.SelfintRound5BoundNormal196
open Term SelfintControl

set_option maxRecDepth 8192

/-- The 162's body after its recursive-parser binder. -/
def readerBody : Term :=
  .lam (.lam (.app (.app (.app (.var 0) idT) varArm162) nextT162))

/-- `λx. H162 (x x)` with its one administrative redex contracted. -/
def generator196 : Term := .lam (substDec 0 (.app (.var 0) (.var 0)) readerBody)

def parser196 : Term := .app generator196 generator196

/-- The first K of a closed source activates `generator196 generator196`. -/
def intL196 : Term := .lam (.lam
  (.app (.app (.app (.app (.var 0)
    (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 0))))) (.var 0))))
    generator196) (.var 1)) (.var 0)))

theorem generator_reduct : Betas knotW162 generator196 :=
  .head (.lam (.beta readerBody (.app (.var 0) (.var 0)))) (.refl _)

theorem parser_reduct : Betas parser162 parser196 :=
  betas_trans (betas_appL knotW162 generator_reduct)
    (betas_appR generator196 generator_reduct)

/-- Three chosen beta contractions, without reducing reconstructed source
code: the old entry step and the two generator-internal administrative steps. -/
theorem int162_reduct : Betas intL162 parser196 :=
  .head (.beta (.app (.var 0) (.var 0)) knotW162) parser_reduct

theorem generator196_closed : Closed generator196 := by decide
theorem parser196_closed : Closed parser196 := by decide
theorem intL196_closed : Closed intL196 := by decide

theorem generator196_size : (blcCode generator196).length = 157 := by decide
theorem intL196_size : (blcCode intL196).length = 196 := by decide
theorem intL196_nft : NFt intL196 := by decide
theorem intL196_normal : NormalForm intL196 := fun _ h => nft_no_beta intL196_nft h

/-- Wire literal independently compiled from the named source in
`tools/self-interpreter/theory/round5_bound_normal196.py`. -/
def intL196Bits : String :=
  "0000010101011000010110000001101010000000010101100010000101110001111001011101101000010111110111100001011100111110000001111000000101110111001101111001011111101111100001111110000101111010011101011010"

theorem intL196_wire : blcCode intL196 = intL196Bits.toList.map (fun c => c == '1') := by decide

theorem substDec_parser196 (j : Nat) (s : Term) :
    substDec j s parser196 = parser196 := substDec_closed j s parser196_closed

theorem substDec_intL196 (j : Nat) (s : Term) :
    substDec j s intL196 = intL196 := substDec_closed j s intL196_closed

theorem run_root196 :
    spineSteps 8 (.app (.app intL196 (.var 0)) (pairT churchTrue (.var 1))) =
      some (.app (.app parser196 (.var 0)) (pairT churchTrue (.var 1))) := by decide

theorem spine_root196 (C R : Term) :
    SpineReds (.app (.app intL196 C) (pairT churchTrue R))
      (.app (.app parser196 C) (pairT churchTrue R)) := by
  have h := spineReds_instN [C, R] 0 (spineReds_of_spineSteps _ run_root196)
  simpa [instN, pairT, substDec, shift, substDec_intL196, substDec_parser196,
    shift_churchTrue, substDec_churchTrue, shift_shift0, substDec_shift0, shift_zero] using h

/-- The exact contract, with arbitrary continuations and arbitrary suffixes.
Only the source is required to be closed, so its first bit is zero. -/
theorem selfint_contract196 (M : Term) (hM : Closed M) (C N : Term) :
    BetaJoin (.app (.app intL196 C) (streamOf (blcCode M) N))
      (.app (.app C (.lam M)) N) := by
  have hzero : ∃ R, streamOf (blcCode M) N = pairT churchTrue R := by
    cases M with
    | var i => simp [Closed, FreeUnder] at hM
    | lam M => exact ⟨_, rfl⟩
    | app M P => exact ⟨_, rfl⟩
  obtain ⟨R, hR⟩ := hzero
  have hr : Betas (.app (.app intL196 C) (streamOf (blcCode M) N))
      (.app (.app parser196 C) (streamOf (blcCode M) N)) := by
    rw [hR]
    exact betas_of_spineReds (spine_root196 C R)
  have hp := betas_appL (streamOf (blcCode M) N) (betas_appL C int162_reduct)
  exact join_trans (join_of_betas hr)
    (join_trans (join_symm (join_of_betas hp))
      (join_of_betas (selfint_contract162 M hM C N)))

theorem isSelfInterpreter_intL196 : IsSelfInterpreter intL196 :=
  ⟨intL196_closed, fun M hM => selfint_contract196 M hM (.var 0) (.var 1)⟩

/-- This is only an upper bound within the beta-normal fragment. -/
theorem normal_interpreter_at_196 :
    ∃ E, IsSelfInterpreter E ∧ NFt E ∧ (blcCode E).length = 196 :=
  ⟨intL196, isSelfInterpreter_intL196, intL196_nft, intL196_size⟩

#print axioms int162_reduct
#print axioms selfint_contract196
#print axioms normal_interpreter_at_196
end Blc.SelfintRound5BoundNormal196
