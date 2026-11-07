import Regular
namespace Certgen.A038
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 7,.lam 3,.lam 4,.app 5 6,.var 1,.var 1,.lam 8,.app 9 19,.app 10 11,.var 0,.app 12 13,.var 0,.lam 14,.app 15 16,.var 1,.app 17 18,.var 1,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨11,[3]⟩,⟨13,[3]⟩,⟨16,[0,3]⟩,⟨18,[0,3]⟩],[⟨7,[]⟩],[⟨20,[]⟩],[⟨6,[2,1]⟩,⟨11,[3]⟩,⟨13,[3]⟩,⟨16,[0,3]⟩,⟨18,[0,3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨13,[3]⟩,3⟩,⟨⟨13,[3]⟩,4⟩,⟨⟨13,[3]⟩,5⟩,⟨⟨13,[3]⟩,8⟩],[⟨⟨16,[0,3]⟩,3⟩,⟨⟨16,[0,3]⟩,4⟩,⟨⟨16,[0,3]⟩,5⟩,⟨⟨16,[0,3]⟩,7⟩,⟨⟨16,[0,3]⟩,8⟩],[⟨⟨18,[0,3]⟩,3⟩,⟨⟨18,[0,3]⟩,4⟩,⟨⟨18,[0,3]⟩,5⟩,⟨⟨18,[0,3]⟩,8⟩],[⟨⟨6,[2,1]⟩,0⟩],[⟨⟨19,[3]⟩,0⟩,⟨⟨19,[3]⟩,3⟩,⟨⟨19,[3]⟩,4⟩,⟨⟨19,[3]⟩,5⟩,⟨⟨19,[3]⟩,7⟩,⟨⟨19,[3]⟩,8⟩],[⟨⟨11,[3]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[2,1]⟩,0⟩,⟨⟨5,[2,1]⟩,6⟩,⟨⟨6,[2,1]⟩,3⟩,⟨⟨6,[2,1]⟩,4⟩,⟨⟨6,[2,1]⟩,5⟩,⟨⟨6,[2,1]⟩,8⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,8⟩,⟨⟨8,[3]⟩,0⟩,⟨⟨8,[3]⟩,3⟩,⟨⟨8,[3]⟩,4⟩,⟨⟨8,[3]⟩,5⟩,⟨⟨8,[3]⟩,7⟩,⟨⟨8,[3]⟩,8⟩,⟨⟨9,[3]⟩,7⟩,⟨⟨10,[3]⟩,8⟩,⟨⟨11,[3]⟩,3⟩,⟨⟨11,[3]⟩,4⟩,⟨⟨11,[3]⟩,5⟩,⟨⟨11,[3]⟩,8⟩,⟨⟨12,[3]⟩,3⟩,⟨⟨13,[3]⟩,3⟩,⟨⟨13,[3]⟩,4⟩,⟨⟨13,[3]⟩,5⟩,⟨⟨13,[3]⟩,8⟩,⟨⟨14,[0,3]⟩,3⟩,⟨⟨14,[0,3]⟩,4⟩,⟨⟨14,[0,3]⟩,5⟩,⟨⟨14,[0,3]⟩,7⟩,⟨⟨14,[0,3]⟩,8⟩,⟨⟨15,[0,3]⟩,4⟩,⟨⟨16,[0,3]⟩,3⟩,⟨⟨16,[0,3]⟩,4⟩,⟨⟨16,[0,3]⟩,5⟩,⟨⟨16,[0,3]⟩,8⟩,⟨⟨17,[0,3]⟩,5⟩,⟨⟨18,[0,3]⟩,3⟩,⟨⟨18,[0,3]⟩,4⟩,⟨⟨18,[0,3]⟩,5⟩,⟨⟨18,[0,3]⟩,8⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[13],[10],[11],[12],[14],[16,17,18,20],[16,17,18,19,20],[16,17,18,20],[15],[19],[21],[21],[21],[21],[21],[21],[22],[9,26,31,41,46],[27],[27],[27],[27],[6,23,28,38,43],[32,33,34,36],[32,33,34,35,36],[32,33,34,36],[35],[37],[37],[37],[37],[37],[7,24,29,39,44],[42],[42],[42],[42],[8,25,30,40,45],[23,28,38,43],[24,29,39,44],[25,30,40,45],[26,31,41,46]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<47 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 exact range_sound block36 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.A038
