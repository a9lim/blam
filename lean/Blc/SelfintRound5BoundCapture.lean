/-
Quantitative live-capture transport and mandatory copying of capture-bearing
code. Capture count is indexed by the number of enclosing local binders;
rigid global variables do not count. Quotation has count zero.

This strengthens mandatory copying of arbitrary interpreter-origin lambdas:
every exact interpreter has a closed beta-normal source for which every
successful beta trace duplicates an argument already containing a live local
capture. No parser architecture or reduction strategy is assumed. It is a
resource-flow theorem, not a numerical optimality theorem.
-/
import Blc.SelfintCapture
import Blc.SelfintLowerBound

namespace Blc.SelfintRound5BoundCapture
open Term SelfintCapture SelfintLowerBound

def Quiet (d : Nat) (b : Term) : Prop :=
  0 < occ 0 b → ∀ i, i < d → occ (i + 1) b = 0

instance (d : Nat) (b : Term) : Decidable (Quiet d b) :=
  inferInstanceAs (Decidable (_ → ∀ i, i < d → _))

def captureFlag (d : Nat) (b : Term) : Nat := if Quiet d b then 0 else 1

/-- Number of live abstractions capturing some enclosing local variable. -/
def captures : Nat → Term → Nat
  | _, .var _ => 0
  | d, .app f a => captures d f + captures d a
  | d, .lam b => captures (d + 1) b + captureFlag d b

private theorem flag_antitone {d e : Nat} {b c : Term}
    (h : Quiet d b → Quiet e c) : captureFlag e c ≤ captureFlag d b := by
  unfold captureFlag
  split
  · omega
  · rename_i hc
    have hb : ¬ Quiet d b := fun hb => hc (h hb)
    simp only [if_neg hb, Nat.le_refl]

private theorem quiet_shift (b : Term) (d c : Nat) (hc : c ≤ d)
    (h : Quiet d b) : Quiet (d + 1) (shift 1 (c + 1) b) := by
  intro live i hi
  rw [occ_shift_lt b 0 (c + 1) (by omega)] at live
  by_cases hlt : i + 1 < c + 1
  · rw [occ_shift_lt b (i + 1) (c + 1) hlt]
    exact h live i (by omega)
  · by_cases heq : i + 1 = c + 1
    · rw [heq, occ_shift_eq]
    · have he : i + 1 = (i - 1) + 1 + 1 := by omega
      rw [he, occ_shift_ge b ((i - 1) + 1) (c + 1) (by omega)]
      exact h live (i - 1) (by omega)

/-- Introducing an unused local slot creates no capturing abstraction. -/
theorem captures_shift_le (t : Term) (d c : Nat) (hc : c ≤ d) :
    captures (d + 1) (shift 1 c t) ≤ captures d t := by
  induction t generalizing d c with
  | var n => simp only [shift]; split <;> exact Nat.le_refl 0
  | app f a ihf iha =>
      exact Nat.add_le_add (ihf d c hc) (iha d c hc)
  | lam b ih =>
      exact Nat.add_le_add (ih (d + 1) (c + 1) (by omega))
        (flag_antitone (quiet_shift b d c hc))

private theorem quiet_subst (b a : Term) (d j : Nat) (hj : j ≤ d)
    (h : Quiet (d + 1) b) :
    Quiet d (substDec (j + 1) (shift 1 0 a) b) := by
  intro live i hi
  rw [occ_substDec_lt b (shift 1 0 a) 0 (j + 1) (by omega),
    occ_shift_eq, Nat.mul_zero, Nat.add_zero] at live
  have hcut : occ (j + 1) b = 0 := h live j (by omega)
  by_cases hlt : i + 1 < j + 1
  · rw [occ_substDec_lt b (shift 1 0 a) (i + 1) (j + 1) hlt,
      hcut, Nat.zero_mul, Nat.add_zero]
    exact h live i (by omega)
  · rw [occ_substDec_ge b (shift 1 0 a) (i + 1) (j + 1) (by omega),
      hcut, Nat.zero_mul, Nat.add_zero]
    exact h live (i + 1) (by omega)

