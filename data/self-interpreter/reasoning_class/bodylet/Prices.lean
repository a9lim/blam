import Blc.SelfintNeededHead
import Blc.SelfintNestedLets
namespace Blc.BodyLetPrices
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLetSink SelfintLambdaSink SelfintNestedLets SelfintDispatchAudit SelfintNeededHead
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

theorem source_price (b a : Term) (as : List Term) (hb : occ 3 b=0) :
    weight 0 (bodyReader b a as) = 6 + wire b + weight 1 a + spineWeight 1 as := by
  simp only [bodyReader,weight,spine_weight,Nat.reduceAdd]
  rw [weight_no_hole b 2 hb]
  omega

def restWire : Context → Nat
 | .hole => 0
 | .lam c => 2 + restWire c
 | .appL c a => 2 + restWire c + wire a
 | .appR f c => 2 + wire f + restWire c

theorem wire_fill (C : Context) (t : Term) :
    wire (C.fill t) = wire t + restWire C := by
  induction C with
  | hole => simp [Context.fill,restWire]
  | lam c ih => simp only [Context.fill,restWire,wire_lam,ih]; omega
  | appL c a ih => simp only [Context.fill,restWire,wire_app,ih]; omega
  | appR f c ih => simp only [Context.fill,restWire,wire_app,ih]; omega

/-- Exact arbitrary-position price at source hole depth one. No source
normal form, reduct normal form, or residual one-hole assumption is used. -/
theorem local_hoist_price (C : Context) (b a : Term)
    (hc : ctxDepth C=1)
    (hs : FreeUnder 2 (C.fill (.app (.lam b) a)))
    (hj : occ 1 (C.fill (.app (.lam b) a))=1)
    (hd : occDepth 1 (C.fill (.app (.lam b) a))=1)
    (ha : occ 2 a=1) :
    (weight 0 (hoist (C.fill (contract b a))) : Int) -
      weight 0 (C.fill (.app (.lam b) a)) =
      ((occ 0 b : Int)-1)*((wire a : Int)-4) +
      ((occ 0 a : Int)+occ 1 a)*occDepth 0 b + occ 0 b -4-occ 1 b +
      (occ 0 b : Int)*occ 1 a + ctxRestOcc C 0 := by
  have hparts := hj
  simp only [SelfintLocalCost.occ_fill,hc,occ,Nat.reduceAdd,ha] at hparts
  have hb : occ 3 b=0 := by omega
  have hrj : ctxRestOcc C 1=0 := by omega
  have hscope := context_scope C (.app (.lam b) a) 2 hs
  rw [hc] at hscope
  have hfa := freeLeaves_closed a 3 hscope.2
  have hfb := freeLeaves_closed b 4 hscope.1
  have a0 := freeLeaves_split a 0
  have a1 := freeLeaves_split a 1
  have a2 := freeLeaves_split a 2
  have b1 := freeLeaves_split b 1
  have b2 := freeLeaves_split b 2
  have b3 := freeLeaves_split b 3
  simp only [Nat.reduceAdd] at a0 a1 a2 b1 b2 b3
  have fa : freeLeaves 0 a=occ 0 a+occ 1 a+1 := by omega
  have fb : freeLeaves 1 b=occ 1 b+occ 2 b := by omega
  have hs' := beta_freeUnder (beta_fill C (.beta b a)) 2 hs
  have hh := hoist_wire_price (C.fill (contract b a)) hs'
  have hw := weight_wire (C.fill (.app (.lam b) a)) 0
  simp only [holes_eq_occ,depths_eq,Nat.zero_add,Nat.zero_mul,Nat.add_zero,hj,hd] at hw
  have he := wire_beta_delta b a
  rw [fa,fb] at he
  simp only [wire_app,wire_lam,Int.natCast_add,Int.natCast_one] at he
  simp only [wire_fill,SelfintLocalCost.occ_fill,hc,contract,
    occ_substDec_ge b a 1 0 (by omega),occ_substDec_ge b a 2 0 (by omega),
    Nat.zero_add,Nat.reduceAdd,hb,ha,hrj,Nat.mul_one,Nat.zero_add,Nat.add_zero] at hh
  simp only [wire_fill,wire_app,wire_lam] at hw
  have hhi := congrArg (fun n : Nat => (n : Int)) hh
  have hwi := congrArg (fun n : Nat => (n : Int)) hw
  simp only [contract,Int.natCast_add,Int.natCast_mul,Int.sub_mul,Int.mul_sub,
    Int.mul_add,Int.add_mul,Int.one_mul] at he hhi hwi ⊢
  omega

theorem minimum_local_hoist (C : Context) (b a : Term)
    (hm : MinimumReader (C.fill (.app (.lam b) a)))
    (hc : ctxDepth C=1) (hd : occDepth 1 (C.fill (.app (.lam b) a))=1)
    (ha : occ 2 a=1) :
    0 ≤ ((occ 0 b : Int)-1)*((wire a : Int)-4) +
      ((occ 0 a : Int)+occ 1 a)*occDepth 0 b + occ 0 b -4-occ 1 b +
      (occ 0 b : Int)*occ 1 a + ctxRestOcc C 0 := by
  have hr := hm.laws.beta (beta_fill C (.beta b a))
  obtain ⟨hl,hj⟩ := hr.hoist
  have hh := hm.minimal _ hl hj
  have he := local_hoist_price C b a hc hm.laws.scope hm.oneHole hd ha
  omega

/-- Exact local sinking charge at any ambient depth and lexical frame. -/
theorem local_sink_price (C : AppContext) (b a : Term) (d : Nat) (h : C.noX) :
    weight d (C.lower.fill (.app (.lam b) a)) + C.charge d =
      weight d (.app (.lam (C.fill b)) a) := by
  have hh := lower_weight C d h
  simp only [SelfintLetSink.fill_weight,weight]
  omega

#print axioms source_price
#print axioms local_hoist_price
#print axioms minimum_local_hoist
#print axioms local_sink_price
end Blc.BodyLetPrices
