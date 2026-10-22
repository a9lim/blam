import Blc.SelfintLambdaSink
namespace Blc.RootNL
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLambdaSink SelfintControl
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- Syntax and exact price only. Existence of a law-preserving repair is the
residual-replay lemma, stated separately in the report. Adapted from
FirstopJ.Pruned, now also used at root and on arbitrary head-exposure endpoints. -/
inductive Pruned : Nat → Term → Term → Nat → Nat → Prop
 | keep (d k : Nat) : Pruned d (.var k) (.var k) 0 0
 | drop (d : Nat) : Pruned d (.var (d+1)) (.var 0) 1 d
 | lam {d t u n S} : Pruned (d+1) t u n S → Pruned d (.lam t) (.lam u) n S
 | app {d f a g b n m S T} : Pruned d f g n S → Pruned d a b m T →
     Pruned d (.app f a) (.app g b) (n+m) (S+T)

theorem prune_price {d t u n S} (h : Pruned d t u n S) :
    weight d u + 4*S = weight d t + 2*n := by
  induction h with
  | keep => omega
  | drop d => simp [weight]; omega
  | lam h ih => simp only [weight]; omega
  | app hf ha ihf iha => simp only [weight]; omega

theorem prune_lambdas {d t u n S} (h : Pruned d t u n S) :
    lamCount u = lamCount t := by
  induction h with
  | keep => rfl
  | drop => rfl
  | lam h ih => simp [lamCount,ih]
  | app hf ha ihf iha => simp [lamCount,ihf,iha]

theorem prune_holes {d t u n S} (h : Pruned d t u n S) :
    occ (d+1) u + n = occ (d+1) t := by
  induction h with
  | keep => omega
  | drop d => simp [occ]
  | lam h ih => simpa only [occ] using ih
  | app hf ha ihf iha => simp only [occ]; omega

/-- A no-minimality endpoint floor transfers at its exact offset. The floor
is an explicit hypothesis and can be P1/P4, normality, or another family. -/
theorem unconditional_transfer {r u : Term} (floor : 46 ≤ weight 0 u)
    (delta : Int) (price : (weight 0 u : Int)-weight 0 r=delta) :
    46-delta ≤ (weight 0 r : Int) := by omega

/-- Root Lift, with arbitrary pieces and full all-n laws. The family lower
bound is supplied independently; there is no minimum assumption. -/
theorem lift_family_floor (F : Term → Prop)
    (floor : ∀ u, ReaderLaws u → occ 1 u=1 → F u → 46 ≤ weight 0 u)
    (b a : Term) (hr : ReaderLaws (outer b a)) (hj : occ 1 (outer b a)=1)
    (hf : F (inner b a)) :
    46 + (occ 1 b : Int) - occ 0 b - freeLeaves 0 a - 3*occ 1 a ≤
      (weight 0 (outer b a) : Int) := by
  have hl := laws_join hr (inner_scope b a 2 hr.scope) (sink_join b a)
  have hji : occ 1 (inner b a)=1 := (inner_occ b a 1).trans hj
  have hw := floor _ hl hji hf
  have hp := sink_price b a 0
  simp only [Nat.reduceAdd] at hp
  omega

/-- Exact repaired endpoint price after arbitrary expansion. No assertion
that every reader normalizes, and no assumption that the expansion is small. -/
theorem endpoint_price (r t u : Term) (n S : Nat)
    (h : Pruned 0 t u n S) (E : Int)
    (he : (weight 0 t : Int)-weight 0 r=E) :
    (weight 0 u : Int)-weight 0 r=E-4*S+2*n := by
  have hp:=prune_price h
  omega

/-- Root contraction with one j in A and none in B. dA is the original
hole depth and dkeep the depth of the retained x occurrence in B.
The n,S equations encode the literal retained-copy choice. -/
theorem root_selective_price (b a u : Term) (cs : List Term)
    (hA : occ 1 a=1) (hB : occ 2 b=0)
    (hF : freeLeaves 0 a=occ 0 a+1)
    (hG : freeLeaves 1 b=occ 1 b)
    (n S dA dkeep : Nat) (hn : n+1=occ 0 b)
    (hS : S+dkeep=n*dA+occDepth 0 b)
    (hp : Pruned 0 (spine (contract b a) cs) u n S) :
    (weight 0 u : Int)-weight 0 (spine (.app (.lam b) a) cs) =
      ((occ 0 b : Int)-1)*((weight 0 a : Int)-4*dA)+
      ((occ 0 a : Int)-1)*occDepth 0 b+4*dkeep-6-occ 1 b := by
  have hb:=weighted_beta_at b a 0
  simp only [Nat.reduceAdd,hA,hB,hF,hG,
    Int.natCast_add,Int.natCast_one,Int.natCast_zero,Int.mul_zero,
    Int.add_zero,Int.sub_zero,Int.mul_one] at hb
  have hpr:=prune_price hp
  have hsi:=congrArg (fun x:Nat => (x:Int)) hS
  have hni:=congrArg (fun x:Nat => (x:Int)) hn
  simp only [Int.natCast_add,Int.natCast_mul,Int.natCast_one] at hsi hni
  simp only [spine_weight] at hpr ⊢
  simp only [Int.natCast_add,Int.mul_sub,Int.sub_mul,Int.add_mul,
    Int.mul_add,Int.one_mul] at hb ⊢
  have hprod : (n:Int)*dA=((occ 0 b:Int)-1)*dA := by rw [← hni]; simp
  rw [hprod] at hsi
  simp only [Int.sub_mul,Int.one_mul] at hsi
  rw [Int.mul_left_comm (occ 0 b : Int) 4 (dA : Int)]
  omega

theorem minimum_replay (r u : Term) (hm : MinimumReader r)
    (hu : ReaderLaws u) (hj : occ 1 u=1) :
    0 ≤ (weight 0 u : Int)-weight 0 r := by
  have h:=hm.minimal u hu hj
  omega

#print axioms lift_family_floor
#print axioms endpoint_price
#print axioms root_selective_price
#print axioms minimum_replay
end Blc.RootNL
