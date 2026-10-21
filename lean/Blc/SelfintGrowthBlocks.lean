/-
Permanent closed blocks in a source-code-count-preserving computation.
A block is a closed flat program lambda already applied to a closed
program-free first argument. The counter records its lambda once.
-/
import Blc.SelfintGrowthBlue

namespace Blc.SelfintGrowthBlocks
open Term SelfintZero SelfintGrowthBlue

theorem shift_free_iff (t : Q) (c d : Nat) (h : d ≤ c) :
    FreeUnder d (erase (shiftQ c t)) ↔ FreeUnder d (erase t) := by
  induction t generalizing c d with
  | var n =>
    simp only [shiftQ]
    split
    · rename_i hn
      have hd : d ≤ n := Nat.le_trans h hn
      exact ⟨fun hl => (Nat.not_lt.mpr (Nat.le_trans hd (Nat.le_succ n)) hl).elim,
        fun hl => (Nat.not_lt.mpr hd hl).elim⟩
    · rfl
  | lam b ih => exact ih (c + 1) (d + 1) (Nat.succ_le_succ h)
  | app f a ihf iha =>
    exact and_congr (ihf c d h) (iha c d h)
  | k => rfl
  | z i => rfl

theorem closed_shift_iff (t : Q) (c : Nat) :
    ClosedQ (shiftQ c t) ↔ ClosedQ t :=
  shift_free_iff t c 0 (Nat.zero_le c)

theorem subst_free (t : Q) (j : Nat) (s : Q)
    (h : FreeUnder j (erase t)) : substQ j s t = t := by
  induction t generalizing j s with
  | var n =>
    have hn : n < j := h
    simp only [substQ, if_neg (Nat.ne_of_lt hn), if_neg (Nat.not_lt.mpr (Nat.le_of_lt hn))]
  | lam b ih => exact congrArg Q.lam (ih (j + 1) _ h)
  | app f a ihf iha => simp only [substQ, ihf j s h.1, iha j s h.2]
  | k => rfl
  | z i => rfl

theorem subst_closed (t : Q) (j : Nat) (s : Q) (h : ClosedQ t) :
    substQ j s t = t :=
  subst_free t j s (Term.closed_freeUnder h j)

def Block (f a : Q) : Prop :=
  match f with
  | .lam b => red b = 0 ∧ ClosedQ (.lam b) ∧ red a = 0 ∧ ClosedQ a
  | _ => False

instance (t : Q) : Decidable (ClosedQ t) :=
  inferInstanceAs (Decidable (Closed (erase t)))

instance (f a : Q) : Decidable (Block f a) := by
  cases f <;> dsimp [Block] <;> infer_instance

def root (f a : Q) : Nat := if Block f a then 1 else 0

def blocks : Q → Nat
  | .var _ | .k | .z _ => 0
  | .lam b => blocks b
  | .app f a => blocks f + blocks a + root f a

theorem root_shift (f a : Q) (c : Nat) :
    root (shiftQ c f) (shiftQ c a) = root f a := by
  cases f with
  | var n => simp only [shiftQ]; split <;> rfl
  | lam b =>
    change (if red (shiftQ (c + 1) b) = 0 ∧ ClosedQ (shiftQ c (.lam b)) ∧
      red (shiftQ c a) = 0 ∧ ClosedQ (shiftQ c a) then 1 else 0) = _
    simp only [red_shift, closed_shift_iff, root, Block]
    rfl
  | app f a => rfl
  | k => rfl
  | z i => rfl

theorem blocks_shift (t : Q) (c : Nat) : blocks (shiftQ c t) = blocks t := by
  induction t generalizing c with
  | var n => simp only [shiftQ]; split <;> rfl
  | lam b ih => exact ih (c + 1)
  | app f a ihf iha => simp only [shiftQ, blocks, ihf, iha, root_shift]
  | k => rfl
  | z i => rfl

