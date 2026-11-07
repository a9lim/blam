import Regular
namespace Certgen.R179
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 16,.lam 10,.app 11 14,.app 12 13,.var 1,.opaque,.lam 15,.var 1,.app 17 18,.var 0,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨13,[8,5]⟩,⟨13,[8,6]⟩],[⟨18,[5]⟩,⟨18,[6]⟩],[⟨7,[]⟩],[⟨13,[9,7]⟩],[⟨18,[7]⟩],[⟨14,[9,7]⟩],[⟨14,[8,5]⟩,⟨14,[8,6]⟩],[⟨5,[2]⟩],[⟨16,[5]⟩,⟨16,[6]⟩],[⟨16,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨14,[8,5]⟩,1⟩],[⟨⟨14,[8,6]⟩,1⟩],[⟨⟨14,[9,7]⟩,1⟩],[⟨⟨13,[8,5]⟩,3⟩],[⟨⟨13,[8,6]⟩,4⟩],[⟨⟨13,[9,7]⟩,5⟩],[⟨⟨18,[5]⟩,4⟩],[⟨⟨18,[6]⟩,4⟩],[⟨⟨18,[7]⟩,3⟩],[⟨⟨18,[7]⟩,4⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨16,[5]⟩,1⟩],[⟨⟨16,[6]⟩,1⟩],[⟨⟨16,[7]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,13⟩,⟨⟨5,[2]⟩,8⟩,⟨⟨5,[2]⟩,11⟩,⟨⟨5,[2]⟩,12⟩,⟨⟨6,[3,2]⟩,5⟩,⟨⟨6,[4,2]⟩,3⟩,⟨⟨6,[4,2]⟩,4⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,13⟩,⟨⟨8,[5]⟩,1⟩,⟨⟨8,[6]⟩,1⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨9,[5]⟩,14⟩,⟨⟨9,[6]⟩,15⟩,⟨⟨9,[7]⟩,16⟩,⟨⟨10,[8,5]⟩,1⟩,⟨⟨10,[8,6]⟩,1⟩,⟨⟨10,[9,7]⟩,1⟩,⟨⟨11,[8,5]⟩,3⟩,⟨⟨11,[8,6]⟩,4⟩,⟨⟨11,[9,7]⟩,5⟩,⟨⟨12,[8,5]⟩,6⟩,⟨⟨12,[8,6]⟩,7⟩,⟨⟨12,[9,7]⟩,8⟩,⟨⟨14,[8,5]⟩,7⟩,⟨⟨14,[8,5]⟩,10⟩,⟨⟨14,[8,6]⟩,7⟩,⟨⟨14,[8,6]⟩,10⟩,⟨⟨14,[9,7]⟩,6⟩,⟨⟨14,[9,7]⟩,9⟩,⟨⟨15,[0,8,5]⟩,4⟩,⟨⟨15,[0,8,6]⟩,4⟩,⟨⟨15,[0,9,7]⟩,3⟩,⟨⟨15,[1,8,5]⟩,4⟩,⟨⟨15,[1,8,6]⟩,4⟩,⟨⟨15,[1,9,7]⟩,4⟩,⟨⟨16,[5]⟩,4⟩,⟨⟨16,[6]⟩,4⟩,⟨⟨16,[7]⟩,3⟩,⟨⟨16,[7]⟩,4⟩,⟨⟨17,[5]⟩,9⟩,⟨⟨17,[6]⟩,10⟩,⟨⟨17,[7]⟩,11⟩,⟨⟨17,[7]⟩,12⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[14],[8],[9],[10],[13],[11],[12],[16],[16],[15],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[34],[30,32],[5],[36],[39],[37],[40],[38],[41],[42,43],[42,43],[44],[42,43],[42,43],[45],[46],[47],[48],[49],[35],[31,33],[6],[7]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 2=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<50 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 exact range_sound block48 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R179
