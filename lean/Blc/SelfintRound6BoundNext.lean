/-
The 28-bit equality case is priced symbolically. The only fixed reductions
are four explicitly derived source shapes, not an enumerated search.
-/
import Blc.SelfintRound6BoundGlobal

namespace Blc.SelfintRound6BoundNext
open Term SelfintLowerBound SelfintCapture SelfintNonlinearChain
open SelfintFloor SelfintWireCost SelfintRound6BoundLiteral SelfintRound6BoundGlobal

theorem separated_extra (t : Term) (d : Nat) (hs : Separated d t)
    (ho : occ d t = 0) : Separated (d + 1) t := by
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

theorem one_live_capture_global (t : Term) (hl : live t ≤ 1)
    (hc : ¬ Separated 1 t) : 0 < occ 0 t := by
  by_cases hz : occ 0 t = 0
  · exact (hc (separated_extra t 0 (SelfintWiden.one_live_separated t hl) hz)).elim
  · omega

theorem zero_live_one_global_occ (t : Term) (hl : live t = 0)
    (hf : FreeUnder 1 t) : 1 ≤ occ 0 t := by
  have hh := zero_live_freeLeaves t hl
  have hs := freeLeaves_split t 0
  have hz := freeLeaves_closed t 1 hf
  have hp := leafCount_pos t
  simp only [Nat.zero_add, hz, Nat.add_zero] at hs
  omega

theorem one_live_affine_capture_root_lam (t : Term) (hl : live t ≤ 1)
    (hf : FreeUnder 1 t) (ho : occ 0 t = 1) (hc : ¬ Separated 1 t) : IsLam t := by
  cases t with
  | var n => exact (hc trivial).elim
  | lam b => trivial
  | app f a =>
      by_cases hsf : Separated 1 f
      · have hac : ¬ Separated 1 a := fun hh => hc ⟨hsf, hh⟩
        have hal : live a ≤ 1 := by change live f + live a ≤ 1 at hl; omega
        have hap : 1 ≤ live a := by
          by_cases hz : live a = 0
          · exact (hac (zero_live_separated a 1 hz)).elim
          · omega
        have hfl : live f = 0 := by change live f + live a ≤ 1 at hl; omega
        have hfo := zero_live_one_global_occ f hfl hf.1
        have hao := one_live_capture_global a hal hac
        change occ 0 f + occ 0 a = 1 at ho
        omega
      · have hfl : live f ≤ 1 := by change live f + live a ≤ 1 at hl; omega
        have hfp : 1 ≤ live f := by
          by_cases hz : live f = 0
          · exact (hsf (zero_live_separated f 1 hz)).elim
          · omega
        have hal : live a = 0 := by change live f + live a ≤ 1 at hl; omega
        have hao := zero_live_one_global_occ a hal hf.2
        have hfo := one_live_capture_global f hfl hsf
        change occ 0 f + occ 0 a = 1 at ho
        omega

theorem one_lambda_four_live {b : Term} (hE : IsSelfInterpreter (.lam b)) :
    4 ≤ live (.lam b) := by
  have hb := one_lambda_body_three_live hE
  have hp := one_lambda_public_occ hE
  simp only [live, if_pos (show 0 < occ 0 b by omega)]
  omega

/-- An affine outer binder cannot turn a two-live-binder capturing term
and a two-live-binder argument into an interpreter. Its first reduct is
already an abstraction with at most three live binders. -/
theorem affine_two_live_application_impossible (b v : Term)
    (hb : FreeUnder 1 b) (hl : live (.lam b) = 2) (ho : occ 0 b = 1)
    (hc : ¬ Separated 0 (.lam b)) (hv : live v ≤ 2) :
    ¬ IsSelfInterpreter (.app (.lam b) v) := by
  intro hE
  have hbl : live b ≤ 1 := by simp [live, ho] at hl; omega
  have hbc : ¬ Separated 1 b := fun hh => hc ⟨hh, by intro _ i hi; omega⟩
  have hlam := one_live_affine_capture_root_lam b hbl hb ho hbc
  have hi := descend_interpreter hE
  have hred : live (contract b v) ≤ 3 := by
    simp only [contract, SelfintWiden.live_subst, ho, Nat.one_mul]
    omega
  cases b with
  | var n => exact hlam
  | app f a => exact hlam
  | lam d =>
      have hh := one_lambda_four_live hi
      change 4 ≤ live (contract (.lam d) v) at hh
      omega

