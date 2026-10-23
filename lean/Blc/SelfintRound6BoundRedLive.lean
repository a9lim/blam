/-
Live source-binder accounting with protected quotation origins.

Two live red binders and one nonlinear binder cannot grow to three live
red binders while retaining nonlinearity: the first growing contraction
spends both live source binders and leaves an affine reduct. Full beta
contexts, including migration of nonlinearity to enclosing binders, are
included in the invariant.
-/
import Blc.SelfintOrigins
import Blc.SelfintWiden

namespace Blc.QuoteOrigins.Marked
open Term SelfintLowerBound SelfintFloor SelfintNonlinearChain

/-- Live abstractions retaining source origin; protected quotation
abstractions are excluded even when they are live. -/
def redLive : Marked → Nat
  | .var _ => 0
  | .app f a => redLive f + redLive a
  | .lam q b => redLive b + if q then 0 else if 0 < occ 0 (erase b) then 1 else 0

theorem redLive_shift (t : Marked) (c : Nat) :
    redLive (shift c t) = redLive t := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> rfl
  | app f a ihf iha => simp only [shift, redLive, ihf, iha]
  | lam q b ih =>
      simp only [shift, redLive, ih, erase_shift]
      rw [occ_shift_lt (erase b) 0 (c + 1) (by omega)]

theorem redLive_subst (t s : Marked) (j : Nat) :
    redLive (subst j s t) = redLive t + occ j (erase t) * redLive s := by
  induction t generalizing s j with
  | var n =>
      simp only [subst, redLive, erase, occ]
      split <;> simp_all
      split <;> simp [redLive]
  | app f a ihf iha =>
      simp only [subst, redLive, erase, occ, ihf, iha, Nat.add_mul]
      omega
  | lam q b ih =>
      simp only [subst, redLive, erase, occ, erase_subst, erase_shift]
      rw [occ_substDec_lt (erase b) (Term.shift 1 0 (erase s)) 0 (j + 1) (by omega),
        occ_shift_eq (erase s) 0]
      simp only [Nat.mul_zero, Nat.add_zero, ih, redLive_shift]
      omega

theorem redLive_red (t : Term) : redLive (red t) = live t := by
  induction t with
  | var n => rfl
  | app f a ihf iha => simp only [red, redLive, live, ihf, iha]
  | lam b ih => simp only [red, redLive, live, erase_red, ih, Bool.false_eq_true, if_false]

theorem redLive_bit (b : Bool) : redLive (bit b) = 0 := by cases b <;> rfl

theorem nonlinear_le_redLive {t : Marked} (h : BlueAffine t) :
    nonlinear (erase t) ≤ redLive t := by
  induction t with
  | var n => simp [erase, nonlinear, redLive]
  | app f a ihf iha =>
      have hf := ihf h.1
      have ha := iha h.2
      simp only [erase, nonlinear, redLive]
      omega
  | lam q b ih =>
      have hb := ih h.1
      cases q with
      | true =>
          have ho := h.2 rfl
          simp only [erase, nonlinear, redLive, if_true, Nat.add_zero]
          rw [if_neg (by omega)]
          exact hb
      | false =>
          simp only [erase, nonlinear, redLive, Bool.false_eq_true, if_false]
          split <;> split <;> omega

theorem affine_step_redLive {t u : Marked} (h : Step t u)
    (hn : nonlinear (erase t) = 0) : redLive u ≤ redLive t := by
  induction h with
  | beta q b a =>
      have hk : occ 0 (erase b) ≤ 1 := by
        by_cases hh : 1 < occ 0 (erase b)
        · simp only [erase, nonlinear, if_pos hh] at hn; omega
        · omega
      have hm := Nat.mul_le_mul_right (redLive a) hk
      simp only [Nat.one_mul] at hm
      simp only [redLive_subst, redLive]
      omega
  | @appL f g a h ih =>
      have hf : nonlinear (erase f) = 0 := by simp only [erase, nonlinear] at hn; omega
      have hh := ih hf
      simp only [redLive]
      omega
  | @appR f a b h ih =>
      have ha : nonlinear (erase a) = 0 := by simp only [erase, nonlinear] at hn; omega
      have hh := ih ha
      simp only [redLive]
      omega
  | @lam q b c h ih =>
      have hb : nonlinear (erase b) = 0 := by simp only [erase, nonlinear] at hn; omega
      have hh := ih hb
      have ho := (affine_beta_progress (step_erase h) hb).2 0
      cases q with
      | true => simpa only [redLive, if_true, Nat.add_zero] using hh
      | false =>
          simp only [redLive, Bool.false_eq_true, if_false]
          split <;> split <;> omega

