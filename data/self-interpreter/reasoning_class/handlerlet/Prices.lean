import Blc.SelfintNeededHead
namespace Blc.HandlerLetPrices
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reader (B : Term) (ts : List Term) : Term :=
  .lam (spine (.app (.var 0) (.lam B)) ts)

/-- The repository-weight version of 12+2q+|B|+sum local(Ti).
    spineWeight includes the 2q applications and the outer4 hole charge. -/
theorem reader_price (B : Term) (ts : List Term) (hb : occ 3 B=0) :
    weight 0 (reader B ts) = 8 + wire B + spineWeight 1 ts := by
  simp only [reader,weight,spine_weight,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte]
  rw [weight_no_hole B 2 hb]
  omega

/-- The exact unexpanded source at a marked redex. -/
theorem marked_price (C : Context) (D A : Term) (ts : List Term)
    (hb : occ 3 (C.fill (.app (.lam D) A))=0) :
    weight 0 (reader (C.fill (.app (.lam D) A)) ts) =
      8 + wire (C.fill (.app (.lam D) A)) + spineWeight 1 ts :=
  reader_price _ _ hb

/-- A nonlinear source redex has ordinary size at least12. -/
theorem nonlinear_twelve (D A : Term) (hm : 2≤occ 0 D) :
    12≤wire (.app (.lam D) A) := by
  have hd := body_occ_price D
  have ha := wire_positive A
  simp only [wire_app,wire_lam]
  omega

/-- Nonlinear lets force q<=5 from the original source budget. -/
theorem arity_five (q b p : Nat) (_hq : 1≤q) (hb : 12≤b)
    (hp : 2*(q-1)≤p) (hw : 12+2*q+b+p≤45) : q≤5 := by omega

/-- Lambda-free arguments strictly increase weight upon contraction in a
    lexicographic minimum. This is valid at arbitrary source positions and
    all use multiplicities; the hole must be absent from the argument. -/
theorem minimum_lamfree_strict (C : Context) (D A : Term)
    (hm : LexMinimumReader (C.fill (.app (.lam D) A)))
    (ha : occ (ctxDepth C+1) A=0) (hL : lamCount A=0) :
    weight (ctxDepth C) (.app (.lam D) A) <
      weight (ctxDepth C) (contract D A) := by
  have hr := hm.laws.beta (beta_fill C (.beta D A))
  have hj : occ 1 (C.fill (contract D A))=1 := by
    have h := hm.oneHole
    simp only [occ_fill,occ,show 1+ctxDepth C=ctxDepth C+1 by omega,
      ha,Nat.add_zero] at h
    simpa only [occ_fill,contract,
      occ_substDec_ge D A (ctxDepth C+1) 0 (by omega),
      show 1+ctxDepth C=ctxDepth C+1 by omega,ha,Nat.mul_zero,Nat.add_zero] using h
  have hmin := hm.minimal _ hr hj
  have hlam : lamCount (C.fill (contract D A))+1 =
      lamCount (C.fill (.app (.lam D) A)) := by
    simp only [lambdas_fill,contract,lamCount_subst,lamCount,hL,Nat.mul_zero]
    omega
  have hstrict : weight 0 (C.fill (.app (.lam D) A)) <
      weight 0 (C.fill (contract D A)) := by
    by_cases he : weight 0 (C.fill (.app (.lam D) A))=weight 0 (C.fill (contract D A))
    · have hh := hm.lambdas _ hr hj he
      omega
    · omega
  simp only [weighted_fill,Nat.zero_add] at hstrict
  omega

/-- Integer price used by the count filter, for a hole-free source let. -/
theorem charge (D A : Term) (depth : Nat)
    (ha : occ (depth+1) A=0) (hd : occ (depth+2) D=0) :
    (weight depth (contract D A) : Int) - weight depth (.app (.lam D) A) =
      ((occ 0 D : Int)-1)*wire A + ((freeLeaves 0 A : Int)-1)*occDepth 0 D
        -4-2*occ 0 D-freeLeaves 1 D := by
  have hh := weighted_beta_at D A depth
  rw [weight_no_hole A depth ha] at hh
  simp only [ha,hd,Int.natCast_zero,Int.mul_zero,Int.add_zero,Int.sub_zero] at hh
  omega

#print axioms reader_price
#print axioms nonlinear_twelve
#print axioms arity_five
#print axioms minimum_lamfree_strict
#print axioms charge
end Blc.HandlerLetPrices