theorem zero_live_beta_shrinks {t u : Term} (h : Beta t u) (hl : live t = 0) :
    wire u < wire t := by
  induction h with
  | beta b a =>
      have ho : occ 0 b = 0 := by
        by_cases hp : 0 < occ 0 b
        · simp only [live, if_pos hp] at hl; omega
        · omega
      exact erasing_beta_shrinks b a ho
  | @appL f g a h ih =>
      have hz : live f = 0 := by change live f + live a = 0 at hl; omega
      have hh := ih hz
      simp only [wire_app]
      omega
  | @appR f a b h ih =>
      have hz : live a = 0 := by change live f + live a = 0 at hl; omega
      have hh := ih hz
      simp only [wire_app]
      omega
  | @lam b c h ih =>
      have hz : live b = 0 := by simp only [live] at hl; omega
      have hh := ih hz
      simp only [wire_lam]
      omega

/-- With one live binder and at most three leaves, a live capture spends
two leaves in its binder body. Any affine contraction then has at most one
argument leaf; every other contraction is erasing. All are wire-shrinking. -/
theorem affine_small_capture_beta_shrinks {t u : Term} (h : Beta t u) (d : Nat)
    (hl : live t ≤ 1) (hn : nonlinear t = 0) (hv : leafCount t ≤ 3)
    (hc : ¬ Separated d t) : wire u < wire t := by
  induction h generalizing d with
  | beta b a =>
      by_cases hz : occ 0 b = 0
      · exact erasing_beta_shrinks b a hz
      · have hp : 0 < occ 0 b := by omega
        have ho : occ 0 b = 1 := by
          by_cases hh : 1 < occ 0 b
          · simp only [nonlinear, if_pos hh] at hn; omega
          · omega
        have hbl : live b = 0 := by simp only [live, if_pos hp] at hl; omega
        have hal : live a = 0 := by simp only [live, if_pos hp] at hl; omega
        have hfree : 1 ≤ freeLeaves 1 b := by
          by_cases hz : freeLeaves 1 b = 0
          · have hbclosed : Closed (.lam b) := SelfintProjections.freeLeaves_zero_closed b 1 hz
            have hbsep := closed_separated_all _ hbclosed
              (SelfintWiden.one_live_separated (.lam b) (by simp [live, hbl, ho])) d
            exact (hc ⟨hbsep, zero_live_separated a d hal⟩).elim
          · omega
        have hs := freeLeaves_split b 0
        have hble := leaves_bound b
        have hale := leaves_bound a
        have hsmall : freeLeaves 0 a ≤ 1 := by
          simp only [leafCount] at hv
          simp only [Nat.zero_add, ho] at hs
          omega
        exact linear_small_free_beta_shrinks b a ho hsmall
  | @appL f g a hb ih =>
      have hfl : live f ≤ 1 := by change live f + live a ≤ 1 at hl; omega
      have hfn : nonlinear f = 0 := by change nonlinear f + nonlinear a = 0 at hn; omega
      have hfv : leafCount f ≤ 3 := by change leafCount f + leafCount a ≤ 3 at hv; omega
      have hh : wire g < wire f := by
        by_cases hs : Separated d f
        · have ha : ¬ Separated d a := fun hh => hc ⟨hs, hh⟩
          have hap : 1 ≤ live a := by
            by_cases hz : live a = 0
            · exact (ha (zero_live_separated a d hz)).elim
            · omega
          exact zero_live_beta_shrinks hb (by change live f + live a ≤ 1 at hl; omega)
        · exact ih d hfl hfn hfv hs
      simp only [wire_app]
      omega
  | @appR f a b hb ih =>
      have hal : live a ≤ 1 := by change live f + live a ≤ 1 at hl; omega
      have han : nonlinear a = 0 := by change nonlinear f + nonlinear a = 0 at hn; omega
      have hav : leafCount a ≤ 3 := by change leafCount f + leafCount a ≤ 3 at hv; omega
      have hh : wire b < wire a := by
        by_cases hs : Separated d a
        · have hf : ¬ Separated d f := fun hh => hc ⟨hh, hs⟩
          have hfp : 1 ≤ live f := by
            by_cases hz : live f = 0
            · exact (hf (zero_live_separated f d hz)).elim
            · omega
          exact zero_live_beta_shrinks hb (by change live f + live a ≤ 1 at hl; omega)
        · exact ih d hal han hav hs
      simp only [wire_app]
      omega
  | @lam b c hb ih =>
      have hbl : live b ≤ 1 := by simp only [live] at hl; omega
      have hbn : nonlinear b = 0 := by simp only [nonlinear] at hn; omega
      have hhv : leafCount b ≤ 3 := hv
      have hh : wire c < wire b := by
        by_cases hs : Separated (d + 1) b
        · have hp : 0 < occ 0 b := by
            by_cases hz : occ 0 b = 0
            · exact (hc ⟨hs, by intro hh; omega⟩).elim
            · omega
          exact zero_live_beta_shrinks hb (by simp only [live, if_pos hp] at hl; omega)
        · exact ih (d + 1) hbl hbn hhv hs
      simp only [wire_lam]
      omega

