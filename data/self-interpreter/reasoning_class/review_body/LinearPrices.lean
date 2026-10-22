import Prices
namespace Blc.BodyLinPrices
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist BodyLetPrices
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- Global minimum in precisely the three coordinates in the brief. -/
structure DepthMinimumReader (r : Term) : Prop extends LexMinimumReader r where
  depths : ∀ t, ReaderLaws t → occ 1 t = 1 → weight 0 r = weight 0 t →
    lamCount r = lamCount t → occDepth 1 r ≤ occDepth 1 t

theorem bindHole_lambdas (t : Term) (d : Nat) :
    lamCount (bindHole d t) = lamCount t := by
  induction t generalizing d with
  | var n => simp only [bindHole]; split <;> first | rfl | (split <;> rfl)
  | lam b ih => simp [bindHole,lamCount,ih]
  | app f a ihf iha => simp [bindHole,lamCount,ihf,iha]

theorem hoist_lambdas (t : Term) : lamCount (hoist t) = lamCount t + 1 := by
  simp [hoist,lamCount,bindHole_lambdas,Nat.add_comm]

theorem hoist_depth_zero (t : Term) (hs : FreeUnder 2 t) :
    occDepth 1 (hoist t) = 0 := by
  have hb := bindHole_no_holes t 0 hs
  simp only [holes_eq_occ,Nat.reduceAdd] at hb
  simp [hoist,occDepth,hb,occDepth_zero hb]

theorem minimum_hoist_strict {r t : Term} (hm : DepthMinimumReader r)
    (ht : ReaderLaws t) (hd : occDepth 1 r = 1)
    (hL : lamCount r = lamCount (hoist t)) :
    weight 0 r < weight 0 (hoist t) := by
  obtain ⟨hl,hj⟩ := ht.hoist
  have hmin := hm.minimal _ hl hj
  by_cases he : weight 0 r = weight 0 (hoist t)
  · have hbad := hm.depths _ hl hj he hL
    rw [hd,hoist_depth_zero t ht.scope] at hbad
    omega
  · omega

/-- Local, exact source inequality for a linear hole-bearing let at depth
one. No normality or normalization premise is used. -/
theorem linear_hoist_strict (C : Context) (b a : Term)
    (hm : DepthMinimumReader (C.fill (.app (.lam b) a)))
    (hc : ctxDepth C = 1) (hd : occDepth 1 (C.fill (.app (.lam b) a)) = 1)
    (ha : occ 2 a = 1) (hmul : occ 0 b = 1) :
    4 + (occ 1 b : Int) ≤
      ((occ 0 a : Int) + occ 1 a) * occDepth 0 b + occ 1 a + ctxRestOcc C 0 := by
  have ht := hm.laws.beta (beta_fill C (.beta b a))
  have hL := linear_lambda_removed C b a hmul
  have hstrict := minimum_hoist_strict hm ht hd
    (by rw [hoist_lambdas]; omega)
  have he := local_hoist_price C b a hc hm.laws.scope hm.oneHole hd ha
  simp only [hmul,Int.natCast_one,Int.sub_self,Int.zero_mul,Int.zero_add,
    Int.one_mul] at he
  omega

#print axioms hoist_lambdas
#print axioms hoist_depth_zero
#print axioms minimum_hoist_strict
#print axioms linear_hoist_strict
end Blc.BodyLinPrices
