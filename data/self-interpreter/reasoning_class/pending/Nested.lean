import Boundary
namespace Blc.Pending
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLambdaSink SelfintNestedLets SelfintControl RootLow
open SelfintSourceFront SelfintNeededHead SelfintDispatchAudit SelfintRootFlat
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def nested (b a e : Term) (ps cs : List Term) := spine (pendingOld b a e ps) cs
def flatBody (b : Term) (ps : List Term) := spine b (ps.map (shift 1 0))
def flatXY (b a e : Term) (ps cs : List Term) := before (flatBody b ps) a e cs
def flatYX (b a e : Term) (ps cs : List Term) := exchange (flatBody b ps) a e cs

theorem nested_display_join (b a e : Term) (ps : List Term) :
    BetaJoin (oldOrder (flatBody b ps) a e) (pendingOld b a e ps) := by
  exact join_context (.appL (.lam .hole) a) (push_join b (shift 1 0 e) ps)

theorem flat_join (b a e : Term) (ps cs : List Term) :
    BetaJoin (flatXY b a e ps cs) (nested b a e ps cs) := by
  have hp:=push_join (.lam (flatBody b ps)) a [e]
  change BetaJoin (oldOrder (flatBody b ps) a e)
    (.app (.app (.lam (.lam (flatBody b ps))) a) e) at hp
  exact join_spine (join_trans (join_symm hp) (nested_display_join b a e ps)) cs

theorem flat_yx_join (b a e : Term) (ps cs : List Term) :
    BetaJoin (flatYX b a e ps cs) (nested b a e ps cs) :=
  join_trans (exchange_join (flatBody b ps) a e cs) (flat_join b a e ps cs)

theorem flat_price (b a e : Term) (ps cs : List Term) (d : Nat) :
    weight d (flatXY b a e ps cs)+capture d e =
      weight d (nested b a e ps cs)+spineFree 0 ps+3*spineOcc (d+2) ps := by
  have hp:=push_price b (shift 1 0 e) ps (d+1)
  have he:=push_price (.lam (flatBody b ps)) a [e] d
  simp only [flatXY,before,nested,flatBody,pendingOld,push,
    capture,spineFree,spineOcc,List.map_cons,List.map_nil,spine,
    spine_weight,weight,Nat.add_zero,show d+1+1=d+2 by omega] at hp he ⊢
  omega

theorem flat_yx_price (b a e : Term) (ps cs : List Term) (d : Nat) :
    weight d (flatYX b a e ps cs)+occ 1 b+capture d e =
      weight d (nested b a e ps cs)+occ 0 b+spineFree 1 ps+3*spineOcc (d+2) ps := by
  have h:=flat_price b a e ps cs d
  have hx:=exchange_price (flatBody b ps) a e cs d
  have hs:=spineFree_split ps 0
  simp only [flatBody,spine_occ,shifted_spine_occ,shifted_spine_zero,Nat.add_zero,Nat.zero_add] at hx hs
  change weight d (flatYX b a e ps cs)+_=weight d (flatXY b a e ps cs)+_ at hx
  omega

theorem flat_occ (b a e : Term) (ps cs : List Term) (j : Nat) :
    occ j (flatXY b a e ps cs)=occ j (nested b a e ps cs) := by
  simp only [flatXY,before,nested,pendingOld,flatBody,spine_occ,occ,
    shifted_spine_occ,occ_shift_ge e j 0 (by omega)]
  omega

theorem flat_depth (b a e : Term) (ps cs : List Term) (j : Nat) :
    occDepth j (flatXY b a e ps cs)+occ j e =
      occDepth j (nested b a e ps cs)+spineOcc (j+1) ps := by
  simp only [flatXY,before,nested,pendingOld,flatBody,spine_depth,occDepth,
    spine_occ,occ,shifted_spine_occ,shifted_spine_depth,
    occ_shift_ge e j 0 (by omega),occDepth_shift_ge e j 0 (by omega)]
  omega

theorem flat_lambdas (b a e : Term) (ps cs : List Term) :
    lamCount (flatXY b a e ps cs)=lamCount (nested b a e ps cs) := by
  have hs : spineLambdas (ps.map (shift 1 0))=spineLambdas ps := by
    induction ps with
    | nil => rfl
    | cons p ps ih => simp [spineLambdas,lamCount_shift,ih]
  simp only [flatXY,before,nested,pendingOld,flatBody,spine_lambdas,lamCount,
    lamCount_shift,hs]
  omega

theorem flat_scope (b a e : Term) (ps cs : List Term) (k : Nat) (hk : 0<k)
    (hs : FreeUnder k (nested b a e ps cs)) : FreeUnder k (flatXY b a e ps cs) := by
  have hr:=spine_scope (pendingOld b a e ps) cs k hs
  have hpush:=push_scope b (shift 1 0 e) ps (k+1) hr.1
  have he : FreeUnder k (oldOrder (flatBody b ps) a e) := ⟨hpush,hr.2⟩
  have hp:=pull_scope (.lam (flatBody b ps)) a [e] k hk he
  exact spine_scope_replace cs k hs hp