theorem one_leaf_noTwo (t : Term) (hv : leafCount t = 1) : NoTwo t := by
  induction t with
  | var n => exact noTwo_var n
  | lam b ih =>
      intro i j hi hj
      have hh := ih hv (i + 1) (j + 1) hi hj
      omega
  | app f a ihf iha =>
      have hf := leafCount_pos f
      have ha := leafCount_pos a
      change leafCount f + leafCount a = 1 at hv
      omega

theorem one_leaf_separated (t : Term) (d : Nat) (hv : leafCount t = 1) :
    Separated d t := by
  induction t generalizing d with
  | var n => trivial
  | app f a ihf iha =>
      have hf := leafCount_pos f
      have ha := leafCount_pos a
      change leafCount f + leafCount a = 1 at hv
      omega
  | lam b ih =>
      refine ⟨ih (d + 1) hv, ?_⟩
      intro hl i _
      by_cases hz : occ (i + 1) b = 0
      · exact hz
      · have hh := one_leaf_noTwo b hv 0 (i + 1) hl (by omega)
        omega

/-- In the exact index-budget case, a normal three-leaf capture body is
headed by its sole global, with one argument. -/
theorem normal_three_leaf_capture_head (t : Term) (hf : FreeUnder 1 t)
    (hv : leafCount t = 3) (ho : occ 0 t = 2) (hx : indexSum t ≤ lamCount t)
    (hc : ¬ Separated 1 t) (hn : NFt t) (hcl : ¬ ClosedSubLam t) :
    ∃ a, t = .app (.var 0) a := by
  cases t with
  | var n => exact (hc trivial).elim
  | lam b =>
      have hb := no_closedSubLam_index_bound b (fun hh => hcl (Or.inr hh))
      have hs := freeIndex_split b 0
      have hsf := freeLeaves_split b 1
      change occ 1 b = 2 at ho
      simp only [lamCount, indexSum] at hx
      simp only [Nat.zero_add] at hs
      omega
  | app f a =>
      cases f with
      | var n =>
          have hh : n < 1 := hf.1
          have he : n = 0 := by omega
          subst n
          exact ⟨a, rfl⟩
      | lam b => exact (hn.1 trivial).elim
      | app g x =>
          have hg := leafCount_pos g
          have hx' := leafCount_pos x
          have ha := leafCount_pos a
          simp only [leafCount] at hv
          exact (hc ⟨⟨one_leaf_separated g 1 (by omega),
              one_leaf_separated x 1 (by omega)⟩,
            one_leaf_separated a 1 (by omega)⟩).elim

