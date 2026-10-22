import PumpLemmas
import Blc.Selfint162
namespace Blc.Round3Pumps.WrapperConcrete
open Term SelfintLowerBound SelfintControl WeakHeadClock
set_option maxRecDepth 16000
set_option maxHeartbeats 4000000

def Positive (t u : Term) : Prop :=
  ∃ v, ¬ IsLam t ∧ HeadStep t v ∧ SpineReds v u

theorem positive_run {n : Nat} {t u : Term}
    (h : spineSteps (n+1) t = some u) : Positive t u := by
  simp only [spineSteps] at h
  split at h
  · cases h
  · rename_i ht
    simp only [Option.bind_eq_some_iff] at h
    obtain ⟨v, hv, hr⟩ := h
    exact ⟨v, ht, headStep_sound hv, spineReds_of_spineSteps _ hr⟩

theorem positive_subst {t u : Term} (h : Positive t u) (j : Nat) (s : Term) :
    Positive (substDec j s t) (substDec j s u) := by
  obtain ⟨v, hn, hh, hr⟩ := h
  exact ⟨_, not_isLam_substDec hn hh j s, headStep_substDec hh j s,
    spineReds_substDec hr j s⟩

theorem positive_inst (as : List Term) (j : Nat) {t u : Term} (h : Positive t u) :
    Positive (instN as j t) (instN as j u) := by
  induction as generalizing j with
  | nil => exact h
  | cons a as ih => exact positive_subst (ih (j+1)) j (shift j 0 a)

theorem positive_advance {t u : Term} (h : Positive t u) : Advance t u := by
  obtain ⟨v, hn, hh, hr⟩ := h
  exact ⟨v, head_nonlam_weak hh (notLam_ne hn), betas_of_spineReds hr⟩

def arm : Term := .lam (.app (.app (.var 0) (.var 1)) (.var 0))
def body : Term := .lam (.lam (.lam
  (.app (.app (.app (.var 0) idT) arm) nextT162)))
def gen : Term := .lam (.app body (.app (.var 0) (.var 0)))
def parser : Term := .app gen gen
def machine : Term := .app (.lam (.app (.var 0) (.var 0))) gen

theorem parser_closed : Closed parser := by decide
theorem parser_subst (j : Nat) (s : Term) : substDec j s parser = parser :=
  substDec_closed j s parser_closed
theorem parser_shift (j k : Nat) : shift j k parser = parser :=
  shift_closed j k parser_closed

def wrap (s : Term) : Term :=
  .lam (.app (.app (.var 0) (shift 1 0 s)) (.var 0))
def nextc : Term := .lam (.app parser (.lam
  (.app (.app (.var 1) (.app (.var 2) absVt))
    (.app parser (.lam (.app (.var 3) appVt))))))
def kontc (b : Term) : Term := .lam
  (.app (.app b (.app (.var 1) absVt))
    (.app parser (.lam (.app (.var 2) appVt))))
def nxt (c : Term) : Term := substDec 0 c nextc
def kont (c : Term) : Term := substDec 0 c (kontc idT)

theorem nextc_subst (j : Nat) (s : Term) (h : 1 ≤ j) :
    substDec j s nextc = nextc :=
  substDec_of_freeUnder _ j s (freeUnder_mono h (by decide))

theorem run_peel : spineSteps 2
    (.app (.app (wrap (.var 0)) idT) (.var 1)) =
    some (.app (.app (.var 0) idT) (.var 1)) := by decide

theorem peel (s u : Term) : Advance
    (.app (.app (wrap s) idT) u) (.app (.app s idT) u) := by
  have h := positive_advance (positive_inst [s,u] 0 (positive_run run_peel))
  simpa [instN, wrap, substDec, shift, substDec_idT,
    shift_shift0, substDec_shift0, shift_zero] using h

theorem run_parse : spineSteps 5
    (.app (.app (nxt (.var 0)) idT) (.var 1)) =
    some (.app (.app (.app (.var 1) idT) (wrap (.var 1)))
      (nxt (kont (.var 0)))) := by decide

theorem parse (c u : Term) : Advance
    (.app (.app (nxt c) idT) u)
    (.app (.app (.app u idT) (wrap u)) (nxt (kont c))) := by
  have h := positive_advance (positive_inst [c,u] 0 (positive_run run_parse))
  simpa [instN, nxt, nextc, kont, kontc, wrap, substDec, shift,
    parser_subst, parser_shift, substDec_idT, idT, absVt, appVt,
    shift_shift0, substDec_shift0, shift_zero] using h

def root : Term := .app (.app machine (.var 1)) (SelfintControl.quoteI (.var 0))
def c0 : Term := substDec 0 (.var 1) (kontc churchTrue)
def entry : Term := (spineSteps 25 root).getD (.var 99)
def tail : Term := match entry with | .app _ a => a | _ => .var 99

theorem run_entry : spineSteps 25 root =
    some (.app (.app (.app (nxt c0) idT) (wrap (nxt c0))) tail) := by decide

theorem root_no_nf : ¬ HasNormalForm root := by
  intro hn
  have hb := betas_of_spineReds (spineReds_of_spineSteps _ run_entry)
  have hn' := betas_preserve_hasNormalForm hb hn
  exact wrapper_no_nf nxt wrap kont idT peel parse
    (.next c0) (.wrap (.next c0)) [tail] hn'

theorem identity_has_nf {e : Term} (he : IsSelfInterpreter e) :
    HasNormalForm (.app (.app e (.var 1)) (SelfintControl.quoteI (.var 0))) := by
  obtain ⟨u, hu, ht⟩ := SelfintControl.identity_contract he (.var 1) (.var 0)
  have hn : NormalForm (.app (.app (.var 1) churchFalse) (.var 0)) :=
    fun _ hb => nft_no_beta (by decide) hb
  have hx := normalForm_betas_eq hn ht
  subst u
  exact ⟨_, hu, hn⟩

theorem not_selfinterpreter : ¬ IsSelfInterpreter machine := by
  intro h
  exact root_no_nf (identity_has_nf h)

theorem next_wire : blcCode nextT162 =
    ("000111110000101110011111000000111100000010111011100110111100111111000011111100001011110100111010".toList.map (fun c => c == '1')) := by decide

theorem arm_wire : blcCode arm =
    ("0001011011010".toList.map (fun c => c == '1')) := by decide

theorem machine_bits : (blcCode machine).length = 147 := by decide
#print axioms not_selfinterpreter
end Blc.Round3Pumps.WrapperConcrete
