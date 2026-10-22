import Regular
namespace Certgen.Case22
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 9,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.lam 8,.var 1,.lam 10,.app 11 19,.app 12 15,.app 13 14,.var 0,.var 0,.lam 16,.app 17 18,.var 0,.var 1,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨14,[2]⟩,⟨18,[0,2]⟩],[⟨9,[]⟩],[⟨5,[1]⟩,⟨7,[1]⟩,⟨15,[2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨9,[]⟩,1⟩],[⟨⟨19,[2]⟩,1⟩,⟨⟨19,[2]⟩,3⟩,⟨⟨19,[2]⟩,5⟩,⟨⟨19,[2]⟩,6⟩],[⟨⟨15,[2]⟩,3⟩],[⟨⟨14,[2]⟩,4⟩],[⟨⟨18,[0,2]⟩,4⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨7,[1]⟩,5⟩,⟨⟨7,[1]⟩,6⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,7⟩,⟨⟨5,[1]⟩,5⟩,⟨⟨5,[1]⟩,6⟩,⟨⟨6,[1]⟩,8⟩,⟨⟨7,[1]⟩,5⟩,⟨⟨7,[1]⟩,6⟩,⟨⟨8,[0,1]⟩,4⟩,⟨⟨9,[]⟩,4⟩,⟨⟨9,[]⟩,7⟩,⟨⟨9,[]⟩,8⟩,⟨⟨10,[2]⟩,1⟩,⟨⟨10,[2]⟩,3⟩,⟨⟨10,[2]⟩,5⟩,⟨⟨10,[2]⟩,6⟩,⟨⟨11,[2]⟩,3⟩,⟨⟨12,[2]⟩,4⟩,⟨⟨13,[2]⟩,5⟩,⟨⟨14,[2]⟩,6⟩,⟨⟨15,[2]⟩,5⟩,⟨⟨15,[2]⟩,6⟩,⟨⟨16,[0,2]⟩,4⟩,⟨⟨17,[0,2]⟩,6⟩,⟨⟨18,[0,2]⟩,6⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[12],[7],[7],[13],[10],[10],[11],[15],[14],[16,17],[18],[18],[18],[18],[19],[20],[5,8,22],[6,9,23],[24],[24],[25],[21,26],[6,9,23]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 3=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<27 := hi
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
end Certgen.Case22