theorem affine_redex_free_occ (b a : Marked) (hk : occ 0 (erase b) ≤ 1) (j : Nat) :
    occ j (erase (subst 0 a b)) ≤ occ j (erase (.app (.lam false b) a)) := by
  rw [erase_subst, occ_substDec_ge (erase b) (erase a) j 0 (by omega)]
  have hm := Nat.mul_le_mul_right (occ j (erase a)) hk
  simp only [Nat.one_mul] at hm
  simp only [erase, occ]
  omega

/-- With only one live source binder, a step never increases that count.
If it increases any free occurrence, its reduct is wholly affine. This
last clause controls migration into a surrounding live source binder. -/
theorem one_redLive_step {t u : Marked} (h : Step t u) (hg : Good t)
    (hl : redLive t ≤ 1) : redLive u ≤ redLive t ∧
      (nonlinear (erase u) = 0 ∨ ∀ j, occ j (erase u) ≤ occ j (erase t)) := by
  induction h with
  | beta q b a =>
      by_cases hk : occ 0 (erase b) ≤ 1
      · have hm := Nat.mul_le_mul_right (redLive a) hk
        simp only [Nat.one_mul] at hm
        refine ⟨by simp only [redLive_subst, redLive]; omega, Or.inr ?_⟩
        intro j
        exact affine_redex_free_occ b a hk j
      · have hp : 0 < occ 0 (erase b) := by omega
        have hq : q = false := by
          cases q with
          | false => rfl
          | true => have hh := (good_blueAffine hg.1).2 rfl; omega
        subst q
        have hbl : redLive b = 0 := by
          simp only [redLive, Bool.false_eq_true, if_false, if_pos hp] at hl; omega
        have hal : redLive a = 0 := by
          simp only [redLive, Bool.false_eq_true, if_false, if_pos hp] at hl; omega
        have hul : redLive (subst 0 a b) = 0 := by simp [redLive_subst, hbl, hal]
        have hnl := nonlinear_le_redLive (good_blueAffine (good_subst hg.1.1 hg.2 0))
        exact ⟨by omega, Or.inl (by omega)⟩
  | @appL f g a h ih =>
      have hfl : redLive f ≤ 1 := by change redLive f + redLive a ≤ 1 at hl; omega
      obtain ⟨hr, hn⟩ := ih hg.1 hfl
      refine ⟨by simp only [redLive]; omega, ?_⟩
      rcases hn with hn | ho
      · by_cases ha : nonlinear (erase a) = 0
        · exact Or.inl (by simp only [erase, nonlinear, hn, ha, Nat.add_zero])
        · have hh := nonlinear_le_redLive (good_blueAffine hg.2)
          have hfr : redLive f = 0 := by change redLive f + redLive a ≤ 1 at hl; omega
          have hfn : nonlinear (erase f) = 0 := by
            have hh := nonlinear_le_redLive (good_blueAffine hg.1); omega
          have ho := (affine_beta_progress (step_erase h) hfn).2
          right
          intro j
          exact Nat.add_le_add_right (ho j) _
      · right
        intro j
        exact Nat.add_le_add_right (ho j) _
  | @appR f a b h ih =>
      have hal : redLive a ≤ 1 := by change redLive f + redLive a ≤ 1 at hl; omega
      obtain ⟨hr, hn⟩ := ih hg.2 hal
      refine ⟨by simp only [redLive]; omega, ?_⟩
      rcases hn with hn | ho
      · by_cases hf : nonlinear (erase f) = 0
        · exact Or.inl (by simp only [erase, nonlinear, hn, hf, Nat.add_zero])
        · have hh := nonlinear_le_redLive (good_blueAffine hg.1)
          have har : redLive a = 0 := by change redLive f + redLive a ≤ 1 at hl; omega
          have han : nonlinear (erase a) = 0 := by
            have hh := nonlinear_le_redLive (good_blueAffine hg.2); omega
          have ho := (affine_beta_progress (step_erase h) han).2
          right
          intro j
          exact Nat.add_le_add_left (ho j) _
      · right
        intro j
        exact Nat.add_le_add_left (ho j) _
  | @lam q b c h ih =>
      have hbl : redLive b ≤ 1 := by simp only [redLive] at hl; omega
      obtain ⟨hr, hn⟩ := ih hg.1 hbl
      have hgc := good_step h hg.1
      cases q with
      | true =>
          have hnl := (good_blueAffine (good_step (.lam true h) hg)).2 rfl
          refine ⟨by simpa only [redLive, if_true, Nat.add_zero] using hr, ?_⟩
          rcases hn with hn | ho
          · left
            simp only [erase, nonlinear, hn, if_neg (show ¬ 1 < occ 0 (erase c) by omega),
              Nat.add_zero]
          · right
            intro j
            exact ho (j + 1)
      | false =>
          by_cases hb0 : occ 0 (erase b) = 0
          · have hc0 := QuoteOrigins.occ_zero_beta (step_erase h) 0 hb0
            refine ⟨?_, ?_⟩
            · simpa only [redLive, Bool.false_eq_true, if_false, hb0, hc0,
                Nat.lt_irrefl, Nat.add_zero] using hr
            · rcases hn with hn | ho
              · left; simp [erase, nonlinear, hn, hc0]
              · right; intro j; exact ho (j + 1)
          · have hp : 0 < occ 0 (erase b) := by omega
            have hbr : redLive b = 0 := by
              simp only [redLive, Bool.false_eq_true, if_false, if_pos hp] at hl
              omega
            have hbn : nonlinear (erase b) = 0 := by
              have hh := nonlinear_le_redLive (good_blueAffine hg.1); omega
            have ho := (affine_beta_progress (step_erase h) hbn).2
            refine ⟨?_, Or.inr (fun j => ho (j + 1))⟩
            simp only [redLive, Bool.false_eq_true, if_false, if_pos hp]
            split <;> omega

