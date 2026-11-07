import Prices
namespace Blc.Pending
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintSourceFront SelfintNeededHead SelfintDispatchAudit SelfintRootFlat
open SelfintLambdaSink SelfintNestedLets SelfintControl RootLow
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- Exchange works inside arbitrary contexts, including later binder pairs. -/
theorem exchange_context_laws (ctx : Context) (b a c : Term) (cs : List Term)
    (hr : ReaderLaws (ctx.fill (before b a c cs))) :
    ReaderLaws (ctx.fill (exchange b a c cs)) := by
  apply laws_join hr
  · exact context_scope_replace ctx _ _ 2 hr.scope
      (exchange_scope b a c cs (2+ctxDepth ctx) (context_scope ctx _ 2 hr.scope))
  · exact join_context ctx (exchange_join b a c cs)

theorem minimum_context_prefix_uses (ctx : Context) (b a c : Term) (cs : List Term)
    (hm : MinimumReader (ctx.fill (before b a c cs))) : occ 1 b ≤ occ 0 b := by
  have hl:=exchange_context_laws ctx b a c cs hm.laws
  have hj : occ 1 (ctx.fill (exchange b a c cs))=1 := by
    simpa only [occ_fill,exchange_occ] using hm.oneHole
  have h:=hm.minimal _ hl hj
  have hp:=exchange_price b a c cs (ctxDepth ctx)
  simp only [weighted_fill,Nat.zero_add] at h
  omega

def pushedSpine (b a : Term) (bs cs : List Term) := spine (push b a bs) cs
def pulledSpine (b a : Term) (bs cs : List Term) :=
  spine (spine (.app (.lam b) a) bs) cs

theorem pull_scope (b a : Term) (bs : List Term) (k : Nat) (hk : 0<k)
    (hs : FreeUnder k (push b a bs)) :
    FreeUnder k (spine (.app (.lam b) a) bs) := by
  have hh := spine_scope b (bs.map (shift 1 0)) (k+1) hs.1
  apply spine_scope_of
  · exact ⟨hh,hs.2⟩
  · intro v hv
    have hv' := spine_arguments_scope b (bs.map (shift 1 0)) (k+1) hs.1
      (shift 1 0 v) (List.mem_map.mpr ⟨v,hv,rfl⟩)
    have hh' := beta_freeUnder (Beta.beta (shift 1 0 v) (.var 0)) k ⟨hv',hk⟩
    simpa only [contract,substDec_shift] using hh'

theorem pull_laws (b a : Term) (bs cs : List Term)
    (hr : ReaderLaws (pushedSpine b a bs cs)) :
    ReaderLaws (pulledSpine b a bs cs) := by
  apply laws_join hr
  · exact spine_scope_replace cs 2 hr.scope
      (pull_scope b a bs 2 (by omega) (spine_scope _ cs 2 hr.scope))
  · exact join_spine (join_symm (push_join b a bs)) cs

theorem pull_holes (b a : Term) (bs cs : List Term) (j : Nat) :
    occ j (pushedSpine b a bs cs)=occ j (pulledSpine b a bs cs) := by
  simp only [pushedSpine,pulledSpine,spine_occ,push_occ]

theorem pull_lambdas (b a : Term) (bs cs : List Term) :
    lamCount (pushedSpine b a bs cs)=lamCount (pulledSpine b a bs cs) := by
  have h : spineLambdas (bs.map (shift 1 0))=spineLambdas bs := by
    induction bs with
    | nil => rfl
    | cons b bs ih => simp [spineLambdas,lamCount_shift,ih]
  simp only [pushedSpine,pulledSpine,push,spine_lambdas,lamCount,h]
  omega

theorem shifted_spine_depth (bs : List Term) (j : Nat) :
    spineDepth (j+1) (bs.map (shift 1 0))=spineDepth j bs := by
  induction bs with
  | nil => rfl
  | cons b bs ih => simp only [List.map_cons,spineDepth,
      occDepth_shift_ge b j 0 (by omega),ih]

theorem pull_depth (b a : Term) (bs cs : List Term) (j : Nat) :
    occDepth j (pushedSpine b a bs cs)=
      occDepth j (pulledSpine b a bs cs)+spineOcc j bs := by
  simp only [pushedSpine,pulledSpine,push,spine_depth,occDepth,spine_occ,
    shifted_spine_depth,shifted_spine_occ]
  omega

