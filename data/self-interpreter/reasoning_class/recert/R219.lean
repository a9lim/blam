import Regular
namespace Certgen.R219
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 20,.app 9 14,.lam 10,.app 11 12,.var 0,.lam 13,.var 1,.app 15 16,.var 0,.app 17 18,.var 0,.lam 19,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[3]⟩],[⟨16,[5]⟩],[⟨6,[]⟩],[⟨12,[7,3]⟩,⟨12,[9,5]⟩],[⟨16,[6]⟩],[⟨18,[6]⟩],[⟨5,[2]⟩],[⟨14,[3]⟩],[⟨14,[4]⟩],[⟨14,[5]⟩],[⟨14,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[7,3]⟩,14⟩],[⟨⟨12,[8,4]⟩,15⟩],[⟨⟨12,[9,5]⟩,16⟩],[⟨⟨12,[10,6]⟩,17⟩],[⟨⟨16,[3]⟩,3⟩],[⟨⟨16,[4]⟩,4⟩],[⟨⟨16,[5]⟩,3⟩],[⟨⟨16,[5]⟩,5⟩],[⟨⟨16,[6]⟩,6⟩],[⟨⟨18,[6]⟩,8⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨20,[3]⟩,14⟩,⟨⟨20,[3]⟩,16⟩],[⟨⟨20,[4]⟩,6⟩],[⟨⟨20,[5]⟩,8⟩],[⟨⟨20,[6]⟩,1⟩],[⟨⟨14,[3]⟩,14⟩],[⟨⟨14,[4]⟩,15⟩],[⟨⟨14,[5]⟩,16⟩],[⟨⟨14,[6]⟩,17⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,13⟩,⟨⟨5,[2]⟩,3⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨5,[2]⟩,11⟩,⟨⟨5,[2]⟩,12⟩,⟨⟨6,[]⟩,3⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,11⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,13⟩,⟨⟨7,[3]⟩,14⟩,⟨⟨7,[3]⟩,16⟩,⟨⟨7,[4]⟩,6⟩,⟨⟨7,[5]⟩,8⟩,⟨⟨7,[6]⟩,1⟩,⟨⟨8,[3]⟩,14⟩,⟨⟨8,[4]⟩,15⟩,⟨⟨8,[5]⟩,16⟩,⟨⟨8,[6]⟩,17⟩,⟨⟨9,[3]⟩,18⟩,⟨⟨9,[4]⟩,19⟩,⟨⟨9,[5]⟩,20⟩,⟨⟨9,[6]⟩,21⟩,⟨⟨10,[7,3]⟩,14⟩,⟨⟨10,[8,4]⟩,15⟩,⟨⟨10,[9,5]⟩,16⟩,⟨⟨10,[10,6]⟩,17⟩,⟨⟨11,[7,3]⟩,3⟩,⟨⟨11,[8,4]⟩,4⟩,⟨⟨11,[9,5]⟩,5⟩,⟨⟨11,[10,6]⟩,6⟩,⟨⟨12,[7,3]⟩,7⟩,⟨⟨12,[9,5]⟩,7⟩,⟨⟨13,[0,7,3]⟩,3⟩,⟨⟨13,[0,9,5]⟩,3⟩,⟨⟨14,[3]⟩,3⟩,⟨⟨14,[4]⟩,4⟩,⟨⟨14,[5]⟩,3⟩,⟨⟨14,[5]⟩,5⟩,⟨⟨14,[6]⟩,6⟩,⟨⟨15,[3]⟩,7⟩,⟨⟨15,[4]⟩,8⟩,⟨⟨15,[5]⟩,9⟩,⟨⟨15,[5]⟩,10⟩,⟨⟨15,[6]⟩,11⟩,⟨⟨16,[6]⟩,8⟩,⟨⟨17,[6]⟩,12⟩,⟨⟨18,[6]⟩,9⟩,⟨⟨18,[6]⟩,10⟩,⟨⟨19,[1,6]⟩,3⟩,⟨⟨19,[1,6]⟩,5⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[9],[10],[11],[12],[14],[15],[16],[17],[18],[19],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[39],[40],[42],[43],[37],[38],[39],[41],[44],[45],[46],[47],[48],[35,36],[49],[51],[52],[7],[50],[8],[53],[54],[5],[6]]
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
end Certgen.R219
