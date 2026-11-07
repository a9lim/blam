import Regular
namespace Certgen.Case17
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 20,.app 10 16,.app 11 12,.var 0,.lam 13,.app 14 15,.var 0,.var 0,.lam 17,.app 18 19,.var 0,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨19,[1,3]⟩],[⟨12,[3]⟩,⟨15,[0,3]⟩,⟨19,[1,3]⟩],[⟨7,[]⟩],[⟨5,[2]⟩,⟨16,[3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[3]⟩,8⟩],[⟨⟨15,[0,3]⟩,8⟩],[⟨⟨19,[1,3]⟩,8⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨20,[3]⟩,1⟩,⟨⟨20,[3]⟩,7⟩],[⟨⟨16,[3]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,6⟩,⟨⟨5,[2]⟩,3⟩,⟨⟨5,[2]⟩,4⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨6,[1,2]⟩,8⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,8⟩,⟨⟨8,[3]⟩,1⟩,⟨⟨8,[3]⟩,7⟩,⟨⟨9,[3]⟩,7⟩,⟨⟨10,[3]⟩,8⟩,⟨⟨11,[3]⟩,3⟩,⟨⟨12,[3]⟩,5⟩,⟨⟨13,[0,3]⟩,8⟩,⟨⟨14,[0,3]⟩,4⟩,⟨⟨15,[0,3]⟩,5⟩,⟨⟨16,[3]⟩,3⟩,⟨⟨16,[3]⟩,4⟩,⟨⟨16,[3]⟩,5⟩,⟨⟨17,[1,3]⟩,8⟩,⟨⟨18,[1,3]⟩,5⟩,⟨⟨19,[1,3]⟩,4⟩,⟨⟨19,[1,3]⟩,5⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[9],[8],[8],[8],[10],[11],[12],[13],[13],[14],[15],[5,20],[17],[18],[25],[26],[23],[23],[23],[24],[16,19,26],[6,21],[7,22]]
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
end Certgen.Case17