/-- An independent suffix in a minimum can carry no outer capture.
The result includes arbitrary old pending operands and arbitrary internal redexes. -/
theorem minimum_pull_capture (b a : Term) (bs cs : List Term)
    (hm : MinimumReader (pushedSpine b a bs cs)) :
    spineFree 0 bs + 3*spineOcc 1 bs=0 := by
  have hl:=pull_laws b a bs cs hm.laws
  have hj : occ 1 (pulledSpine b a bs cs)=1 := by
    rw [←pull_holes]; exact hm.oneHole
  have h:=hm.minimal _ hl hj
  have hp:=RootLow.pull_price b a bs cs 0
  change weight 0 (pushedSpine b a bs cs)=weight 0 (pulledSpine b a bs cs)+spineFree 0 bs+3*spineOcc 1 bs at hp
  omega

/-- Fully explicit one-hole price filter for literal pending consumption. -/
theorem minimum_consume_charge (b a c : Term) (cs : List Term)
    (hm : MinimumReader (before b a c cs)) (hsafe : occ 1 c=0 ∨ occ 0 b=1) :
    0 ≤ ((occ 0 b : Int)-1)*weight 0 c + (occ 0 b : Int)*capture 0 c +
      ((capture 0 c : Int)-1)*occDepth 0 b - 2*occ 0 b-4-
      freeLeaves 1 b-3*occ 3 b := by
  have hp:=consume_price b a c cs 0
  simp only [Nat.zero_add] at hp
  have h:=hm.minimal _ (consume_laws hm.laws) (consume_one_hole b a c cs hm.oneHole hsafe)
  omega

/-- When the operand is c, the lambda tie-break makes the bound strict. -/
theorem minimum_consume_c (b a : Term) (cs : List Term)
    (hm : LexMinimumReader (before b a (.var 0) cs)) :
    7 + freeLeaves 1 b + 3*occ 3 b ≤ occ 0 b := by
  have hl:=consume_laws hm.laws
  have hj:=consume_one_hole b a (.var 0) cs hm.oneHole (Or.inl (by decide))
  have hw:=hm.minimal _ hl hj
  have hp:=consume_price b a (.var 0) cs 0
  have hL:=consume_lambdas b a (.var 0) cs
  simp only [capture,weight,freeLeaves,occ,lamCount] at hp hL
  simp at hp hL
  simp only [Int.sub_mul, Int.one_mul] at hp
  have hstrict : weight 0 (before b a (.var 0) cs)<weight 0 (consume b a (.var 0) cs) := by
    by_cases he : weight 0 (before b a (.var 0) cs)=weight 0 (consume b a (.var 0) cs)
    · have hc:=hm.lambdas _ hl hj he; omega
    · omega
  omega

/-- Combined lexicographic filter. The three prices may be filled by the
exact equations in Prices.lean; the semantic premises never mention probes. -/
theorem consume_lex_exclusion (b a c : Term) (cs : List Term)
    (hm : Minimum3 (before b a c cs)) (hsafe : occ 1 c=0 ∨ occ 0 b=1)
    (dw dl dd : Int)
    (hw : (weight 0 (consume b a c cs):Int)-weight 0 (before b a c cs)=dw)
    (hL : (lamCount (consume b a c cs):Int)-lamCount (before b a c cs)=dl)
    (hd : (occDepth 1 (consume b a c cs):Int)-occDepth 1 (before b a c cs)=dd)
    (hdesc : dw<0 ∨ dw=0 ∧ (dl<0 ∨ dl=0 ∧ dd<0)) : False := by
  have hl:=consume_laws hm.laws
  have hj:=consume_one_hole b a c cs hm.oneHole hsafe
  have hmin:=hm.minimal _ hl hj
  rcases hdesc with h|⟨h,h'|⟨h',h''⟩⟩
  · omega
  · have he : weight 0 (before b a c cs)=weight 0 (consume b a c cs) := by omega
    have hmL:=hm.lambdas _ hl hj he
    omega
  · have he : weight 0 (before b a c cs)=weight 0 (consume b a c cs) := by omega
    have heL : lamCount (before b a c cs)=lamCount (consume b a c cs) := by omega
    have hmd:=hm.depths _ hl hj he heL
    omega

#print axioms consume_lex_exclusion
#print axioms minimum_context_prefix_uses
#print axioms pull_laws
#print axioms pull_depth
#print axioms minimum_pull_capture
#print axioms minimum_consume_charge
#print axioms minimum_consume_c
end Blc.Pending