/-- Two leaves, two open lambda nodes, and two index bits leave exactly
four normal capturing templates. -/
theorem two_leaf_two_lam_capture_forms (t : Term) (hf : FreeUnder 1 t)
    (hv : leafCount t = 2) (hl : lamCount t = 2) (ho : occ 0 t = 1)
    (hx : indexSum t ≤ 2) (hc : ¬ Separated 1 t) (hn : NFt t)
    (hcl : ¬ ClosedSubLam t) :
    t = .lam (.lam (.app (.var 2) (.var 0))) ∨
    t = .lam (.lam (.app (.var 0) (.var 2))) ∨
    t = .lam (.app (.var 1) (.lam (.var 1))) ∨
    t = .lam (.app (.var 0) (.lam (.var 2))) := by
  cases t with
  | var n => exact (hc trivial).elim
  | app f a =>
      have hfp := leafCount_pos f
      have hap := leafCount_pos a
      simp only [leafCount] at hv
      exact (hc ⟨one_leaf_separated f 1 (by omega), one_leaf_separated a 1 (by omega)⟩).elim
  | lam b =>
      have hbl : lamCount b = 1 := by simp only [lamCount] at hl; omega
      cases b with
      | var n => simp [leafCount] at hv
      | lam c =>
          have hcl0 : lamCount c = 0 := by simp only [lamCount] at hbl; omega
          obtain ⟨p, q, rfl⟩ := lamfree_leaf2 c hcl0 hv
          have hsum : p + q ≤ 2 := hx
          have hoc : (if p = 2 then 1 else 0) + (if q = 2 then 1 else 0) = 1 := ho
          by_cases hp : p = 2
          · have hq : q = 0 := by omega
            subst p q
            exact Or.inl rfl
          · have hq : q = 2 := by simp only [if_neg hp] at hoc; split at hoc <;> omega
            have hp0 : p = 0 := by omega
            subst p q
            exact Or.inr (Or.inl rfl)
      | app f a =>
          have hfp := leafCount_pos f
          have hap := leafCount_pos a
          have hv' : leafCount f + leafCount a = 2 := hv
          have hfl1 : leafCount f = 1 := by omega
          have hal1 : leafCount a = 1 := by omega
          cases f with
          | lam c => exact (hn.1 trivial).elim
          | app g x =>
              have hg := leafCount_pos g
              have hxp := leafCount_pos x
              change leafCount g + leafCount x = 1 at hfl1
              omega
          | var n =>
              have hal : lamCount a = 1 := by simp only [lamCount] at hbl; omega
              cases a with
              | var m => simp [lamCount] at hal
              | app g x =>
                  have hg := leafCount_pos g
                  have hxp := leafCount_pos x
                  change leafCount g + leafCount x = 1 at hal1
                  omega
              | lam c =>
                  have hcl0 : lamCount c = 0 := by simp only [lamCount] at hal; omega
                  obtain ⟨m, rfl⟩ := lamfree_leaf1 c hcl0 hal1
                  have hnlt : n < 2 := hf.1
                  have hmlt : m < 3 := hf.2
                  have hmne : m ≠ 0 := by
                    intro he
                    subst m
                    exact hcl (Or.inr (Or.inr (Or.inl (by decide))))
                  have hoc : (if n = 1 then 1 else 0) + (if m = 2 then 1 else 0) = 1 := ho
                  have hns : n = 0 ∨ n = 1 := by omega
                  have hms : m = 1 ∨ m = 2 := by omega
                  rcases hns with rfl | rfl <;> rcases hms with rfl | rfl
                  · simp at hoc
                  · exact Or.inr (Or.inr (Or.inr rfl))
                  · exact Or.inr (Or.inr (Or.inl rfl))
                  · simp at hoc

/-- Minimality forces normality when every redex of the selected subterm
strictly reduces the exact source wire cost. -/
theorem minimal_zero_live_normal (C : Context) (t : Term)
    (hm : MinimalInterpreter (C.fill t)) (hl : live t = 0) : NFt t := by
  apply SelfintClassNext.normal_nft
  intro u hu
  have hs := zero_live_beta_shrinks hu hl
  have hh := minimal_beta_nonshrinking hm (beta_fill C hu)
  simp only [wire_fill] at hh
  omega

theorem minimal_small_capture_normal (C : Context) (t : Term) (d : Nat)
    (hm : MinimalInterpreter (C.fill t)) (hl : live t ≤ 1)
    (hn : nonlinear t = 0) (hv : leafCount t ≤ 3)
    (hc : ¬ Separated d t) : NFt t := by
  apply SelfintClassNext.normal_nft
  intro u hu
  have hs := affine_small_capture_beta_shrinks hu d hl hn hv hc
  have hh := minimal_beta_nonshrinking hm (beta_fill C hu)
  simp only [wire_fill] at hh
  omega

theorem selfInterpreter_betas {t u : Term} (h : Betas t u)
    (hi : IsSelfInterpreter t) : IsSelfInterpreter u := by
  induction h with
  | refl => exact hi
  | head hb hs ih => exact ih (selfInterpreter_beta hi hb)

theorem small_lambda_head_refutes {t b : Term} {n : Nat}
    (h : headSteps n t = some (.lam b)) (hl : live (.lam b) ≤ 3) :
    ¬ IsSelfInterpreter t := by
  intro hi
  have hu := selfInterpreter_betas (SelfintClass.headSteps_beta_star h) hi
  have hh := one_lambda_four_live hu
  omega

