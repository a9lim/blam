/- A minimum-leaf application-rooted reader has a linear first contractor.
   The global minimum-reader hypotheses and translation from source counts
   to the local capture bounds are stated separately in REPORT.md. -/
import Reader138

namespace Blc.Round3Prove46
open Term SelfintLowerBound SelfintNonlinearChain SelfintWireCost SelfintFloor
open Round3Reader138

set_option maxRecDepth 10000
set_option maxHeartbeats 1000000

theorem minimum_leaf_nonlinearity {R : Term} (hR : Reader R) (f : Nat)
    (hlive : 3 ≤ live R) (hfree : freeLeaves 0 R = f+1)
    (hleaf : leafCount R = f+5) : nonlinear R = 1 ∧ live R = 3 := by
  have hnl := reader_nonlinear hR
  have hbound := leaves_bound R
  omega

def appendArgs (t : Term) : List Term → Term
  | [] => t
  | a::as => appendArgs (.app t a) as

def argsNonlinear : List Term → Nat
  | [] => 0
  | a::as => nonlinear a + argsNonlinear as

def argsLambdas : List Term → Nat
  | [] => 0
  | a::as => lamCount a + argsLambdas as

theorem appendArgs_nonlinear (t : Term) (as : List Term) :
    nonlinear (appendArgs t as) = nonlinear t + argsNonlinear as := by
  induction as generalizing t with
  | nil => rfl
  | cons a as ih => simp [appendArgs, argsNonlinear, ih, nonlinear, Nat.add_assoc]

theorem appendArgs_lambdas (t : Term) (as : List Term) :
    lamCount (appendArgs t as) = lamCount t + argsLambdas as := by
  induction as generalizing t with
  | nil => rfl
  | cons a as ih => simp [appendArgs, argsLambdas, ih, lamCount, Nat.add_assoc]

theorem appendArgs_beta {t u : Term} (hb : Beta t u) (as : List Term) :
    Beta (appendArgs t as) (appendArgs u as) := by
  induction as generalizing t u with
  | nil => exact hb
  | cons a as ih => exact ih (.appL a hb)

/-- Consuming the only nonlinear binder at the head would leave an affine
    reader. The nonerasing hypothesis is the ordinary minimum-source lemma. -/
theorem first_contractor_linear (b a : Term) (as : List Term)
    (hR : Reader (appendArgs (.app (.lam b) a) as))
    (hn : nonlinear (appendArgs (.app (.lam b) a) as) = 1)
    (hlive : 0 < occ 0 b) : occ 0 b = 1 := by
  by_cases heq : occ 0 b = 1
  · exact heq
  have hne := heq
  exfalso
  have hmany : 1 < occ 0 b := by omega
  have hnl : nonlinear b + 1 + nonlinear a + argsNonlinear as = 1 := by
    simpa only [appendArgs_nonlinear, nonlinear, if_pos hmany] using hn
  have hb0 : nonlinear b = 0 := by omega
  have ha0 : nonlinear a = 0 := by omega
  have has0 : argsNonlinear as = 0 := by omega
  have hr := hR.beta (appendArgs_beta (.beta b a) as)
  have hneed := reader_nonlinear hr
  simp [appendArgs_nonlinear, contract, nonlinear_subst, hb0, ha0, has0] at hneed

theorem linear_head_removes_one_lambda (b a : Term) (as : List Term)
    (ho : occ 0 b = 1) :
    lamCount (appendArgs (contract b a) as) + 1 =
      lamCount (appendArgs (.app (.lam b) a) as) := by
  simp only [appendArgs_lambdas, contract, lamCount_subst, lamCount, ho, Nat.one_mul]
  omega

/-- If the only substituted occurrence crosses no lambda, no free-reference
    count assumption is needed. -/
theorem linear_depth_zero_shrinks (b a : Term)
    (ho : occ 0 b = 1) (hd : occDepth 0 b = 0) :
    wire (contract b a) < wire (.app (.lam b) a) := by
  have h := linear_beta_delta b a ho
  rw [hd] at h
  simp only [Int.natCast_zero, Int.mul_zero] at h
  omega

