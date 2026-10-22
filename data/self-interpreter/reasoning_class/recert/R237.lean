import Regular
namespace Certgen.R237
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 20,.app 10 16,.lam 11,.app 12 15,.app 13 14,.var 0,.opaque,.var 0,.lam 17,.app 18 19,.var 1,.opaque,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[8]⟩],[⟨16,[9]⟩],[⟨14,[0,8]⟩,⟨14,[1,9]⟩],[⟨19,[2,8]⟩],[⟨19,[3,8]⟩,⟨19,[4,8]⟩],[⟨7,[]⟩],[⟨19,[2,9]⟩],[⟨19,[3,9]⟩,⟨19,[4,9]⟩],[⟨15,[0,8]⟩,⟨15,[1,9]⟩],[⟨5,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨15,[0,8]⟩,14⟩],[⟨⟨15,[1,9]⟩,15⟩],[⟨⟨14,[0,8]⟩,3⟩],[⟨⟨14,[1,9]⟩,4⟩],[⟨⟨19,[2,8]⟩,3⟩],[⟨⟨19,[2,9]⟩,4⟩],[⟨⟨19,[3,8]⟩,3⟩],[⟨⟨19,[3,9]⟩,3⟩],[⟨⟨19,[4,8]⟩,3⟩],[⟨⟨19,[4,9]⟩,3⟩],[⟨⟨5,[5]⟩,1⟩],[⟨⟨20,[8]⟩,14⟩,⟨⟨20,[8]⟩,15⟩],[⟨⟨20,[9]⟩,1⟩],[⟨⟨16,[8]⟩,14⟩],[⟨⟨16,[9]⟩,15⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,13⟩,⟨⟨5,[5]⟩,8⟩,⟨⟨5,[5]⟩,10⟩,⟨⟨5,[5]⟩,12⟩,⟨⟨6,[6,5]⟩,4⟩,⟨⟨6,[7,5]⟩,3⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,13⟩,⟨⟨8,[8]⟩,14⟩,⟨⟨8,[8]⟩,15⟩,⟨⟨8,[9]⟩,1⟩,⟨⟨9,[8]⟩,14⟩,⟨⟨9,[9]⟩,15⟩,⟨⟨10,[8]⟩,16⟩,⟨⟨10,[9]⟩,17⟩,⟨⟨11,[0,8]⟩,14⟩,⟨⟨11,[1,9]⟩,15⟩,⟨⟨12,[0,8]⟩,3⟩,⟨⟨12,[1,9]⟩,4⟩,⟨⟨13,[0,8]⟩,5⟩,⟨⟨13,[1,9]⟩,6⟩,⟨⟨15,[0,8]⟩,7⟩,⟨⟨15,[0,8]⟩,9⟩,⟨⟨15,[0,8]⟩,11⟩,⟨⟨15,[1,9]⟩,7⟩,⟨⟨15,[1,9]⟩,9⟩,⟨⟨15,[1,9]⟩,11⟩,⟨⟨16,[8]⟩,5⟩,⟨⟨16,[8]⟩,7⟩,⟨⟨16,[8]⟩,9⟩,⟨⟨16,[8]⟩,11⟩,⟨⟨16,[9]⟩,6⟩,⟨⟨16,[9]⟩,7⟩,⟨⟨16,[9]⟩,9⟩,⟨⟨16,[9]⟩,11⟩,⟨⟨17,[2,8]⟩,3⟩,⟨⟨17,[2,9]⟩,4⟩,⟨⟨17,[3,8]⟩,3⟩,⟨⟨17,[3,9]⟩,3⟩,⟨⟨17,[4,8]⟩,3⟩,⟨⟨17,[4,9]⟩,3⟩,⟨⟨18,[2,8]⟩,7⟩,⟨⟨18,[2,9]⟩,8⟩,⟨⟨18,[3,8]⟩,9⟩,⟨⟨18,[3,9]⟩,10⟩,⟨⟨18,[4,8]⟩,11⟩,⟨⟨18,[4,9]⟩,12⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[12],[8],[9],[9],[11],[10],[13],[14],[15],[16],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[32],[36],[33],[34],[35],[37],[38],[39],[40],[42],[44],[44],[41],[43],[45],[45],[46],[47],[48],[49],[50],[51],[26,29],[5],[27,30],[6],[28,31],[7]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 4=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<52 := hi
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
end Certgen.R237
