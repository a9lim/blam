/-
The weighted beta balance at any source position. For a redex (λx.B) A under
d binders, contraction changes the weight by exactly
(m-1) w_d(A) + (F-1) D - 2m - 4 - G, where m counts the uses of x, D their
total lambda depth, and F and G the outer free leaves of A and B with j
counted four times (`weighted_beta_at`). In a minimum reader no source redex
is erasing (`minimum_source_non_erasing`), in a lexicographically minimum one
a linear redex has (F-1) D ≥ 7 + G (`minimum_linear_source_charge`), and a
redex with a j-free argument
has a nonnegative balance at every multiplicity
(`minimum_source_sharing_charge`), and below weight 46 a redex under d ≥ 1
binders has wire A + D + 2 L_B + 4m ≤ 43 - 2d, with L_B the lambdas of B
(`nested_argument_budget`). `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based; at the root of a reader c=0 and j=1, with probe
suffix N=2 and zero tag r=3; beneath the stream binder s=0, c=1, j=2.
-/
import Blc.SelfintSourceCost
namespace Blc.SelfintLocalCost
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost

set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- Exact weighted beta balance at an arbitrary ambient binder depth. -/
theorem weighted_beta_at (b a : Term) (d : Nat) :
    (weight d (contract b a) : Int) - weight d (.app (.lam b) a) =
      ((occ 0 b : Int)-1) * weight d a +
      ((freeLeaves 0 a : Int) + 3 * occ (d+1) a - 1) * occDepth 0 b -
      2 * occ 0 b - 4 - freeLeaves 1 b - 3 * occ (d+2) b := by
  have w0 := weight_wire (.app (.lam b) a) d
  have w1 := weight_wire (contract b a) d
  have wa := weight_wire a d
  have hd := wire_beta_delta b a
  simp only [holes_eq_occ, depths_eq, wire_app, wire_lam,
    occ, occDepth, contract, occ_substDec_ge b a (d+1) 0 (by omega),
    occDepth_subst_ge b a (d+1) 0 (by omega),
    show d+1+1 = d+2 by omega] at w0 w1 wa
  have w0i := congrArg (fun n : Nat => (n : Int)) w0
  have w1i := congrArg (fun n : Nat => (n : Int)) w1
  have wai := congrArg (fun n : Nat => (n : Int)) wa
  have hwarg : (wire a : Int) = weight d a + 3 * occ (d+1) a -
      3 * occDepth (d+1) a - 3 * d * occ (d+1) a := by
    simp only [Int.natCast_add, Int.natCast_mul, Int.mul_add, Int.mul_assoc] at wai ⊢
    omega
  simp only [wire_app, wire_lam, Int.natCast_add, contract] at hd
  rw [hwarg] at hd
  simp only [Int.natCast_add, Int.natCast_mul,
    show ((3 : Nat) : Int) = 3 from rfl,
    show ((2 : Nat) : Int) = 2 from rfl] at w0i w1i
  simp only [contract,
    Int.sub_mul, Int.mul_add, Int.add_mul, Int.mul_sub, Int.one_mul,
    Int.mul_comm, Int.mul_left_comm, Int.mul_assoc] at hd w0i w1i hwarg ⊢
  omega

def ctxDepth : Context → Nat
  | .hole => 0
  | .lam c => (ctxDepth c) + 1
  | .appL c _ => (ctxDepth c)
  | .appR _ c => (ctxDepth c)

def ctxRestWeight : Context → Nat → Nat
  | .hole, _ => 0
  | .lam c, d => 2 + ctxRestWeight c (d+1)
  | .appL c a, d => 2 + ctxRestWeight c d + weight d a
  | .appR f c, d => 2 + weight d f + ctxRestWeight c d

theorem weighted_fill (c : Context) (t : Term) (d : Nat) :
    weight d (c.fill t) = weight (d+(ctxDepth c)) t + ctxRestWeight c d := by
  induction c generalizing d with
  | hole => simp [Context.fill, ctxDepth, ctxRestWeight]
  | lam c ih =>
    simp only [Context.fill, weight, ctxDepth, ctxRestWeight, ih]
    rw [show d+1+(ctxDepth c) = d+((ctxDepth c)+1) by omega]
    omega
  | appL c a ih =>
    simp only [Context.fill, weight, ctxDepth, ctxRestWeight, ih]
    omega
  | appR f c ih =>
    simp only [Context.fill, weight, ctxDepth, ctxRestWeight, ih]
    omega

def ctxRestOcc : Context → Nat → Nat
  | .hole, _ => 0
  | .lam c, j => ctxRestOcc c (j+1)
  | .appL c a, j => ctxRestOcc c j + occ j a
  | .appR f c, j => occ j f + ctxRestOcc c j

theorem occ_fill (c : Context) (t : Term) (j : Nat) :
    occ j (c.fill t) = occ (j+(ctxDepth c)) t + ctxRestOcc c j := by
  induction c generalizing j with
  | hole => simp [Context.fill, ctxDepth, ctxRestOcc]
  | lam c ih =>
    simp only [Context.fill, ctxDepth, ctxRestOcc, occ]
    rw [ih (j+1)]
    rw [show j+1+ctxDepth c = j+(ctxDepth c+1) by omega]
  | appL c a ih => simp [Context.fill, ctxDepth, ctxRestOcc, occ, ih, Nat.add_assoc]
  | appR f c ih =>
    simp only [Context.fill, ctxDepth, ctxRestOcc, occ, ih]
    omega

def ctxRestLambdas : Context → Nat
  | .hole => 0
  | .lam c => (ctxRestLambdas c) + 1
  | .appL c a => (ctxRestLambdas c) + lamCount a
  | .appR f c => lamCount f + (ctxRestLambdas c)

theorem lambdas_fill (c : Context) (t : Term) :
    lamCount (c.fill t) = lamCount t + (ctxRestLambdas c) := by
  induction c with
  | hole => simp [Context.fill, ctxRestLambdas]
  | lam c ih => simp [Context.fill, ctxRestLambdas, lamCount, ih, Nat.add_assoc]
  | appL c a ih => simp [Context.fill, ctxRestLambdas, lamCount, ih, Nat.add_assoc]
  | appR f c ih =>
    simp only [Context.fill, ctxRestLambdas, lamCount, ih]
    omega

/-- Linear contraction preserves every outer free-variable multiplicity. -/
theorem linear_occ_preserved (c : Context) (b a : Term) (j : Nat)
    (hm : occ 0 b = 1) :
    occ j (c.fill (contract b a)) = occ j (c.fill (.app (.lam b) a)) := by
  simp only [occ_fill, contract, occ, occ_substDec_ge b a (j+(ctxDepth c)) 0 (by omega),
    hm, Nat.one_mul]

theorem linear_lambda_removed (c : Context) (b a : Term) (hm : occ 0 b = 1) :
    lamCount (c.fill (contract b a)) + 1 = lamCount (c.fill (.app (.lam b) a)) := by
  simp only [lambdas_fill, contract, lamCount, lamCount_subst, hm, Nat.one_mul]
  omega

/-- Every remaining linear source redex in a minimum reader must pay for
    a strict weight increase. This applies at every source position. -/
theorem minimum_linear_source_charge (c : Context) (b a : Term)
    (hm : LexMinimumReader (c.fill (.app (.lam b) a))) (ho : occ 0 b = 1) :
    7 + (freeLeaves 1 b : Int) + 3 * occ ((ctxDepth c)+2) b ≤
      ((freeLeaves 0 a : Int) + 3 * occ ((ctxDepth c)+1) a - 1) * occDepth 0 b := by
  have hr := hm.laws.beta (beta_fill c (.beta b a))
  have hj : occ 1 (c.fill (contract b a)) = 1 := by
    rw [linear_occ_preserved c b a 1 ho]
    exact hm.oneHole
  have hmin := hm.minimal _ hr hj
  have hL := linear_lambda_removed c b a ho
  have hstrict : weight 0 (c.fill (.app (.lam b) a)) <
      weight 0 (c.fill (contract b a)) := by
    by_cases he : weight 0 (c.fill (.app (.lam b) a)) = weight 0 (c.fill (contract b a))
    · have hbad := hm.lambdas _ hr hj he
      omega
    · omega
  simp only [weighted_fill, Nat.zero_add] at hstrict
  have he := weighted_beta_at b a (ctxDepth c)
  simp only [ho, Int.natCast_one, Int.sub_self, Int.zero_mul, Int.zero_add] at he
  omega

theorem minimum_linear_source_not_shallow (c : Context) (b a : Term)
    (hm : LexMinimumReader (c.fill (.app (.lam b) a))) (ho : occ 0 b = 1)
    (hcap : freeLeaves 0 a + 3 * occ ((ctxDepth c)+1) a ≤ 7)
    (hdepth : occDepth 0 b ≤ 1) : False := by
  have h := minimum_linear_source_charge c b a hm ho
  have hd : occDepth 0 b = 0 ∨ occDepth 0 b = 1 := by omega
  rcases hd with hd | hd <;> rw [hd] at h <;> simp only [Int.natCast_zero,
    Int.natCast_one, Int.mul_zero, Int.mul_one] at h <;> omega

/-- General source non-erasure, including redexes inside callbacks. -/
theorem minimum_source_non_erasing (c : Context) (b a : Term)
    (hm : MinimumReader (c.fill (.app (.lam b) a))) : 0 < occ 0 b := by
  by_cases hz : occ 0 b = 0
  · have hr := hm.laws.beta (beta_fill c (.beta b a))
    have hneed := reader_j hr.probes
    have hsource := hm.oneHole
    simp only [occ_fill, occ] at hsource
    simp only [occ_fill, contract,
      occ_substDec_ge b a (1+ctxDepth c) 0 (by omega),
      hz, Nat.zero_mul, Nat.add_zero] at hneed
    have ha : occ (1+ctxDepth c) a = 0 := by omega
    have hj : occ 1 (c.fill (contract b a)) = 1 := by
      simp only [occ_fill, contract,
        occ_substDec_ge b a (1+ctxDepth c) 0 (by omega),
        hz, Nat.zero_mul, Nat.add_zero]
      omega
    have hmin := hm.minimal _ hr hj
    simp only [weighted_fill, Nat.zero_add] at hmin
    have hd := occDepth_zero hz
    have he := weighted_beta_at b a (ctxDepth c)
    simp only [hz, hd, Int.natCast_zero, Int.mul_zero] at he
    omega
  · omega

/-- When the argument has no source hole, even nonlinear contraction stays
    in the separated class. This prices a sharing let as a whole. -/
theorem minimum_source_sharing_charge (c : Context) (b a : Term)
    (hm : MinimumReader (c.fill (.app (.lam b) a)))
    (ha : occ (ctxDepth c+1) a = 0) :
    2 * (occ 0 b : Int) + 4 + freeLeaves 1 b + 3 * occ (ctxDepth c+2) b ≤
      ((occ 0 b : Int)-1) * weight (ctxDepth c) a +
      ((freeLeaves 0 a : Int)-1) * occDepth 0 b := by
  have hr := hm.laws.beta (beta_fill c (.beta b a))
  have hj : occ 1 (c.fill (contract b a)) = 1 := by
    have h := hm.oneHole
    simp only [occ_fill, occ, show 1+ctxDepth c = ctxDepth c+1 by omega,
      ha, Nat.add_zero] at h
    simpa only [occ_fill, contract,
      occ_substDec_ge b a (ctxDepth c+1) 0 (by omega),
      show 1+ctxDepth c = ctxDepth c+1 by omega,
      ha, Nat.mul_zero, Nat.add_zero] using h
  have hmin := hm.minimal _ hr hj
  simp only [weighted_fill, Nat.zero_add] at hmin
  have he := weighted_beta_at b a (ctxDepth c)
  simp only [ha, Int.natCast_zero, Int.mul_zero, Int.add_zero] at he
  omega

theorem context_depth_price (c : Context) (d : Nat) :
    2 * ctxDepth c ≤ ctxRestWeight c d := by
  induction c generalizing d with
  | hole => simp [ctxDepth, ctxRestWeight]
  | lam c ih =>
    have h := ih (d+1)
    simp only [ctxDepth, ctxRestWeight, Nat.mul_add, Nat.mul_one]
    omega
  | appL c a ih =>
    have h := ih d
    simp only [ctxDepth, ctxRestWeight]
    omega
  | appR f c ih =>
    have h := ih d
    simp only [ctxDepth, ctxRestWeight]
    omega

/-- Original source arguments below at least one binder are uniformly
    bounded, including nonlinear lets inside the stream lambda. -/
theorem nested_argument_budget (c : Context) (b a : Term)
    (hw : weight 0 (c.fill (.app (.lam b) a)) ≤ 45) (hd : 1 ≤ ctxDepth c) :
    wire a + occDepth 0 b + 2 * lamCount b +
      4 * occ 0 b + 2 * ctxDepth c ≤ 43 := by
  have hctx := context_depth_price c 0
  have harg := weight_ge_wire_positive_depth a (ctxDepth c) hd
  have hbody := weight_ge_wire_positive_depth b (ctxDepth c+1) (by omega)
  have hb := body_occ_price b
  simp only [weighted_fill, Nat.zero_add, weight] at hw
  omega

#print axioms weighted_beta_at
#print axioms minimum_linear_source_charge
#print axioms minimum_source_non_erasing
#print axioms minimum_source_sharing_charge
#print axioms nested_argument_budget

end Blc.SelfintLocalCost
