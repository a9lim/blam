import Regular
namespace Certgen.R120
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 16,.lam 10,.app 11 12,.var 0,.app 13 14,.var 0,.lam 15,.var 1,.app 17 18,.var 0,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[4]⟩],[⟨7,[]⟩],[⟨18,[5]⟩],[⟨12,[7,4]⟩,⟨12,[8,5]⟩],[⟨14,[7,4]⟩,⟨14,[8,5]⟩],[⟨5,[1]⟩],[⟨16,[3]⟩],[⟨16,[4]⟩],[⟨16,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[6,3]⟩,1⟩,⟨⟨12,[6,3]⟩,8⟩],[⟨⟨12,[7,4]⟩,8⟩],[⟨⟨12,[8,5]⟩,1⟩],[⟨⟨14,[7,4]⟩,8⟩],[⟨⟨14,[8,5]⟩,8⟩],[⟨⟨18,[3]⟩,3⟩],[⟨⟨18,[4]⟩,4⟩,⟨⟨18,[4]⟩,6⟩],[⟨⟨18,[4]⟩,6⟩],[⟨⟨18,[4]⟩,4⟩],[⟨⟨18,[5]⟩,4⟩,⟨⟨18,[5]⟩,6⟩],[⟨⟨18,[5]⟩,7⟩],[⟨⟨18,[5]⟩,5⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨16,[3]⟩,1⟩,⟨⟨16,[3]⟩,8⟩],[⟨⟨16,[4]⟩,8⟩],[⟨⟨16,[5]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,15⟩,⟨⟨5,[1]⟩,12⟩,⟨⟨5,[1]⟩,13⟩,⟨⟨5,[1]⟩,14⟩,⟨⟨6,[2,1]⟩,4⟩,⟨⟨6,[2,1]⟩,5⟩,⟨⟨6,[2,1]⟩,6⟩,⟨⟨6,[2,1]⟩,7⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,15⟩,⟨⟨8,[3]⟩,1⟩,⟨⟨8,[3]⟩,8⟩,⟨⟨8,[4]⟩,8⟩,⟨⟨8,[5]⟩,1⟩,⟨⟨9,[3]⟩,16⟩,⟨⟨9,[4]⟩,17⟩,⟨⟨9,[5]⟩,18⟩,⟨⟨10,[6,3]⟩,1⟩,⟨⟨10,[6,3]⟩,8⟩,⟨⟨10,[7,4]⟩,8⟩,⟨⟨10,[8,5]⟩,1⟩,⟨⟨11,[6,3]⟩,3⟩,⟨⟨11,[7,4]⟩,4⟩,⟨⟨11,[8,5]⟩,5⟩,⟨⟨12,[7,4]⟩,8⟩,⟨⟨12,[8,5]⟩,8⟩,⟨⟨13,[7,4]⟩,6⟩,⟨⟨13,[8,5]⟩,7⟩,⟨⟨14,[7,4]⟩,9⟩,⟨⟨14,[7,4]⟩,10⟩,⟨⟨14,[7,4]⟩,11⟩,⟨⟨14,[8,5]⟩,9⟩,⟨⟨14,[8,5]⟩,10⟩,⟨⟨14,[8,5]⟩,11⟩,⟨⟨15,[0,7,4]⟩,4⟩,⟨⟨15,[0,7,4]⟩,6⟩,⟨⟨15,[0,8,5]⟩,4⟩,⟨⟨15,[0,8,5]⟩,6⟩,⟨⟨16,[3]⟩,3⟩,⟨⟨16,[4]⟩,4⟩,⟨⟨16,[4]⟩,6⟩,⟨⟨16,[5]⟩,4⟩,⟨⟨16,[5]⟩,5⟩,⟨⟨16,[5]⟩,6⟩,⟨⟨16,[5]⟩,7⟩,⟨⟨17,[3]⟩,8⟩,⟨⟨17,[4]⟩,9⟩,⟨⟨17,[4]⟩,10⟩,⟨⟨17,[4]⟩,11⟩,⟨⟨17,[5]⟩,12⟩,⟨⟨17,[5]⟩,13⟩,⟨⟨17,[5]⟩,14⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[16],[8,10],[11],[9],[12],[13],[14],[15],[18],[17],[19],[19],[20],[21],[21],[22],[23],[24,25],[26],[27],[28],[28],[29],[30],[45],[46],[49],[33],[34],[47],[51],[41,42],[42],[41],[43,44],[44],[43],[46],[47],[48],[50],[52],[53],[53],[56],[58],[56],[57],[31,32],[35,38],[36,39],[37,40],[5],[6],[7]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<59 := hi
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
end Certgen.R120
