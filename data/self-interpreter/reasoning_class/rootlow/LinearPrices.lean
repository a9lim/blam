import Bridge
import LocalPrices
namespace Blc.RootLow
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLambdaSink SelfintNestedLets
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

-- The lambda/depth accounting follows BodyLinPrices, with its three-coordinate
-- minimum identified with Minimum3 above.
theorem bindHole_lambdas (t : Term) (d : Nat) :
    lamCount (bindHole d t)=lamCount t := by
  induction t generalizing d with
  | var n => simp only [bindHole];split <;> first | rfl | (split <;> rfl)
  | lam b ih => simp [bindHole,lamCount,ih]
  | app f a ihf iha => simp [bindHole,lamCount,ihf,iha]

theorem hoist_lambdas (t : Term) : lamCount (hoist t)=lamCount t+1 := by
  simp [hoist,lamCount,bindHole_lambdas,Nat.add_comm]

theorem hoist_depth_zero (t : Term) (hs : FreeUnder 2 t) :
    occDepth 1 (hoist t)=0 := by
  have h:=bindHole_no_holes t 0 hs
  simp only [holes_eq_occ,Nat.reduceAdd] at h
  simp [hoist,occDepth,h,occDepth_zero h]

theorem minimum_hoist_strict {r t : Term} (hm : Minimum3 r)
    (ht : ReaderLaws t) (hd : occDepth 1 r=1)
    (hL : lamCount r=lamCount (hoist t)) : weight 0 r<weight 0 (hoist t) := by
  obtain ⟨hl,hj⟩:=ht.hoist
  have hmin:=hm.minimal _ hl hj
  by_cases he : weight 0 r=weight 0 (hoist t)
  · have hb:=hm.depths _ hl hj he hL
    rw [hd,hoist_depth_zero t ht.scope] at hb;omega
  · omega

/-- Whole-source contract-and-hoist at ANY source position, at total
source-j depth one. This extends BodyLetPrices.local_hoist_price to ambient
zero and to a parameterized lexical frame. -/
theorem contextual_hoist_price (C : Context) (b a : Term)
    (hs : FreeUnder 2 (C.fill (.app (.lam b) a)))
    (hj : occ 1 (C.fill (.app (.lam b) a))=1)
    (hd : occDepth 1 (C.fill (.app (.lam b) a))=1)
    (ha : occ (ctxDepth C+1) a=1) :
    (weight 0 (hoist (C.fill (contract b a))) : Int)-weight 0 (C.fill (.app (.lam b) a)) =
      ((occ 0 b : Int)-1)*wire a + ((freeLeaves 0 a : Int)-1)*occDepth 0 b -
      3*occ 0 b-freeLeaves 1 b+occ (ctxDepth C+1) b+
      (occ 0 b : Int)*occ (ctxDepth C) a+ctxRestOcc C 0 := by
  have parts:=hj
  simp only [SelfintLocalCost.occ_fill,occ] at parts
  rw [show 1+ctxDepth C=ctxDepth C+1 by omega,ha] at parts
  have hb : occ (ctxDepth C+1+1) b=0 := by omega
  have hrj : ctxRestOcc C 1=0 := by omega
  have hs':=beta_freeUnder (beta_fill C (.beta b a)) 2 hs
  have hh:=hoist_wire_price (C.fill (contract b a)) hs'
  have hw:=weight_wire (C.fill (.app (.lam b) a)) 0
  simp only [holes_eq_occ,depths_eq,Nat.zero_add,Nat.zero_mul,Nat.add_zero,hj,hd] at hw
  have he:=wire_beta_delta b a
  simp only [wire_app,wire_lam,Int.natCast_add] at he
  simp only [BodyLetPrices.wire_fill,SelfintLocalCost.occ_fill,Nat.zero_add,contract,
    occ_substDec_ge b a (ctxDepth C) 0 (by omega),
    occ_substDec_ge b a (1+ctxDepth C) 0 (by omega)] at hh
  rw [show 1+ctxDepth C=ctxDepth C+1 by omega,ha,hb,hrj] at hh
  simp only [Nat.zero_add,Nat.mul_one,Nat.add_zero] at hh
  simp only [BodyLetPrices.wire_fill,wire_app,wire_lam] at hw
  have hhi:=congrArg (fun n:Nat => (n:Int)) hh
  have hwi:=congrArg (fun n:Nat => (n:Int)) hw
  simp only [contract,Int.natCast_add,Int.natCast_mul,Int.sub_mul,Int.one_mul] at he hhi hwi ⊢
  omega

