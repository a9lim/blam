/-
A counting floor from the kernel-checked
incomparable nonlinear pair (`selfInterpreter_not_chain`) and the live
capture witness (`selfinterpreter_has_live_capture`).

The size identity for an arbitrary (open) term is
`wire t = 2L + 4V - 2 + X`; charging every live binder its lambda and
its bound leaves gives the inductive inequality
`4·nonlinear + 6·live + 4·freeLeaves + indexSum ≤ wire + 2`.
Two incomparable nonlinear binders and a live capture force three live
binders, so with `indexSum ≥ 1` every self-interpreter has at least
25 bits.
-/
import Blc.SelfintNonlinearChain
import Blc.SelfintCapture
import Blc.SelfintWireCost

namespace Blc.SelfintFloor
open Term SelfintLowerBound SelfintNonlinearChain SelfintCapture SelfintWireCost

/-- Number of live binders: abstractions whose own variable occurs. -/
def live : Term → Nat
  | .var _ => 0
  | .lam b => live b + if 0 < occ 0 b then 1 else 0
  | .app f a => live f + live a

theorem nonlinear_le_live (t : Term) : nonlinear t ≤ live t := by
  induction t with
  | var n => simp [nonlinear, live]
  | lam b ih =>
    simp only [nonlinear, live]
    split <;> split <;> omega
  | app f a ihf iha =>
    simp only [nonlinear, live]
    omega

/-- Every live binder costs its lambda and at least one leaf per bound
occurrence; a nonlinear one costs at least two leaves. Free leaves and
index bits are charged exactly. -/
theorem count_wire_bound (t : Term) :
    4 * nonlinear t + 6 * live t + 4 * freeLeaves 0 t + indexSum t ≤ wire t + 2 := by
  induction t with
  | var n => simp [nonlinear, live, freeLeaves, indexSum]; omega
  | lam b ih =>
    have hs := freeLeaves_split b 0
    simp only [nonlinear, live, freeLeaves, indexSum, wire_lam]
    split <;> split <;> omega
  | app f a ihf iha =>
    simp only [nonlinear, live, freeLeaves, indexSum, wire_app]
    omega

/-- Number of enclosing local variables (indices below `d`) that occur. -/
def outerLive : Nat → Term → Nat
  | 0, _ => 0
  | d + 1, t => outerLive d t + if 0 < occ d t then 1 else 0

theorem outerLive_lam (d : Nat) (b : Term) :
    outerLive (d + 1) b = outerLive d (.lam b) + if 0 < occ 0 b then 1 else 0 := by
  induction d with
  | zero => simp [outerLive]
  | succ d ih =>
    have h1 : outerLive (d + 1 + 1) b =
        outerLive (d + 1) b + if 0 < occ (d + 1) b then 1 else 0 := rfl
    have h2 : outerLive (d + 1) (.lam b) =
        outerLive d (.lam b) + if 0 < occ (d + 1) b then 1 else 0 := rfl
    rw [h1, h2, ih]
    omega

theorem outerLive_app_left (d : Nat) (f a : Term) :
    outerLive d f ≤ outerLive d (.app f a) := by
  induction d with
  | zero => exact Nat.le_refl _
  | succ d ih =>
    simp only [outerLive, occ]
    split <;> split <;> omega

theorem outerLive_app_right (d : Nat) (f a : Term) :
    outerLive d a ≤ outerLive d (.app f a) := by
  induction d with
  | zero => exact Nat.le_refl _
  | succ d ih =>
    simp only [outerLive, occ]
    split <;> split <;> omega

theorem outerLive_pos (d i : Nat) (t : Term) (hi : i < d) (h : 0 < occ i t) :
    1 ≤ outerLive d t := by
  induction d with
  | zero => omega
  | succ d ih =>
    simp only [outerLive]
    by_cases hid : i = d
    · subst hid
      rw [if_pos h]
      omega
    · have := ih (by omega)
      omega

