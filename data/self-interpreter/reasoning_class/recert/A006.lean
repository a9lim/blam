import Regular
namespace Certgen.A006
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.lam 2,.app 3 19,.app 4 8,.lam 5,.app 6 7,.var 0,.var 0,.lam 9,.app 10 18,.app 11 12,.var 0,.lam 13,.app 14 15,.var 1,.app 16 17,.var 1,.var 0,.opaque,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨20,[]⟩],[⟨12,[3,0]⟩,⟨15,[1,3,0]⟩,⟨17,[1,3,0]⟩],[⟨8,[0]⟩],[⟨7,[2,0]⟩,⟨12,[3,0]⟩,⟨15,[1,3,0]⟩,⟨17,[1,3,0]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨12,[3,0]⟩,8⟩],[⟨⟨15,[1,3,0]⟩,2⟩,⟨⟨15,[1,3,0]⟩,3⟩,⟨⟨15,[1,3,0]⟩,4⟩,⟨⟨15,[1,3,0]⟩,8⟩],[⟨⟨17,[1,3,0]⟩,2⟩,⟨⟨17,[1,3,0]⟩,3⟩,⟨⟨17,[1,3,0]⟩,4⟩],[⟨⟨19,[0]⟩,0⟩],[⟨⟨8,[0]⟩,5⟩],[⟨⟨7,[2,0]⟩,5⟩],[⟨⟨18,[3,0]⟩,2⟩,⟨⟨18,[3,0]⟩,3⟩,⟨⟨18,[3,0]⟩,4⟩,⟨⟨18,[3,0]⟩,5⟩,⟨⟨18,[3,0]⟩,8⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,5⟩,⟨⟨4,[0]⟩,6⟩,⟨⟨5,[2,0]⟩,5⟩,⟨⟨6,[2,0]⟩,7⟩,⟨⟨7,[2,0]⟩,2⟩,⟨⟨7,[2,0]⟩,3⟩,⟨⟨7,[2,0]⟩,4⟩,⟨⟨8,[0]⟩,2⟩,⟨⟨8,[0]⟩,3⟩,⟨⟨8,[0]⟩,4⟩,⟨⟨8,[0]⟩,7⟩,⟨⟨9,[3,0]⟩,2⟩,⟨⟨9,[3,0]⟩,3⟩,⟨⟨9,[3,0]⟩,4⟩,⟨⟨9,[3,0]⟩,5⟩,⟨⟨9,[3,0]⟩,8⟩,⟨⟨10,[3,0]⟩,8⟩,⟨⟨11,[3,0]⟩,2⟩,⟨⟨12,[3,0]⟩,2⟩,⟨⟨12,[3,0]⟩,3⟩,⟨⟨12,[3,0]⟩,4⟩,⟨⟨13,[1,3,0]⟩,2⟩,⟨⟨13,[1,3,0]⟩,3⟩,⟨⟨13,[1,3,0]⟩,4⟩,⟨⟨13,[1,3,0]⟩,8⟩,⟨⟨14,[1,3,0]⟩,3⟩,⟨⟨15,[1,3,0]⟩,2⟩,⟨⟨15,[1,3,0]⟩,3⟩,⟨⟨15,[1,3,0]⟩,4⟩,⟨⟨16,[1,3,0]⟩,4⟩,⟨⟨17,[1,3,0]⟩,2⟩,⟨⟨17,[1,3,0]⟩,3⟩,⟨⟨17,[1,3,0]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[13],[10],[11],[12],[18],[14,15,16,18],[14,15,16],[17],[19],[19],[19],[19],[19],[20],[7,21,29,33],[27],[24,25,26,27],[24,25,26],[28],[28],[28],[28],[8,22,30,34],[32],[32],[32],[9,23,31,35],[21,29,33],[22,30,34],[23,31,35]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<36 := hi
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
end Certgen.A006