/-- A nonlinear contraction can grow two live source binders only by
consuming their only nonlinear binder. If an enclosing red binder instead
inherits that nonlinearity, the one-binder lemma bounds its entire body. -/
theorem two_redLive_step {t u : Marked} (h : Step t u) (hg : Good t)
    (hl : redLive t ≤ 2) (hn : nonlinear (erase t) ≤ 1) :
    nonlinear (erase u) = 0 ∨
      (redLive u ≤ 2 ∧ nonlinear (erase u) ≤ 1) := by
  induction h with
  | beta q b a =>
      by_cases hk : occ 0 (erase b) ≤ 1
      · right
        have hmr := Nat.mul_le_mul_right (redLive a) hk
        have hmn := Nat.mul_le_mul_right (nonlinear (erase a)) hk
        simp only [Nat.one_mul] at hmr hmn
        constructor
        · simp only [redLive_subst]
          simp only [redLive] at hl
          omega
        · simp only [erase_subst, nonlinear_subst]
          simp only [erase, nonlinear] at hn
          omega
      · have hp : 1 < occ 0 (erase b) := by omega
        have hbn : nonlinear (erase b) = 0 := by
          simp only [erase, nonlinear, if_pos hp] at hn; omega
        have han : nonlinear (erase a) = 0 := by
          simp only [erase, nonlinear, if_pos hp] at hn; omega
        left
        simp only [erase_subst, nonlinear_subst, hbn, han, Nat.mul_zero, Nat.add_zero]
  | @appL f g a h ih =>
      have hfl : redLive f ≤ 2 := by change redLive f + redLive a ≤ 2 at hl; omega
      have hfn : nonlinear (erase f) ≤ 1 := by simp only [erase, nonlinear] at hn; omega
      have han : nonlinear (erase a) ≤ 1 := by simp only [erase, nonlinear] at hn; omega
      have hrec := ih hg.1 hfl hfn
      have houtside := nonlinear_le_redLive (good_blueAffine hg.2)
      rcases hrec with hz | ⟨hr, hng⟩
      · by_cases ha : nonlinear (erase a) = 0
        · left; simp only [erase, nonlinear, hz, ha, Nat.add_zero]
        · have hfl1 : redLive f ≤ 1 := by change redLive f + redLive a ≤ 2 at hl; omega
          have hr := (one_redLive_step h hg.1 hfl1).1
          right
          constructor
          · simp only [redLive] at hl ⊢; omega
          · simp only [erase, nonlinear, hz, Nat.zero_add]; exact han
      · right
        constructor
        · by_cases ha : redLive a = 0
          · simpa only [redLive, ha, Nat.add_zero] using hr
          · have hfl1 : redLive f ≤ 1 := by change redLive f + redLive a ≤ 2 at hl; omega
            have hh := (one_redLive_step h hg.1 hfl1).1
            simp only [redLive] at hl ⊢
            omega
        · by_cases ha : nonlinear (erase a) = 0
          · simpa only [erase, nonlinear, ha, Nat.add_zero] using hng
          · have hf : nonlinear (erase f) = 0 := by simp only [erase, nonlinear] at hn; omega
            have hh := (affine_beta_progress (step_erase h) hf).1
            simpa only [erase, nonlinear, hh, Nat.zero_add] using han
  | @appR f a b h ih =>
      have hal : redLive a ≤ 2 := by change redLive f + redLive a ≤ 2 at hl; omega
      have han : nonlinear (erase a) ≤ 1 := by simp only [erase, nonlinear] at hn; omega
      have hfn : nonlinear (erase f) ≤ 1 := by simp only [erase, nonlinear] at hn; omega
      have hrec := ih hg.2 hal han
      have houtside := nonlinear_le_redLive (good_blueAffine hg.1)
      rcases hrec with hz | ⟨hr, hnb⟩
      · by_cases hf : nonlinear (erase f) = 0
        · left; simp only [erase, nonlinear, hz, hf, Nat.add_zero]
        · have hal1 : redLive a ≤ 1 := by change redLive f + redLive a ≤ 2 at hl; omega
          have hr := (one_redLive_step h hg.2 hal1).1
          right
          constructor
          · simp only [redLive] at hl ⊢; omega
          · simp only [erase, nonlinear, hz, Nat.add_zero]; exact hfn
      · right
        constructor
        · by_cases hf : redLive f = 0
          · simpa only [redLive, hf, Nat.zero_add] using hr
          · have hal1 : redLive a ≤ 1 := by change redLive f + redLive a ≤ 2 at hl; omega
            have hh := (one_redLive_step h hg.2 hal1).1
            simp only [redLive] at hl ⊢
            omega
        · by_cases hf : nonlinear (erase f) = 0
          · simpa only [erase, nonlinear, hf, Nat.zero_add] using hnb
          · have ha : nonlinear (erase a) = 0 := by simp only [erase, nonlinear] at hn; omega
            have hh := (affine_beta_progress (step_erase h) ha).1
            simpa only [erase, nonlinear, hh, Nat.add_zero] using hfn
  | @lam q b c h ih =>
      have hbl : redLive b ≤ 2 := by simp only [redLive] at hl; omega
      have hbn : nonlinear (erase b) ≤ 1 := by simp only [erase, nonlinear] at hn; omega
      have hgc := good_step h hg.1
      cases q with
      | true =>
          have hco := (good_blueAffine (good_step (.lam true h) hg)).2 rfl
          rcases ih hg.1 hbl hbn with hz | ⟨hr, hcn⟩
          · left
            simp only [erase, nonlinear, hz,
              if_neg (show ¬ 1 < occ 0 (erase c) by omega), Nat.add_zero]
          · right
            constructor
            · simpa only [redLive, if_true, Nat.add_zero] using hr
            · simpa only [erase, nonlinear,
                if_neg (show ¬ 1 < occ 0 (erase c) by omega), Nat.add_zero] using hcn
      | false =>
          by_cases hb0 : occ 0 (erase b) = 0
          · have hc0 := QuoteOrigins.occ_zero_beta (step_erase h) 0 hb0
            rcases ih hg.1 hbl hbn with hz | ⟨hr, hcn⟩
            · left; simp [erase, nonlinear, hz, hc0]
            · right
              constructor
              · simpa only [redLive, Bool.false_eq_true, if_false, hc0,
                  Nat.lt_irrefl, Nat.add_zero] using hr
              · simpa only [erase, nonlinear, hc0,
                  if_neg (show ¬ 1 < 0 by omega), Nat.add_zero] using hcn
          · have hp : 0 < occ 0 (erase b) := by omega
            have hbl1 : redLive b ≤ 1 := by
              simp only [redLive, Bool.false_eq_true, if_false, if_pos hp] at hl; omega
            obtain ⟨hr, hcase⟩ := one_redLive_step h hg.1 hbl1
            have hcn := nonlinear_le_redLive (good_blueAffine hgc)
            right
            constructor
            · simp only [redLive, Bool.false_eq_true, if_false]
              split <;> omega
            · rcases hcase with hz | ho
              · simp only [erase, nonlinear, hz, Nat.zero_add]
                split <;> omega
              · by_cases hbNL : 1 < occ 0 (erase b)
                · have hbn0 : nonlinear (erase b) = 0 := by
                    simp only [erase, nonlinear, if_pos hbNL] at hn; omega
                  have hcn0 := (affine_beta_progress (step_erase h) hbn0).1
                  simp only [erase, nonlinear, hcn0, Nat.zero_add]
                  split <;> omega
                · have hco : occ 0 (erase c) ≤ 1 := by have hh := ho 0; omega
                  simp only [erase, nonlinear,
                    if_neg (show ¬ 1 < occ 0 (erase c) by omega), Nat.add_zero]
                  omega

