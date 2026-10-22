import Blc.SelfintNestedLets
namespace Blc.FirstopPrices
open Term SelfintClass SelfintClassNext SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintNeededHead SelfintNestedLets SelfintLambdaSink
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

/-- A hole-free first operand H, arbitrary tails, one j in the tails. -/
def reader (H : Term) (ts : List Term) : Term :=
  .lam (spine (.app (.var 0) H) ts)

theorem reader_price (H : Term) (ts : List Term) (hH : occ 2 H=0) :
    weight 0 (reader H ts) = 6 + wire H + spineWeight 1 ts := by
  simp only [reader,weight,spine_weight,Nat.reduceAdd,Nat.reduceEqDiff,↓reduceIte]
  rw [weight_no_hole H 1 hH]
  omega

/-- The linear-inventory source filter, valid in any source context. -/
theorem linear_filter (C : Context) (D A : Term)
    (hm : LexMinimumReader (C.fill (.app (.lam D) A)))
    (hx : occ 0 D=1) (ha : occ (ctxDepth C+1) A=0)
    (hd : occ (ctxDepth C+2) D=0) :
    7 + (freeLeaves 1 D : Int) ≤ ((freeLeaves 0 A : Int)-1)*occDepth 0 D := by
  have h := minimum_linear_source_charge C D A hm hx
  simp only [ha,hd,Int.natCast_zero,Int.mul_zero,Int.add_zero] at h
  exact h

/-- Unreduced cell reification INCREASES source size by18 plus captures. -/
def reify (Q : Term) : Term := .lam (.lam
  (.app (.app (.app (.app (shift 2 0 Q) (.var 1)) (.var 0)) (.var 1)) (.var 0)))

theorem reify_price (Q : Term) :
    wire (reify Q) = wire (.app (.var 0) Q) +18+2*freeLeaves 0 Q := by
  simp only [reify,wire_lam,wire_app,wire_var,wire_shift]
  omega

/-- Let sinking makes a literal handler without copying its definition. -/
theorem firstop_sink_price (B A : Term) (ts : List Term) :
    weight 0 (reader (inner B A) ts) + occ 1 B =
      weight 0 (reader (outer B A) ts) +
        occ 0 B + freeLeaves 0 A + 3*occ 2 A := by
  have h := sink_price B A 1
  simp only [reader,weight,spine_weight,Nat.reduceAdd] at h ⊢
  omega

theorem wire_context_delta (C : Context) (t u : Term) :
    (wire (C.fill t) : Int)-wire (C.fill u)=(wire t : Int)-wire u := by
  induction C with
  | hole => rfl
  | lam C ih => simp only [Context.fill,wire_lam,Int.natCast_add]; omega
  | appL C a ih => simp only [Context.fill,wire_app,Int.natCast_add]; omega
  | appR f C ih => simp only [Context.fill,wire_app,Int.natCast_add]; omega

/-- Depth-one contextual analogue of contract_hoist_price. The source
    contains exactly one hole, inside A and at total source depth one. -/
