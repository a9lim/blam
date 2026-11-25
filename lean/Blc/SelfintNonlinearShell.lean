import Blc.SelfintMinimumRows40

namespace Blc.SelfintSingleObject.FiveLive
open Term SelfintFloor SelfintLowerBound SelfintCapture SelfintNonlinearChain SelfintWireCost
open Saturated SourceRefutations OperandGrammar

/-- Skip all atom words when the outside resources cannot support a
nonlinear binder. The gate is shared across the entire resource class. -/
def bucket (lit : Bool) (x l v : Nat) (w : List Nat) : List Term :=
  if (supportedShells lit x l v).isEmpty then [] else
    (markedAtoms lit x l v w).flatMap (candidates lit x l v)

theorem bucket_mem {e} (hm : MinimalInterpreter e) (hn : wire e = 40) (hl : live e = 5) :
    ∃ (lit : Bool) (x l v : Nat), 3 ≤ x ∧ x ≤ 4 ∧ 2 ≤ l ∧ l ≤ 3 ∧ 0 < v ∧ v ≤ 5 ∧
      ∃ w ∈ words (x+1) v x, e ∈ bucket lit x l v w := by
  obtain ⟨lit,x,l,v,xl,xh,ll,lh,vl,vh,w,ww,b,bb,ee⟩ := five_live_row40 hm hn hl
  refine ⟨lit,x,l,v,xl,xh,ll,lh,vl,vh,w,ww,?_⟩
  obtain ⟨k,hk,_⟩ := List.mem_map.mp (List.mem_filter.mp ee).1
  unfold bucket
  cases h : supportedShells lit x l v with
  | nil => rw [h] at hk; cases hk
  | cons k ks => exact List.mem_flatMap.mpr ⟨b,bb,ee⟩

#print axioms bucket_mem
end Blc.SelfintSingleObject.FiveLive
