/-
A direct provenance invariant for the source-lambda growth argument.
A closed one-lambda operand contributes only closed flat lambdas when copied.
Counting all other lambdas bounds the number of nonflat head contractors,
without adding a second labelled syntax. This is a finite-trace lemma, not
the full remainder growth theorem.
-/
import Blc.SelfintGrowthBlocks

namespace Blc.SelfintGrowthOrigins
open Term SelfintZero SelfintGrowthBlue SelfintGrowthBlocks

def Flat : Q → Prop
  | .lam b => red b = 0 ∧ ClosedQ (.lam b)
  | _ => False

instance (t : Q) : Decidable (Flat t) := by
  cases t <;> dsimp [Flat] <;> infer_instance

def badRoot (b : Q) : Nat := if Flat (.lam b) then 0 else 1

def bad : Q → Nat
  | .var _ | .k | .z _ => 0
  | .lam b => bad b + badRoot b
  | .app f a => bad f + bad a

theorem flat_iff (t : Q) :
    Flat t ↔ ∃ b, t = .lam b ∧ red b = 0 ∧ ClosedQ t := by
  cases t <;> simp [Flat]

theorem badRoot_le_one (b : Q) : badRoot b ≤ 1 := by
  unfold badRoot
  split <;> omega

theorem bad_le_red (t : Q) : bad t ≤ red t := by
  induction t with
  | var | k | z => exact Nat.le_refl _
  | app f a ihf iha => exact Nat.add_le_add ihf iha
  | lam b ih => exact Nat.add_le_add ih (badRoot_le_one b)

theorem bad_zero (t : Q) (h : red t = 0) : bad t = 0 := by
  have hle := bad_le_red t
  omega

theorem badRoot_shift (b : Q) (c : Nat) :
    badRoot (shiftQ (c + 1) b) = badRoot b := by
  change (if red (shiftQ (c + 1) b) = 0 ∧ ClosedQ (shiftQ c (.lam b))
    then 0 else 1) = _
  simp only [red_shift, closed_shift_iff, badRoot, Flat]
  rfl

theorem bad_shift (t : Q) (c : Nat) : bad (shiftQ c t) = bad t := by
  induction t generalizing c with
  | var n => simp only [shiftQ]; split <;> rfl
  | lam b ih => simp only [shiftQ, bad, ih, badRoot_shift]
  | app f a ihf iha => simp only [shiftQ, bad, ihf, iha]
  | k | z => rfl

theorem badRoot_subst_le (b s : Q) (j : Nat) :
    badRoot (substQ (j + 1) (shiftQ 0 s) b) ≤ badRoot b := by
  by_cases h : Flat (.lam b)
  · have he := subst_closed (.lam b) j s h.2
    have hb := Q.lam.inj he
    rw [hb]
    exact Nat.le_refl _
  · simpa only [badRoot, if_neg h] using
      badRoot_le_one (substQ (j + 1) (shiftQ 0 s) b)

/-- Existing closed-flat lambdas are fixed by outside substitution.
Only the copied operand can contribute additional bad lambdas. -/
theorem bad_subst_le (t s : Q) (j : Nat) :
    bad (substQ j s t) ≤ bad t + oc j t * bad s := by
  induction t generalizing s j with
  | var n =>
    simp only [substQ, bad, oc_var]
    split
    · simp only [Nat.one_mul, Nat.zero_add, Nat.le_refl]
    · split <;> simp_all only [bad, Nat.zero_mul, Nat.zero_add, Nat.le_refl]
  | lam b ih =>
    have hb := ih (shiftQ 0 s) (j + 1)
    have hr := badRoot_subst_le b s j
    simp only [substQ, bad, oc_lam, bad_shift] at *
    omega
  | app f a ihf iha =>
    have hf := ihf s j
    have ha := iha s j
    simp only [substQ, bad, oc_app, Nat.add_mul]
    omega
  | k => simp only [substQ, bad, oc_k, Nat.zero_mul, Nat.zero_add, Nat.le_refl]
  | z i => simp only [substQ, bad, oc_z, Nat.zero_mul, Nat.zero_add, Nat.le_refl]

/-- A closed operand with at most one program lambda has no bad lambda.
In particular every newly copied lambda is closed and flat. -/
theorem closed_one_bad_zero (t : Q) (hc : ClosedQ t) (hr : red t ≤ 1) :
    bad t = 0 := by
  induction t with
  | var n => rfl
  | k | z => rfl
  | lam b ih =>
    have hb : red b = 0 := by simp only [red] at hr; omega
    have hf : Flat (.lam b) := ⟨hb, hc⟩
    simp only [bad, bad_zero b hb, badRoot, if_pos hf, Nat.zero_add]
  | app f a ihf iha =>
    have hf : red f ≤ 1 := by simp only [red] at hr; omega
    have ha : red a ≤ 1 := by simp only [red] at hr; omega
    simp only [bad, ihf hc.1 hf, iha hc.2 ha, Nat.add_zero]