/-- Four consequences of the symbolic equality classification. These
fixed head reductions respectively reach three, three, one and two live
binders under a root abstraction, each below the required four. -/
theorem four_forms_refuted (t : Term)
    (ht : t = .lam (.lam (.app (.var 2) (.var 0))) ∨
      t = .lam (.lam (.app (.var 0) (.var 2))) ∨
      t = .lam (.app (.var 1) (.lam (.var 1))) ∨
      t = .lam (.app (.var 0) (.lam (.var 2)))) :
    ¬ IsSelfInterpreter (.app (.lam (.app (.var 0) (.var 0)))
      (.lam (.app (.var 0) t))) := by
  rcases ht with rfl | rfl | rfl | rfl
  · exact small_lambda_head_refutes
      (by decide : headSteps 4 (.app (.lam (.app (.var 0) (.var 0)))
        (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 0))))))) =
        some (.lam (.app (.lam (.app (.var 0)
          (.lam (.lam (.app (.var 2) (.var 0)))))) (.var 0)))) (by decide)
  · exact small_lambda_head_refutes
      (by decide : headSteps 4 (.app (.lam (.app (.var 0) (.var 0)))
        (.lam (.app (.var 0) (.lam (.lam (.app (.var 0) (.var 2))))))) =
        some (.lam (.app (.var 0) (.lam (.app (.var 0)
          (.lam (.lam (.app (.var 0) (.var 2))))))))) (by decide)
  · exact small_lambda_head_refutes
      (by decide : headSteps 9 (.app (.lam (.app (.var 0) (.var 0)))
        (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.var 1))))))) =
        some (.lam (.lam (.var 1)))) (by decide)
  · exact small_lambda_head_refutes
      (by decide : headSteps 6 (.app (.lam (.app (.var 0) (.var 0)))
        (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) =
        some (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 2))))))) (by decide)

theorem dead_head_smaller (b v : Term) (ho : occ 0 b = 0) :
    wire (contract b v) ≤ wire b := by
  have hh := wire_subst b v 0
  simp only [ho, occDepth_zero ho, Nat.zero_add, Nat.zero_mul,
    Nat.mul_zero, Nat.add_zero] at hh
  change wire (contract b v) + freeLeaves 1 b = wire b at hh
  omega

theorem one_dead_lam_normal_form (b : Term) (hf : FreeUnder 1 b)
    (hl : lamCount b = 1) (hv : leafCount b = 2) (hd : live b = 0)
    (hx : indexSum b ≤ 1) (hn : NFt b) :
    b = .app (.var 0) (.lam (.var 1)) := by
  cases b with
  | var n => simp [lamCount] at hl
  | lam c =>
      have hcl : lamCount c = 0 := by simp only [lamCount] at hl; omega
      obtain ⟨p, q, rfl⟩ := lamfree_leaf2 c hcl hv
      have hpl : p < 2 := hf.1
      have hql : q < 2 := hf.2
      have hpc : p ≠ 0 := by intro hh; subst p; simp [live, occ] at hd
      have hqc : q ≠ 0 := by intro hh; subst q; simp [live, occ] at hd
      have hp : p = 1 := by omega
      have hq : q = 1 := by omega
      subst p q
      simp [indexSum] at hx
  | app f a =>
      have hfp := leafCount_pos f
      have hap := leafCount_pos a
      have hv' : leafCount f + leafCount a = 2 := hv
      cases f with
      | lam c => exact (hn.1 trivial).elim
      | app g x =>
          have hg := leafCount_pos g
          have hxp := leafCount_pos x
          simp only [leafCount] at hv'
          omega
      | var n =>
          have hn0 : n = 0 := by have hh : n < 1 := hf.1; omega
          subst n
          have hal : lamCount a = 1 := by simp only [lamCount] at hl; omega
          have hav : leafCount a = 1 := by simp only [leafCount] at hv'; omega
          cases a with
          | var m => simp [lamCount] at hal
          | app g x =>
              have hg := leafCount_pos g
              have hxp := leafCount_pos x
              change leafCount g + leafCount x = 1 at hav
              omega
          | lam c =>
              have hcl : lamCount c = 0 := by simp only [lamCount] at hal; omega
              obtain ⟨m, rfl⟩ := lamfree_leaf1 c hcl hav
              have hm : m < 2 := hf.2
              have hm0 : m ≠ 0 := by intro hh; subst m; simp [live, occ] at hd
              have hm1 : m = 1 := by omega
              subst m
              rfl

