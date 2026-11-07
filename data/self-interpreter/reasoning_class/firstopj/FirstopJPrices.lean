import JBarePrices
namespace Blc.FirstopJ
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open FirstopPrices
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

/-- Generalizes the bare-j strictness to any argument with no lambdas,
    or to any linear source redex. No bound on the reader's weight. -/
theorem strict_hoist (C : Context) (D A : Term)
    (hc : ctxDepth C=1)
    (hm : LexMinimumReader (C.fill (.app (.lam D) A)))
    (hdepthmin : DepthMinimum (C.fill (.app (.lam D) A)))
    (hd : occDepth 1 (C.fill (.app (.lam D) A))=1)
    (ha : occ 2 A=1)
    (htie : occ 0 D=1 ∨ lamCount A=0) :
    1 ≤ ((occ 0 D : Int)-1)*wire A +
      ((occ 0 A : Int)+occ 1 A)*occDepth 0 D -
      3*occ 0 D-occ 1 D+ctxRestOcc C 0+(occ 0 D : Int)*occ 1 A := by
  let R := C.fill (.app (.lam D) A)
  let T := C.fill (contract D A)
  have hr := hm.laws.beta (beta_fill C (.beta D A))
  obtain ⟨hlaw,hhole⟩ := hr.hoist
  have hp := contextual_contract_hoist C D A hc hm.laws.scope hm.oneHole hd ha
  have hlam : lamCount (hoist T)=lamCount R := by
    simp only [T,R,hoist_lambdas,lambdas_fill,contract,lamCount_subst,lamCount]
    rcases htie with h | h <;> simp [h] <;> omega
  have hmin := hm.minimal _ hlaw hhole
  have hstrict : weight 0 R < weight 0 (hoist T) := by
    by_cases he : weight 0 R=weight 0 (hoist T)
    · have hx := hdepthmin _ hlaw hhole he hlam.symm
      have hz := SelfintWiden.hoist_depth T
      change occDepth 1 (hoist T)=0 at hz
      change occDepth 1 R=1 at hd
      change occDepth 1 R≤occDepth 1 (hoist T) at hx
      omega
    · change weight 0 R≤weight 0 (hoist T) at hmin
      omega
  change (weight 0 (hoist T) : Int)-weight 0 R = _ at hp
  omega

/-- Scalar identity for selective restoration of the unique surviving j.
    The syntax/replay construction is stated and proved in the report;
    this theorem checks the exact arithmetic, not the replay theorem. -/
theorem selective_price (a F M m G d : Int) :
    ((m-1)*a+F*M-4-2*m-G) +3*d-((M-d)+2*(m-1)) =
      (m-1)*a+(F-1)*M+4*d-2-4*m-G := by
  simp only [Int.sub_mul, Int.one_mul]
  omega

/-- Replacing the selected use's depth by an upper bound is conservative. -/
theorem selected_depth_upper (a F M m G d dmax : Int)
    (hd : d≤dmax)
    (hmin : 0≤(m-1)*a+(F-1)*M+4*d-2-4*m-G) :
    0≤(m-1)*a+(F-1)*M+4*dmax-2-4*m-G := by omega

/-- Every nontrivial depth-zero j-bearing application has wire cost at
    least eight; the marked direct let uses at least one x (D costs two).
    These bounds suffice for the finite cell ceilings. -/
theorem direct_ceilings (t a d v m : Nat)
    (ha : 8≤a) (hd : 2≤d) (hm : 1≤m)
    (hocc : 4*m≤d+2) (hv : 2*t≤v)
    (hw : 10+a+d+2*t+v≤45) : t≤6 ∧ m≤7 ∧ a≤33-4*t := by omega

#print axioms strict_hoist
#print axioms selective_price
#print axioms selected_depth_upper
#print axioms direct_ceilings
end Blc.FirstopJ
