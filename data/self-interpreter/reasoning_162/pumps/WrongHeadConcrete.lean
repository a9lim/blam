import Blc.Selfint162
import Blc.WeakHeadClock
namespace Blc.Round3Pumps.WrongHeadConcrete
open Term SelfintLowerBound SelfintControl
set_option maxRecDepth 16000
set_option maxHeartbeats 4000000

def headName : Term → Option Nat
  | .var n => some n
  | .lam _ => none
  | .app f _ => headName f

theorem head_beta {t u : Term} (h : Beta t u) {n : Nat}
    (hn : headName t = some n) : headName u = some n := by
  induction h with
  | beta b a => simp [headName] at hn
  | appL a h ih => exact ih hn
  | appR f h => exact hn
  | lam h ih => simp [headName] at hn

theorem head_betas {t u : Term} (h : Betas t u) {n : Nat}
    (hn : headName t = some n) : headName u = some n := by
  induction h with
  | refl t => exact hn
  | head hb hr ih => exact ih (head_beta hb hn)

def arm : Term := .app (.app (.var 3) (.var 0)) (.var 0)
def body : Term := .lam (.lam (.lam
  (.app (.app (.app (.var 0) idT) arm) nextT162)))
def gen : Term := .lam (.app body (.app (.var 0) (.var 0)))
def machine : Term := .app (.lam (.app (.var 0) (.var 0))) gen
def root : Term := .app (.app machine (.var 1)) (SelfintControl.quoteI (.var 0))
def result : Term := (spineSteps 38 root).getD (.var 99)

theorem run : spineSteps 38 root = some result := by decide
theorem wrong_head : headName result = some 0 := by decide

def arity : Term → Nat | .app f _ => arity f + 1 | _ => 0
theorem result_arity : arity result = 6 := by decide

theorem not_selfinterpreter : ¬ IsSelfInterpreter machine := by
  intro he
  obtain ⟨z, hz, ht⟩ := SelfintControl.identity_contract he (.var 1) (.var 0)
  have hr := betas_of_spineReds (spineReds_of_spineSteps _ run)
  obtain ⟨w, hw, hzw⟩ := betas_confluent hr hz
  have h0 := head_betas hw wrong_head
  have h1 := head_betas (betas_trans ht hzw) (show headName
    (.app (.app (.var 1) churchFalse) (.var 0)) = some 1 from rfl)
  simp [h0] at h1

theorem arm_wire : blcCode arm =
    ("0101111101010".toList.map (fun c => c == '1')) := by decide
theorem machine_bits : (blcCode machine).length = 147 := by decide
#print axioms not_selfinterpreter
end Blc.Round3Pumps.WrongHeadConcrete
