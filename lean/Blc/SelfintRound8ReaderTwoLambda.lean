/-
Two-lambda helper algebras at the reader boundary.

Every term with at most two source lambdas on each ancestor path, all
live, inhabits the clear
class of the three-grade rigidity interpretation. Neither a leading
binary prefix nor normality is required. Arbitrary application algebras
of these helpers cannot be readers after two rigid pending arguments.
The result is unbounded in source size and total abstraction count.
In a flat root let with at most two helper lambdas, vacuous helpers are
excluded separately by the live-capture invariant.

This closes the three-lambda, flat-root-body, two-flat-pending slice,
including helpers whose second lambda is interior or lies across a
source redex. At four lambdas, a j-free all-live three-lambda helper
must be normal and have all three lambdas on one ancestor path. This is
a localization, not a complete four-lambda exclusion or a reader weight floor.
-/
import Blc.SelfintRound6ReaderBinary

namespace Blc.SelfintRound8ReaderTwoLambda
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
  SelfintSourceCost SelfintControl SelfintCapture SelfintWiden SelfintDispatchAudit
  SelfintRound6ReaderBinary

set_option maxHeartbeats 3000000

private theorem all_live_app {f a : Term}
    (h : live (.app f a) = lamCount (.app f a)) :
    live f = lamCount f ∧ live a = lamCount a := by
  have hf := live_le_lamCount f
  have ha := live_le_lamCount a
  simp only [live,lamCount] at h
  omega

private theorem all_live_lam {b : Term}
    (h : live (.lam b) = lamCount (.lam b)) :
    0 < occ 0 b ∧ live b = lamCount b := by
  have hb := live_le_lamCount b
  by_cases ho : 0 < occ 0 b
  · simp only [live,lamCount,if_pos ho] at h
    exact ⟨ho,by omega⟩
  · simp only [live,lamCount,if_neg ho] at h
    omega

/-- Maximum number of source abstractions on an ancestor path. -/
def height : Term → Nat
  | .var _ => 0
  | .app f a => max (height f) (height a)
  | .lam b => height b + 1

theorem height_zero (t : Term) (h : height t = 0) : lamCount t = 0 := by
  induction t with
  | var n => rfl
  | lam b ih => simp only [height] at h; omega
  | app f a ihf iha =>
      change max (height f) (height a) = 0 at h
      have hf : height f = 0 := by have := Nat.le_max_left (height f) (height a); omega
      have ha : height a = 0 := by have := Nat.le_max_right (height f) (height a); omega
      simp only [lamCount,ihf hf,iha ha,Nat.zero_add]

theorem height_le_lambdas (t : Term) : height t ≤ lamCount t := by
  induction t with
  | var n => exact Nat.le_refl _
  | lam b ih => exact Nat.add_le_add_right ih 1
  | app f a ihf iha =>
      exact Nat.max_le.mpr ⟨by simp only [lamCount]; omega, by simp only [lamCount]; omega⟩

/-- Any number of disjoint live lambdas may occur in the application tree. -/
theorem one_level_clear (t : Term) (hl : height t ≤ 1)
    (hv : live t = lamCount t) (e : Env) : Typed e t .clear := by
  induction t with
  | var n => exact .var _ _ (rank_clear _)
  | app f a ihf iha =>
      obtain ⟨hvf,hva⟩ := all_live_app hv
      have hcount : max (height f) (height a) ≤ 1 := hl
      have hf := (Nat.max_le.mp hcount).1
      have ha := (Nat.max_le.mp hcount).2
      exact .app (ihf (by omega) hvf) (iha (by omega) hva) (by decide)
  | lam b ih =>
      have hb : lamCount b = 0 := height_zero b (by simp only [height] at hl; omega)
      have ho := (all_live_lam hv).1
      apply Typed.lam (by decide)
      intro a
      cases a with
      | clear => exact flat_clear b hb _
      | pending => exact flat_pending_occ b hb _ 0 (by simp [push,rank]) ho
      | rigid => exact flat_pending_occ b hb _ 0 (by simp [push,rank]) ho