/-- Capture-avoiding substitution cannot create a new capture on a surviving
source binder; all additional captures lie in inserted argument copies. -/
theorem captures_subst_le (t a : Term) (d j : Nat) (hj : j ≤ d) :
    captures d (substDec j a t) ≤
      captures (d + 1) t + occ j t * captures d a := by
  induction t generalizing a d j with
  | var n =>
      simp only [substDec]
      split
      · rename_i h
        subst n
        simp [captures, occ]
      · rename_i h
        split <;> simp [captures, occ, h]
  | app f x ihf ihx =>
      have hf := ihf a d j hj
      have hx := ihx a d j hj
      simp only [substDec, captures, occ, Nat.add_mul]
      omega
  | lam b ih =>
      have hb := ih (shift 1 0 a) (d + 1) (j + 1) (by omega)
      have hs := captures_shift_le a d 0 (by omega)
      have hm := Nat.mul_le_mul_left (occ (j + 1) b) hs
      have hf := flag_antitone (quiet_subst b a d j hj)
      simp only [substDec, captures, occ]
      omega

private theorem quiet_beta {b c : Term} (h : Beta b c) (d : Nat)
    (hq : Quiet d b) : Quiet d c := by
  intro live i hi
  have oldlive : 0 < occ 0 b := by
    by_cases hz : occ 0 b = 0
    · have := occ_beta_zero h 0 hz
      omega
    · omega
  exact occ_beta_zero h (i + 1) (hq oldlive i hi)

/-- A selected contraction copies an argument that already contains a live
local capture. The constructor follows the contraction through its context. -/
inductive CopiesCapture : Nat → Term → Term → Prop
  | root {d : Nat} {b a : Term} :
      1 < occ 0 b → 0 < captures d a →
      CopiesCapture d (.app (.lam b) a) (contract b a)
  | appL {d : Nat} {f g : Term} (a : Term) :
      CopiesCapture d f g → CopiesCapture d (.app f a) (.app g a)
  | appR {d : Nat} {a b : Term} (f : Term) :
      CopiesCapture d a b → CopiesCapture d (.app f a) (.app f b)
  | lam {d : Nat} {b c : Term} :
      CopiesCapture (d + 1) b c → CopiesCapture d (.lam b) (.lam c)

/-- Every strict increase in capture count comes from a nonlinear
contraction duplicating capture-bearing code. -/
theorem growth_copies_capture {t u : Term} (h : Beta t u) (d : Nat)
    (hg : captures d t < captures d u) : CopiesCapture d t u := by
  induction h generalizing d with
  | beta b a =>
      have hs := captures_subst_le b a d 0 (by omega)
      have hk : 1 < occ 0 b := by
        by_cases hn : 1 < occ 0 b
        · exact hn
        · have hk : occ 0 b ≤ 1 := by omega
          have hm := Nat.mul_le_mul_right (captures d a) hk
          simp only [Nat.one_mul] at hm
          simp only [captures, contract] at hg
          omega
      have ha : 0 < captures d a := by
        by_cases hn : 0 < captures d a
        · exact hn
        · have hz : captures d a = 0 := by omega
          simp only [hz, Nat.mul_zero, Nat.add_zero] at hs
          simp only [captures, contract, hz, Nat.add_zero] at hg
          omega
      exact .root hk ha
  | appL a h ih =>
      exact .appL a (ih d (by simpa only [captures, Nat.add_lt_add_iff_right] using hg))
  | appR f h ih =>
      exact .appR f (ih d (by simpa only [captures, Nat.add_lt_add_iff_left] using hg))
  | lam h ih =>
      have hf := flag_antitone (quiet_beta h d)
      apply CopiesCapture.lam
      apply ih (d + 1)
      simp only [captures] at hg
      omega

theorem captures_zero_of_separated (t : Term) (d : Nat) (h : Separated d t) :
    captures d t = 0 := by
  induction t generalizing d with
  | var n => rfl
  | app f a ihf iha => simp only [captures, ihf d h.1, iha d h.2, Nat.add_zero]
  | lam b ih =>
      have hq : Quiet d b := h.2
      simp only [captures, ih (d + 1) h.1, captureFlag, if_pos hq, Nat.add_zero]

/-- Endpoint growth selects an actual growth contraction from any trace. -/
theorem trace_growth_event {t u : Term} (h : Betas t u) (d : Nat)
    (hg : captures d t < captures d u) :
    ∃ p q, Betas t p ∧ Beta p q ∧ CopiesCapture d p q ∧
      captures d p < captures d q ∧ Betas q u := by
  induction h with
  | refl => exact (Nat.lt_irrefl _ hg).elim
  | @head t v u hb hrest ih =>
      by_cases hs : captures d t < captures d v
      · exact ⟨t, v, .refl _, hb, growth_copies_capture hb d hs, hs, hrest⟩
      · obtain ⟨p, q, hp, hq, hc, hg', hu⟩ := ih (by omega)
        exact ⟨p, q, .head hb hp, hq, hc, hg', hu⟩

