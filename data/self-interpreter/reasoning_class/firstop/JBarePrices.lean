import NonlinearPrices
namespace Blc.FirstopPrices
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

theorem bindHole_lambdas (t : Term) (d : Nat) :
    lamCount (bindHole d t)=lamCount t := by
  induction t generalizing d with
  | var n => simp only [bindHole]; split <;> simp [lamCount]; split <;> rfl
  | lam b ih => simp [bindHole,lamCount,ih]
  | app f a ihf iha => simp [bindHole,lamCount,ihf,iha]

theorem hoist_lambdas (t : Term) : lamCount (hoist t)=lamCount t+1 := by
  simp [hoist,lamCount,bindHole_lambdas]

/-- Depth minimality is an EXTRA hypothesis: repository LexMinimumReader
    contains only the weight and lambda coordinates. -/
def DepthMinimum (r : Term) : Prop := ∀ t, ReaderLaws t → occ 1 t=1 →
  weight 0 r=weight 0 t → lamCount r=lamCount t → occDepth 1 r≤occDepth 1 t

/-- With A=j at source depth one the charge is m-4-s_D+c_C.
    Equality preserves lambda count but hoists j to depth zero, so the
    third minimum coordinate makes this charge strictly positive. -/
theorem bare_j_charge (C : Context) (D : Term)
    (hc : ctxDepth C=1)
    (hm : LexMinimumReader (C.fill (.app (.lam D) (.var 2))))
    (hdmin : DepthMinimum (C.fill (.app (.lam D) (.var 2))))
    (hd : occDepth 1 (C.fill (.app (.lam D) (.var 2)))=1) :
    1 ≤ (occ 0 D : Int)-4-occ 1 D+ctxRestOcc C 0 := by
  let R := C.fill (.app (.lam D) (.var 2))
  let T := C.fill (contract D (.var 2))
  have hr := hm.laws.beta (beta_fill C (.beta D (.var 2)))
  obtain ⟨hlaw,hhole⟩ := hr.hoist
  have hp := contextual_contract_hoist C D (.var 2) hc hm.laws.scope hm.oneHole hd (by decide)
  simp only [wire_var,occ,Nat.reduceEqDiff,↓reduceIte,Int.natCast_zero,
    Int.zero_mul,Int.add_zero] at hp
  have hlam : lamCount (hoist T)=lamCount R := by
    simp only [T,R,hoist_lambdas,lambdas_fill,contract,lamCount_subst,lamCount,
      Nat.mul_zero,Nat.add_zero]
    omega
  have hmin := hm.minimal _ hlaw hhole
  have hstrict : weight 0 R < weight 0 (hoist T) := by
    by_cases he : weight 0 R=weight 0 (hoist T)
    · have hx := hdmin _ hlaw hhole he hlam.symm
      have hz := SelfintWiden.hoist_depth T
      change occDepth 1 (hoist T)=0 at hz
      change occDepth 1 R=1 at hd
      change occDepth 1 R≤occDepth 1 (hoist T) at hx
      rw [hd,hz] at hx
      omega
    · change weight 0 R≤weight 0 (hoist T) at hmin
      omega
  change (weight 0 (hoist T) : Int)-weight 0 R = _ at hp
  omega

theorem bare_j_pending_ceiling (t d v : Nat) (hd : 2≤d)
    (hv : 2*t≤v) (hw : 14+d+2*t+v≤45) : t≤7 := by omega
#print axioms bare_j_charge
#print axioms bare_j_pending_ceiling
end Blc.FirstopPrices