/-- A pending occurrence stays pending through one live abstraction.
When that abstraction receives a rigid argument, its live binder forces
rigidity. -/
theorem one_level_pending_occ (t : Term) (hl : height t ≤ 1)
    (hv : live t = lamCount t) (e : Env)
    (he : ∀ n, rank (e n) ≤ rank .pending) (j : Nat) (ho : 0 < occ j t) :
    Typed e t .pending := by
  induction t generalizing e j with
  | var n => exact .var _ _ (he n)
  | app f a ihf iha =>
      obtain ⟨hvf,hva⟩ := all_live_app hv
      have hcount : max (height f) (height a) ≤ 1 := hl
      have hf := (Nat.max_le.mp hcount).1
      have ha := (Nat.max_le.mp hcount).2
      by_cases hof : 0 < occ j f
      · exact .app (ihf (by omega) hvf e he j hof)
          (one_level_clear a (by omega) hva e) (by decide)
      · have hoa : 0 < occ j a := by change 0 < occ j f + occ j a at ho; omega
        exact .app (one_level_clear f (by omega) hvf e)
          (iha (by omega) hva e he j hoa) (by decide)
  | lam b ih =>
      have hb : lamCount b = 0 := height_zero b (by simp only [height] at hl; omega)
      have hb0 := (all_live_lam hv).1
      apply Typed.lam (by decide)
      intro a
      cases a with
      | clear => exact flat_pending_occ b hb _ (j+1) (he j) ho
      | pending =>
          exact flat_pending_bound b hb _ (push_pending_bound he (by decide))
      | rigid =>
          exact flat_rigid_occ b hb _ (push_pending_bound he (by decide)) 0 rfl hb0

/-- All terms with at most two nested source lambdas and all binders live
have clear grade. Interior abstractions, source redexes, and arbitrary
duplication or branching are allowed. -/
theorem two_level_clear (t : Term) (hl : height t ≤ 2)
    (hv : live t = lamCount t) : Typed rigidEnv t .clear := by
  induction t with
  | var n => exact .var _ _ (rank_clear _)
  | app f a ihf iha =>
      obtain ⟨hvf,hva⟩ := all_live_app hv
      have hcount : max (height f) (height a) ≤ 2 := hl
      have hf := (Nat.max_le.mp hcount).1
      have ha := (Nat.max_le.mp hcount).2
      exact .app (ihf (by omega) hvf) (iha (by omega) hva) (by decide)
  | lam b ih =>
      have hb : height b ≤ 1 := by simp only [height] at hl; omega
      obtain ⟨ho,hvb⟩ := all_live_lam hv
      apply Typed.lam (by decide)
      intro a
      cases a with
      | clear => exact one_level_clear b hb hvb _
      | pending =>
          exact one_level_pending_occ b hb hvb _
            (push_pending_bound rigid_pending_bound (by decide)) 0 ho
      | rigid =>
          exact one_level_pending_occ b hb hvb _
            (push_pending_bound rigid_pending_bound (by decide)) 0 ho

/-- The interpretation gives a source ancestry obstruction, not merely
an abstraction-count obstruction. -/
theorem two_level_two_rigid_not_reader {t a b : Term}
    (hl : height t ≤ 2) (hv : live t = lamCount t)
    (ha : Rigid a) (hb : Rigid b) (cs : List Term) :
    ¬ Reader (spine t (a::b::cs)) :=
  two_rigid_not_reader (two_level_clear t hl hv) ha hb cs

theorem reader_pending_requires_third_level {t a b : Term}
    (hv : live t = lamCount t) (ha : Rigid a) (hb : Rigid b)
    (cs : List Term) (hr : Reader (spine t (a::b::cs))) : 3 ≤ height t := by
  by_cases hh : 3 ≤ height t
  · exact hh
  · exact (two_level_two_rigid_not_reader (by omega) hv ha hb cs hr).elim

/-- Three live nested lambdas can suspend both pending arguments. This
shows that the clear-grade theorem cannot simply be raised to depth three;
no reader law is asserted for this example. -/
def ternaryCapture : Term :=
  .lam (.lam (.lam (.app (.app (.var 0) (.var 2)) (.var 1))))

theorem ternary_capture_source :
    height ternaryCapture = 3 ∧ live ternaryCapture = 3 ∧
    lamCount ternaryCapture = 3 := by decide

