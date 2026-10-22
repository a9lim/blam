import Regular
namespace Certgen.R241
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 20,.app 10 16,.lam 11,.app 12 15,.app 13 14,.var 0,.var 0,.opaque,.app 17 18,.var 0,.lam 19,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[6]⟩],[⟨16,[7]⟩],[⟨16,[8]⟩],[⟨18,[7]⟩],[⟨7,[]⟩],[⟨18,[8]⟩],[⟨14,[1,7]⟩,⟨14,[2,8]⟩],[⟨18,[6]⟩],[⟨5,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨15,[0,6]⟩,17⟩],[⟨⟨15,[1,7]⟩,18⟩],[⟨⟨15,[2,8]⟩,19⟩],[⟨⟨14,[0,6]⟩,3⟩],[⟨⟨14,[1,7]⟩,4⟩],[⟨⟨14,[2,8]⟩,5⟩],[⟨⟨18,[6]⟩,6⟩],[⟨⟨18,[7]⟩,9⟩],[⟨⟨18,[7]⟩,7⟩],[⟨⟨18,[7]⟩,7⟩,⟨⟨18,[7]⟩,9⟩],[⟨⟨18,[8]⟩,9⟩],[⟨⟨18,[8]⟩,8⟩],[⟨⟨18,[8]⟩,7⟩,⟨⟨18,[8]⟩,9⟩],[⟨⟨5,[4]⟩,1⟩],[⟨⟨20,[6]⟩,4⟩,⟨⟨20,[6]⟩,5⟩],[⟨⟨20,[7]⟩,6⟩],[⟨⟨20,[8]⟩,1⟩],[⟨⟨16,[6]⟩,17⟩],[⟨⟨16,[7]⟩,18⟩],[⟨⟨16,[8]⟩,19⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,16⟩,⟨⟨5,[4]⟩,13⟩,⟨⟨5,[4]⟩,14⟩,⟨⟨5,[4]⟩,15⟩,⟨⟨6,[5,4]⟩,7⟩,⟨⟨6,[5,4]⟩,8⟩,⟨⟨6,[5,4]⟩,9⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,9⟩,⟨⟨7,[]⟩,16⟩,⟨⟨8,[6]⟩,4⟩,⟨⟨8,[6]⟩,5⟩,⟨⟨8,[7]⟩,6⟩,⟨⟨8,[8]⟩,1⟩,⟨⟨9,[6]⟩,17⟩,⟨⟨9,[7]⟩,18⟩,⟨⟨9,[8]⟩,19⟩,⟨⟨10,[6]⟩,20⟩,⟨⟨10,[7]⟩,21⟩,⟨⟨10,[8]⟩,22⟩,⟨⟨11,[0,6]⟩,17⟩,⟨⟨11,[1,7]⟩,18⟩,⟨⟨11,[2,8]⟩,19⟩,⟨⟨12,[0,6]⟩,3⟩,⟨⟨12,[1,7]⟩,4⟩,⟨⟨12,[2,8]⟩,5⟩,⟨⟨13,[0,6]⟩,6⟩,⟨⟨13,[1,7]⟩,7⟩,⟨⟨13,[2,8]⟩,8⟩,⟨⟨14,[1,7]⟩,7⟩,⟨⟨14,[1,7]⟩,9⟩,⟨⟨14,[2,8]⟩,7⟩,⟨⟨14,[2,8]⟩,9⟩,⟨⟨16,[6]⟩,6⟩,⟨⟨16,[7]⟩,7⟩,⟨⟨16,[7]⟩,9⟩,⟨⟨16,[8]⟩,7⟩,⟨⟨16,[8]⟩,8⟩,⟨⟨16,[8]⟩,9⟩,⟨⟨17,[6]⟩,9⟩,⟨⟨17,[7]⟩,10⟩,⟨⟨17,[7]⟩,11⟩,⟨⟨17,[7]⟩,12⟩,⟨⟨17,[8]⟩,13⟩,⟨⟨17,[8]⟩,14⟩,⟨⟨17,[8]⟩,15⟩,⟨⟨18,[6]⟩,10⟩,⟨⟨18,[6]⟩,11⟩,⟨⟨18,[6]⟩,12⟩,⟨⟨19,[3,6]⟩,7⟩,⟨⟨19,[3,6]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[14],[10],[9],[8,10],[11],[12],[13],[15],[16],[17],[18],[19],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[38],[39],[42],[39],[40],[41],[43],[44],[46],[45],[50],[49],[48],[35,37],[51],[52],[53],[5],[6],[7],[55],[54],[54,55],[34,36],[35,37]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 8=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<56 := hi
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
end Certgen.R241
