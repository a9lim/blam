import Regular
namespace Certgen.Case48
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 19,.app 10 18,.app 11 14,.app 12 13,.var 0,.var 0,.lam 15,.app 16 17,.var 0,.var 1,.opaque,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨13,[2]⟩,⟨17,[0,2]⟩],[⟨7,[]⟩],[⟨5,[1]⟩,⟨14,[2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨14,[2]⟩,8⟩],[⟨⟨13,[2]⟩,3⟩],[⟨⟨17,[0,2]⟩,3⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨19,[2]⟩,1⟩,⟨⟨19,[2]⟩,8⟩],[⟨⟨18,[2]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,6⟩,⟨⟨5,[1]⟩,4⟩,⟨⟨5,[1]⟩,5⟩,⟨⟨6,[0,1]⟩,3⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,6⟩,⟨⟨8,[2]⟩,1⟩,⟨⟨8,[2]⟩,8⟩,⟨⟨9,[2]⟩,7⟩,⟨⟨10,[2]⟩,8⟩,⟨⟨11,[2]⟩,3⟩,⟨⟨12,[2]⟩,4⟩,⟨⟨13,[2]⟩,5⟩,⟨⟨14,[2]⟩,4⟩,⟨⟨14,[2]⟩,5⟩,⟨⟨15,[0,2]⟩,3⟩,⟨⟨16,[0,2]⟩,5⟩,⟨⟨17,[0,2]⟩,5⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[9],[7],[7],[8],[11],[10],[12],[12],[13],[14],[15],[5,17],[6,18],[19],[19],[20],[16,21],[6,18]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 10=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<22 := hi
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
end Certgen.Case48
