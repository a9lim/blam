import Regular
namespace Certgen.A002
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 18,.lam 2,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.app 9 17,.app 10 11,.var 0,.lam 12,.app 13 14,.var 1,.app 15 16,.var 1,.var 0,.opaque,.lam 19,.app 20 25,.app 21 22,.var 0,.lam 23,.lam 24,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[]⟩],[⟨11,[3,0]⟩,⟨14,[1,3,0]⟩,⟨16,[1,3,0]⟩],[⟨7,[0]⟩],[⟨6,[2,0]⟩,⟨11,[3,0]⟩,⟨14,[1,3,0]⟩,⟨16,[1,3,0]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨18,[]⟩,0⟩],[⟨⟨14,[1,3,0]⟩,2⟩,⟨⟨14,[1,3,0]⟩,3⟩,⟨⟨14,[1,3,0]⟩,6⟩,⟨⟨14,[1,3,0]⟩,7⟩],[⟨⟨16,[1,3,0]⟩,2⟩,⟨⟨16,[1,3,0]⟩,3⟩,⟨⟨16,[1,3,0]⟩,7⟩],[⟨⟨7,[0]⟩,0⟩],[⟨⟨6,[2,0]⟩,0⟩],[⟨⟨17,[3,0]⟩,0⟩,⟨⟨17,[3,0]⟩,2⟩,⟨⟨17,[3,0]⟩,3⟩,⟨⟨17,[3,0]⟩,6⟩,⟨⟨17,[3,0]⟩,7⟩],[⟨⟨11,[3,0]⟩,6⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,4⟩,⟨⟨4,[2,0]⟩,0⟩,⟨⟨5,[2,0]⟩,5⟩,⟨⟨6,[2,0]⟩,2⟩,⟨⟨6,[2,0]⟩,3⟩,⟨⟨6,[2,0]⟩,7⟩,⟨⟨7,[0]⟩,2⟩,⟨⟨7,[0]⟩,3⟩,⟨⟨7,[0]⟩,5⟩,⟨⟨7,[0]⟩,7⟩,⟨⟨8,[3,0]⟩,0⟩,⟨⟨8,[3,0]⟩,2⟩,⟨⟨8,[3,0]⟩,3⟩,⟨⟨8,[3,0]⟩,6⟩,⟨⟨8,[3,0]⟩,7⟩,⟨⟨9,[3,0]⟩,6⟩,⟨⟨10,[3,0]⟩,7⟩,⟨⟨11,[3,0]⟩,2⟩,⟨⟨11,[3,0]⟩,3⟩,⟨⟨11,[3,0]⟩,7⟩,⟨⟨12,[1,3,0]⟩,2⟩,⟨⟨12,[1,3,0]⟩,3⟩,⟨⟨12,[1,3,0]⟩,6⟩,⟨⟨12,[1,3,0]⟩,7⟩,⟨⟨13,[1,3,0]⟩,2⟩,⟨⟨14,[1,3,0]⟩,2⟩,⟨⟨14,[1,3,0]⟩,3⟩,⟨⟨14,[1,3,0]⟩,7⟩,⟨⟨15,[1,3,0]⟩,3⟩,⟨⟨16,[1,3,0]⟩,2⟩,⟨⟨16,[1,3,0]⟩,3⟩,⟨⟨16,[1,3,0]⟩,7⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[11],[9],[10],[12],[14,15,16,17],[14,15,17],[13],[16],[18],[18],[18],[18],[18],[19],[8,22,30,34],[23,24,25,26],[23,24,26],[25],[27],[27],[27],[27],[6,20,28,32],[31],[31],[31],[7,21,29,33],[20,28,32],[21,29,33],[22,30,34]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<35 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 exact range_sound block24 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.A002