theorem flat_laws (b a e : Term) (ps cs : List Term)
    (hr : ReaderLaws (nested b a e ps cs)) : ReaderLaws (flatXY b a e ps cs) :=
  laws_join hr (flat_scope b a e ps cs 2 (by omega) hr.scope) (flat_join b a e ps cs)

/-- The prior literal-prefix closure, explicitly a premise rather than
an axiom or an unproved Lean enumeration assertion. -/
def LiteralPrefixFloor : Prop := ∀ b a e cs, Minimum3 (before b a e cs) →
  46 ≤ weight 0 (before b a e cs)

theorem independent_nested_floor (hf : LiteralPrefixFloor)
    (b a e : Term) (ps cs : List Term) (hm : Minimum3 (nested b a e ps cs))
    (hprice : spineFree 0 ps+3*spineOcc 2 ps<capture 0 e ∨
      spineFree 0 ps+3*spineOcc 2 ps=capture 0 e ∧ spineOcc 2 ps≤occ 1 e) :
    46≤weight 0 (nested b a e ps cs) := by
  have hp:=flat_price b a e ps cs 0
  have hd:=flat_depth b a e ps cs 1
  have hL:=flat_lambdas b a e ps cs
  simp only [Nat.zero_add,Nat.reduceAdd] at hp hd
  have ho : OrderLE (flatXY b a e ps cs) (nested b a e ps cs) := by
    rcases hprice with h|⟨h,hd'⟩
    · left;omega
    · right;exact ⟨by omega,Or.inr ⟨hL,by omega⟩⟩
  obtain ⟨hmin,hw,_,_⟩:=transport hm (flat_laws b a e ps cs hm.laws)
    ((flat_occ b a e ps cs 1).trans hm.oneHole) ho
  have h:=hf (flatBody b ps) a e cs hmin
  change 46≤weight 0 (flatXY b a e ps cs) at h
  omega

theorem independent_nested_exchange_floor (hf : LiteralPrefixFloor)
    (b a e : Term) (ps cs : List Term) (hm : Minimum3 (nested b a e ps cs))
    (hprice : occ 0 b+spineFree 1 ps+3*spineOcc 2 ps<occ 1 b+capture 0 e ∨
      occ 0 b+spineFree 1 ps+3*spineOcc 2 ps=occ 1 b+capture 0 e ∧
      spineOcc 2 ps≤occ 1 e) : 46≤weight 0 (nested b a e ps cs) := by
  have hp:=flat_yx_price b a e ps cs 0
  have hd:=flat_depth b a e ps cs 1
  have hL:=flat_lambdas b a e ps cs
  have hdx:=exchange_depth (flatBody b ps) a e cs 1
  have hLx:=exchange_lambdas (flatBody b ps) a e cs
  simp only [Nat.zero_add,Nat.reduceAdd] at hp hd
  change occDepth 1 (flatYX b a e ps cs)=occDepth 1 (flatXY b a e ps cs) at hdx
  change lamCount (flatYX b a e ps cs)=lamCount (flatXY b a e ps cs) at hLx
  have ho : OrderLE (flatYX b a e ps cs) (nested b a e ps cs) := by
    rcases hprice with h|⟨h,hd'⟩
    · left;omega
    · right;exact ⟨by omega,Or.inr ⟨hLx.trans hL,by omega⟩⟩
  have hl:=exchange_laws (flat_laws b a e ps cs hm.laws)
  have hj : occ 1 (flatYX b a e ps cs)=1 :=
    (exchange_occ (flatBody b ps) a e cs 1).trans ((flat_occ b a e ps cs 1).trans hm.oneHole)
  obtain ⟨hmin,hw,_,_⟩:=transport hm hl hj ho
  have h:=hf (swap 0 (flatBody b ps)) e a cs hmin
  change 46≤weight 0 (flatYX b a e ps cs) at h
  change weight 0 (flatYX b a e ps cs)=weight 0 (nested b a e ps cs) at hw
  omega

theorem independent_adjacent_floor (hf : LiteralPrefixFloor) (b a e : Term)
    (cs : List Term) (hm : Minimum3 (nested b a e [] cs)) :
    46≤weight 0 (nested b a e [] cs) := by
  apply independent_nested_floor hf b a e [] cs hm
  simp only [spineFree,spineOcc,Nat.mul_zero,Nat.add_zero]
  omega

#print axioms flat_price
#print axioms flat_yx_price
#print axioms flat_laws
#print axioms flat_depth
#print axioms independent_nested_floor
#print axioms independent_nested_exchange_floor
#print axioms independent_adjacent_floor
end Blc.Pending
