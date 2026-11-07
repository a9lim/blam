import General
namespace Blc.Simplify
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost SelfintLocalCost SelfintControl
open SelfintFlatMinimum SelfintLambdaSink
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def binders : Nat → Term → Term
  | 0, b => b
  | n+1, b => .lam (binders n b)

theorem binders_weight (n : Nat) (b : Term) (d : Nat) :
    weight d (binders n b) = 2*n + weight (d+n) b := by
  induction n generalizing d with
  | zero => simp [binders]
  | succ n ih => simp only [binders,weight,ih]; rw [show d+1+n=d+(n+1) by omega]; omega

theorem binders_lambdas (n : Nat) (b : Term) :
    lamCount (binders n b) = n+lamCount b := by
  induction n with
  | zero => simp [binders]
  | succ n ih => simp only [binders,lamCount,ih]; omega

theorem binders_occ (n : Nat) (b : Term) (j : Nat) :
    occ j (binders n b) = occ (j+n) b := by
  induction n generalizing j with
  | zero => rfl
  | succ n ih => simp only [binders,occ,ih]; congr 1; omega

theorem binders_depth (n : Nat) (b : Term) (j : Nat) :
    occDepth j (binders n b) = occDepth (j+n) b+n*occ (j+n) b := by
  induction n generalizing j with
  | zero => simp [binders]
  | succ n ih =>
    simp only [binders,occDepth,ih,binders_occ]
    rw [show j+1+n=j+(n+1) by omega]
    simp only [Nat.add_mul,Nat.one_mul]
    omega

def factor (ps : List Term) (d : Term) (cs : List Term) : Term :=
  spine (spine (binders ps.length d) ps) cs

/-- Unrestricted root-body, helper and parameter-count price. All terms are source syntax. -/
theorem factor_price (b a d : Term) (ps cs : List Term) :
    (weight 0 (factor ps d cs) : Int)-weight 0 (spine (.app (.lam b) a) cs) =
      (weight ps.length d : Int)-weight 1 b + 2*ps.length +
        spineWeight 0 ps-weight 0 a-4 := by
  simp only [factor,spine_weight,binders_weight,weight,Nat.zero_add,Nat.reduceAdd,
    Int.natCast_add,Int.natCast_mul]
  omega

theorem factor_lambdas (d : Term) (ps cs : List Term) :
    lamCount (factor ps d cs) = ps.length + lamCount d + spineLambdas ps + spineLambdas cs := by
  simp only [factor,spine_lambdas,binders_lambdas]

theorem factor_occ (d : Term) (ps cs : List Term) (j : Nat) :
    occ j (factor ps d cs) = occ (j+ps.length) d + spineOcc j ps + spineOcc j cs := by
  simp only [factor,spine_occ,binders_occ]

theorem factor_depth (d : Term) (ps cs : List Term) (j : Nat) :
    occDepth j (factor ps d cs) = occDepth (j+ps.length) d +
      ps.length * occ (j+ps.length) d + spineDepth j ps + spineDepth j cs := by
  simp only [factor,spine_depth,binders_depth]

theorem factor_minimum_charge {b a d : Term} {ps cs : List Term}
    (hm : MinimumReader (spine (.app (.lam b) a) cs))
    (hj : BetaJoin (spine (.app (.lam b) a) cs) (factor ps d cs))
    (hs : FreeUnder 2 (factor ps d cs)) (ho : occ 1 (factor ps d cs)=1) :
    0 ≤ (weight ps.length d : Int)-weight 1 b + 2*ps.length +
        spineWeight 0 ps-weight 0 a-4 := by
  have hl := laws_join hm.laws hs (join_symm hj)
  have hn := hm.minimal _ hl ho
  have hp := factor_price b a d ps cs
  omega

/-- Payload m is allowed to depend on the helper's own binder. -/
def dependent (m : Term) : Term := .lam (.app (.var 0) m)
def depwrap (p : Term) : Term := .lam (.app (.var 0) (.app (shift 1 0 p) (.var 0)))

theorem dependent_reconstruct (m : Term) : Betas (depwrap (.lam m)) (dependent m) := by
  have he : contract (shift 1 1 m) (.var 0)=m := substDec_var_shift m 0
  have hb := Beta.lam (Beta.appR (.var 0) (Beta.beta (shift 1 1 m) (.var 0)))
  rw [he] at hb
  exact .head hb (.refl _)

theorem dependent_price (m : Term) : weight 0 (dependent m) = weight 0 (.lam m)+4 := by
  simp [dependent,weight]; omega

theorem dependent_occ (m : Term) (j : Nat) : occ j (dependent m)=occ j (.lam m) := by
  simp [dependent,occ,show 0≠j+1 by omega]

theorem dependent_depth (m : Term) (j : Nat) : occDepth j (dependent m)=occDepth j (.lam m) := by
  simp [dependent,occDepth,occ,show 0≠j+1 by omega]

theorem dependent_root_price (b d m : Term) (cs : List Term) :
    (weight 0 (spine (.app (.lam d) (.lam m)) cs) : Int)-
      weight 0 (spine (.app (.lam b) (dependent m)) cs) =
      (weight 1 d : Int)-weight 1 b-4 := by
  have hp := general_root_price b (dependent m) d (.lam m) cs
  rw [dependent_price] at hp
  simp only [Int.natCast_add] at hp
  omega

#print axioms factor_price
#print axioms factor_occ
#print axioms factor_depth
#print axioms factor_minimum_charge
#print axioms dependent_reconstruct
#print axioms dependent_root_price
end Blc.Simplify