theorem ternary_capture_reduces :
    Betas (.app (.app ternaryCapture (.var 0)) (.var 1))
      (.lam (.app (.app (.var 0) (.var 1)) (.var 2))) :=
  normalSteps_sound (by decide : normalSteps 2
    (.app (.app ternaryCapture (.var 0)) (.var 1)) =
      some (.lam (.app (.app (.var 0) (.var 1)) (.var 2))))

theorem ternary_capture_not_clear : ¬ Typed rigidEnv ternaryCapture .clear := by
  intro ht
  have hfirst : Typed rigidEnv (.app ternaryCapture (.var 0)) .pending :=
    .app ht (rigid_typed (.var 0)) (by decide)
  have hsecond : Typed rigidEnv (.app (.app ternaryCapture (.var 0)) (.var 1)) .rigid :=
    .app hfirst (rigid_typed (.var 1)) (by decide)
  have hend := typed_betas ternary_capture_reduces hsecond
  cases hend with | lam hn _ => exact hn rfl

/-- The at-most-two-lambda statement is a consequence of the stronger
ancestor-depth theorem. -/
theorem two_lambda_clear (t : Term) (hl : lamCount t ≤ 2)
    (hv : live t = lamCount t) : Typed rigidEnv t .clear :=
  two_level_clear t (Nat.le_trans (height_le_lambdas t) hl) hv

/-- Distinct helpers may be mixed. Only each atom has a nesting bound. -/
inductive Algebra : Term → Prop where
  | rigid {t : Term} : Rigid t → Algebra t
  | helper {t : Term} : height t ≤ 2 → live t = lamCount t → Algebra t
  | app {f a : Term} : Algebra f → Algebra a → Algebra (.app f a)

theorem algebra_clear {t : Term} (ht : Algebra t) : Typed rigidEnv t .clear := by
  induction ht with
  | rigid h => exact (rigid_typed h).weaken _ (by decide)
  | helper hl hv => exact two_level_clear _ hl hv
  | app _ _ ihf iha => exact .app ihf iha (by decide)

theorem algebra_two_rigid_not_reader {t a b : Term} (ht : Algebra t)
    (ha : Rigid a) (hb : Rigid b) (cs : List Term) :
    ¬ Reader (spine t (a::b::cs)) :=
  two_rigid_not_reader (algebra_clear ht) ha hb cs

/-- Arbitrary helper syntax in the three-lambda slice. A vacuous helper
has at most one live binder and hence no live capture; otherwise the
two-lambda typing theorem applies. -/
theorem flat_root_two_lambda_not_reader {b a c d : Term} {cs : List Term}
    (hb : lamCount b = 0) (ha : lamCount a ≤ 2)
    (hcs : ∀ q ∈ c::d::cs, lamCount q = 0)
    (hj : SelfintClass.depth (spine (.app (.lam b) a) (c::d::cs)) = 0) :
    ¬ Reader (spine (.app (.lam b) a) (c::d::cs)) := by
  by_cases hv : live a = lamCount a
  · have ht : Typed rigidEnv (.app (.lam b) a) .clear :=
      .app (unary_helper_clear hb) (two_lambda_clear a ha hv) (by decide)
    exact two_rigid_not_reader ht
      (SelfintRootFlat.flat_rigid c (hcs c (by simp)))
      (SelfintRootFlat.flat_rigid d (hcs d (by simp))) cs
  · have hla := live_le_lamCount a
    have hs : Separated 0 a := one_live_separated a (by omega)
    have hroot : Separated 0 (.app (.lam b) a) :=
      ⟨⟨flat_separated b hb 1,by intro _ i hi; omega⟩,hs⟩
    exact SelfintRound6ReaderShallow.separated_depth_zero_not_reader
      (separated_spine 0 hroot (fun q hq => flat_separated q (hcs q hq) 0)) hj