theorem redLive_steps_erase {t u : Marked} (h : Steps t u) : Betas (erase t) (erase u) := by
  induction h with
  | refl => exact .refl _
  | step hb hs ih => exact .head (step_erase hb) ih

/-- Full arbitrary-beta trace invariant. Once affine, a term stays affine;
otherwise two live source binders and one nonlinear binder remain bounds. -/
theorem two_redLive_steps {t u : Marked} (h : Steps t u) (hg : Good t)
    (hl : redLive t ≤ 2) (hn : nonlinear (erase t) ≤ 1) :
    nonlinear (erase u) = 0 ∨
      (redLive u ≤ 2 ∧ nonlinear (erase u) ≤ 1) := by
  induction h with
  | refl => exact Or.inr ⟨hl, hn⟩
  | @step t u v h hs ih =>
      rcases two_redLive_step h hg hl hn with hz | ⟨hr, hnu⟩
      · left
        exact (SelfintClass.affine_betas_occ (redLive_steps_erase hs) hz).1
      · exact ih (good_step h hg) hr hnu

#print axioms one_redLive_step
#print axioms two_redLive_steps

/-- Every live source binder lies on one containment chain. Dead source
binders and protected quotation binders do not contribute to this chain. -/
def LiveChain : Marked → Prop
  | .var _ => True
  | .lam _ b => LiveChain b
  | .app f a => LiveChain f ∧ LiveChain a ∧ (redLive f = 0 ∨ redLive a = 0)

