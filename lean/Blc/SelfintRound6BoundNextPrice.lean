/-
Head-exposure constraints on unrestricted NEXT source terms.
-/
import Blc.SelfintRound6Next
import Blc.SelfintFloorEmerge
import Blc.SelfintRound6BoundNext
import Blc.SelfintSourceCost

namespace Blc.SelfintRound6BoundNextPrice
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintClass
open SelfintClassNext SelfintWiden SelfintRound6Next
open SelfintCapture SelfintSourceCost SelfintRound6BoundGlobal SelfintRound6BoundNext

theorem rigidNext_betas {Q Q' : Term} (h : RigidNext Q) (hr : Betas Q Q') :
    RigidNext Q' := by
  induction hr with
  | refl => exact h
  | head hb _ ih => exact ih (h.beta hb)

/-- The supplied tag must be consumed by a source abstraction. A source
that never exposes an abstraction would retain a rigid head, contradicting
the two distinct NEXT branch laws. -/
theorem rigidNext_head_lam {Q : Term} (h : RigidNext Q) :
    ∃ k b, headSteps k Q = some (.lam b) := by
  apply Classical.byContradiction
  intro hc
  have hno : ∀ k Q', headSteps k Q = some Q' → ¬ IsLam Q' := by
    intro k Q' hk hl
    cases Q' with
    | var n => exact hl
    | app f a => exact hl
    | lam b => exact hc ⟨k, b, hk⟩
  have hno' : ∀ k Q', headSteps k (.app Q churchTrue) = some Q' → ¬ IsLam Q' := by
    intro k Q' hk
    obtain ⟨f, _, rfl⟩ := headSteps_app_of_noLam k Q churchTrue Q' hno hk
    exact fun hh => hh
  obtain ⟨k, p, hk, hp, _⟩ := headFactorizes_nf (h.red true)
    (nft_normal ⟨nextTarget_nonlam true, nextTarget_normal true, trivial⟩)
  obtain ⟨f, hf, rfl⟩ := headSteps_app_of_noLam k (.app Q churchTrue) (.var 2) p hno' hk
  obtain ⟨q, hq, rfl⟩ := headSteps_app_of_noLam k Q churchTrue f hno hf
  have hql := hno k q hq
  have hqstep : headStep q = none := by
    cases q with
    | var n => rfl
    | lam b => exact (hql trivial).elim
    | app g a => simpa only [headStep, Option.map_eq_none_iff] using hp
  exact rigidNext_not_rigid (rigidNext_betas h (headSteps_beta_star hq))
    (rigid_of_headStep_none hqstep hql)

/-- A root application made solely from abstractions with application
bodies cannot implement NEXT: head reduction cannot expose its tag binder. -/
theorem rigidNext_app_not_appBodies {Q : Term} (h : RigidNext Q) (ha : IsApp Q) :
    ¬ AppBodies Q := by
  intro hb
  obtain ⟨k, b, hk⟩ := rigidNext_head_lam h
  exact (appBodies_headSteps k hb ha hk).2

theorem small_two_nonlinear_counts {Q : Term} (h : RigidNext Q)
    (hw : wire Q ≤ 35) (hn : 2 ≤ nonlinear Q) :
    lamCount Q = 3 ∧ live Q = 3 ∧ nonlinear Q = 2 ∧ leafCount Q = 7 ∧
    freeLeaves 0 Q = 2 ∧ occ 0 Q = 1 ∧ occ 1 Q = 1 ∧ indexSum Q ≤ 3 := by
  have hl := rigidNext_three_live h
  have hf := rigidNext_two_captures h
  have hp := rigidNext_parameters h
  have hi := rigidNext_index_bound h
  have hc := live_le_lamCount Q
  have hv := leaves_bound Q
  have he := wire_identity Q
  have ho := capture_parameters h.scope
  omega

theorem spine_zero_lam_live (t : Term) (as : List Term) (hz : spineLambdas as = 0) :
    live (spine t as) = live t := by
  induction as generalizing t with
  | nil => rfl
  | cons a as ih =>
    have hza : lamCount a = 0 := by change lamCount a + spineLambdas as = 0 at hz; omega
    have hzs : spineLambdas as = 0 := by change lamCount a + spineLambdas as = 0 at hz; omega
    have hal := live_le_lamCount a
    have ha : live a = 0 := by omega
    simp only [spine, ih _ hzs, live, ha, Nat.add_zero]