/-- Each closed normal wrapper adds one independent live capture. -/
def captureProgram : Nat → Term
  | 0 => .lam (.var 0)
  | n + 1 => .lam (.app (.app (.var 0) mixed) (captureProgram n))

theorem captureProgram_occ (n j : Nat) : occ j (captureProgram n) = 0 := by
  induction n generalizing j with
  | zero =>
      simp only [captureProgram, occ]
      split <;> omega
  | succ n ih =>
      simp only [captureProgram, mixed, occ, ih]
      split <;> split <;> split <;> omega

theorem captureProgram_closed (n : Nat) : Closed (captureProgram n) := by
  induction n with
  | zero => decide
  | succ n ih =>
      change FreeUnder 1 (.app (.app (.var 0) mixed) (captureProgram n))
      exact ⟨⟨by decide, by decide⟩, freeUnder_mono (by omega) ih⟩

theorem captureProgram_normal (n : Nat) : NFt (captureProgram n) := by
  induction n with
  | zero => decide
  | succ n ih => exact ⟨by decide, ⟨by decide, trivial, by decide⟩, ih⟩

theorem captures_mixed (d : Nat) : captures d mixed = 1 := by
  have hout : Quiet d (.lam (.app (.var 1) (.var 0))) := by
    intro _ i _
    simp only [occ]
    split <;> split <;> omega
  have hin : ¬ Quiet (d + 1) (.app (.var 1) (.var 0)) := by
    intro h
    have hh := h (by decide) 0 (by omega)
    change 1 + 0 = 0 at hh
    omega
  change (0 + 0 + if Quiet (d + 1) (.app (.var 1) (.var 0)) then 0 else 1) +
    (if Quiet d (.lam (.app (.var 1) (.var 0))) then 0 else 1) = 1
  rw [if_pos hout, if_neg hin]

theorem captures_captureProgram (n d : Nat) : captures d (captureProgram n) = n := by
  induction n generalizing d with
  | zero =>
      have hq : Quiet d (.var 0) := by
        intro _ i _
        simp only [occ]
        split <;> omega
      change 0 + (if Quiet d (.var 0) then 0 else 1) = 0
      rw [if_pos hq]
  | succ n ih =>
      have hq : Quiet d (.app (.app (.var 0) mixed) (captureProgram n)) := by
        intro _ i _
        simp only [occ, mixed, captureProgram_occ]
        split <;> split <;> split <;> omega
      change (0 + captures (d + 1) mixed + captures (d + 1) (captureProgram n)) +
        captureFlag d (.app (.app (.var 0) mixed) (captureProgram n)) = n + 1
      rw [captures_mixed, ih]
      unfold captureFlag
      rw [if_pos hq]
      omega

def captureOutput (n : Nat) : Term :=
  .app (.app (.var 0) (.lam (captureProgram n))) (.var 1)

theorem captureOutput_normal (n : Nat) : NormalForm (captureOutput n) := by
  intro u hu
  apply nft_no_beta (t := captureOutput n) ?_ hu
  exact ⟨by simp [IsLam], ⟨by decide, trivial, captureProgram_normal n⟩, trivial⟩

theorem captures_captureOutput (n : Nat) : captures 0 (captureOutput n) = n := by
  have hq : Quiet 0 (captureProgram n) := by intro _ i hi; omega
  change (0 + (captures 1 (captureProgram n) + captureFlag 0 (captureProgram n))) + 0 = n
  rw [captures_captureProgram]
  unfold captureFlag
  rw [if_pos hq]
  omega