theorem one_redLive_chain (t : Marked) (hl : redLive t ≤ 1) : LiveChain t := by
  induction t with
  | var n => trivial
  | lam q b ih => exact ih (by simp only [redLive] at hl; omega)
  | app f a ihf iha =>
      have hh : redLive f + redLive a ≤ 1 := hl
      exact ⟨ihf (by omega), iha (by omega), by omega⟩

theorem liveChain_shift (t : Marked) (c : Nat) (ht : LiveChain t) :
    LiveChain (shift c t) := by
  induction t generalizing c with
  | var n => simp only [shift]; split <;> trivial
  | lam q b ih => exact ih (c + 1) ht
  | app f a ihf iha =>
      exact ⟨ihf c ht.1, iha c ht.2.1, by simpa only [redLive_shift] using ht.2.2⟩

theorem liveChain_subst_zero (t s : Marked) (j : Nat) (ht : LiveChain t)
    (hs : redLive s = 0) : LiveChain (subst j s t) := by
  induction t generalizing s j with
  | var n =>
      simp only [subst]
      split
      · exact one_redLive_chain s (by omega)
      · split <;> trivial
  | lam q b ih =>
      exact ih (shift 0 s) (j + 1) ht (by simpa only [redLive_shift] using hs)
  | app f a ihf iha =>
      refine ⟨ihf s j ht.1 hs, iha s j ht.2.1 hs, ?_⟩
      simpa only [redLive_subst, hs, Nat.mul_zero, Nat.add_zero] using ht.2.2