theorem spine_small_lam_separated (t : Term) (as : List Term)
    (ht : Separated 0 t) (hz : spineLambdas as ≤ 1) : Separated 0 (spine t as) := by
  induction as generalizing t with
  | nil => exact ht
  | cons a as ih =>
    have hal := live_le_lamCount a
    have hzs : spineLambdas as ≤ 1 := by change lamCount a + spineLambdas as ≤ 1 at hz; omega
    have ha : live a ≤ 1 := by change lamCount a + spineLambdas as ≤ 1 at hz; omega
    exact ih (.app t a) ⟨ht, one_live_separated a ha⟩ hzs

theorem spine_zero_lam_leaves (t : Term) (as : List Term) (hz : spineLambdas as = 0) :
    leafCount (spine t as) + freeLeaves 0 t = leafCount t + freeLeaves 0 (spine t as) := by
  induction as generalizing t with
  | nil => rfl
  | cons a as ih =>
    have hzs : spineLambdas as = 0 := by change lamCount a + spineLambdas as = 0 at hz; omega
    have hal := live_le_lamCount a
    have ha : live a = 0 := by change lamCount a + spineLambdas as = 0 at hz; omega
    have hf := zero_live_freeLeaves a ha
    have hh := ih (.app t a) hzs
    simp only [spine, leafCount, freeLeaves] at hh ⊢
    omega

theorem spine_zero_lam_appBodies (t : Term) (as : List Term)
    (ht : AppBodies t) (hz : spineLambdas as = 0) : AppBodies (spine t as) := by
  have hflat : ∀ u, lamCount u = 0 → AppBodies u := by
    intro u hu
    induction u with
    | var n => trivial
    | lam b => simp [lamCount] at hu
    | app f a ihf iha =>
      exact ⟨ihf (by change lamCount f + lamCount a = 0 at hu; omega),
        iha (by change lamCount f + lamCount a = 0 at hu; omega)⟩
  induction as generalizing t with
  | nil => exact ht
  | cons a as ih =>
    have hza : lamCount a = 0 := by change lamCount a + spineLambdas as = 0 at hz; omega
    have hzs : spineLambdas as = 0 := by change lamCount a + spineLambdas as = 0 at hz; omega
    exact ih (.app t a) ⟨ht, hflat a hza⟩ hzs

theorem spine_rigid (t : Term) (as : List Term) (hr : Rigid t) : Rigid (spine t as) := by
  induction as generalizing t with
  | nil => exact hr
  | cons a as ih => exact ih (.app t a) (.app a hr)

/-- At three total source lambdas, any head contraction preserving the
NEXT laws must copy an operand containing the other two lambdas. -/
theorem three_lam_head_shape (b a : Term) (as : List Term)
    (h : RigidNext (spine (.app (.lam b) a) as))
    (hl : lamCount (spine (.app (.lam b) a) as) = 3) :
    2 ≤ occ 0 b ∧ lamCount b = 0 ∧ lamCount a = 2 ∧ spineLambdas as = 0 := by
  have hu := h.beta (SelfintSourceCost.spine_beta (Beta.beta b a) as)
  have hul := live_le_lamCount (spine (contract b a) as)
  have hup := rigidNext_three_live hu
  have hr : 3 ≤ lamCount (spine (contract b a) as) := Nat.le_trans hup hul
  simp only [spine_lambdas, lamCount] at hl
  simp only [spine_lambdas, contract, lamCount_subst] at hr
  have ho : 2 ≤ occ 0 b := by
    by_cases hz : occ 0 b = 0
    · simp only [hz, Nat.zero_mul, Nat.add_zero] at hr; omega
    by_cases h1 : occ 0 b = 1
    · simp only [h1, Nat.one_mul] at hr; omega
    omega
  have hal : 1 ≤ lamCount a := by
    by_cases hz : lamCount a = 0
    · simp only [hz, Nat.mul_zero, Nat.add_zero] at hr; omega
    · omega
  by_cases h2 : lamCount a = 2
  · exact ⟨ho, by omega, h2, by omega⟩
  have ha1 : lamCount a ≤ 1 := by omega
  have hb1 : lamCount b ≤ 1 := by omega
  have hs1 : spineLambdas as ≤ 1 := by omega
  have hab := live_le_lamCount a
  have hbb := live_le_lamCount b
  have hs := separated_global_subst b a 0 (one_live_separated b (by omega))
    (one_live_separated a (by omega))
  exact (rigidNext_not_separated hu (spine_small_lam_separated _ as hs hs1)).elim

