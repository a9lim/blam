import Prices
namespace Blc.FirstopPrices
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLambdaSink
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

/-- The reification price with arbitrary source j occurrences. Source
    s=0,c=1,j=2 and j moves under both new binders. -/
theorem reify_weighted (Q : Term) :
    weight 1 (reify Q) = weight 1 (.app (.var 0) Q) +
      18 + 2*freeLeaves 0 Q + 6*occ 2 Q := by
  have h1 := shifted_weight Q 1 0 (by omega)
  have h2 := shifted_weight (shift 1 0 Q) 2 0 (by omega)
  rw [freeLeaves_shift Q 1 0 0 (by omega),occ_shift_ge Q 2 0 (by omega)] at h2
  have hs : shift 1 0 (shift 1 0 Q)=shift 2 0 Q := by
    exact shift_shift_add Q 1 1 0 0 (by omega) (by omega)
  rw [hs] at h2
  simp only [Nat.reduceAdd] at h1 h2
  simp only [reify,weight,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte]
  omega

#print axioms reify_weighted
end Blc.FirstopPrices