theorem root_subst_le (f a : Q) (j : Nat) (s : Q) :
    root f a ≤ root (substQ j s f) (substQ j s a) := by
  by_cases h : Block f a
  · have hf : ClosedQ f := by
      cases f with
      | lam b => exact h.2.1
      | var | app | k | z => exact h.elim
    have ha : ClosedQ a := by
      cases f with
      | lam b => exact h.2.2.2
      | var | app | k | z => exact h.elim
    rw [subst_closed f j s hf, subst_closed a j s ha]
    exact Nat.le_refl _
  · simp only [root, if_neg h]
    exact Nat.zero_le _

/-- Closed blocks survive substitution; copies of the argument bring
their own blocks. New blocks may also be formed. -/
theorem blocks_subst_le (t s : Q) (j : Nat) :
    blocks t + oc j t * blocks s ≤ blocks (substQ j s t) := by
  induction t generalizing s j with
  | var n =>
    simp only [substQ, blocks, oc_var]
    split
    · simp only [Nat.one_mul, Nat.zero_add, Nat.le_refl]
    · split <;> simp_all only [blocks, Nat.zero_mul, Nat.zero_add, Nat.le_refl]
  | lam b ih =>
    simpa only [substQ, blocks, oc_lam, blocks_shift] using ih (shiftQ 0 s) (j + 1)
  | app f a ihf iha =>
    have hf := ihf s j
    have ha := iha s j
    have hr := root_subst_le f a j s
    simp only [substQ, blocks, oc_app, Nat.add_mul]
    omega
  | k => simp only [blocks, oc_k, substQ, Nat.zero_mul, Nat.zero_add, Nat.le_refl]
  | z i => simp only [blocks, oc_z, substQ, Nat.zero_mul, Nat.zero_add, Nat.le_refl]

theorem blocks_zero (t : Q) (h : red t = 0) : blocks t = 0 := by
  induction t with
  | var n => rfl
  | lam b ih => simp only [red] at h; omega
  | app f a ihf iha =>
    have hf : red f = 0 := by simp only [red] at h; omega
    have ha : red a = 0 := by simp only [red] at h; omega
    have hr : root f a = 0 := by
      cases f <;> try rfl
      case lam b =>
        simp only [red] at hf
        omega
    simp only [blocks, ihf hf, iha ha, hr, Nat.zero_add]
  | k => rfl
  | z i => rfl

theorem blocks_le_red (t : Q) : blocks t ≤ red t := by
  induction t with
  | var n => exact Nat.le_refl _
  | lam b ih => simp only [blocks, red]; omega
  | app f a ihf iha =>
    by_cases h : Block f a
    · cases f with
      | lam b =>
        have hb := blocks_zero b h.1
        have ha := blocks_zero a h.2.2.1
        simp only [blocks, root, if_pos h, hb, ha, red, h.1, h.2.2.1]
        omega
      | var | app | k | z => exact h.elim
    · simp only [blocks, root, if_neg h, Nat.add_zero, red]
      omega
  | k => exact Nat.le_refl _
  | z i => exact Nat.le_refl _

theorem root_program_arg (b a : Q) (h : 0 < red a) : root (.lam b) a = 0 := by
  have hn : ¬ Block (.lam b) a := fun hb => (Nat.ne_of_gt h) hb.2.2.1
  exact if_neg hn

/-- Copying a blocked one-lambda operand consumes an unblocked head and
strictly increases a counter bounded by the total program-lambda count. -/
theorem blocked_copy_strict (b a : Q) (hk : oc 0 b = 2) (ha : red a = 1)
    (hb : 0 < blocks a) :
    blocks (.app (.lam b) a) < blocks (substQ 0 a b) := by
  have h := blocks_subst_le b a 0
  have hr := root_program_arg b a (by omega)
  simp only [blocks, hr, Nat.add_zero]
  rw [hk] at h
  omega

