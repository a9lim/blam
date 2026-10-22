import Factor
namespace Blc.Simplify
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintWidenHoist SelfintSourceCost SelfintLocalCost SelfintControl
open SelfintFlatMinimum SelfintLambdaSink
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

def wrap2 (m n : Term) : Term :=
  .lam (.app (.app (.var 0) (shift 1 0 m)) (shift 1 0 n))

def body2 : Term := .app (.app (.app (.var 1) (.var 1)) (.var 0)) (.var 0)
def out2 (m n : Term) : Term := .app (.app (.app m m) n) n

def source2 (m n : Term) (cs : List Term) : Term :=
  spine (.app (.lam (.app (.var 0) (.var 0))) (wrap2 m n)) cs

def residual2 (m n : Term) (cs : List Term) : Term :=
  spine (.app (.app (.lam (.lam body2)) m) n) cs

theorem wrap2_apply (m n a : Term) :
    Beta (.app (wrap2 m n) a) (.app (.app a m) n) := by
  simpa [wrap2,contract,substDec,substDec_shift] using
    Beta.beta (.app (.app (.var 0) (shift 1 0 m)) (shift 1 0 n)) a

theorem residual2_reduce (m n : Term) :
    Betas (.app (.app (.lam (.lam body2)) m) n) (out2 m n) := by
  apply Betas.head (Beta.appL n (Beta.beta (.lam body2) m))
  have h := Beta.beta (substDec 1 (shift 1 0 m) body2) n
  simpa [body2,out2,contract,substDec,shift,substDec_shift] using
    Betas.head h (Betas.refl _)

theorem source2_reduce (m n : Term) :
    Betas (.app (.lam (.app (.var 0) (.var 0))) (wrap2 m n)) (out2 m n) :=
  .head (.beta _ _) (.head (wrap2_apply m n (wrap2 m n))
    (.head (Beta.appL n (wrap2_apply m n m)) (.refl _)))

theorem source2_join (m n : Term) (cs : List Term) :
    BetaJoin (source2 m n cs) (residual2 m n cs) := by
  apply join_spine
  exact ⟨out2 m n,source2_reduce m n,residual2_reduce m n⟩

theorem wrap2_price (m n : Term) :
    weight 0 (wrap2 m n)=weight 0 m+weight 0 n+8+capture m+capture n := by
  have hm := shifted_weight m 0 0 (by omega)
  have hn := shifted_weight n 0 0 (by omega)
  simp only [wrap2,weight,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte,capture] at *
  omega

theorem source2_price (m n : Term) (cs : List Term) :
    weight 0 (residual2 m n cs)+capture m+capture n = weight 0 (source2 m n cs)+6 := by
  have ha := wrap2_price m n
  simp only [source2,residual2,spine_weight,weight,body2,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte] at *
  omega

theorem source2_holes (m n : Term) (cs : List Term) (j : Nat) :
    occ j (residual2 m n cs)=occ j (source2 m n cs) := by
  have hc : occ j (.lam (.lam body2))=0 :=
    occ_of_freeUnder _ 0 j (by decide) (by omega)
  have hc1 : occ j (.lam (.app (.var 0) (.var 0)))=0 :=
    occ_of_freeUnder _ 0 j (by decide) (by omega)
  simp only [source2,residual2,spine_occ,occ] at hc hc1 ⊢
  simp only [hc,hc1,wrap2,occ,occ_shift_ge m j 0 (by omega),occ_shift_ge n j 0 (by omega),
    show 0≠j+1 by omega,↓reduceIte,Nat.zero_add,Nat.add_assoc]

theorem source2_lambdas (m n : Term) (cs : List Term) :
    lamCount (residual2 m n cs)=lamCount (source2 m n cs) := by
  simp [source2,residual2,wrap2,body2,spine_lambdas,lamCount,lamCount_shift,Nat.add_assoc]
  omega

theorem residual2_scope (m n : Term) (cs : List Term)
    (hs : FreeUnder 2 (source2 m n cs)) : FreeUnder 2 (residual2 m n cs) := by
  have h := spine_scope _ cs 2 hs
  have hh := beta_freeUnder (wrap2_apply m n (.var 0)) 2 ⟨h.2,by decide⟩
  exact spine_scope_replace cs 2 hs ⟨⟨by decide,hh.1.2⟩,hh.2⟩

theorem source2_laws {m n : Term} {cs : List Term} (hr : ReaderLaws (source2 m n cs)) :
    ReaderLaws (residual2 m n cs) :=
  laws_join hr (residual2_scope m n cs hr.scope) (join_symm (source2_join m n cs))

theorem source2_minimum_charge {m n : Term} {cs : List Term}
    (hm : MinimumReader (source2 m n cs)) : capture m+capture n ≤6 := by
  have hn := hm.minimal _ (source2_laws hm.laws) ((source2_holes m n cs 1).trans hm.oneHole)
  have hp := source2_price m n cs
  omega

#print axioms source2_join
#print axioms source2_price
#print axioms source2_holes
#print axioms source2_lambdas
#print axioms source2_laws
#print axioms source2_minimum_charge
end Blc.Simplify
