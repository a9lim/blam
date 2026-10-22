import Regular
namespace Certgen.Case15
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 18,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 17,.app 10 13,.app 11 12,.var 0,.var 0,.lam 14,.app 15 16,.var 0,.var 1,.opaque,.lam 19,.app 20 25,.app 21 22,.var 0,.lam 23,.lam 24,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[2]⟩,⟨16,[0,2]⟩],[⟨7,[]⟩],[⟨5,[1]⟩,⟨13,[2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨18,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[2]⟩,7⟩],[⟨⟨16,[0,2]⟩,7⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨17,[2]⟩,1⟩,⟨⟨17,[2]⟩,6⟩],[⟨⟨13,[2]⟩,6⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,5⟩,⟨⟨5,[1]⟩,3⟩,⟨⟨5,[1]⟩,4⟩,⟨⟨6,[0,1]⟩,7⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,7⟩,⟨⟨8,[2]⟩,1⟩,⟨⟨8,[2]⟩,6⟩,⟨⟨9,[2]⟩,6⟩,⟨⟨10,[2]⟩,7⟩,⟨⟨11,[2]⟩,3⟩,⟨⟨12,[2]⟩,4⟩,⟨⟨13,[2]⟩,3⟩,⟨⟨13,[2]⟩,4⟩,⟨⟨14,[0,2]⟩,7⟩,⟨⟨15,[0,2]⟩,4⟩,⟨⟨16,[0,2]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[8],[7],[7],[9],[10],[11],[12],[12],[13],[14],[5,16],[6,17],[18],[18],[19],[15,20],[6,17]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 9=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<21 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 exact range_sound block12 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.Case15