theorem spine_zero_lam_nonlinear (t : Term) (as : List Term) (hz : spineLambdas as = 0) :
    nonlinear (spine t as) = nonlinear t := by
  induction as generalizing t with
  | nil => rfl
  | cons a as ih =>
    have hza : lamCount a = 0 := by change lamCount a + spineLambdas as = 0 at hz; omega
    have hzs : spineLambdas as = 0 := by change lamCount a + spineLambdas as = 0 at hz; omega
    have hal := nonlinear_le_live a
    have hall := live_le_lamCount a
    have ha : nonlinear a = 0 := by omega
    simp only [spine, ih _ hzs, nonlinear, ha, Nat.add_zero]

theorem shallow_scope_lam_closed (b : Term) (hs : FreeUnder 2 (.lam b))
    (h0 : occDepth 0 (.lam b) = 0) (h1 : occDepth 1 (.lam b) = 0) : Closed (.lam b) := by
  have ho1 : occ 1 b = 0 := by change occDepth 1 b + occ 1 b = 0 at h0; omega
  have ho2 : occ 2 b = 0 := by change occDepth 2 b + occ 2 b = 0 at h1; omega
  have hz := freeLeaves_closed b 3 hs
  have hf1 := freeLeaves_split b 1
  have hf2 := freeLeaves_split b 2
  simp only [Nat.reduceAdd] at hf1 hf2
  have hf : freeLeaves 1 b = 0 := by omega
  exact SelfintProjections.freeLeaves_zero_closed b 1 hf

theorem shallow_spine_head_closed (b a : Term) (as : List Term)
    (hs : FreeUnder 2 (spine (.app (.lam b) a) as))
    (h0 : occDepth 0 (spine (.app (.lam b) a) as) = 0)
    (h1 : occDepth 1 (spine (.app (.lam b) a) as) = 0) : Closed (.lam b) := by
  apply shallow_scope_lam_closed b (spine_scope _ as 2 hs).1
  · simp only [spine_depth, occDepth] at h0 ⊢; omega
  · simp only [spine_depth, occDepth] at h1 ⊢; omega

def dup : Term := .lam (.app (.var 0) (.var 0))

/-- The 34-bit equality budget fixes the first contractor to the ordinary
self-application combinator. Its two-lambda operand contains the unique
internal capture, and all pending operands are lambda-free. -/
theorem small_head_is_dup (b a : Term) (as : List Term)
    (h : RigidNext (spine (.app (.lam b) a) as))
    (hw : wire (spine (.app (.lam b) a) as) ≤ 34)
    (hn : 2 ≤ nonlinear (spine (.app (.lam b) a) as)) :
    .lam b = dup ∧ lamCount a = 2 ∧ live a = 2 ∧ nonlinear a = 1 ∧
    ¬ Separated 0 a ∧ spineLambdas as = 0 := by
  obtain ⟨hL,hLive,hN,hV,hF,_,_,hX⟩ := small_two_nonlinear_counts h (by omega) hn
  have hx := wire_identity (spine (.app (.lam b) a) as)
  have hp := (rigidNext_parameters h).2
  have hi := rigidNext_index_bound h
  have hd0 : occDepth 0 (spine (.app (.lam b) a) as) = 0 := by omega
  have hd1 : occDepth 1 (spine (.app (.lam b) a) as) = 0 := by omega
  obtain ⟨ho,hbL,haL,hasL⟩ := three_lam_head_shape b a as h hL
  have hbc := shallow_spine_head_closed b a as h.scope hd0 hd1
  have hbLive : live b = 0 := by have hh := live_le_lamCount b; omega
  have hbN : nonlinear b = 0 := by have hh := nonlinear_le_live b; omega
  have haLive : live a = 2 := by
    rw [spine_zero_lam_live _ as hasL] at hLive
    simp only [live, if_pos (show 0 < occ 0 b by omega), hbLive] at hLive
    omega
  have haN : nonlinear a = 1 := by
    rw [spine_zero_lam_nonlinear _ as hasL] at hN
    simp only [nonlinear, if_pos (show 1 < occ 0 b by omega), hbN] at hN
    omega
  have hba := zero_live_freeLeaves b hbLive
  have hbs := freeLeaves_split b 0
  simp only [Nat.reduceAdd] at hbs
  have hbf := freeLeaves_closed b 1 hbc
  have hbV : leafCount b = occ 0 b := by omega
  have hav := leaves_bound a
  have hsV := spine_zero_lam_leaves (.app (.lam b) a) as hasL
  simp only [hV, hF, leafCount, freeLeaves, hbf] at hsV
  have hom : occ 0 b = 2 := by omega
  obtain ⟨p,q,hbpq⟩ := lamfree_leaf2 b hbL (by omega)
  have hbform : b = .app (.var 0) (.var 0) := by
    rw [hbpq] at hbc
    have hp : p < 1 := hbc.1
    have hq : q < 1 := hbc.2
    have hp0 : p = 0 := by omega
    have hq0 : q = 0 := by omega
    simpa only [hp0,hq0] using hbpq
  have hac : ¬ Separated 0 a := by
    intro has
    have hbsep := one_live_separated (.lam b) (by simp [live, hbLive, hom])
    exact rigidNext_not_separated h (spine_small_lam_separated _ as ⟨hbsep,has⟩ (by omega))
  exact ⟨congrArg Term.lam hbform,haL,haLive,haN,hac,hasL⟩

