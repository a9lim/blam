import Regular
namespace Certgen.R227
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 8,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.var 0,.lam 9,.app 10 20,.app 11 16,.lam 12,.app 13 14,.var 0,.lam 15,.var 1,.app 17 18,.var 0,.lam 19,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[7]⟩],[⟨16,[8]⟩],[⟨16,[9]⟩],[⟨16,[10]⟩],[⟨18,[7]⟩],[⟨18,[8]⟩],[⟨8,[]⟩],[⟨14,[0,7]⟩,⟨14,[1,8]⟩],[⟨18,[10]⟩],[⟨5,[6]⟩],[⟨7,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨16,[7]⟩,18⟩],[⟨⟨16,[8]⟩,19⟩],[⟨⟨16,[9]⟩,20⟩],[⟨⟨16,[10]⟩,21⟩],[⟨⟨14,[0,7]⟩,18⟩],[⟨⟨14,[1,8]⟩,19⟩],[⟨⟨14,[2,9]⟩,20⟩],[⟨⟨14,[3,10]⟩,21⟩],[⟨⟨18,[7]⟩,7⟩],[⟨⟨18,[8]⟩,8⟩],[⟨⟨18,[8]⟩,7⟩],[⟨⟨18,[9]⟩,9⟩],[⟨⟨18,[10]⟩,10⟩],[⟨⟨5,[6]⟩,1⟩],[⟨⟨7,[6]⟩,14⟩],[⟨⟨20,[7]⟩,18⟩,⟨⟨20,[7]⟩,19⟩],[⟨⟨20,[8]⟩,10⟩],[⟨⟨20,[9]⟩,1⟩],[⟨⟨20,[10]⟩,14⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,16⟩,⟨⟨5,[6]⟩,14⟩,⟨⟨6,[6]⟩,17⟩,⟨⟨7,[6]⟩,7⟩,⟨⟨7,[6]⟩,8⟩,⟨⟨7,[6]⟩,15⟩,⟨⟨8,[]⟩,7⟩,⟨⟨8,[]⟩,8⟩,⟨⟨8,[]⟩,15⟩,⟨⟨8,[]⟩,16⟩,⟨⟨8,[]⟩,17⟩,⟨⟨9,[7]⟩,18⟩,⟨⟨9,[7]⟩,19⟩,⟨⟨9,[8]⟩,10⟩,⟨⟨9,[9]⟩,1⟩,⟨⟨9,[10]⟩,14⟩,⟨⟨10,[7]⟩,18⟩,⟨⟨10,[8]⟩,19⟩,⟨⟨10,[9]⟩,20⟩,⟨⟨10,[10]⟩,21⟩,⟨⟨11,[7]⟩,3⟩,⟨⟨11,[8]⟩,4⟩,⟨⟨11,[9]⟩,5⟩,⟨⟨11,[10]⟩,6⟩,⟨⟨12,[0,7]⟩,18⟩,⟨⟨12,[1,8]⟩,19⟩,⟨⟨12,[2,9]⟩,20⟩,⟨⟨12,[3,10]⟩,21⟩,⟨⟨13,[0,7]⟩,7⟩,⟨⟨13,[1,8]⟩,8⟩,⟨⟨13,[2,9]⟩,9⟩,⟨⟨13,[3,10]⟩,10⟩,⟨⟨14,[0,7]⟩,11⟩,⟨⟨14,[1,8]⟩,11⟩,⟨⟨15,[4,0,7]⟩,7⟩,⟨⟨15,[4,1,8]⟩,7⟩,⟨⟨16,[7]⟩,7⟩,⟨⟨16,[8]⟩,7⟩,⟨⟨16,[8]⟩,8⟩,⟨⟨16,[9]⟩,9⟩,⟨⟨16,[10]⟩,10⟩,⟨⟨17,[7]⟩,11⟩,⟨⟨17,[8]⟩,12⟩,⟨⟨17,[8]⟩,13⟩,⟨⟨17,[9]⟩,14⟩,⟨⟨17,[10]⟩,15⟩,⟨⟨18,[10]⟩,12⟩,⟨⟨18,[10]⟩,13⟩,⟨⟨19,[5,10]⟩,7⟩,⟨⟨19,[5,10]⟩,8⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[6],[14],[10],[11],[12],[15],[16],[17],[18],[19],[20],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[40],[42],[43],[44],[38],[39],[40],[41],[45],[47],[46],[48],[49],[36,37],[50],[51],[5],[9],[53],[52],[7],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 6=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<54 := hi
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
end Certgen.R227