theorem root_data_left {f g : Q} (h : DataStep f g) (a : Q) :
    root f a ≤ root g a := by
  by_cases hf : Block f a
  · cases f with
    | lam b =>
      cases h with
      | @lam b c h =>
        have hc : red c = 0 := Nat.eq_zero_of_le_zero (hf.1 ▸ h.red_le)
        have hclosed : ClosedQ (.lam c) := h.freeUnder 1 hf.2.1
        have hg : Block (.lam c) a := ⟨hc, hclosed, hf.2.2⟩
        simp only [root, if_pos hf, if_pos hg, Nat.le_refl]
    | var | app | k | z => exact hf.elim
  · simp only [root, if_neg hf]
    exact Nat.zero_le _

theorem root_data_right (f : Q) {a b : Q} (h : DataStep a b) :
    root f a ≤ root f b := by
  by_cases ha : Block f a
  · cases f with
    | lam c =>
      have hb : red b = 0 := Nat.eq_zero_of_le_zero (ha.2.2.1 ▸ h.red_le)
      have hclosed : ClosedQ b := h.freeUnder 0 ha.2.2.2
      have hg : Block (.lam c) b := ⟨ha.1, ha.2.1, hb, hclosed⟩
      simp only [root, if_pos ha, if_pos hg, Nat.le_refl]
    | var | app | k | z => exact ha.elim
  · simp only [root, if_neg ha]
    exact Nat.zero_le _

/-- A data step preserving the source-lambda count cannot erase a block.
This includes data reductions underneath program lambdas. -/
theorem data_blocks_le {t u : Q} (h : DataStep t u) (hr : red u = red t) :
    blocks t ≤ blocks u := by
  induction h with
  | k a b =>
    have hb : red b = 0 := by simp only [red] at hr; omega
    have hbb := blocks_zero b hb
    simp only [blocks, root, Block, if_false, hbb, Nat.zero_add, Nat.add_zero, Nat.le_refl]
  | z i a =>
    simp only [blocks, root, Block, if_false, Nat.zero_add, Nat.add_zero]
    exact Nat.le_add_right _ _
  | @left f g a h ih =>
    have hf : red g = red f := by simp only [red] at hr; omega
    have hb := ih hf
    have hx := root_data_left h a
    simp only [blocks]
    omega
  | @right f a b h ih =>
    have ha : red b = red a := by simp only [red] at hr; omega
    have hb := ih ha
    have hx := root_data_right f h
    simp only [blocks]
    omega
  | @lam b c h ih =>
    exact ih (by simp only [red] at hr; omega)

theorem data_steps_blocks_le {t u : Q} (h : DataSteps t u) (hr : red u = red t) :
    blocks t ≤ blocks u := by
  induction h with
  | refl => exact Nat.le_refl _
  | @head t v u h hs ih =>
    have htv : red v = red t := by have h₁ := h.red_le; have h₂ := hs.red_le; omega
    have hvu : red u = red v := by omega
    exact Nat.le_trans (data_blocks_le h htv) (ih hvu)

theorem constant_parameters (k a : Nat) (h : k * a = a + 1) : k = 2 ∧ a = 1 := by
  have ha : 0 < a := by
    by_cases hz : a = 0
    · simp only [hz, Nat.mul_zero] at h
      omega
    · omega
  have hk : 2 ≤ k := by
    by_cases hz : k = 0
    · simp only [hz, Nat.zero_mul] at h
      omega
    · by_cases ho : k = 1
      · simp only [ho, Nat.one_mul] at h
        omega
      · omega
  have hm := Nat.mul_le_mul_right a hk
  have he : a = 1 := by omega
  rw [he] at h
  simp only [Nat.mul_one] at h
  exact ⟨h, he⟩

theorem constant_beta_parameters (b a : Q)
    (h : red (substQ 0 a b) = red (.app (.lam b) a)) :
    oc 0 b = 2 ∧ red a = 1 := by
  have he : oc 0 b * red a = red a + 1 := by
    simp only [red_subst, red] at h
    omega
  exact constant_parameters _ _ he

