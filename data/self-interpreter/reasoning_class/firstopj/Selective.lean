import FirstopJPrices
namespace Blc.FirstopJ
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open FirstopPrices
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

/-- Replace selected source j leaves by the nearest variable. The last
    indices count deletions and their total ABSOLUTE reader-lambda depth.
    This is syntax alone; reader-law preservation is a separate premise. -/
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

/-- Exact selective-restoration price at any depth-one source context.
    hAprice says the argument's unique j is locally at depth zero; hG and
    hF expose its scoped free counts. hn and hS retain one copy at depth d.
    All quantities here refer to the SOURCE, not a normalized reader. -/
theorem selective_context_price (C : Context) (D A U : Term)
    (hc : ctxDepth C=1) (hAprice : weight 1 A=wire A)
    (hA : occ 2 A=1) (hD : occ 3 D=0)
    (hF : freeLeaves 0 A=occ 0 A+occ 1 A+1)
    (hG : freeLeaves 1 D=occ 1 D+occ 2 D)
    (n S d : Nat) (hn : n+1=occ 0 D)
    (hS : S+d+1=occ 0 D+occDepth 0 D)
    (hp : Pruned 0 (C.fill (contract D A)) U n S) :
    (weight 0 U : Int)-weight 0 (C.fill (.app (.lam D) A)) =
      ((occ 0 D : Int)-1)*wire A +
      ((occ 0 A : Int)+occ 1 A-1)*occDepth 0 D +
      4*d-2-4*occ 0 D-occ 1 D-occ 2 D := by
  have h := weighted_beta_at D A 1
  simp only [Nat.reduceAdd,hA,hD,hF,hG,hAprice,
    Int.natCast_add,Int.natCast_one,Int.natCast_zero,Int.mul_zero,
    Int.add_zero,Int.sub_zero,Int.mul_one] at h
  have h1 := weighted_fill C (contract D A) 0
  have h2 := weighted_fill C (.app (.lam D) A) 0
  simp only [hc,Nat.zero_add] at h1 h2
  have h3 := prune_price hp
  have hni := congrArg (fun x:Nat => (x:Int)) hn
  have hSi := congrArg (fun x:Nat => (x:Int)) hS
  simp only [Int.natCast_add,Int.natCast_one] at hni hSi
  simp only [Int.add_mul,Int.sub_mul,Int.one_mul] at h ⊢
  omega

/-- The exact source price plus an independently supplied replay witness
    gives a necessary minimum inequality. This theorem does not assert the
    replay construction; the report supplies that handwritten argument. -/
theorem replay_price_nonnegative (R U : Term)
    (hm : MinimumReader R) (hl : ReaderLaws U) (hj : occ 1 U=1) :
    0 ≤ (weight 0 U : Int)-weight 0 R := by
  have h := hm.minimal _ hl hj
  omega

#print axioms prune_price
#print axioms prune_lambdas
#print axioms prune_holes
#print axioms selective_context_price
#print axioms replay_price_nonnegative
end Blc.FirstopJ
