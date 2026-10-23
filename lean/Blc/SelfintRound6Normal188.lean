/-
A 188-bit beta-normal exact self-interpreter. Any Scott cell activates
the diagonal through its ordinary two-argument elimination; the first
tag need not be inspected. The normal generator is the verified 162's
administrative reduct, already established in SelfintRound5BoundNormal196.
This improves the normal-fragment construction, not the unrestricted 162.
-/
import Blc.SelfintRound5BoundNormal196

namespace Blc.SelfintRound6Normal188
open Term SelfintControl SelfintRound5BoundNormal196

set_option maxRecDepth 8192

/-- Ignore a Scott cell's two fields, then duplicate the supplied generator. -/
def activate : Term := .lam (.lam (.lam (.app (.var 0) (.var 0))))

/-- `lambda c s. s (lambda b r x. x x) G c s`, with G written once. -/
def intL188 : Term := .lam (.lam
  (.app (.app (.app (.app (.var 0) activate) generator196) (.var 1)) (.var 0)))

theorem intL188_closed : Closed intL188 := by decide
theorem intL188_size : (blcCode intL188).length = 188 := by decide
theorem intL188_nft : NFt intL188 := by decide
theorem intL188_normal : NormalForm intL188 := fun _ h => nft_no_beta intL188_nft h

def intL188Bits : String :=
  "00000101010110000000011010000000010101100010000101110001111001011101101000010111110111100001011100111110000001111000000101110111001101111001011111101111100001111110000101111010011101011010"

theorem intL188_wire : blcCode intL188 = intL188Bits.toList.map (fun c => c == '1') := by decide

theorem substDec_intL188 (j : Nat) (s : Term) :
    substDec j s intL188 = intL188 := substDec_closed j s intL188_closed

/-- No Boolean hypothesis: b and r are arbitrary rigid placeholders. -/
theorem run_root188 :
    spineSteps 6 (.app (.app intL188 (.var 0)) (pairT (.var 1) (.var 2))) =
      some (.app (.app parser196 (.var 0)) (pairT (.var 1) (.var 2))) := by decide

theorem spine_root188 (C B R : Term) :
    SpineReds (.app (.app intL188 C) (pairT B R))
      (.app (.app parser196 C) (pairT B R)) := by
  have h := spineReds_instN [C, B, R] 0 (spineReds_of_spineSteps _ run_root188)
  simpa [instN, pairT, substDec, shift, substDec_intL188, substDec_parser196,
    shift_shift0, substDec_shift0, shift_zero] using h

/-- Exact beta joinability for all closed sources and arbitrary C,N.
The selected source conversions never normalize reconstructed code. -/
theorem selfint_contract188 (M : Term) (hM : Closed M) (C N : Term) :
    BetaJoin (.app (.app intL188 C) (streamOf (blcCode M) N))
      (.app (.app C (.lam M)) N) := by
  have hcell : ∃ B R, streamOf (blcCode M) N = pairT B R := by
    cases M with
    | var i => exact ⟨_, _, rfl⟩
    | lam b => exact ⟨_, _, rfl⟩
    | app f a => exact ⟨_, _, rfl⟩
  obtain ⟨B,R,hcell⟩ := hcell
  have hr : Betas (.app (.app intL188 C) (streamOf (blcCode M) N))
      (.app (.app parser196 C) (streamOf (blcCode M) N)) := by
    rw [hcell]
    exact betas_of_spineReds (spine_root188 C B R)
  have hp := betas_appL (streamOf (blcCode M) N) (betas_appL C int162_reduct)
  exact join_trans (join_of_betas hr)
    (join_trans (join_symm (join_of_betas hp))
      (join_of_betas (selfint_contract162 M hM C N)))

theorem isSelfInterpreter_intL188 : IsSelfInterpreter intL188 :=
  ⟨intL188_closed, fun M hM => selfint_contract188 M hM (.var 0) (.var 1)⟩

theorem normal_interpreter_at_188 :
    ∃ E, IsSelfInterpreter E ∧ NFt E ∧ (blcCode E).length = 188 :=
  ⟨intL188, isSelfInterpreter_intL188, intL188_nft, intL188_size⟩

#print axioms spine_root188
#print axioms selfint_contract188
#print axioms normal_interpreter_at_188
end Blc.SelfintRound6Normal188