theorem three_lambda_flat_root_two_pending_not_reader {b a c d : Term} {cs : List Term}
    (hb : lamCount b = 0)
    (hl : lamCount (spine (.app (.lam b) a) (c::d::cs)) ≤ 3)
    (hcs : ∀ q ∈ c::d::cs, lamCount q = 0)
    (hj : SelfintClass.depth (spine (.app (.lam b) a) (c::d::cs)) = 0) :
    ¬ Reader (spine (.app (.lam b) a) (c::d::cs)) := by
  apply flat_root_two_lambda_not_reader hb ?_ hcs hj
  simp only [spine_lambdas,lamCount] at hl
  omega

/-- In the all-live flat-root family, the helper must itself contain
three nested abstractions; the flat sharing body cannot supply them. -/
theorem flat_root_reader_height_three {b a c d : Term} {cs : List Term}
    (hb : lamCount b = 0) (hv : live a = lamCount a)
    (hc : Rigid c) (hd : Rigid d)
    (hr : Reader (spine (.app (.lam b) a) (c::d::cs))) : 3 ≤ height a := by
  by_cases hh : 3 ≤ height a
  · exact hh
  · have ht : Typed rigidEnv (.app (.lam b) a) .clear :=
      .app (unary_helper_clear hb) (two_level_clear a (by omega) hv) (by decide)
    exact (two_rigid_not_reader ht hc hd cs hr).elim

private theorem height_eq_app {f a : Term}
    (h : height (.app f a) = lamCount (.app f a)) :
    height f = lamCount f ∧ height a = lamCount a ∧
      (lamCount f = 0 ∨ lamCount a = 0) := by
  have hf := height_le_lambdas f
  have ha := height_le_lambdas a
  simp only [height,lamCount] at h
  rcases Nat.le_total (height f) (height a) with hle | hle
  · rw [Nat.max_eq_right hle] at h
    exact ⟨by omega,by omega,.inl (by omega)⟩
  · rw [Nat.max_eq_left hle] at h
    exact ⟨by omega,by omega,.inr (by omega)⟩

/-- If all source lambdas lie on one ancestor path, a beta step cannot
copy an abstraction: its argument is lambda-free. -/
theorem chain_beta_lambdas {t u : Term} (hb : Beta t u)
    (hc : height t = lamCount t) : lamCount u < lamCount t := by
  induction hb with
  | beta b a =>
      obtain ⟨_,_,hzero⟩ := height_eq_app hc
      have ha : lamCount a = 0 := by
        rcases hzero with hz | hz
        · simp only [lamCount] at hz; omega
        · exact hz
      simp only [contract,lamCount_subst,ha,Nat.mul_zero,Nat.add_zero,lamCount]
      omega
  | @appL f f' a hb ih =>
      have hh := ih (height_eq_app hc).1
      simp only [lamCount]; omega
  | @appR f a a' hb ih =>
      have hh := ih (height_eq_app hc).2.1
      simp only [lamCount]; omega
  | @lam b b' hb ih =>
      have hbody : height b = lamCount b := by
        simp only [height,lamCount] at hc
        omega
      have hh := ih hbody
      simp only [lamCount]; omega

