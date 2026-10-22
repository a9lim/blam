import Regular
namespace Certgen.R220
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 18,.app 10 14,.lam 11,.app 12 13,.var 0,.var 0,.app 15 16,.var 0,.lam 17,.var 1,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨14,[6]⟩],[⟨14,[7]⟩],[⟨14,[8]⟩],[⟨16,[7]⟩],[⟨7,[]⟩],[⟨16,[8]⟩],[⟨13,[1,7]⟩,⟨13,[2,8]⟩],[⟨16,[6]⟩],[⟨5,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨13,[0,6]⟩,14⟩],[⟨⟨13,[1,7]⟩,15⟩],[⟨⟨13,[2,8]⟩,16⟩],[⟨⟨16,[6]⟩,3⟩],[⟨⟨16,[7]⟩,6⟩],[⟨⟨16,[7]⟩,4⟩],[⟨⟨16,[7]⟩,4⟩,⟨⟨16,[7]⟩,6⟩],[⟨⟨16,[8]⟩,6⟩],[⟨⟨16,[8]⟩,5⟩],[⟨⟨16,[8]⟩,4⟩,⟨⟨16,[8]⟩,6⟩],[⟨⟨5,[4]⟩,1⟩],[⟨⟨18,[6]⟩,15⟩,⟨⟨18,[6]⟩,16⟩],[⟨⟨18,[7]⟩,3⟩],[⟨⟨18,[8]⟩,1⟩],[⟨⟨14,[6]⟩,14⟩],[⟨⟨14,[7]⟩,15⟩],[⟨⟨14,[8]⟩,16⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,13⟩,⟨⟨5,[4]⟩,10⟩,⟨⟨5,[4]⟩,11⟩,⟨⟨5,[4]⟩,12⟩,⟨⟨6,[5,4]⟩,4⟩,⟨⟨6,[5,4]⟩,5⟩,⟨⟨6,[5,4]⟩,6⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,13⟩,⟨⟨8,[6]⟩,15⟩,⟨⟨8,[6]⟩,16⟩,⟨⟨8,[7]⟩,3⟩,⟨⟨8,[8]⟩,1⟩,⟨⟨9,[6]⟩,14⟩,⟨⟨9,[7]⟩,15⟩,⟨⟨9,[8]⟩,16⟩,⟨⟨10,[6]⟩,17⟩,⟨⟨10,[7]⟩,18⟩,⟨⟨10,[8]⟩,19⟩,⟨⟨11,[0,6]⟩,14⟩,⟨⟨11,[1,7]⟩,15⟩,⟨⟨11,[2,8]⟩,16⟩,⟨⟨12,[0,6]⟩,3⟩,⟨⟨12,[1,7]⟩,4⟩,⟨⟨12,[2,8]⟩,5⟩,⟨⟨13,[1,7]⟩,4⟩,⟨⟨13,[1,7]⟩,6⟩,⟨⟨13,[2,8]⟩,4⟩,⟨⟨13,[2,8]⟩,6⟩,⟨⟨14,[6]⟩,3⟩,⟨⟨14,[7]⟩,4⟩,⟨⟨14,[7]⟩,6⟩,⟨⟨14,[8]⟩,4⟩,⟨⟨14,[8]⟩,5⟩,⟨⟨14,[8]⟩,6⟩,⟨⟨15,[6]⟩,6⟩,⟨⟨15,[7]⟩,7⟩,⟨⟨15,[7]⟩,8⟩,⟨⟨15,[7]⟩,9⟩,⟨⟨15,[8]⟩,10⟩,⟨⟨15,[8]⟩,11⟩,⟨⟨15,[8]⟩,12⟩,⟨⟨16,[6]⟩,7⟩,⟨⟨16,[6]⟩,8⟩,⟨⟨16,[6]⟩,9⟩,⟨⟨17,[3,6]⟩,4⟩,⟨⟨17,[3,6]⟩,6⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[14],[10],[9],[8,10],[11],[12],[13],[15],[16],[17],[18],[19],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[35],[36],[39],[36],[37],[38],[40],[41],[43],[42],[47],[46],[45],[32,34],[48],[49],[50],[5],[6],[7],[52],[51],[51,52],[31,33],[32,34]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 5=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<53 := hi
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
end Certgen.R220