theorem weakStep_lam_pos {t u : Term} (hs : weakStep t = some u) : 1 ≤ lamCount t := by
  induction t generalizing u with
  | var n => simp [weakStep] at hs
  | lam b => simp [weakStep] at hs
  | app f a ihf iha =>
    cases f with
    | var n => simp [weakStep] at hs
    | lam b => simp only [lamCount]; omega
    | app g x =>
      simp only [weakStep, Option.map_eq_some_iff] at hs
      obtain ⟨v, hv, _⟩ := hs
      have hh := ihf hv
      simp only [lamCount] at hh ⊢
      omega

/-- With only two source lambdas, both live, a head contraction necessarily
destroys internal capture. There is no erasing case left to shrink around. -/
theorem two_lam_live_weakStep {t u : Term} (hL : lamCount t ≤ 2)
    (hLive : live t = lamCount t) (hs : weakStep t = some u) : Separated 0 u := by
  induction t generalizing u with
  | var n => simp [weakStep] at hs
  | lam b => simp [weakStep] at hs
  | app f a ihf iha =>
    have hfl := live_le_lamCount f
    have hal := live_le_lamCount a
    cases f with
    | var n => simp [weakStep] at hs
    | lam b =>
      simp only [weakStep, Option.some.injEq] at hs
      subst u
      have hbl := live_le_lamCount b
      have hp : 0 < occ 0 b := by
        by_cases hh : 0 < occ 0 b
        · exact hh
        · simp only [live, if_neg hh, lamCount] at hLive
          omega
      have hb1 : live b ≤ 1 := by simp only [lamCount] at hL; omega
      have ha1 : live a ≤ 1 := by simp only [lamCount] at hL; omega
      exact separated_global_subst b a 0 (one_live_separated b hb1) (one_live_separated a ha1)
    | app g x =>
      simp only [weakStep, Option.map_eq_some_iff] at hs
      obtain ⟨v, hv, rfl⟩ := hs
      have hp := weakStep_lam_pos hv
      have hfl' : lamCount (.app g x) ≤ 2 := by change lamCount (.app g x) + lamCount a ≤ 2 at hL; omega
      have hLive' : live (.app g x) = lamCount (.app g x) := by
        change live (.app g x) + live a = lamCount (.app g x) + lamCount a at hLive
        omega
      have ha1 : live a ≤ 1 := by change lamCount (.app g x) + lamCount a ≤ 2 at hL; omega
      exact ⟨ihf hfl' hLive' hv, one_live_separated a ha1⟩