/-- A live capture supplies a live binder and a second variable, bound
either inside the term or by an enclosing local binder. -/
theorem capture_live (d : Nat) (t : Term) (h : HasLiveCapture d t) :
    2 ≤ live t + outerLive d t := by
  induction t generalizing d with
  | var n => exact h.elim
  | lam b ih =>
    rcases h with h | ⟨hl, i, hi, hc⟩
    · have := ih (d + 1) h
      rw [outerLive_lam] at this
      simp only [live]
      omega
    · have h1 : 1 ≤ outerLive d (.lam b) :=
        outerLive_pos d i (.lam b) hi (by simpa only [occ] using hc)
      simp only [live, if_pos hl]
      omega
  | app f a ihf iha =>
    rcases h with h | h
    · have := ihf d h
      have := outerLive_app_left d f a
      simp only [live]
      omega
    · have := iha d h
      have := outerLive_app_right d f a
      simp only [live]
      omega

theorem not_chain_two_nonlinear (t : Term) (h : ¬ Chain t) : 2 ≤ nonlinear t := by
  induction t with
  | var n => exact (h trivial).elim
  | lam b ih =>
    have := ih h
    simp only [nonlinear]
    omega
  | app f a ihf iha =>
    by_cases hf : Chain f
    · by_cases ha : Chain a
      · have hz : ¬ (nonlinear f = 0 ∨ nonlinear a = 0) := fun hz => h ⟨hf, ha, hz⟩
        simp only [nonlinear]
        omega
      · have := iha ha
        simp only [nonlinear]
        omega
    · have := ihf hf
      simp only [nonlinear]
      omega

/-- Two incomparable nonlinear binders and a live capture need three live
binders, counting an enclosing captured local as live. -/
theorem not_chain_capture_live (d : Nat) (t : Term) (hc : ¬ Chain t)
    (hl : HasLiveCapture d t) : 3 ≤ live t + outerLive d t := by
  induction t generalizing d with
  | var n => exact hl.elim
  | lam b ih =>
    rcases hl with hl | ⟨hlive, i, hi, hocc⟩
    · have := ih (d + 1) hc hl
      rw [outerLive_lam] at this
      simp only [live]
      omega
    · have h2 := not_chain_two_nonlinear b hc
      have h3 := nonlinear_le_live b
      simp only [live, if_pos hlive]
      omega
  | app f a ihf iha =>
    have hlf := outerLive_app_left d f a
    have hla := outerLive_app_right d f a
    have hnf := nonlinear_le_live f
    have hna := nonlinear_le_live a
    by_cases hcf : Chain f
    · by_cases hca : Chain a
      · have hz : ¬ (nonlinear f = 0 ∨ nonlinear a = 0) := fun hz => hc ⟨hcf, hca, hz⟩
        rcases hl with hl | hl
        · have := capture_live d f hl
          simp only [live]
          omega
        · have := capture_live d a hl
          simp only [live]
          omega
      · have h2 := not_chain_two_nonlinear a hca
        rcases hl with hl | hl
        · have := capture_live d f hl
          simp only [live]
          omega
        · have := iha d hca hl
          simp only [live]
          omega
    · have h2 := not_chain_two_nonlinear f hcf
      rcases hl with hl | hl
      · have := ihf d hcf hl
        simp only [live]
        omega
      · have := capture_live d a hl
        simp only [live]
        omega

theorem selfInterpreter_three_live {E : Term} (hE : IsSelfInterpreter E) :
    3 ≤ live E := by
  have h := not_chain_capture_live 0 E (selfInterpreter_not_chain hE)
    (selfinterpreter_has_live_capture E hE)
  simpa [outerLive] using h

/-- Every self-interpreter has at least 25 bits: two nonlinear binders
(20 bits), a third live binder with its leaf (6 bits), and one unit of
de Bruijn index, less the two-bit endpoint correction. -/
theorem selfintSizeBound_25 : SelfintSizeBound 25 := by
  intro E hE
  have h1 := count_wire_bound E
  have h2 := selfInterpreter_two_nonlinear hE
  have h3 := selfInterpreter_three_live hE
  have h4 := selfinterpreter_indexSum_pos E hE
  simp only [wire] at h1
  omega

end Blc.SelfintFloor