theorem head_root_zero {t u : Q} (h : RedHead t u) (a : Q) : root t a = 0 := by
  cases h <;> rfl

/-- The block counter is monotone at every program head contraction in
a constant-source-lambda-count phase. -/
theorem head_blocks_le {t u : Q} (h : RedHead t u) (hr : red u = red t) :
    blocks t ≤ blocks u := by
  induction h with
  | beta b a =>
    obtain ⟨hk, ha⟩ := constant_beta_parameters b a hr
    have hs := blocks_subst_le b a 0
    have hz := root_program_arg b a (by omega)
    simp only [blocks, hz, Nat.add_zero]
    rw [hk] at hs
    omega
  | @left f g a h ih =>
    have hf : red g = red f := by simp only [red] at hr; omega
    have hb := ih hf
    have hz := head_root_zero h a
    simp only [blocks, hz, Nat.add_zero]
    omega

/-- A selected blocked operand is exposed at a red head contraction. -/
inductive CopiesBlock : Q → Q → Prop where
  | beta (b a : Q) : 0 < blocks a →
      CopiesBlock (.app (.lam b) a) (substQ 0 a b)
  | left {f g : Q} (a : Q) : CopiesBlock f g → CopiesBlock (.app f a) (.app g a)

theorem CopiesBlock.head {t u : Q} (h : CopiesBlock t u) : RedHead t u := by
  induction h with
  | beta b a h => exact .beta _ _
  | left a h ih => exact .left _ ih

/-- Thus only finitely many selected blocked-operand copies fit in a
constant-count phase; its natural-number counter rises at each one. -/
theorem CopiesBlock.strict {t u : Q} (h : CopiesBlock t u) (hr : red u = red t) :
    blocks t < blocks u := by
  induction h with
  | beta b a hb =>
    obtain ⟨hk, ha⟩ := constant_beta_parameters b a hr
    exact blocked_copy_strict b a hk ha hb
  | @left f g a h ih =>
    have hf : red g = red f := by simp only [red] at hr; omega
    have hb := ih hf
    have hz := head_root_zero h.head a
    simp only [blocks, hz, Nat.add_zero]
    omega

/-- A finite part of a constant-count phase, counting selected blocked
operand copies. Other head contractions may be left uncounted. -/
inductive Phase : Nat → Q → Q → Prop where
  | refl (t : Q) : Phase 0 t t
  | data {t u v : Q} {n : Nat} : DataStep t u → red u = red t →
      Phase n u v → Phase n t v
  | head {t u v : Q} {n : Nat} : RedHead t u → red u = red t →
      Phase n u v → Phase n t v
  | copy {t u v : Q} {n : Nat} : CopiesBlock t u → red u = red t →
      Phase n u v → Phase (n + 1) t v

theorem Phase.red_eq {n : Nat} {t u : Q} (h : Phase n t u) : red u = red t := by
  induction h with
  | refl => rfl
  | data _ h _ ih | head _ h _ ih | copy _ h _ ih => exact ih.trans h

theorem Phase.blocks_add {n : Nat} {t u : Q} (h : Phase n t u) :
    blocks t + n ≤ blocks u := by
  induction h with
  | refl => exact Nat.le_refl _
  | data h he _ ih => have hm := data_blocks_le h he; omega
  | head h he _ ih => have hm := head_blocks_le h he; omega
  | copy h he _ ih => have hm := h.strict he; omega

/-- No constant-count computation can keep copying blocked operands:
there are at most as many selected copies as initially unblocked lambdas. -/
theorem Phase.copies_bound {n : Nat} {t u : Q} (h : Phase n t u) :
    blocks t + n ≤ red t := by
  have hb := h.blocks_add
  have hr := blocks_le_red u
  have he := h.red_eq
  omega

end Blc.SelfintGrowthBlocks
