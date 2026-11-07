import Blc.SelfintLocalCost

namespace Blc.RootletEta
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintSourceCost
open SelfintLocalCost SelfintWidenHoist

/-- Shift past the eta binder: ordinary outward leaves pay one, j pays four. -/
theorem shifted_weight (p : Term) (d : Nat) :
    weight (d+1) (shift 1 0 p) =
      weight d p + freeLeaves 0 p + 3 * occ (d+1) p := by
  have h0 := weight_wire p d
  have h1 := weight_wire (shift 1 0 p) (d+1)
  simp only [holes_eq_occ, depths_eq] at h0 h1
  rw [occ_shift_ge p (d+1) 0 (by omega),
      occDepth_shift_ge p (d+1) 0 (by omega), wire_shift] at h1
  simp only [Nat.one_mul, Nat.add_mul, Nat.mul_add] at h1
  omega

def etaExpand (p : Term) : Term := .lam (.app (shift 1 0 p) (.var 0))

theorem eta_price (p : Term) (d : Nat) :
    weight d (etaExpand p) = weight d p + 6 + freeLeaves 0 p + 3 * occ (d+1) p := by
  have h := shifted_weight p d
  simp only [etaExpand, weight]
  rw [if_neg (by omega : ¬ 0 = d+1+1)]
  omega

theorem eta_context_price (C : Context) (p : Term) :
    weight 0 (C.fill (etaExpand p)) = weight 0 (C.fill p) +
      6 + freeLeaves 0 p + 3 * occ (ctxDepth C+1) p := by
  rw [weighted_fill, weighted_fill]
  simp only [Nat.zero_add]
  rw [eta_price]
  omega

/-- Pricing only. Reader-law preservation under eta contraction is not
    asserted by this module and is not used in the certified inventory. -/
theorem eta_context_strict (C : Context) (p : Term) :
    weight 0 (C.fill p) < weight 0 (C.fill (etaExpand p)) := by
  rw [eta_context_price]
  omega

#print axioms shifted_weight
#print axioms eta_context_price
#print axioms eta_context_strict
end Blc.RootletEta