theorem liveChain_subst_affine (t s : Marked) (j : Nat) (ht : redLive t = 0)
    (hs : LiveChain s) (ho : occ j (erase t) ≤ 1) : LiveChain (subst j s t) := by
  induction t generalizing s j with
  | var n =>
      simp only [subst]
      split
      · exact hs
      · split <;> trivial
  | lam q b ih =>
      have hb : redLive b = 0 := by simp only [redLive] at ht; omega
      exact ih (shift 0 s) (j + 1) hb (liveChain_shift s 0 hs) ho
  | app f a ihf iha =>
      have hf : redLive f = 0 := by simp only [redLive] at ht; omega
      have ha : redLive a = 0 := by simp only [redLive] at ht; omega
      have hof : occ j (erase f) ≤ 1 := by simp only [erase, occ] at ho; omega
      have hoa : occ j (erase a) ≤ 1 := by simp only [erase, occ] at ho; omega
      refine ⟨ihf s j hf hs hof, iha s j ha hs hoa, ?_⟩
      have hz : occ j (erase f) = 0 ∨ occ j (erase a) = 0 := by
        simp only [erase, occ] at ho; omega
      rcases hz with hz | hz
      · left; simp only [redLive_subst, hf, hz, Nat.zero_mul, Nat.add_zero]
      · right; simp only [redLive_subst, ha, hz, Nat.zero_mul, Nat.add_zero]

/-- A live source chain cannot copy a live source-containing operand:
the contractor and that operand would be incomparable. Blue contractors
are affine. Thus arbitrary beta preserves the chain and its live count. -/
theorem liveChain_step {t u : Marked} (h : Step t u) (hg : Good t)
    (ht : LiveChain t) : LiveChain u ∧ redLive u ≤ redLive t := by
  induction h with
  | beta q b a =>
      by_cases ha : redLive a = 0
      · refine ⟨liveChain_subst_zero b a 0 ht.1 ha, ?_⟩
        simp only [redLive_subst, ha, Nat.mul_zero, Nat.add_zero, redLive]
        omega
      · have hf : redLive (.lam q b) = 0 := ht.2.2.resolve_right ha
        have hb : redLive b = 0 := by simp only [redLive] at hf; omega
        have hk : occ 0 (erase b) ≤ 1 := by
          cases q with
          | true => exact (good_blueAffine hg.1).2 rfl
          | false =>
              by_cases hp : 0 < occ 0 (erase b)
              · simp only [redLive, Bool.false_eq_true, if_false, if_pos hp] at hf; omega
              · omega
        refine ⟨liveChain_subst_affine b a 0 hb ht.2.1 hk, ?_⟩
        have hh := Nat.mul_le_mul_right (redLive a) hk
        simp only [Nat.one_mul] at hh
        simp only [redLive_subst, hb, redLive, Nat.zero_add]
        omega
  | @appL f g a h ih =>
      obtain ⟨hc, hr⟩ := ih hg.1 ht.1
      refine ⟨⟨hc, ht.2.1, ?_⟩, by simp only [redLive]; omega⟩
      rcases ht.2.2 with hz | hz
      · exact Or.inl (by omega)
      · exact Or.inr hz
  | @appR f a b h ih =>
      obtain ⟨hc, hr⟩ := ih hg.2 ht.2.1
      refine ⟨⟨ht.1, hc, ?_⟩, by simp only [redLive]; omega⟩
      rcases ht.2.2 with hz | hz
      · exact Or.inl hz
      · exact Or.inr (by omega)
  | @lam q b c h ih =>
      obtain ⟨hc, hr⟩ := ih hg.1 ht
      refine ⟨hc, ?_⟩
      cases q with
      | true => simpa only [redLive, if_true, Nat.add_zero] using hr
      | false =>
          by_cases hb : occ 0 (erase b) = 0
          · have hc := QuoteOrigins.occ_zero_beta (step_erase h) 0 hb
            simpa only [redLive, Bool.false_eq_true, if_false, hb, hc,
              Nat.lt_irrefl, Nat.add_zero] using hr
          · have hp : 0 < occ 0 (erase b) := by omega
            simp only [redLive, Bool.false_eq_true, if_false, if_pos hp]
            split <;> omega

