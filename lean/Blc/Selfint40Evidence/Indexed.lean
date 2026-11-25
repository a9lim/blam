import Blc.SelfintRegularSoundness

namespace Certgen.FloorIndex
open Blc Blc.SelfintRegularSoundness Blc.WeakHeadClock
def localStates (get : Nat → AState) (ids : List Nat) := (ids.map get).toArray
def check (P : Nat → Code) (V : Values) (K : Konts) (get : Nat → AState)
    (i : Nat) (ids : List Nat) : Bool :=
 goodb P V K (localStates get ids) (get i) (List.range ids.length)
theorem sound {P V K} (m : Model P) (get : Nat → AState) (hs : get 0 = entry)
    (h : ∀ i, ∃ ids, check P V K get i ids = true) (n : Nat) : ¬ Count (m.term 0) n := by
 let I := fun (s : State) => ∃ i, Related V K s (get i)
 have hp : ∀ s, I s → ∃ t, Step P s t ∧ I t := by
  rintro s ⟨i,hi⟩
  obtain ⟨ids,hb⟩ := h i
  obtain ⟨t,a,hst,ha,hr⟩ := progress (goodb_sound hb) hi
  have hh : a ∈ ids.map get := by simpa [localStates] using ha
  obtain ⟨j,_,hj⟩ := List.mem_map.mp hh
  exact ⟨t,hst,j,hj ▸ hr⟩
 have ini : I initial := ⟨0,hs ▸ (show Related V K initial entry from ⟨.mk .nil,.nil⟩)⟩
 simpa only [stateTerm,initial,denote,List.map_nil,Blc.SelfintSourceCost.spine,instN] using
   invariant_no_clock m I hp n initial ini
end Certgen.FloorIndex
namespace Certgen.FloorIndex
def rangeOK (f : Nat → Bool) (start count : Nat) : Bool :=
 (List.range count).all fun j => f (start+j)
theorem rangeOK_at {f start count} (h : rangeOK f start count=true)
    {i : Nat} (lo : start≤i) (hi : i<start+count) : f i=true := by
 have hh := List.all_eq_true.mp h (i-start) (List.mem_range.mpr (by omega))
 simpa [show start+(i-start)=i by omega] using hh
end Certgen.FloorIndex
