import Moves
import PrefixPrice
namespace Blc.Pending
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLambdaSink SelfintNestedLets SelfintControl RootLow
open SelfintSourceFront SelfintNeededHead SelfintDispatchAudit SelfintRootFlat SelfintLetSink
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

/-- Arbitrarily many earlier literal binders, saturated by independent
source operands. b is beneath those binders and the two being exchanged. -/
def prefixPair (n : Nat) (b : Term) (as : List Term) (a c : Term) (cs : List Term) :=
  spine (lams n (.lam (.lam b))) (as ++ a::c::cs)

theorem prefix_pair_join (n : Nat) (b : Term) (as : List Term) (a c : Term)
    (cs : List Term) (hlen : as.length=n) :
    BetaJoin (prefixPair n (swap 0 b) as c a cs) (prefixPair n b as a c cs) := by
  induction n generalizing as a c cs with
  | zero =>
    have ha : as=[] := by cases as <;> simp_all
    subst as
    exact exchange_join b a c cs
  | succ n ih =>
    cases as with
    | nil => simp at hlen
    | cons v vs =>
      have hv : vs.length=n := by simpa using hlen
      have h := ih (vs.map (shift 1 0)) (shift 1 0 a) (shift 1 0 c)
        (cs.map (shift 1 0)) (by simpa using hv)
      have hctx := join_context (.appL (.lam .hole) v) h
      have ho := push_join (lams n (.lam (.lam b))) v (vs++a::c::cs)
      have hn := push_join (lams n (.lam (.lam (swap 0 b)))) v (vs++c::a::cs)
      simp only [prefixPair,Context.fill] at hctx
      have hh : BetaJoin (push (lams n (.lam (.lam (swap 0 b)))) v (vs++c::a::cs))
          (push (lams n (.lam (.lam b))) v (vs++a::c::cs)) := by
        simpa only [push,List.map_append,List.map_cons] using hctx
      exact join_trans (join_symm hn) (join_trans hh ho)

theorem prefix_pair_price (n : Nat) (b : Term) (as : List Term) (a c : Term)
    (cs : List Term) (d : Nat) :
    weight d (prefixPair n (swap 0 b) as c a cs)+occ 1 b =
      weight d (prefixPair n b as a c cs)+occ 0 b := by
  have h:=swap_weight b 0 (d+n)
  have happ : ∀ (xs ys : List Term), spineWeight d (xs++ys)=spineWeight d xs+spineWeight d ys := by
    intro xs ys;induction xs with
    | nil => simp [spineWeight]
    | cons x xs ih => simp [spineWeight,ih,Nat.add_assoc]
  simp only [prefixPair,spine_weight,lams_weight,weight,happ,spineWeight,
    Nat.add_zero,Nat.zero_add] at h ⊢
  rw [show d+n+1+1=d+n+2 by omega]
  omega

theorem lams_scope_iff (n k : Nat) (t : Term) :
    FreeUnder k (lams n t) ↔ FreeUnder (k+n) t := by
  induction n generalizing k with
  | zero => simp [lams]
  | succ n ih => simpa only [lams,FreeUnder,Nat.add_assoc,Nat.add_comm,Nat.add_left_comm] using ih (k+1)

theorem prefix_pair_scope (n : Nat) (b : Term) (as : List Term) (a c : Term)
    (cs : List Term) (k : Nat) (hs : FreeUnder k (prefixPair n b as a c cs)) :
    FreeUnder k (prefixPair n (swap 0 b) as c a cs) := by
  have hh:=spine_scope _ (as++a::c::cs) k hs
  have hb : FreeUnder (k+n+2) b := by
    simpa only [FreeUnder,Nat.add_assoc] using (lams_scope_iff n k (.lam (.lam b))).mp hh
  apply spine_scope_of
  · apply (lams_scope_iff n k (.lam (.lam (swap 0 b)))).mpr
    exact swap_scope b 0 (k+n+2) (by omega) hb
  · intro v hv
    apply spine_arguments_scope _ (as++a::c::cs) k hs v
    simpa only [List.mem_append,List.mem_cons,or_comm,or_left_comm,or_assoc] using hv

theorem spineOcc_append (j : Nat) (as bs : List Term) :
    spineOcc j (as++bs)=spineOcc j as+spineOcc j bs := by
  induction as with
  | nil => simp [spineOcc]
  | cons a as ih => simp [spineOcc,ih,Nat.add_assoc]

theorem prefix_pair_occ (n : Nat) (b : Term) (as : List Term) (a c : Term)
    (cs : List Term) (j : Nat) :
    occ j (prefixPair n (swap 0 b) as c a cs)=occ j (prefixPair n b as a c cs) := by
  simp only [prefixPair,spine_occ,lams_occ,occ,spineOcc_append,spineOcc,
    swap_occ_outer b 0 (j+n+1+1) (by omega)]
  omega

theorem prefix_pair_laws (n : Nat) (b : Term) (as : List Term) (a c : Term)
    (cs : List Term) (hlen : as.length=n) (hr : ReaderLaws (prefixPair n b as a c cs)) :
    ReaderLaws (prefixPair n (swap 0 b) as c a cs) :=
  laws_join hr (prefix_pair_scope n b as a c cs 2 hr.scope) (prefix_pair_join n b as a c cs hlen)

/-- Every adjacent pair in the literal consumed prefix is ordered by uses. -/
theorem minimum_adjacent_prefix (n : Nat) (b : Term) (as : List Term) (a c : Term)
    (cs : List Term) (hlen : as.length=n) (hm : MinimumReader (prefixPair n b as a c cs)) :
    occ 1 b ≤ occ 0 b := by
  have hl:=prefix_pair_laws n b as a c cs hlen hm.laws
  have hj : occ 1 (prefixPair n (swap 0 b) as c a cs)=1 :=
    (prefix_pair_occ n b as a c cs 1).trans hm.oneHole
  have h:=hm.minimal _ hl hj
  have hp:=prefix_pair_price n b as a c cs 0
  omega

#print axioms minimum_adjacent_prefix
#print axioms prefix_pair_join
#print axioms prefix_pair_price
end Blc.Pending
