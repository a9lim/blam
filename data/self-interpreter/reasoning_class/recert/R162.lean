import Regular
namespace Certgen.R162
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 16,.lam 10,.app 11 15,.app 12 13,.var 0,.lam 14,.var 2,.var 0,.app 17 18,.var 0,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[6]⟩],[⟨7,[]⟩],[⟨13,[9,6]⟩],[⟨18,[5]⟩],[⟨18,[7]⟩],[⟨15,[9,6]⟩],[⟨13,[8,5]⟩,⟨13,[10,7]⟩],[⟨5,[1]⟩],[⟨16,[5]⟩],[⟨16,[6]⟩],[⟨16,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨15,[8,5]⟩,3⟩,⟨⟨15,[8,5]⟩,5⟩],[⟨⟨15,[9,6]⟩,3⟩,⟨⟨15,[9,6]⟩,5⟩],[⟨⟨15,[10,7]⟩,1⟩],[⟨⟨13,[8,5]⟩,3⟩],[⟨⟨13,[9,6]⟩,4⟩],[⟨⟨13,[10,7]⟩,5⟩],[⟨⟨18,[5]⟩,6⟩],[⟨⟨18,[6]⟩,7⟩,⟨⟨18,[6]⟩,9⟩],[⟨⟨18,[6]⟩,9⟩],[⟨⟨18,[6]⟩,7⟩],[⟨⟨18,[7]⟩,8⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨16,[5]⟩,3⟩,⟨⟨16,[5]⟩,5⟩],[⟨⟨16,[6]⟩,3⟩,⟨⟨16,[6]⟩,5⟩],[⟨⟨16,[7]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,14⟩,⟨⟨5,[1]⟩,7⟩,⟨⟨5,[1]⟩,9⟩,⟨⟨5,[1]⟩,13⟩,⟨⟨6,[2,1]⟩,4⟩,⟨⟨6,[3,1]⟩,6⟩,⟨⟨6,[4,1]⟩,8⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,14⟩,⟨⟨8,[5]⟩,3⟩,⟨⟨8,[5]⟩,5⟩,⟨⟨8,[6]⟩,3⟩,⟨⟨8,[6]⟩,5⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨9,[5]⟩,15⟩,⟨⟨9,[6]⟩,16⟩,⟨⟨9,[7]⟩,17⟩,⟨⟨10,[8,5]⟩,3⟩,⟨⟨10,[8,5]⟩,5⟩,⟨⟨10,[9,6]⟩,3⟩,⟨⟨10,[9,6]⟩,5⟩,⟨⟨10,[10,7]⟩,1⟩,⟨⟨11,[8,5]⟩,3⟩,⟨⟨11,[9,6]⟩,4⟩,⟨⟨11,[10,7]⟩,5⟩,⟨⟨12,[8,5]⟩,6⟩,⟨⟨12,[9,6]⟩,7⟩,⟨⟨12,[10,7]⟩,8⟩,⟨⟨13,[8,5]⟩,10⟩,⟨⟨13,[8,5]⟩,11⟩,⟨⟨13,[8,5]⟩,12⟩,⟨⟨13,[10,7]⟩,10⟩,⟨⟨13,[10,7]⟩,11⟩,⟨⟨13,[10,7]⟩,12⟩,⟨⟨14,[0,8,5]⟩,7⟩,⟨⟨14,[0,8,5]⟩,9⟩,⟨⟨14,[0,10,7]⟩,7⟩,⟨⟨14,[0,10,7]⟩,9⟩,⟨⟨15,[9,6]⟩,7⟩,⟨⟨15,[9,6]⟩,9⟩,⟨⟨16,[5]⟩,6⟩,⟨⟨16,[6]⟩,7⟩,⟨⟨16,[6]⟩,9⟩,⟨⟨16,[7]⟩,8⟩,⟨⟨17,[5]⟩,9⟩,⟨⟨17,[6]⟩,10⟩,⟨⟨17,[6]⟩,11⟩,⟨⟨17,[6]⟩,12⟩,⟨⟨17,[7]⟩,13⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[14],[8],[9],[10],[11],[12],[13],[15,16],[17],[18],[19],[20],[20],[21],[21],[22],[23,24],[25,26],[27],[28],[28],[29],[29],[30],[31],[32],[33],[46],[47],[49],[40,41],[41],[40],[42,43],[43],[42],[44],[45],[5],[6],[47],[48],[50],[51],[51],[54],[45],[34,37],[35,38],[36,39],[7]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 7=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<55 := hi
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
end Certgen.R162