theorem linear_free_seven_depth_one (b a : Term)
    (ho : occ 0 b = 1) (ha : freeLeaves 0 a ≤ 7) (hd : occDepth 0 b ≤ 1) :
    wire (contract b a) ≤ wire (.app (.lam b) a) := by
  have h := linear_beta_delta b a ho
  have hd' : occDepth 0 b = 0 ∨ occDepth 0 b = 1 := by omega
  rcases hd' with hd' | hd'
  · rw [hd'] at h
    simp only [Int.natCast_zero, Int.mul_zero] at h
    omega
  · rw [hd'] at h
    simp only [Int.natCast_one, Int.mul_one] at h
    omega

theorem linear_free_three_depth_three (b a : Term)
    (ho : occ 0 b = 1) (ha : freeLeaves 0 a ≤ 3) (hd : occDepth 0 b ≤ 3) :
    wire (contract b a) ≤ wire (.app (.lam b) a) := by
  have h := linear_beta_delta b a ho
  have hd' : occDepth 0 b = 0 ∨ occDepth 0 b = 1 ∨
      occDepth 0 b = 2 ∨ occDepth 0 b = 3 := by omega
  rcases hd' with hd' | hd' | hd' | hd' <;> rw [hd'] at h <;> omega

theorem linear_free_eight_depth_one (b a : Term)
    (ho : occ 0 b = 1) (ha : freeLeaves 0 a ≤ 8) (hd : occDepth 0 b ≤ 1) :
    wire (contract b a) ≤ wire (.app (.lam b) a) + 1 := by
  have h := linear_beta_delta b a ho
  have hd' : occDepth 0 b = 0 ∨ occDepth 0 b = 1 := by omega
  rcases hd' with hd' | hd' <;> rw [hd'] at h <;> omega

theorem linear_free_four_depth_two (b a : Term)
    (ho : occ 0 b = 1) (ha : freeLeaves 0 a ≤ 4) (hd : occDepth 0 b ≤ 2) :
    wire (contract b a) ≤ wire (.app (.lam b) a) := by
  have h := linear_beta_delta b a ho
  have hd' : occDepth 0 b = 0 ∨ occDepth 0 b = 1 ∨ occDepth 0 b = 2 := by omega
  rcases hd' with hd' | hd' | hd' <;> rw [hd'] at h <;> omega

/-- Exact arithmetic when j is in the head redex's argument: fA, fB, fC
    are the c leaves in that argument, in its body, and in the pending spine.
    After linear contraction the hole is at depth d+D; then hoist it. -/
theorem contraction_hoist_delta (fA fB fC D d : Nat) :
    ((fA : Int)+3)*D - 6 - fB + 6 + ((fA : Int)+fB+fC) - 3*((d : Int)+D) =
      (fA : Int)*D + fA + fC - 3*d := by
  simp only [Int.add_mul, Int.mul_add]
  omega

theorem contraction_hoist_bound (fA fB fC D d : Nat) :
    (fA : Int)*D + fA + fC - 3*d ≤
      ((fA : Int)+fB+fC)*(D+1) - 3*d := by
  have hmul : (fA : Int)*D ≤ ((fA : Int)+fB+fC)*D :=
    Int.mul_le_mul_of_nonneg_right (by omega) (by omega)
  simp only [Int.mul_add, Int.mul_one]
  omega

theorem appendArgs_wire_mono {t u : Term} (h : wire t ≤ wire u) (as : List Term) :
    wire (appendArgs t as) ≤ wire (appendArgs u as) := by
  induction as generalizing t u with
  | nil => exact h
  | cons a as ih =>
      apply ih
      simp only [wire_app]
      omega

/-- The canonical NEXT trick preserves exactly the weighted comparison.
    The fill can be any four-capture term; its fixed wire size cancels. -/
theorem filled_wire_implies_weight {R S Q : Term}
    (hR : FreeUnder 2 R) (hS : FreeUnder 2 S)
    (hjR : occ 1 R = 1) (hjS : occ 1 S = 1)
    (hQ : freeLeaves 0 Q = 4)
    (hwire : wire (substDec 1 Q S) ≤ wire (substDec 1 Q R)) :
    cost S + 4 * depth S ≤ cost R + 4 * depth R := by
  have hr := functional_wire (Q := Q) hR hjR
  have hs := functional_wire (Q := Q) hS hjS
  simp only [functional, wire_lam, hQ] at hr hs
  omega

/-- A simple sufficient subset of the full contraction/hoisting filter.
    The full arithmetic inventory is implemented in refine_counts.py. -/
def basicExcludedCount (d f l v x : Nat) : Prop :=
  v = f+5 ∧ (x = 0 ∨ (f ≤ 3 ∧ x ≤ 1) ∨ (d = 2 ∧ f ≤ 3 ∧ l ≤ 4))

theorem depth_two_three_c_application_rows_removed (l v x w : Nat)
    (hl : 3 ≤ l) (hv : 8 ≤ v) (hw0 : 43 ≤ w) (hw1 : w ≤ 45)
    (he : w + 4 = 2*l + 4*v + x + 8) : basicExcludedCount 2 3 l v x := by
  unfold basicExcludedCount
  omega

end Blc.Round3Prove46
