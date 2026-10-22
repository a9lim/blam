import Bridge
namespace Blc.Pending
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLambdaSink SelfintNestedLets SelfintControl RootLow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def capture (d : Nat) (a : Term) := freeLeaves 0 a + 3*occ (d+1) a

def before (b a c : Term) (cs : List Term) :=
  spine (.app (.app (.lam (.lam b)) a) c) cs

def exchange (b a c : Term) (cs : List Term) :=
  before (swap 0 b) c a cs

theorem exchange_join (b a c : Term) (cs : List Term) :
    BetaJoin (exchange b a c cs) (before b a c cs) := by
  have h1 := push_join (.lam b) a [c]
  have h2 := push_join (.lam (swap 0 b)) c [a]
  have h3 := order_join b a c
  change BetaJoin (newOrder b a c) (oldOrder b a c) at h3
  change BetaJoin (oldOrder b a c) (.app (.app (.lam (.lam b)) a) c) at h1
  change BetaJoin (newOrder b a c) (.app (.app (.lam (.lam (swap 0 b))) c) a) at h2
  exact join_spine (join_trans (join_symm h2) (join_trans h3 h1)) cs

theorem exchange_price (b a c : Term) (cs : List Term) (d : Nat) :
    weight d (exchange b a c cs) + occ 1 b =
      weight d (before b a c cs) + occ 0 b := by
  have h := swap_weight b 0 d
  simp only [exchange,before,spine_weight,weight,Nat.add_zero,Nat.zero_add] at h ⊢
  rw [show d+1+1=d+2 by omega]
  omega

theorem exchange_lambdas (b a c : Term) (cs : List Term) :
    lamCount (exchange b a c cs)=lamCount (before b a c cs) := by
  simp only [exchange,before,spine_lambdas,lamCount,swap_lambdas]; omega

theorem exchange_occ (b a c : Term) (cs : List Term) (j : Nat) :
    occ j (exchange b a c cs)=occ j (before b a c cs) := by
  simp only [exchange,before,spine_occ,occ,swap_occ_outer b 0 (j+1+1) (by omega)]
  omega

theorem exchange_depth (b a c : Term) (cs : List Term) (j : Nat) :
    occDepth j (exchange b a c cs)=occDepth j (before b a c cs) := by
  simp only [exchange,before,spine_depth,occDepth,occ,
    swap_occ_outer b 0 (j+1+1) (by omega),swap_depth_outer b 0 (j+1+1) (by omega)]
  omega

theorem exchange_scope (b a c : Term) (cs : List Term) (k : Nat)
    (hs : FreeUnder k (before b a c cs)) : FreeUnder k (exchange b a c cs) := by
  have hh := spine_scope _ cs k hs
  apply spine_scope_replace cs k hs
  exact ⟨⟨swap_scope b 0 (k+2) (by omega) hh.1.1,hh.2⟩,hh.1.2⟩

theorem exchange_laws {b a c : Term} {cs : List Term}
    (hr : ReaderLaws (before b a c cs)) : ReaderLaws (exchange b a c cs) :=
  laws_join hr (exchange_scope b a c cs 2 hr.scope) (exchange_join b a c cs)

/-- This hypothesis is full all-n minimum weight; no finite-probe surrogate. -/
theorem minimum_prefix_uses (b a c : Term) (cs : List Term)
    (hm : MinimumReader (before b a c cs)) : occ 1 b ≤ occ 0 b := by
  have hl:=exchange_laws hm.laws
  have hj : occ 1 (exchange b a c cs)=1 := (exchange_occ b a c cs 1).trans hm.oneHole
  have h:=hm.minimal _ hl hj
  have hp:=exchange_price b a c cs 0
  omega

def consume (b a c : Term) (cs : List Term) :=
  spine (.app (.lam (contract b (shift 1 0 c))) a) cs

def pushed (b a c : Term) := push (.lam b) a [c]

theorem consume_beta (b a c : Term) :
    Beta (pushed b a c) (.app (.lam (contract b (shift 1 0 c))) a) :=
  .appL a (.lam (.beta b (shift 1 0 c)))

theorem consume_join (b a c : Term) (cs : List Term) :
    BetaJoin (consume b a c cs) (before b a c cs) := by
  have h:=push_join (.lam b) a [c]
  change BetaJoin (pushed b a c) (.app (.app (.lam (.lam b)) a) c) at h
  have hb : BetaJoin (.app (.lam (contract b (shift 1 0 c))) a) (pushed b a c) :=
    ⟨_,.refl _,.head (consume_beta b a c) (.refl _)⟩
  exact join_spine (join_trans hb h) cs

