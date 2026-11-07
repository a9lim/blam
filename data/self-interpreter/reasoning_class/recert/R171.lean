import Regular
namespace Certgen.R171
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 16,.lam 9,.app 10 14,.app 11 12,.var 1,.lam 13,.var 2,.lam 15,.var 1,.app 17 18,.var 0,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[9,5]⟩],[⟨18,[5]⟩],[⟨12,[11,7]⟩,⟨12,[11,8]⟩],[⟨18,[7]⟩,⟨18,[8]⟩],[⟨6,[]⟩],[⟨12,[10,6]⟩],[⟨5,[4]⟩],[⟨14,[9,5]⟩],[⟨14,[11,7]⟩,⟨14,[11,8]⟩],[⟨16,[5]⟩],[⟨16,[6]⟩],[⟨16,[7]⟩,⟨16,[8]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[9,5]⟩,16⟩],[⟨⟨12,[10,6]⟩,17⟩],[⟨⟨12,[11,7]⟩,18⟩],[⟨⟨12,[11,8]⟩,19⟩],[⟨⟨18,[5]⟩,18⟩],[⟨⟨18,[5]⟩,19⟩],[⟨⟨18,[7]⟩,19⟩],[⟨⟨18,[8]⟩,19⟩],[⟨⟨5,[4]⟩,1⟩],[⟨⟨16,[5]⟩,17⟩],[⟨⟨16,[6]⟩,1⟩],[⟨⟨16,[7]⟩,17⟩],[⟨⟨16,[8]⟩,17⟩],[⟨⟨14,[9,5]⟩,17⟩],[⟨⟨14,[10,6]⟩,1⟩],[⟨⟨14,[11,7]⟩,17⟩],[⟨⟨14,[11,8]⟩,17⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,11⟩,⟨⟨5,[4]⟩,4⟩,⟨⟨5,[4]⟩,16⟩,⟨⟨5,[4]⟩,18⟩,⟨⟨5,[4]⟩,19⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,11⟩,⟨⟨6,[]⟩,16⟩,⟨⟨6,[]⟩,18⟩,⟨⟨6,[]⟩,19⟩,⟨⟨7,[5]⟩,17⟩,⟨⟨7,[6]⟩,1⟩,⟨⟨7,[7]⟩,17⟩,⟨⟨7,[8]⟩,17⟩,⟨⟨8,[5]⟩,12⟩,⟨⟨8,[6]⟩,13⟩,⟨⟨8,[7]⟩,14⟩,⟨⟨8,[8]⟩,15⟩,⟨⟨9,[9,5]⟩,17⟩,⟨⟨9,[10,6]⟩,1⟩,⟨⟨9,[11,7]⟩,17⟩,⟨⟨9,[11,8]⟩,17⟩,⟨⟨10,[9,5]⟩,16⟩,⟨⟨10,[10,6]⟩,17⟩,⟨⟨10,[11,7]⟩,18⟩,⟨⟨10,[11,8]⟩,19⟩,⟨⟨11,[9,5]⟩,3⟩,⟨⟨11,[10,6]⟩,4⟩,⟨⟨11,[11,7]⟩,5⟩,⟨⟨11,[11,8]⟩,6⟩,⟨⟨12,[10,6]⟩,3⟩,⟨⟨12,[10,6]⟩,7⟩,⟨⟨12,[10,6]⟩,8⟩,⟨⟨13,[0,10,6]⟩,16⟩,⟨⟨13,[1,10,6]⟩,18⟩,⟨⟨13,[1,10,6]⟩,19⟩,⟨⟨14,[9,5]⟩,5⟩,⟨⟨14,[9,5]⟩,9⟩,⟨⟨14,[11,7]⟩,6⟩,⟨⟨14,[11,7]⟩,10⟩,⟨⟨14,[11,8]⟩,6⟩,⟨⟨14,[11,8]⟩,10⟩,⟨⟨15,[2,9,5]⟩,18⟩,⟨⟨15,[2,11,7]⟩,19⟩,⟨⟨15,[2,11,8]⟩,19⟩,⟨⟨15,[3,9,5]⟩,19⟩,⟨⟨15,[3,11,7]⟩,19⟩,⟨⟨15,[3,11,8]⟩,19⟩,⟨⟨16,[5]⟩,18⟩,⟨⟨16,[5]⟩,19⟩,⟨⟨16,[7]⟩,19⟩,⟨⟨16,[8]⟩,19⟩,⟨⟨17,[5]⟩,7⟩,⟨⟨17,[5]⟩,8⟩,⟨⟨17,[7]⟩,9⟩,⟨⟨17,[8]⟩,10⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[10],[9],[11],[12],[13],[14],[15],[16],[17],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[5],[40],[42,44],[37],[38],[39],[6],[7],[8],[46],[49],[47],[50],[48],[51],[52],[54,55],[54,55],[53],[54,55],[54,55],[56],[57],[58],[59],[35],[36],[41],[43,45]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<60 := hi
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
end Certgen.R171
