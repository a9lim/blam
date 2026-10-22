import Regular
namespace Certgen.Case21
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 8,.lam 3,.app 4 5,.var 0,.lam 6,.lam 7,.var 2,.lam 9,.app 10 15,.app 11 14,.app 12 13,.var 0,.var 0,.opaque,.lam 16,.app 17 18,.var 0,.var 1,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨13,[3]⟩,⟨18,[0,3]⟩],[⟨8,[]⟩],[⟨14,[3]⟩],[⟨5,[1]⟩,⟨15,[3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨14,[3]⟩,7⟩],[⟨⟨13,[3]⟩,3⟩],[⟨⟨18,[0,3]⟩,3⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨15,[3]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,6⟩,⟨⟨5,[1]⟩,4⟩,⟨⟨5,[1]⟩,5⟩,⟨⟨6,[0,1]⟩,3⟩,⟨⟨7,[2,0,1]⟩,7⟩,⟨⟨8,[]⟩,6⟩,⟨⟨8,[]⟩,7⟩,⟨⟨9,[3]⟩,1⟩,⟨⟨10,[3]⟩,7⟩,⟨⟨11,[3]⟩,3⟩,⟨⟨12,[3]⟩,4⟩,⟨⟨13,[3]⟩,5⟩,⟨⟨15,[3]⟩,4⟩,⟨⟨15,[3]⟩,5⟩,⟨⟨16,[0,3]⟩,3⟩,⟨⟨17,[0,3]⟩,5⟩,⟨⟨18,[0,3]⟩,5⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[9],[7],[7],[8],[10],[11],[11],[12],[13],[14],[5,16],[6,17],[18],[18],[19],[15,20],[6,17]]
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
end Certgen.Case21