theorem contextual_contract_hoist (C : Context) (D A : Term)
    (hc : ctxDepth C=1)
    (hs : FreeUnder 2 (C.fill (.app (.lam D) A)))
    (hj : occ 1 (C.fill (.app (.lam D) A))=1)
    (hdepth : occDepth 1 (C.fill (.app (.lam D) A))=1)
    (ha : occ 2 A=1) :
    (weight 0 (hoist (C.fill (contract D A))) : Int) -
      weight 0 (C.fill (.app (.lam D) A)) =
      ((occ 0 D : Int)-1)*wire A +
      ((occ 0 A : Int)+occ 1 A)*occDepth 0 D -
      3*occ 0 D-occ 1 D+ctxRestOcc C 0+(occ 0 D : Int)*occ 1 A := by
  have hp := context_scope C (.app (.lam D) A) 2 hs
  rw [hc] at hp
  have hscA : FreeUnder 3 A := hp.2
  have hscD : FreeUnder 4 D := hp.1
  have parts := hj
  simp only [occ_fill,hc,occ,Nat.reduceAdd,ha] at parts
  have hd : occ 3 D=0 := by omega
  have hout : ctxRestOcc C 1=0 := by omega
  have hfa : freeLeaves 0 A=occ 0 A+occ 1 A+1 := by
    have h0:=freeLeaves_split A 0
    have h1:=freeLeaves_split A 1
    have h2:=freeLeaves_split A 2
    have h3:=freeLeaves_closed A 3 hscA
    simp only [Nat.reduceAdd] at h0 h1 h2
    omega
  have hfd : freeLeaves 1 D=occ 1 D+occ 2 D := by
    have h1:=freeLeaves_split D 1
    have h2:=freeLeaves_split D 2
    have h3:=freeLeaves_split D 3
    have h4:=freeLeaves_closed D 4 hscD
    simp only [Nat.reduceAdd] at h1 h2 h3
    omega
  have hs' := beta_freeUnder (beta_fill C (Beta.beta D A)) 2 hs
  have hh := hoist_wire_price (C.fill (contract D A)) hs'
  have hw := weight_wire (C.fill (.app (.lam D) A)) 0
  simp only [holes_eq_occ,depths_eq,Nat.zero_add,Nat.zero_mul,Nat.add_zero,hj,hdepth] at hw
  have hw' : weight 0 (C.fill (.app (.lam D) A)) = wire (C.fill (.app (.lam D) A)) := by omega
  have ho0 : occ 0 (C.fill (contract D A)) =
      occ 2 D +occ 0 D*occ 1 A+ctxRestOcc C 0 := by
    simp only [occ_fill,hc,Nat.zero_add,contract,
      occ_substDec_ge D A 1 0 (by omega),Nat.reduceAdd]
  have ho1 : occ 1 (C.fill (contract D A))=occ 0 D := by
    simp only [occ_fill,hc,Nat.reduceAdd,contract,
      occ_substDec_ge D A 2 0 (by omega),Nat.reduceAdd,hd,ha,hout,
      Nat.zero_add,Nat.mul_one,Nat.add_zero]
  rw [ho0,ho1] at hh
  have hbeta:=wire_beta_delta D A
  rw [hfa,hfd] at hbeta
  have hctx:=wire_context_delta C (contract D A) (.app (.lam D) A)
  have hhi:=congrArg (fun n:Nat => (n:Int)) hh
  rw [hw']
  simp only [Int.natCast_add,Int.natCast_mul,Int.natCast_one,
    Int.add_mul,Int.sub_mul,Int.one_mul] at hbeta hhi ⊢
  omega


/-- The exact hole-restoring move is available to any global minimum;
    a negative value closes that source immediately. -/
theorem minimum_contextual_charge (C : Context) (D A : Term)
    (hc : ctxDepth C=1)
    (hm : MinimumReader (C.fill (.app (.lam D) A)))
    (hdepth : occDepth 1 (C.fill (.app (.lam D) A))=1)
    (ha : occ 2 A=1) :
    0 ≤ ((occ 0 D : Int)-1)*wire A +
      ((occ 0 A : Int)+occ 1 A)*occDepth 0 D -
      3*occ 0 D-occ 1 D+ctxRestOcc C 0+(occ 0 D : Int)*occ 1 A := by
  have hr := hm.laws.beta (beta_fill C (Beta.beta D A))
  obtain ⟨hlaw,hhole⟩ := hr.hoist
  have hmin := hm.minimal _ hlaw hhole
  have hp := contextual_contract_hoist C D A hc hm.laws.scope hm.oneHole hdepth ha
  omega

-- Arithmetic endpoints for the handwritten high-multiplicity exclusion.
theorem large_multiplicity (m a d k : Nat) (hm : 6≤m) (ha : 2≤a)
    (hd : 4*m≤d+2) (hw : 4+a+d+k≤33) : m≤7 := by omega

theorem high_cont_in_body (m a d k : Nat) (hm : 6≤m) (ha : 2≤a)
    (hd : 4*m+4≤d) (hw : 4+a+d+k≤33) : False := by omega

theorem high_cont_in_context (m a d k : Nat) (hm : 6≤m) (ha : 2≤a)
    (hd : 4*m≤d+2) (hk : 5≤k) (hw : 4+a+d+k≤33) :
    m=6 ∧ a=2 ∧ d=22 ∧ k=5 := by omega

theorem high_cont_in_tails (m a d k : Nat) (hm : 6≤m) (ha : 2≤a)
    (hd : 4*m≤d+2) (hw : 4+a+d+k≤28) :
    m=6 ∧ a=2 ∧ d=22 ∧ k=0 := by omega

#print axioms reader_price
#print axioms linear_filter
#print axioms reify_price
#print axioms firstop_sink_price
#print axioms contextual_contract_hoist
#print axioms minimum_contextual_charge
#print axioms high_cont_in_context
#print axioms high_cont_in_tails
end Blc.FirstopPrices