theorem minimal_two_live_capture_head (C : Context) (d : Term)
    (hm : MinimalInterpreter (C.fill d)) (hf : FreeUnder 1 d)
    (hl : live (.lam d) = 2) (hv : leafCount d = 3)
    (hn : nonlinear (.lam d) = 1) (ho : 2 ≤ occ 0 d)
    (hx : indexSum d ≤ lamCount d) (hc : ¬ Separated 0 (.lam d)) :
    ∃ t, d = .app (.var 0) t := by
  have hp : 0 < occ 0 d := by omega
  have hdl : live d = 1 := by simp only [live, if_pos hp] at hl; omega
  have hdn : nonlinear d = 0 := by
    simp only [nonlinear, if_pos (show 1 < occ 0 d by omega)] at hn
    omega
  have hdf := freeLeaves_split d 0
  have hdv := leaves_bound d
  have hdo : occ 0 d = 2 := by simp only [Nat.zero_add] at hdf; omega
  have hdc : ¬ Separated 1 d := fun hh => hc ⟨hh, by intro _ i hi; omega⟩
  have hdcl : ¬ ClosedSubLam d := by
    intro hh
    exact hdc (closedSubLam_one_live_separated d 1 hh (by omega))
  have hdnf := minimal_small_capture_normal C d 1 hm (by omega) hdn (by omega) hdc
  exact normal_three_leaf_capture_head d hf hv hdo hx hdc hdnf hdcl