theorem liveChain_steps {t u : Marked} (h : Steps t u) (hg : Good t)
    (ht : LiveChain t) : LiveChain u ∧ redLive u ≤ redLive t := by
  induction h with
  | refl => exact ⟨ht, Nat.le_refl _⟩
  | step hb hs ih =>
      obtain ⟨hc, hr⟩ := liveChain_step hb hg ht
      obtain ⟨hu, hr'⟩ := ih (good_step hb hg) hc
      exact ⟨hu, Nat.le_trans hr' hr⟩

private theorem separated_succ_of_absent (t : Term) (d : Nat)
    (hs : SelfintCapture.Separated d t) (ho : occ d t = 0) :
    SelfintCapture.Separated (d + 1) t := by
  induction t generalizing d with
  | var n => trivial
  | app f a ihf iha =>
      have hf : occ d f = 0 := by change occ d f + occ d a = 0 at ho; omega
      have ha : occ d a = 0 := by change occ d f + occ d a = 0 at ho; omega
      exact ⟨ihf d hs.1 hf, iha d hs.2 ha⟩
  | lam b ih =>
      refine ⟨ih (d + 1) hs.1 ho, ?_⟩
      intro hl i hi
      by_cases he : i = d
      · subst i; exact ho
      · exact hs.2 hl i (by omega)

/-- An internal capture with only two live source binders puts those two
on one containment chain. This source fact has no nonlinearity bound. -/
theorem two_live_capture_chain (t : Term) (hl : live t ≤ 2)
    (hc : ¬ SelfintCapture.Separated 0 t) : LiveChain (red t) := by
  induction t with
  | var n => exact (hc trivial).elim
  | lam b ih =>
      by_cases hb : occ 0 b = 0
      · have hbl : live b ≤ 2 := by simp only [live] at hl; omega
        have hbc : ¬ SelfintCapture.Separated 0 b := by
          intro hh
          exact hc ⟨separated_succ_of_absent b 0 hh hb, by intro _ i hi; omega⟩
        exact ih hbl hbc
      · have hp : 0 < occ 0 b := by omega
        have hbl : live b ≤ 1 := by simp only [live, if_pos hp] at hl; omega
        exact one_redLive_chain (red b) (by simpa only [redLive_red] using hbl)
  | app f a ihf iha =>
      have hsum : live f + live a ≤ 2 := hl
      by_cases hf : live f = 0
      · have hsf := SelfintWiden.one_live_separated f (by omega)
        have hac : ¬ SelfintCapture.Separated 0 a := fun hh => hc ⟨hsf, hh⟩
        exact ⟨one_redLive_chain (red f) (by simpa only [redLive_red] using (show live f ≤ 1 by omega)),
          iha (by omega) hac, Or.inl (by simpa only [redLive_red] using hf)⟩
      · by_cases ha : live a = 0
        · have hsa := SelfintWiden.one_live_separated a (by omega)
          have hfc : ¬ SelfintCapture.Separated 0 f := fun hh => hc ⟨hh, hsa⟩
          exact ⟨ihf (by omega) hfc,
            one_redLive_chain (red a) (by simpa only [redLive_red] using (show live a ≤ 1 by omega)),
            Or.inr (by simpa only [redLive_red] using ha)⟩
        · exact (hc ⟨SelfintWiden.one_live_separated f (by omega),
            SelfintWiden.one_live_separated a (by omega)⟩).elim

#print axioms liveChain_steps
#print axioms two_live_capture_chain
end Blc.QuoteOrigins.Marked