/-- The duplicated two-lambda operand must already be an abstraction.
An application operand either has a rigid head, or its first contraction
destroys the only source capture. -/
theorem dup_operand_lam (a : Term) (as : List Term)
    (h : RigidNext (spine (.app dup a) as))
    (haL : lamCount a = 2) (haLive : live a = 2) (hasL : spineLambdas as = 0) : IsLam a := by
  by_cases hlam : IsLam a
  · exact hlam
  cases hs : weakStep a with
  | none =>
    have hr := weakStep_none_rigid hs hlam
    have hu := h.beta (SelfintSourceCost.spine_beta
      (Beta.beta (.app (.var 0) (.var 0)) a) as)
    rw [contract_self] at hu
    exact (rigidNext_not_rigid hu (spine_rigid _ as (.app a hr))).elim
  | some a' =>
    have hsep := two_lam_live_weakStep (by omega : lamCount a ≤ 2) (by omega) hs
    have hu := h.beta (SelfintSourceCost.spine_beta (.appR dup (weakStep_beta hs)) as)
    have hv := hu.beta (SelfintSourceCost.spine_beta
      (Beta.beta (.app (.var 0) (.var 0)) a') as)
    rw [contract_self] at hv
    exact (rigidNext_not_separated hv
      (spine_small_lam_separated _ as ⟨hsep,hsep⟩ (by omega))).elim

/-- Three source lambdas under a literal leading lambda cannot implement
NEXT, even with arbitrary lambda-free pending arguments. -/
theorem small_lambda_spine_not_next (b : Term) (as : List Term)
    (hL : lamCount (.lam b) ≤ 3) (hasL : spineLambdas as = 0) :
    ¬ RigidNext (spine (.lam b) as) := by
  intro h
  cases as with
  | nil =>
    have hh := rigidNext_lambda_four_live h
    have hl := live_le_lamCount (.lam b)
    omega
  | cons a as =>
    have haL : lamCount a = 0 := by change lamCount a + spineLambdas as = 0 at hasL; omega
    have hsL : spineLambdas as = 0 := by change lamCount a + spineLambdas as = 0 at hasL; omega
    have hu := h.beta (SelfintSourceCost.spine_beta (Beta.beta b a) as)
    have hh := rigidNext_three_live hu
    have hl := live_le_lamCount (spine (contract b a) as)
    have h3 : 3 ≤ lamCount (spine (contract b a) as) := Nat.le_trans hh hl
    simp only [spine_lambdas, contract, lamCount_subst, haL, hsL,
      Nat.mul_zero, Nat.add_zero] at h3
    simp only [lamCount] at hL
    omega

/-- If the copied capture has an affine outer binder, its body exposes the
second binder immediately, with only three lambdas left after substitution. -/
theorem affine_capture_dup_not_next (b : Term) (as : List Term)
    (hbc : Closed (.lam b)) (hbL : lamCount (.lam b) = 2)
    (hbLive : live (.lam b) = 2) (ho : occ 0 b = 1)
    (hc : ¬ Separated 0 (.lam b)) (hasL : spineLambdas as = 0) :
    ¬ RigidNext (spine (.app dup (.lam b)) as) := by
  intro h
  have hbl : live b ≤ 1 := by simp [live, ho] at hbLive; omega
  have hbc' : ¬ Separated 1 b := fun hh => hc ⟨hh, by intro _ i hi; omega⟩
  have hlam := one_live_affine_capture_root_lam b hbl hbc ho hbc'
  have hu := h.beta (SelfintSourceCost.spine_beta
    (Beta.beta (.app (.var 0) (.var 0)) (.lam b)) as)
  rw [contract_self] at hu
  have hv := hu.beta (SelfintSourceCost.spine_beta (Beta.beta b (.lam b)) as)
  have hvl : lamCount (contract b (.lam b)) ≤ 3 := by
    simp only [contract, lamCount_subst, ho, Nat.one_mul, lamCount]
    simp only [lamCount] at hbL
    omega
  cases b with
  | var n => exact hlam
  | app f a => exact hlam
  | lam c => exact small_lambda_spine_not_next _ as hvl hasL hv

theorem one_lam_capture_appBodies (t : Term) (d : Nat)
    (hl : lamCount t ≤ 1) (hc : ¬ Separated d t) : AppBodies t := by
  induction t generalizing d with
  | var n => exact (hc trivial).elim
  | lam b =>
    have hbL : lamCount b = 0 := by simp only [lamCount] at hl; omega
    refine ⟨?_, lamfree_appBodies b hbL⟩
    cases b with
    | var n => exact (hc (one_leaf_separated _ d rfl)).elim
    | lam c => simp [lamCount] at hbL
    | app f a => trivial
  | app f a ihf iha =>
    by_cases hfc : Separated d f
    · have hac : ¬ Separated d a := fun hh => hc ⟨hfc,hh⟩
      have hal : lamCount a ≤ 1 := by change lamCount f + lamCount a ≤ 1 at hl; omega
      have halp : 1 ≤ lamCount a := by
        by_cases hz : lamCount a = 0
        · exact (hac (zero_live_separated a d (lamfree_live a hz))).elim
        · omega
      have hf0 : lamCount f = 0 := by change lamCount f + lamCount a ≤ 1 at hl; omega
      exact ⟨lamfree_appBodies f hf0, iha d hal hac⟩
    · have hfl : lamCount f ≤ 1 := by change lamCount f + lamCount a ≤ 1 at hl; omega
      have hflp : 1 ≤ lamCount f := by
        by_cases hz : lamCount f = 0
        · exact (hfc (zero_live_separated f d (lamfree_live f hz))).elim
        · omega
      have ha0 : lamCount a = 0 := by change lamCount f + lamCount a ≤ 1 at hl; omega
      exact ⟨ihf d hfl hfc, lamfree_appBodies a ha0⟩

/-- A two-lambda capture with a nonlinear outer binder and only one
index bit has application bodies throughout. A leading second lambda
would already charge both outer occurrences at positive index. -/
theorem nonlinear_capture_appBodies (b : Term) (hl : lamCount (.lam b) = 2)
    (hc : ¬ Separated 0 (.lam b)) (ho : 2 ≤ occ 0 b) (hx : indexSum (.lam b) ≤ 1) :
    AppBodies (.lam b) := by
  have hbL : lamCount b ≤ 1 := by simp only [lamCount] at hl; omega
  have hbc : ¬ Separated 1 b := fun hh => hc ⟨hh, by intro _ i hi; omega⟩
  refine ⟨?_, one_lam_capture_appBodies b 1 hbL hbc⟩
  cases b with
  | var n => simp [lamCount] at hl
  | app f a => trivial
  | lam c =>
    have hh := indexSum_ge_occ c 1
    change 2 ≤ occ 1 c at ho
    change indexSum c ≤ 1 at hx
    simp only [Nat.mul_one] at hh
    omega

theorem spine_index_parameter (t : Term) (as : List Term) :
    indexSum t + spineOcc 1 as ≤ indexSum (spine t as) := by
  induction as generalizing t with
  | nil => simp [spine,spineOcc]
  | cons a as ih =>
    have hh := ih (.app t a)
    have ha := indexSum_ge_occ a 1
    simp only [spine, spineOcc, indexSum, Nat.mul_one] at hh ha ⊢
    omega

theorem spine_isApp (t : Term) (as : List Term) (ht : IsApp t) : IsApp (spine t as) := by
  induction as generalizing t with
  | nil => exact ht
  | cons a as ih => exact ih (.app t a) trivial

/-- Symbolic exclusion of the two-nonlinear-binder equality case at
34 bits. No finite inventory of lambda terms or reduction fuel is used. -/
theorem two_nonlinear_next_gt_34 {Q : Term} (h : RigidNext Q)
    (hn : 2 ≤ nonlinear Q) : 35 ≤ wire Q := by
  by_cases hw : 35 ≤ wire Q
  · exact hw
  exfalso
  have hw : wire Q ≤ 34 := by omega
  rcases head_shape Q with hlam | hrig | ⟨b,a,as,hQ⟩
  · cases Q with
    | var n => exact hlam
    | app f a => exact hlam
    | lam b => have hh := rigidNext_lambda_at_least_38 h; omega
  · exact rigidNext_not_rigid h hrig
  · subst Q
    obtain ⟨hd,haL,haLive,haN,hac,hasL⟩ := small_head_is_dup b a as h hw hn
    rw [hd] at h hw hn
    have hlam := dup_operand_lam a as h haL haLive hasL
    cases a with
    | var n => exact hlam
    | app f a => exact hlam
    | lam c =>
      obtain ⟨hL,_,_,hV,_,_,hp,_⟩ := small_two_nonlinear_counts h (by omega) hn
      have hi := rigidNext_index_bound h
      have hx := wire_identity (spine (.app dup (.lam c)) as)
      have hx2 : indexSum (spine (.app dup (.lam c)) as) ≤ 2 := by omega
      have hd0 : occDepth 0 (.lam c) = 0 := by
        simp only [spine_depth, occDepth] at hi ⊢
        omega
      have hd1 : occDepth 1 (.lam c) = 0 := by
        simp only [spine_depth, occDepth] at hi ⊢
        omega
      have hcc := shallow_scope_lam_closed c (spine_scope _ as 2 h.scope).2 hd0 hd1
      by_cases ho1 : occ 0 c = 1
      · exact affine_capture_dup_not_next c as hcc haL haLive ho1 hac hasL h
      · have hoc : 2 ≤ occ 0 c := by
          have hcl := live_le_lamCount c
          by_cases hz : occ 0 c = 0
          · simp only [live, hz, Nat.lt_irrefl, if_false, lamCount] at haLive haL
            omega
          · omega
        have hcp : occ 1 (.lam c) = 0 := occ_of_freeUnder _ 0 1 hcc (by omega)
        have hp' : spineOcc 1 as = 1 := by
          rw [spine_occ] at hp
          change occ 1 dup + occ 1 (.lam c) + spineOcc 1 as = 1 at hp
          rw [hcp] at hp
          simpa only [dup, occ, Nat.reduceAdd, Nat.reduceEqDiff, if_false, Nat.zero_add] using hp
        have hix := spine_index_parameter (.app dup (.lam c)) as
        have hcx : indexSum (.lam c) ≤ 1 := by
          rw [show indexSum (.app dup (.lam c)) = indexSum (.lam c) from by
            simp [indexSum,dup]] at hix
          rw [hp'] at hix
          omega
        have hAB := nonlinear_capture_appBodies c haL hac hoc hcx
        have hAll := spine_zero_lam_appBodies (.app dup (.lam c)) as
          ⟨⟨trivial,⟨trivial,trivial⟩⟩, hAB⟩ hasL
        exact rigidNext_app_not_appBodies h (spine_isApp _ as trivial) hAll

/-- Unconditional source bound, including beta redexes, dead binders and
arbitrary tag use. The only new equality case is excluded above. -/
theorem rigidNext_at_least_35 {Q : Term} (h : RigidNext Q) : 35 ≤ wire Q := by
  generalize he : wire Q = n
  induction n using Nat.strongRecOn generalizing Q with
  | ind n ih =>
    by_cases hnl : 2 ≤ nonlinear Q
    · have hh := two_nonlinear_next_gt_34 h hnl; omega
    apply Classical.byContradiction
    intro hn
    have hnq : nonlinear Q ≤ 1 := by omega
    have hnl0 := rigidNext_nonlinear h
    have hl := rigidNext_three_live h
    have hf := rigidNext_two_captures h
    have hp := (rigidNext_parameters h).2
    have hi := rigidNext_index_bound h
    have hw := count_wire_bound Q
    have hlq : live Q ≤ 3 := by omega
    cases hq : Q with
    | lam b =>
      subst Q
      have hh := rigidNext_lambda_at_least_38 h
      omega
    | var v =>
      subst Q
      exact (rigidNext_not_rigid h (.var v)).elim
    | app f a =>
      subst Q
      cases hs : weakStep (.app f a) with
      | none => exact (rigidNext_not_rigid h (weakStep_none_rigid hs (by simp [IsLam]))).elim
      | some u =>
        have hu := h.beta (weakStep_beta hs)
        rcases one_nonlinear_weakStep hnq hs with ⟨_, hzero⟩ | hless | hwire
        · have hh := rigidNext_nonlinear hu; omega
        · have hh := rigidNext_three_live hu; omega
        · exact hn (by have hh := ih (wire u) (by omega) hu rfl; omega)

#print axioms rigidNext_head_lam
#print axioms rigidNext_app_not_appBodies
#print axioms three_lam_head_shape
#print axioms two_nonlinear_next_gt_34
#print axioms rigidNext_at_least_35
end Blc.SelfintRound6BoundNextPrice
