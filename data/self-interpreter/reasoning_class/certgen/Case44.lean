import Regular
namespace Certgen.Case44
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 20,.app 9 19,.app 10 18,.app 11 12,.var 0,.lam 13,.app 14 15,.var 1,.app 16 17,.var 1,.var 0,.opaque,.opaque,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[2]⟩,⟨15,[0,2]⟩,⟨17,[0,2]⟩],[⟨6,[]⟩],[⟨5,[1]⟩,⟨12,[2]⟩,⟨15,[0,2]⟩,⟨17,[0,2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[2]⟩,9⟩],[⟨⟨15,[0,2]⟩,3⟩,⟨⟨15,[0,2]⟩,4⟩,⟨⟨15,[0,2]⟩,5⟩,⟨⟨15,[0,2]⟩,9⟩],[⟨⟨17,[0,2]⟩,3⟩,⟨⟨17,[0,2]⟩,4⟩,⟨⟨17,[0,2]⟩,5⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨20,[2]⟩,1⟩,⟨⟨20,[2]⟩,3⟩,⟨⟨20,[2]⟩,4⟩,⟨⟨20,[2]⟩,5⟩,⟨⟨20,[2]⟩,9⟩],[⟨⟨19,[2]⟩,7⟩],[⟨⟨18,[2]⟩,8⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,6⟩,⟨⟨5,[1]⟩,3⟩,⟨⟨5,[1]⟩,4⟩,⟨⟨5,[1]⟩,5⟩,⟨⟨6,[]⟩,3⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,6⟩,⟨⟨7,[2]⟩,1⟩,⟨⟨7,[2]⟩,3⟩,⟨⟨7,[2]⟩,4⟩,⟨⟨7,[2]⟩,5⟩,⟨⟨7,[2]⟩,9⟩,⟨⟨8,[2]⟩,7⟩,⟨⟨9,[2]⟩,8⟩,⟨⟨10,[2]⟩,9⟩,⟨⟨11,[2]⟩,3⟩,⟨⟨12,[2]⟩,3⟩,⟨⟨12,[2]⟩,4⟩,⟨⟨12,[2]⟩,5⟩,⟨⟨13,[0,2]⟩,3⟩,⟨⟨13,[0,2]⟩,4⟩,⟨⟨13,[0,2]⟩,5⟩,⟨⟨13,[0,2]⟩,9⟩,⟨⟨14,[0,2]⟩,4⟩,⟨⟨15,[0,2]⟩,3⟩,⟨⟨15,[0,2]⟩,4⟩,⟨⟨15,[0,2]⟩,5⟩,⟨⟨16,[0,2]⟩,5⟩,⟨⟨17,[0,2]⟩,3⟩,⟨⟨17,[0,2]⟩,4⟩,⟨⟨17,[0,2]⟩,5⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[8],[9],[10],[16],[13,14,15,16],[13,14,15],[12],[17],[17],[17],[17],[17],[18],[19],[20],[5,21,29,33],[27],[24,25,26,27],[24,25,26],[28],[28],[28],[28],[6,22,30,34],[32],[32],[32],[7,23,31,35],[21,29,33],[22,30,34],[23,31,35]]
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
end Certgen.Case44