theorem badRoot_data_le {b c : Q} (h : DataStep b c) : badRoot c ≤ badRoot b := by
  by_cases hb : Flat (.lam b)
  · have hc : Flat (.lam c) := ⟨Nat.eq_zero_of_le_zero (hb.1 ▸ h.red_le),
      h.freeUnder 1 hb.2⟩
    simp only [badRoot, if_pos hb, if_pos hc, Nat.le_refl]
  · simpa only [badRoot, if_neg hb] using badRoot_le_one c

/-- Data reduction cannot make a closed-flat lambda bad. -/
theorem data_bad_le {t u : Q} (h : DataStep t u) : bad u ≤ bad t := by
  induction h with
  | k a b => simp only [bad]; omega
  | z i a => simp only [bad]; omega
  | left a h ih => exact Nat.add_le_add_right ih _
  | right f h ih => exact Nat.add_le_add_left ih _
  | lam h ih => exact Nat.add_le_add ih (badRoot_data_le h)

theorem data_steps_bad_le {t u : Q} (h : DataSteps t u) : bad u ≤ bad t := by
  induction h with
  | refl => exact Nat.le_refl _
  | head h _ ih => exact Nat.le_trans ih (data_bad_le h)

theorem head_closed {t u : Q} (h : RedHead t u) (hc : ClosedQ t) : ClosedQ u := by
  induction h with
  | beta b a =>
    unfold ClosedQ at hc ⊢
    rw [erase_subst]
    exact SelfintWireCost.beta_freeUnder (.beta _ _) 0 hc
  | left a h ih => exact ⟨ih hc.1, hc.2⟩

theorem head_bad_le {t u : Q} (h : RedHead t u) (hc : ClosedQ t)
    (hr : red u = red t) : bad u ≤ bad t := by
  induction h with
  | beta b a =>
    obtain ⟨_, ha⟩ := constant_beta_parameters b a hr
    have hz := closed_one_bad_zero a hc.2 (by omega)
    have hs := bad_subst_le b a 0
    simp only [bad, hz, Nat.add_zero, Nat.mul_zero] at *
    omega
  | @left f g a h ih =>
    have he : red g = red f := by simp only [red] at hr; omega
    exact Nat.add_le_add_right (ih hc.1 he) _

/-- A selected head contraction whose contractor is not closed and flat. -/
inductive BadHead : Q → Q → Prop where
  | beta (b a : Q) : ¬ Flat (.lam b) →
      BadHead (.app (.lam b) a) (substQ 0 a b)
  | left {f g : Q} (a : Q) : BadHead f g → BadHead (.app f a) (.app g a)

theorem BadHead.head {t u : Q} (h : BadHead t u) : RedHead t u := by
  induction h with
  | beta b a _ => exact .beta _ _
  | left a _ ih => exact .left _ ih

theorem BadHead.strict {t u : Q} (h : BadHead t u) (hc : ClosedQ t)
    (hr : red u = red t) : bad u < bad t := by
  induction h with
  | beta b a hn =>
    obtain ⟨_, ha⟩ := constant_beta_parameters b a hr
    have hz := closed_one_bad_zero a hc.2 (by omega)
    have hs := bad_subst_le b a 0
    simp only [bad, badRoot, if_neg hn, hz, Nat.add_zero, Nat.mul_zero] at *
    omega
  | @left f g a h ih =>
    have he : red g = red f := by simp only [red] at hr; omega
    exact Nat.add_lt_add_right (ih hc.1 he) _

/-- A finite constant-count phase, with selected bad-head events counted. -/
inductive Phase : Nat → Q → Q → Prop where
  | refl (t : Q) : Phase 0 t t
  | data {t u v : Q} {n : Nat} : DataStep t u → red u = red t →
      Phase n u v → Phase n t v
  | head {t u v : Q} {n : Nat} : RedHead t u → red u = red t →
      Phase n u v → Phase n t v
  | nonflat {t u v : Q} {n : Nat} : BadHead t u → red u = red t →
      Phase n u v → Phase (n + 1) t v

theorem Phase.bad_add {n : Nat} {t u : Q} (h : Phase n t u) (hc : ClosedQ t) :
    bad u + n ≤ bad t := by
  induction h with
  | refl => exact Nat.le_refl _
  | data h _ _ ih =>
    have hi := ih (h.freeUnder 0 hc)
    have hm := data_bad_le h
    omega
  | head h he _ ih =>
    have hi := ih (head_closed h hc)
    have hm := head_bad_le h hc he
    omega
  | nonflat h he _ ih =>
    have hi := ih (head_closed h.head hc)
    have hm := h.strict hc he
    omega

/-- There can be only finitely many nonflat head contractors in a closed
constant-count computation: at most its initial source-lambda count. -/
theorem Phase.bad_bound {n : Nat} {t u : Q} (h : Phase n t u) (hc : ClosedQ t) :
    n ≤ red t := by
  have hm := h.bad_add hc
  have hr := bad_le_red t
  omega

end Blc.SelfintGrowthOrigins