/-- Every exact interpreter has a normal source whose decoding necessarily
duplicates an argument containing a live local capture, on every successful
beta trace. This is stronger than requiring a copied arbitrary red lambda. -/
theorem selfInterpreter_every_trace_copies_capture {E : Term}
    (hE : IsSelfInterpreter E) :
    let n := captures 0 E + 1
    let input := .app (.app E (.var 0))
      (streamOf (blcCode (captureProgram n)) (.var 1))
    Betas input (captureOutput n) ∧
      ∀ _trace : Betas input (captureOutput n),
      ∃ p q, Betas input p ∧ Beta p q ∧ CopiesCapture 0 p q ∧
        captures 0 p < captures 0 q ∧ Betas q (captureOutput n) := by
  dsimp only
  let n := captures 0 E + 1
  let input : Term := .app (.app E (.var 0))
      (streamOf (blcCode (captureProgram n)) (.var 1))
  have hi : captures 0 input = captures 0 E := by
    have hz := captures_zero_of_separated
      (streamOf (blcCode (captureProgram n)) (.var 1)) 0
      (separated_stream _ _ trivial)
    simp only [input, captures, hz, Nat.add_zero]
  have hg : captures 0 input < captures 0 (captureOutput n) := by
    rw [hi, captures_captureOutput]
    simp [n]
  obtain ⟨w, hw, hout⟩ := hE.2 (captureProgram n) (captureProgram_closed n)
  have he : w = captureOutput n := normalForm_betas_eq (captureOutput_normal n) hout
  refine ⟨he ▸ hw, ?_⟩
  intro trace
  exact trace_growth_event trace 0 hg

/-- A beta trace retaining its actual ordered list of contracted edges. -/
inductive Trace : Term → List (Term × Term) → Term → Prop
  | nil (t : Term) : Trace t [] t
  | cons {t u v : Term} {es : List (Term × Term)} :
      Beta t u → Trace u es v → Trace t ((t, u) :: es) v

theorem trace_of_betas {t u : Term} (h : Betas t u) :
    ∃ es, Trace t es u := by
  induction h with
  | refl => exact ⟨[], .nil _⟩
  | head hb _ ih =>
      obtain ⟨es, hs⟩ := ih
      exact ⟨_, .cons hb hs⟩

/-- The selected edge occurs literally in the supplied ordered trace, with
its actual prefix and suffix retained. -/
theorem recorded_trace_growth_event {t u : Term} {es : List (Term × Term)}
    (h : Trace t es u) (d : Nat) (hg : captures d t < captures d u) :
    ∃ pre p q post, es = pre ++ (p, q) :: post ∧
      Trace t pre p ∧ Beta p q ∧ CopiesCapture d p q ∧
      captures d p < captures d q ∧ Trace q post u := by
  induction h with
  | nil => exact (Nat.lt_irrefl _ hg).elim
  | @cons t v u es hb hs ih =>
      by_cases hv : captures d t < captures d v
      · exact ⟨[], t, v, es, rfl, .nil _, hb,
          growth_copies_capture hb d hv, hv, hs⟩
      · obtain ⟨pre, p, q, post, he, hp, hq, hc, hg', hu⟩ := ih (by omega)
        exact ⟨(t, v) :: pre, p, q, post,
          by simp only [he, List.cons_append], .cons hb hp, hq, hc, hg', hu⟩

/-- Every ordered successful trace contains an adjacent capture-copying
growth edge. The edge is located in that very list, not merely on some
alternative beta path with the same endpoints. -/
theorem selfInterpreter_every_recorded_trace_copies_capture {E : Term}
    (hE : IsSelfInterpreter E) :
    let n := captures 0 E + 1
    let input := .app (.app E (.var 0))
      (streamOf (blcCode (captureProgram n)) (.var 1))
    (∃ es, Trace input es (captureOutput n)) ∧
      ∀ es, Trace input es (captureOutput n) →
      ∃ pre p q post, es = pre ++ (p, q) :: post ∧
        Trace input pre p ∧ Beta p q ∧ CopiesCapture 0 p q ∧
        captures 0 p < captures 0 q ∧ Trace q post (captureOutput n) := by
  dsimp only
  let n := captures 0 E + 1
  let input : Term := .app (.app E (.var 0))
    (streamOf (blcCode (captureProgram n)) (.var 1))
  have hi : captures 0 input = captures 0 E := by
    have hz := captures_zero_of_separated
      (streamOf (blcCode (captureProgram n)) (.var 1)) 0
      (separated_stream _ _ trivial)
    simp only [input, captures, hz, Nat.add_zero]
  have hg : captures 0 input < captures 0 (captureOutput n) := by
    rw [hi, captures_captureOutput]
    simp [n]
  exact ⟨trace_of_betas (selfInterpreter_every_trace_copies_capture hE).1,
    fun _ ht => recorded_trace_growth_event ht 0 hg⟩

#print axioms captures_subst_le
#print axioms growth_copies_capture
#print axioms selfInterpreter_every_trace_copies_capture
#print axioms selfInterpreter_every_recorded_trace_copies_capture
end Blc.SelfintRound5BoundCapture