theorem consume_scope (b a c : Term) (cs : List Term) (k : Nat)
    (hs : FreeUnder k (before b a c cs)) : FreeUnder k (consume b a c cs) := by
  apply spine_scope_replace cs k hs
  apply beta_freeUnder (consume_beta b a c) k
  exact push_scope (.lam b) a [c] k (spine_scope _ cs k hs)

theorem consume_laws {b a c : Term} {cs : List Term}
    (hr : ReaderLaws (before b a c cs)) : ReaderLaws (consume b a c cs) :=
  laws_join hr (consume_scope b a c cs 2 hr.scope) (consume_join b a c cs)

/-- Exact pending substitution price, with arbitrary trailing spine. -/
theorem consume_price (b a c : Term) (cs : List Term) (d : Nat) :
    (weight d (consume b a c cs) : Int)-weight d (before b a c cs) =
      ((occ 0 b : Int)-1)*weight d c + (occ 0 b : Int)*capture d c +
      ((capture d c : Int)-1)*occDepth 0 b - 2*occ 0 b-4-
      freeLeaves 1 b-3*occ (d+3) b := by
  have h:=weighted_beta_at b (shift 1 0 c) (d+1)
  have hp:=shifted_weight c d 0 (by omega)
  have hf:=freeLeaves_shift c 1 0 0 (by omega)
  have ho:=occ_shift_ge c (d+1) 0 (by omega)
  rw [hf,ho] at h
  rw [hp] at h
  simp only [consume,before,spine_weight,weight,Int.natCast_add] at h ⊢
  simp only [capture,Int.natCast_add,Int.natCast_mul,Int.mul_add,Int.sub_mul,
    Int.one_mul] at h ⊢
  simp only [show ((3:Nat):Int)=3 from rfl, show d+1+1=d+2 by omega] at h ⊢
  rw [show d+1+2=d+3 by omega] at h
  omega

theorem consume_lambdas (b a c : Term) (cs : List Term) :
    (lamCount (consume b a c cs) : Int)-lamCount (before b a c cs) =
      ((occ 0 b : Int)-1)*lamCount c-1 := by
  simp only [consume,before,spine_lambdas,lamCount,contract,lamCount_subst,
    lamCount_shift,Int.natCast_add,Int.natCast_mul,Int.sub_mul,Int.one_mul]
  omega

theorem consume_occ (b a c : Term) (cs : List Term) (j : Nat) :
    occ j (consume b a c cs) + occ j c =
      occ j (before b a c cs) + occ 0 b*occ j c := by
  simp only [consume,before,spine_occ,occ,contract,
    occ_substDec_ge b (shift 1 0 c) (j+1) 0 (by omega),
    occ_shift_ge c j 0 (by omega)]
  omega

theorem consume_one_hole (b a c : Term) (cs : List Term)
    (hj : occ 1 (before b a c cs)=1) (hsafe : occ 1 c=0 ∨ occ 0 b=1) :
    occ 1 (consume b a c cs)=1 := by
  have h:=consume_occ b a c cs 1
  rcases hsafe with hsafe|hsafe <;> simp only [hsafe,Nat.mul_zero,Nat.one_mul] at h <;> omega

/-- Exact third-coordinate price, including the unsafe multi-hole case. -/
theorem consume_depth (b a c : Term) (cs : List Term) (j : Nat) :
    occDepth j (consume b a c cs) + occDepth j c + occ (j+2) b =
      occDepth j (before b a c cs) + occ 0 b*occDepth j c +
      occ j c*(occDepth 0 b+occ 0 b) := by
  simp only [consume,before,spine_depth,occDepth,occ,contract,
    occDepth_subst_ge b (shift 1 0 c) (j+1) 0 (by omega),
    occ_substDec_ge b (shift 1 0 c) (j+1) 0 (by omega),
    occDepth_shift_ge c j 0 (by omega),occ_shift_ge c j 0 (by omega)]
  simp only [Nat.mul_add, Nat.mul_comm (occ 0 b) (occ j c),
    show j+1+1=j+2 by omega]
  omega

#print axioms exchange_join
#print axioms exchange_price
#print axioms minimum_prefix_uses
#print axioms consume_laws
#print axioms consume_price
#print axioms consume_one_hole
#print axioms consume_depth
end Blc.Pending