/-- The 28-bit equality case has four lambdas, five leaves, and two
index bits. Source normality leaves the four templates above or a dead
wrapper that evaluates back to its strictly smaller argument. -/
theorem minimal_bound_29 {E : Term} (hm : MinimalInterpreter E) : 29 ≤ wire E := by
  have hE := hm.1
  apply Classical.byContradiction
  intro hbad
  have hold := selfintSizeBound_28 E hE
  change 28 ≤ wire E at hold
  have heq : wire E = 28 := by omega
  have hnl := selfInterpreter_two_nonlinear hE
  have hli := selfInterpreter_three_live hE
  have hll := live_le_lamCount E
  have hle := leaves_bound E
  have hx := selfinterpreter_indexSum_pos E hE
  have hw := wire_identity E
  have hv5 : leafCount E = 5 := by omega
  have hl3 : live E = 3 := by omega
  have hn2 : nonlinear E = 2 := by omega
  have hL4 : lamCount E ≤ 4 := by omega
  cases E with
  | var n => exact (Nat.not_lt_zero n hE.1).elim
  | lam b =>
      have hh := one_lambda_interface_bound_31 hE
      change 31 ≤ wire (.lam b) at hh
      omega
  | app f a =>
      have hc : Closed (.app f a) := hE.1
      cases f with
      | var n => exact (Nat.not_lt_zero n hc.1).elim
      | app g x =>
          have hg := closed_live_pos g hc.1.1
          have hx' := closed_live_pos x hc.1.2
          have ha := closed_live_pos a hc.2
          have hgs : live g ≤ 1 := by simp only [live] at hl3; omega
          have hxs : live x ≤ 1 := by simp only [live] at hl3; omega
          have has : live a ≤ 1 := by simp only [live] at hl3; omega
          exact selfinterpreter_not_separated _ hE
            ⟨⟨SelfintWiden.one_live_separated g hgs,
                SelfintWiden.one_live_separated x hxs⟩,
              SelfintWiden.one_live_separated a has⟩
      | lam b =>
          have hk := minimal_head_nonlinear hm hc.2
          have hkpos : 0 < occ 0 b := by omega
          have hla := closed_live_pos a hc.2
          have hbal : live b + live a = 2 := by
            simp only [live, if_pos hkpos] at hl3
            omega
          have hia := descend_interpreter hE
          have ha2 : live a = 2 := by
            apply Classical.byContradiction
            intro hn
            have has : live a ≤ 1 := by omega
            have hbs : live b ≤ 1 := by omega
            exact selfinterpreter_not_separated _ hia
              (SelfintWiden.separated_global_subst b a 0
                (SelfintWiden.one_live_separated b hbs)
                (SelfintWiden.one_live_separated a has))
          have hb0 : live b = 0 := by omega
          have hbn : nonlinear b = 0 := by have hh := nonlinear_le_live b; omega
          have han : nonlinear a = 1 := by
            simp only [nonlinear, hbn, if_pos (show 1 < occ 0 b by omega)] at hn2
            omega
          have hav := leaves_bound a
          have hbo := occ_le_leafCount b 0
          have hav3 : leafCount a = 3 := by simp only [leafCount] at hv5; omega
          have hbv2 : leafCount b = 2 := by simp only [leafCount] at hv5; omega
          have hcap : ¬ Separated 0 a := by
            intro hs
            exact selfinterpreter_not_separated _ hia
              (SelfintWiden.separated_global_subst b a 0
                (zero_live_separated b 0 hb0) hs)
          have hax : 1 ≤ indexSum a := by
            by_cases hz : indexSum a = 0
            · exact (hcap (zeroIndices_separated a (zeroIndices_of_indexSum_zero a hz) 0)).elim
            · omega
          have hal := live_le_lamCount a
          have hL4' : lamCount (.app (.lam b) a) = 4 := by
            by_cases hL3 : lamCount (.app (.lam b) a) = 3
            · have hbl0 : lamCount b = 0 := by simp only [lamCount] at hL3; omega
              have hal2 : lamCount a = 2 := by simp only [lamCount] at hL3; omega
              have hbx0 := lamfree_indexSum b hbl0 hc.1
              have hax2 := closed_two_lam_index_bound a hc.2 hal2 ha2
              simp only [indexSum, hbx0, Nat.zero_add] at hw
              omega
            · have hh := live_le_lamCount (.app (.lam b) a)
              omega
          have hx2 : indexSum (.app (.lam b) a) = 2 := by omega
          have hbl1 : lamCount b ≤ 1 := by simp only [lamCount] at hL4'; omega
          have hbnf := minimal_zero_live_normal (.appL (.lam .hole) a) b hm hb0
          cases a with
          | var n => exact (Nat.not_lt_zero n hc.2).elim
          | app p q =>
              have hp := closed_live_pos p hc.2.1
              have hq := closed_live_pos q hc.2.2
              exact hcap ⟨SelfintWiden.one_live_separated p
                  (by simp only [live] at ha2; omega),
                SelfintWiden.one_live_separated q (by simp only [live] at ha2; omega)⟩
          | lam d =>
              by_cases hbl0 : lamCount b = 0
              · obtain ⟨n, m, rfl⟩ := lamfree_leaf2 b hbl0 hbv2
                have hn : n = 0 := by have hh : n < 1 := hc.1.1; omega
                have hm' : m = 0 := by have hh : m < 1 := hc.1.2; omega
                subst n m
                have hAA : IsSelfInterpreter (.app (.lam d) (.lam d)) := by
                  simpa only [contract_self] using hia
                have hdo : 2 ≤ occ 0 d := by
                  by_cases hz : occ 0 d = 0
                  · have hi := descend_interpreter hAA
                    have hmin := hm.2 _ hi
                    have hs := dead_head_smaller d (.lam d) hz
                    simp only [wire_app, wire_lam] at hmin
                    omega
                  · by_cases h1 : occ 0 d = 1
                    · exact (affine_two_live_application_impossible d (.lam d) hc.2 ha2 h1 hcap
                        (by omega) hAA).elim
                    · omega
                have hdl2 : lamCount d = 2 := by simp only [lamCount] at hL4'; omega
                have hdx2 : indexSum d = 2 := by simp only [indexSum] at hx2; omega
                obtain ⟨t, rfl⟩ := minimal_two_live_capture_head
                  (.appR (.lam (.app (.var 0) (.var 0))) (.lam .hole)) d hm hc.2 ha2
                  hav3 han hdo (by omega) hcap
                have htc : ¬ Separated 1 t := by
                  intro ht
                  exact hcap ⟨⟨trivial, ht⟩, by intro _ i hi; omega⟩
                have htl : live t ≤ 1 := by
                  have hp : 0 < occ 0 (.app (.var 0) t) := by omega
                  simp only [live, if_pos hp, Nat.zero_add] at ha2
                  omega
                have htcl : ¬ ClosedSubLam t := by
                  intro hh
                  exact htc (closedSubLam_one_live_separated t 1 hh htl)
                have htnf := minimal_small_capture_normal
                  (.appR (.lam (.app (.var 0) (.var 0))) (.lam (.appR (.var 0) .hole)))
                  t 1 hm htl
                  (by
                    have hp : 1 < occ 0 (.app (.var 0) t) := by omega
                    simp only [nonlinear, if_pos hp, Nat.zero_add] at han
                    omega)
                  (by simp only [leafCount] at hav3; omega) htc
                have hto : occ 0 t = 1 := by
                  have hh := leaves_bound t
                  have hs := freeLeaves_split t 0
                  simp only [Nat.zero_add] at hs
                  simp only [leafCount] at hav3
                  change 2 ≤ 1 + occ 0 t at hdo
                  have htlp : 1 ≤ live t := by
                    by_cases hz : live t = 0
                    · exact (htc (zero_live_separated t 1 hz)).elim
                    · omega
                  omega
                have hforms := two_leaf_two_lam_capture_forms t hc.2.2
                  (by simp only [leafCount] at hav3; omega)
                  (by simpa only [lamCount, Nat.zero_add] using hdl2) hto
                  (by simpa only [indexSum, Nat.zero_add] using Nat.le_of_eq hdx2)
                  htc htnf htcl
                exact four_forms_refuted t hforms hE
              · have hbl : lamCount b = 1 := by omega
                have hbx : indexSum b ≤ 1 := by simp only [indexSum] at hax hx2; omega
                have hform := one_dead_lam_normal_form b hc.1 hbl hbv2 hb0 hbx hbnf
                subst b
                have hAK : IsSelfInterpreter (.app (.lam d) (.lam (.lam d))) := by
                  simpa only [contract, substDec, if_true, shift_closed 1 0 hc.2] using hia
                have hKA : live (.lam (.lam d)) ≤ 2 := by
                  have ho := occ_of_freeUnder (.lam d) 0 0 hc.2 (by omega)
                  simp only [live, ho, Nat.lt_irrefl, if_false, Nat.add_zero]
                  exact Nat.le_of_eq ha2
                have hdo : 2 ≤ occ 0 d := by
                  by_cases hz : occ 0 d = 0
                  · have hi := descend_interpreter hAK
                    have hmin := hm.2 _ hi
                    have hs := dead_head_smaller d (.lam (.lam d)) hz
                    simp only [wire_app, wire_lam] at hmin
                    omega
                  · by_cases h1 : occ 0 d = 1
                    · exact (affine_two_live_application_impossible d (.lam (.lam d)) hc.2
                        ha2 h1 hcap hKA hAK).elim
                    · omega
                have hdl1 : lamCount d = 1 := by simp only [lamCount] at hL4'; omega
                have hdx1 : indexSum d = 1 := by simp only [indexSum] at hx2; omega
                obtain ⟨t, rfl⟩ := minimal_two_live_capture_head
                  (.appR (.lam (.app (.var 0) (.lam (.var 1)))) (.lam .hole)) d hm
                  hc.2 ha2 hav3 han hdo (by omega) hcap
                have hi := descend_interpreter hAK
                change IsSelfInterpreter (.app (.lam (.lam (.app (.var 0) t)))
                  (substDec 0 (.lam (.lam (.app (.var 0) t))) t)) at hi
                have hi' := descend_interpreter hi
                have hiA : IsSelfInterpreter (.lam (.app (.var 0) t)) := by
                  simpa only [contract, substDec_closed 0 _ hc.2] using hi'
                have hh := one_lambda_four_live hiA
                omega

/-- Unconditional exact-interpreter source floor, without Statman or
candidate enumeration. -/
theorem selfintSizeBound_29 : SelfintSizeBound 29 := by
  have key : ∀ n, ∀ E : Term, IsSelfInterpreter E → wire E = n → 29 ≤ n := by
    intro n
    induction n using Nat.strongRecOn with
    | ind n ih =>
        intro E hE hn
        by_cases hm : ∀ E', IsSelfInterpreter E' → wire E ≤ wire E'
        · have hh := minimal_bound_29 ⟨hE, hm⟩
          omega
        · have he : ∃ E', IsSelfInterpreter E' ∧ wire E' < wire E := by
            classical
            apply Classical.byContradiction
            intro hno
            apply hm
            intro E' hE'
            apply Classical.byContradiction
            intro hbad
            exact hno ⟨E', hE', by omega⟩
          obtain ⟨E', hE', hh⟩ := he
          have hh' := ih (wire E') (by omega) E' hE' rfl
          omega
  intro E hE
  exact key _ E hE rfl

#print axioms selfintSizeBound_29
#print axioms affine_small_capture_beta_shrinks
#print axioms four_forms_refuted
#print axioms two_leaf_two_lam_capture_forms
end Blc.SelfintRound6BoundNext