/-- At three all-live helper lambdas, an arbitrary normal form assumption
is unnecessary. A redex would consume a source lambda and return to the
excluded two-lambda helper family. The helper need only be j-free, not
closed: c is allowed. -/
theorem three_lambda_helper_normal {b a c d : Term} {cs : List Term}
    (hb : lamCount b = 0) (ha : lamCount a = 3)
    (hv : live a = lamCount a) (haj : occ 1 a = 0)
    (hcs : ∀ q ∈ c::d::cs, lamCount q = 0)
    (hj : SelfintClass.depth (spine (.app (.lam b) a) (c::d::cs)) = 0)
    (hr : Reader (spine (.app (.lam b) a) (c::d::cs))) :
    height a = 3 ∧ NormalForm a := by
  have hlo := flat_root_reader_height_three hb hv
    (SelfintRootFlat.flat_rigid c (hcs c (by simp)))
    (SelfintRootFlat.flat_rigid d (hcs d (by simp))) hr
  have hhi := height_le_lambdas a
  have heq : height a = 3 := by omega
  refine ⟨heq,?_⟩
  intro a' hstep
  have hless := chain_beta_lambdas hstep (by omega)
  have hred := hr.beta (SelfintSourceCost.spine_beta (Beta.appR (.lam b) hstep) (c::d::cs))
  have hnewj : occ 1 a' = 0 := SelfintCapture.occ_beta_zero hstep 1 haj
  have hnewdepth : SelfintClass.depth
      (spine (.app (.lam b) a') (c::d::cs)) = 0 := by
    have hz := occDepth_zero hnewj
    change occDepth 1 (spine (.app (.lam b) a') (c::d::cs)) = 0
    change occDepth 1 (spine (.app (.lam b) a) (c::d::cs)) = 0 at hj
    simp only [spine_depth,occDepth] at hj ⊢
    omega
  exact flat_root_two_lambda_not_reader hb (by omega) hcs hnewdepth hred

private theorem normal_nonlam_rigid (t : Term) (hn : NFt t)
    (hl : ¬ IsLam t) : Rigid t := by
  induction t with
  | var n => exact .var n
  | lam b ih => exact (hl trivial).elim
  | app f a ihf iha => exact .app a (ihf hn.2.1 hn.1)

private theorem rigid_term_spine (t : Term) (as : List Term) (hr : Rigid t) :
    Rigid (spine t as) := by
  induction as generalizing t with
  | nil => exact hr
  | cons a as ih => exact ih _ (.app a hr)

private theorem flat_subst_rigid (t a : Term) (j : Nat)
    (ht : lamCount t = 0) (ha : Rigid a) : Rigid (substDec j a t) := by
  induction t with
  | var n =>
      simp only [substDec]
      split <;> (try split) <;> first | exact ha | exact .var _
  | lam b ih => simp [lamCount] at ht
  | app f b ihf ihb =>
      have hf : lamCount f = 0 := by change lamCount f + lamCount b = 0 at ht; omega
      exact .app _ (ihf hf)

/-- A surviving helper begins with a literal abstraction. In conjunction
with height=count=3, this localizes its other two lambdas to one path
inside that outer body. The contexts between them are lambda-free. -/
theorem three_lambda_helper_outer {b a c d : Term} {cs : List Term}
    (hb : lamCount b = 0) (ha : lamCount a = 3)
    (hv : live a = lamCount a) (haj : occ 1 a = 0)
    (hcs : ∀ q ∈ c::d::cs, lamCount q = 0)
    (hj : SelfintClass.depth (spine (.app (.lam b) a) (c::d::cs)) = 0)
    (hr : Reader (spine (.app (.lam b) a) (c::d::cs))) :
    ∃ u, a = .lam u ∧ lamCount u = 2 ∧ height u = 2 ∧
      NFt u ∧ live u = lamCount u ∧ 0 < occ 0 u := by
  obtain ⟨hheight,hnormal⟩ := three_lambda_helper_normal hb ha hv haj hcs hj hr
  have hn := SelfintClassNext.normal_nft hnormal
  have hlam : IsLam a := by
    by_cases hlam : IsLam a
    · exact hlam
    · have hrig := flat_subst_rigid b a 0 hb (normal_nonlam_rigid a hn hlam)
      have hred := hr.beta
        (SelfintSourceCost.spine_beta (Beta.beta b a) (c::d::cs))
      exact (reader_not_rigid hred (rigid_term_spine _ _ hrig)).elim
  cases a with
  | var n => exact hlam.elim
  | app f a => exact hlam.elim
  | lam u =>
      obtain ⟨hu,hvu⟩ := all_live_lam hv
      exact ⟨u,rfl,by simp only [lamCount] at ha; omega,
        by simp only [height] at hheight; omega,hn,hvu,hu⟩

private theorem rigidHead_typed {t : Term} {k : Nat} {e : Env}
    (ht : RigidHead k t) (he : e k = .rigid) : Typed e t .rigid := by
  induction ht with
  | var => exact .var _ _ (by rw [he]; exact Nat.le_refl _)
  | app a h ih => exact .rigidApp ih

/-- A helper whose first abstraction immediately exposes an old ambient
head has clear grade, regardless of all payload syntax below that head. -/
theorem ambient_head_helper_clear {u : Term} {k : Nat}
    (hu : RigidHead k u) (hk : 0 < k) : Typed rigidEnv (.lam u) .clear := by
  apply Typed.lam (by decide)
  intro a
  have he : push a rigidEnv k = .rigid := by
    cases k with
    | zero => omega
    | succ k => rfl
  exact (rigidHead_typed hu he).weaken _ (by cases a <;> decide)

/-- If the helper's second lambda is not a literal prefix, its outer
body must be headed by its own parameter. Ambient c-headed bodies cannot
hide the pending c,j behind a new stream abstraction. -/
theorem three_lambda_helper_head {b a c d : Term} {cs : List Term}
    (hb : lamCount b = 0) (ha : lamCount a = 3)
    (hv : live a = lamCount a) (haj : occ 1 a = 0)
    (hcs : ∀ q ∈ c::d::cs, lamCount q = 0)
    (hj : SelfintClass.depth (spine (.app (.lam b) a) (c::d::cs)) = 0)
    (hr : Reader (spine (.app (.lam b) a) (c::d::cs))) :
    ∃ u, a = .lam u ∧ lamCount u = 2 ∧ height u = 2 ∧
      NFt u ∧ (IsLam u ∨ RigidHead 0 u) := by
  obtain ⟨u,rfl,hl,hh,hn,_,_⟩ := three_lambda_helper_outer hb ha hv haj hcs hj hr
  refine ⟨u,rfl,hl,hh,hn,?_⟩
  by_cases hlu : IsLam u
  · exact .inl hlu
  · obtain ⟨k,hk⟩ := SelfintFlatSemantics.rigidHead_exists (normal_nonlam_rigid u hn hlu)
    have hk0 : k = 0 := by
      by_cases hk0 : k = 0
      · exact hk0
      · have ht : Typed rigidEnv (.app (.lam b) (.lam u)) .clear :=
          .app (unary_helper_clear hb) (ambient_head_helper_clear hk (by omega)) (by decide)
        exact (two_rigid_not_reader ht
          (SelfintRootFlat.flat_rigid c (hcs c (by simp)))
          (SelfintRootFlat.flat_rigid d (hcs d (by simp))) cs hr).elim
    subst k
    exact .inr hk

/-- A postfixed helper which does not capture its own argument adds no
new control grade. The inserted term may have arbitrary captured ambient
parameters and internal syntax, provided it already has clear grade. -/
def postfixed (g : Term) : Term := .lam (.app (.var 0) (shift 1 0 g))

theorem postfix_clear {g : Term} (hg : Typed rigidEnv g .clear) :
    Typed rigidEnv (postfixed g) .clear := by
  apply Typed.lam (by decide)
  intro a
  cases a with
  | clear =>
      exact .app (Typed.var _ 0 (k:=.clear) (by simp [push,rank])) (typed_shift_one hg .clear) (by decide)
  | pending =>
      exact .app (Typed.var _ 0 (k:=.pending) (by simp [push,rank])) (typed_shift_one hg .pending) (by decide)
  | rigid => exact .rigidApp (.var _ 0 (by simp [push,rank]))

/-- In particular lambda u.u(lambda v w.P[v,w]) cannot be the copied
helper of a reader in this root shape. A surviving three-lambda helper
with this placement must capture u inside the inner two-lambda term. -/
theorem uncaptured_postfix_not_reader {b g c d : Term}
    (hb : lamCount b = 0) (hg : height g ≤ 2) (hv : live g = lamCount g)
    (hc : Rigid c) (hd : Rigid d) (cs : List Term) :
    ¬ Reader (spine (.app (.lam b) (postfixed g)) (c::d::cs)) := by
  have ht : Typed rigidEnv (.app (.lam b) (postfixed g)) .clear :=
    .app (unary_helper_clear hb) (postfix_clear (two_level_clear g hg hv)) (by decide)
  exact two_rigid_not_reader ht hc hd cs

#print axioms one_level_pending_occ
#print axioms two_level_clear
#print axioms two_lambda_clear
#print axioms reader_pending_requires_third_level
#print axioms ternary_capture_not_clear
#print axioms algebra_two_rigid_not_reader
#print axioms flat_root_two_lambda_not_reader
#print axioms three_lambda_helper_normal
#print axioms three_lambda_helper_outer
#print axioms three_lambda_helper_head
#print axioms uncaptured_postfix_not_reader
end Blc.SelfintRound8ReaderTwoLambda
