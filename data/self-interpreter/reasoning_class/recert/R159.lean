import Regular
namespace Certgen.R159
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 20,.lam 9,.app 10 18,.lam 11,.app 12 15,.app 13 14,.var 0,.opaque,.app 16 17,.var 0,.opaque,.lam 19,.var 2,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[6,4]⟩,⟨18,[7,5]⟩],[⟨14,[0,6,4]⟩,⟨14,[0,7,5]⟩],[⟨17,[0,6,4]⟩,⟨17,[0,7,5]⟩],[⟨6,[]⟩],[⟨15,[0,6,4]⟩,⟨15,[0,7,5]⟩],[⟨5,[3]⟩],[⟨20,[4]⟩],[⟨20,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨15,[0,6,4]⟩,1⟩],[⟨⟨15,[0,7,5]⟩,1⟩],[⟨⟨14,[0,6,4]⟩,3⟩],[⟨⟨14,[0,7,5]⟩,4⟩],[⟨⟨17,[0,6,4]⟩,3⟩,⟨⟨17,[0,6,4]⟩,4⟩],[⟨⟨17,[0,7,5]⟩,3⟩,⟨⟨17,[0,7,5]⟩,4⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨20,[4]⟩,1⟩],[⟨⟨20,[5]⟩,1⟩],[⟨⟨18,[6,4]⟩,1⟩],[⟨⟨18,[7,5]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,9⟩,⟨⟨5,[3]⟩,3⟩,⟨⟨5,[3]⟩,4⟩,⟨⟨6,[]⟩,3⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,9⟩,⟨⟨7,[4]⟩,1⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨8,[4]⟩,10⟩,⟨⟨8,[5]⟩,11⟩,⟨⟨9,[6,4]⟩,1⟩,⟨⟨9,[7,5]⟩,1⟩,⟨⟨10,[6,4]⟩,12⟩,⟨⟨10,[7,5]⟩,13⟩,⟨⟨11,[0,6,4]⟩,1⟩,⟨⟨11,[0,7,5]⟩,1⟩,⟨⟨12,[0,6,4]⟩,3⟩,⟨⟨12,[0,7,5]⟩,4⟩,⟨⟨13,[0,6,4]⟩,5⟩,⟨⟨13,[0,7,5]⟩,6⟩,⟨⟨15,[0,6,4]⟩,3⟩,⟨⟨15,[0,6,4]⟩,4⟩,⟨⟨15,[0,7,5]⟩,3⟩,⟨⟨15,[0,7,5]⟩,4⟩,⟨⟨16,[0,6,4]⟩,7⟩,⟨⟨16,[0,7,5]⟩,8⟩,⟨⟨18,[6,4]⟩,5⟩,⟨⟨18,[6,4]⟩,6⟩,⟨⟨18,[6,4]⟩,7⟩,⟨⟨18,[6,4]⟩,8⟩,⟨⟨18,[7,5]⟩,5⟩,⟨⟨18,[7,5]⟩,6⟩,⟨⟨18,[7,5]⟩,7⟩,⟨⟨18,[7,5]⟩,8⟩,⟨⟨19,[1,6,4]⟩,3⟩,⟨⟨19,[1,6,4]⟩,4⟩,⟨⟨19,[1,7,5]⟩,3⟩,⟨⟨19,[1,7,5]⟩,4⟩,⟨⟨19,[2,6,4]⟩,3⟩,⟨⟨19,[2,6,4]⟩,4⟩,⟨⟨19,[2,7,5]⟩,3⟩,⟨⟨19,[2,7,5]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[9],[7],[8],[10],[10],[11],[12],[13],[14],[15],[16],[17],[18],[19],[20],[21],[22],[23],[30,34],[31,35],[28],[28],[29],[29],[32,36],[33,37],[38],[39],[42,43],[42,43],[40],[41],[44,45],[44,45],[24,26],[25,27],[5],[6],[24,26],[25,27],[5],[6]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 10=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<46 := hi
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
end Certgen.R159