theorem contextual_hoist_positive (C : Context) (b a : Term)
    (hm : Minimum3 (C.fill (.app (.lam b) a)))
    (hd : occDepth 1 (C.fill (.app (.lam b) a))=1)
    (ha : occ (ctxDepth C+1) a=1)
    (hlinear : occ 0 b=1 ∨ lamCount a=0) :
    0 < ((occ 0 b : Int)-1)*wire a + ((freeLeaves 0 a : Int)-1)*occDepth 0 b -
      3*occ 0 b-freeLeaves 1 b+occ (ctxDepth C+1) b+
      (occ 0 b : Int)*occ (ctxDepth C) a+ctxRestOcc C 0 := by
  have ht:=hm.laws.beta (beta_fill C (.beta b a))
  have hL : lamCount (C.fill (.app (.lam b) a))=lamCount (hoist (C.fill (contract b a))) := by
    simp only [hoist_lambdas,lambdas_fill,lamCount,contract,lamCount_subst]
    rcases hlinear with h|h <;> rw [h] <;> simp <;> omega
  have hp:=minimum_hoist_strict hm ht hd hL
  have he:=contextual_hoist_price C b a hm.laws.scope hm.oneHole hd ha
  omega

/-- The two strict root-linear constraints used to obtain the 169 rows. -/
theorem root_linear_hole_charge (b a : Term) (as : List Term)
    (hm : Minimum3 (spine (.app (.lam b) a) as))
    (hx : occ 0 b=1) (ha : occ 1 a=1) (hd : occDepth 1 a=1) :
    4 ≤ (occ 0 a : Int)*(occDepth 0 b+1)+spineOcc 0 as := by
  obtain ⟨hb,hc⟩:=argument_hole_parts b a as hm.oneHole ha
  have ht:=hm.laws.beta (SelfintSourceCost.spine_beta (Beta.beta b a) as)
  have hL : lamCount (spine (.app (.lam b) a) as)=
      lamCount (hoist (spine (contract b a) as)) := by
    simp only [hoist_lambdas,spine_lambdas,lamCount,contract,lamCount_subst,hx,Nat.one_mul]
    omega
  have hdepth : occDepth 1 (spine (.app (.lam b) a) as)=1 := by
    simp only [spine_depth,occDepth,hd,hb,occDepth_zero hb,spineDepth_zero hc]
  have hp:=minimum_hoist_strict hm ht hdepth hL
  have he:=contract_hoist_price b a as hm.laws.scope hm.oneHole ha
  simp only [hx,hd,Int.natCast_one,Int.sub_self,Int.zero_mul,Int.zero_add] at he
  omega

#print axioms contextual_hoist_price
#print axioms contextual_hoist_positive
#print axioms root_linear_hole_charge
end Blc.RootLow

namespace Blc.RootLow
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum

/-- The already excluded depth-zero direct-hole family, kept as an
explicit premise rather than pretending its external inventory is Lean. -/
def DirectHoleFloor : Prop := ∀ t, Minimum3 (hoist t) → 46≤weight 0 (hoist t)

theorem root_linear_zero_charge (hDirect : DirectHoleFloor) (b a : Term) (as : List Term)
    (hm : Minimum3 (spine (.app (.lam b) a) as))
    (hw : weight 0 (spine (.app (.lam b) a) as)≤45)
    (hx : occ 0 b=1) (ha : occ 1 a=1) (hd : occDepth 1 a=0) :
    1≤occ 0 a+spineOcc 0 as := by
  by_cases hn : 1≤occ 0 a+spineOcc 0 as
  · exact hn
  exfalso
  have hca : occ 0 a=0 := by omega
  have hcc : spineOcc 0 as=0 := by omega
  obtain ⟨hb,hc⟩:=argument_hole_parts b a as hm.oneHole ha
  have ht:=hm.laws.beta (SelfintSourceCost.spine_beta (Beta.beta b a) as)
  obtain ⟨hl,hj⟩:=ht.hoist
  have hL : lamCount (spine (.app (.lam b) a) as)=
      lamCount (hoist (spine (contract b a) as)) := by
    simp only [hoist_lambdas,spine_lambdas,lamCount,contract,lamCount_subst,hx,Nat.one_mul]
    omega
  have hdepth : occDepth 1 (spine (.app (.lam b) a) as)=0 := by
    simp only [spine_depth,occDepth,hd,hb,occDepth_zero hb,spineDepth_zero hc]
  have hp:=contract_hoist_price b a as hm.laws.scope hm.oneHole ha
  simp only [hx,hd,hca,hcc,Int.natCast_one,Int.sub_self,Int.zero_mul,Int.zero_add,
    Int.natCast_zero,Int.mul_zero,Int.add_zero,Int.sub_zero] at hp
  have hord : OrderLE (hoist (spine (contract b a) as)) (spine (.app (.lam b) a) as) :=
    Or.inr ⟨by omega,Or.inr ⟨hL.symm,by rw [hoist_depth_zero _ ht.scope,hdepth]; exact Nat.le_refl 0⟩⟩
  obtain ⟨hmin,he,_,_⟩:=transport hm hl hj hord
  have hh:=hDirect _ hmin
  omega

#print axioms root_linear_zero_charge
end Blc.RootLow
