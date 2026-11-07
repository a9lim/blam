import Nested
namespace Blc.Pending
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLambdaSink SelfintNestedLets SelfintControl RootLow
open SelfintSourceFront SelfintNeededHead SelfintDispatchAudit SelfintRootFlat
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- Every use of the shared variable receives the same root-scoped first
argument. The template may otherwise have arbitrary lambdas and redexes. -/
def uniform (b p : Term) := contract (shift 1 1 b) (.app (.var 0) (shift 1 0 p))
def uniformOld (b a p : Term) (cs : List Term) := spine (.app (.lam (uniform b p)) a) cs
def uniformNew (b a p : Term) (cs : List Term) := spine (.app (.lam b) (.app a p)) cs

theorem uniform_contract (b a p : Term) : contract (uniform b p) a=contract b (.app a p) := by
  simp only [uniform,contract]
  rw [substDec_substDec _ _ _ 0 0 (by omega),substDec_shift]
  simp only [substDec,if_true,substDec_shift]

theorem uniform_join (b a p : Term) (cs : List Term) :
    BetaJoin (uniformNew b a p cs) (uniformOld b a p cs) := by
  apply join_spine
  refine ⟨contract b (.app a p),.head (.beta _ _) (.refl _),?_⟩
  rw [←uniform_contract b a p]
  exact .head (.beta _ _) (.refl _)

theorem depth_shift_lt (t : Term) (v c : Nat) (h : v<c) :
    occDepth v (shift 1 c t)=occDepth v t := by
  induction t generalizing v c with
  | var n => simp only [shift]; split <;> simp [occDepth]
  | lam b ih =>
    simp only [shift,occDepth,occ_shift_lt b (v+1) (c+1) (by omega),ih (v+1) (c+1) (by omega)]
  | app f a ihf iha => simp only [shift,occDepth,ihf v c h,iha v c h]

theorem uniform_price (b a p : Term) (cs : List Term) (d : Nat) :
    (weight d (uniformOld b a p cs):Int)-weight d (uniformNew b a p cs) =
      ((occ 0 b:Int)-1)*(weight d p+2)+(capture d p:Int)*(occ 0 b+occDepth 0 b) := by
  have h:=weighted_beta_at (shift 1 1 b) (.app (.var 0) (shift 1 0 p)) (d+1)
  have hb:=shifted_weight b (d+1) 1 (by omega)
  have hp:=shifted_weight p d 0 (by omega)
  have ho:=occ_shift_lt b 0 1 (by omega)
  have hq:=depth_shift_lt b 0 1 (by omega)
  simp only [weight,freeLeaves,occ,show 0≠d+1+1 by omega,↓reduceIte,
    freeLeaves_shift p 1 0 0 (by omega),freeLeaves_shift b 1 1 1 (by omega),
    occ_shift_ge p (d+1) 0 (by omega),occ_shift_ge b (d+2) 1 (by omega),ho,hq,hb,hp,
    show d+1+1=d+2 by omega,show d+1+2=d+3 by omega] at h
  simp only [uniformOld,uniformNew,uniform,spine_weight,weight,Int.natCast_add,
    capture,Int.natCast_mul,Int.mul_add,Int.add_mul,Int.sub_mul,Int.one_mul] at h ⊢
  simp only [Nat.le_refl,if_true] at h ⊢
  simp only [show ((0:Nat):Int)=0 from rfl,show ((1:Nat):Int)=1 from rfl,
    show ((2:Nat):Int)=2 from rfl,show ((3:Nat):Int)=3 from rfl,
    Int.zero_mul,Int.one_mul,Int.mul_comm,Int.mul_left_comm,Int.mul_assoc] at h ⊢
  omega
theorem uniform_occ (b a p : Term) (cs : List Term) (j : Nat) :
    occ j (uniformOld b a p cs)+occ j p=
      occ j (uniformNew b a p cs)+occ 0 b*occ j p := by
  simp only [uniformOld,uniformNew,uniform,spine_occ,occ,contract,
    occ_substDec_ge (shift 1 1 b) _ (j+1) 0 (by omega),
    occ_shift_ge b (j+1) 1 (by omega),occ_shift_ge p j 0 (by omega),
    occ_shift_lt b 0 1 (by omega),show 0≠j+1 by omega,↓reduceIte,Nat.zero_add]
  omega

theorem uniform_lambdas (b a p : Term) (cs : List Term) :
    lamCount (uniformOld b a p cs)+lamCount p=
      lamCount (uniformNew b a p cs)+occ 0 b*lamCount p := by
  simp only [uniformOld,uniformNew,uniform,spine_lambdas,lamCount,contract,
    lamCount_subst,lamCount_shift,Nat.zero_add,occ_shift_lt b 0 1 (by omega)]
  omega

theorem uniform_laws (b a p : Term) (cs : List Term)
    (hb : FreeUnder 3 b) (hp : FreeUnder 2 p)
    (hr : ReaderLaws (uniformOld b a p cs)) : ReaderLaws (uniformNew b a p cs) := by
  apply laws_join hr _ (uniform_join b a p cs)
  have hs:=spine_scope _ cs 2 hr.scope
  exact spine_scope_replace cs 2 hr.scope ⟨hb,hs.2,hp⟩

theorem uniform_no_minimum (b a p : Term) (cs : List Term)
    (hb : FreeUnder 3 b) (hp : FreeUnder 2 p) (hk : 2≤occ 0 b) :
    ¬ MinimumReader (uniformOld b a p cs) := by
  intro hm
  have ho:=uniform_occ b a p cs 1
  have hplain : occ 1 p≤occ 1 (uniformNew b a p cs) := by
    simp only [uniformNew,spine_occ,occ];omega
  have hpj : occ 1 p=0 := by
    have hmul:=Nat.mul_le_mul_right (occ 1 p) hk
    rw [hm.oneHole] at ho
    omega
  have hj : occ 1 (uniformNew b a p cs)=1 := by
    rw [hpj,Nat.mul_zero,hm.oneHole] at ho;omega
  have hn:=hm.minimal _ (uniform_laws b a p cs hb hp hm.laws) hj
  have hw:=uniform_price b a p cs 0
  have hk' : 1≤(occ 0 b:Int)-1 := by omega
  have hsave:=Int.mul_le_mul_of_nonneg_right hk' (show (0:Int)≤weight 0 p+2 by omega)
  have hextra : (0:Int)≤(capture 0 p:Int)*(occ 0 b+occDepth 0 b) :=
    Int.mul_nonneg (by omega) (by omega)
  simp only [Int.one_mul] at hsave
  omega

#print axioms uniform_join
#print axioms uniform_price
#print axioms uniform_occ
#print axioms uniform_laws
#print axioms uniform_no_minimum
end Blc.Pending
