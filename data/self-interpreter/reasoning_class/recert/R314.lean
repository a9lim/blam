import Regular
namespace Certgen.R314
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 10,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.app 8 9,.var 0,.opaque,.lam 11,.lam 12,.app 13 14,.var 0,.lam 15,.app 16 17,.var 0,.app 18 19,.var 1,.lam 20,.var 1,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨6,[11]⟩],[⟨9,[11]⟩],[⟨14,[4,0]⟩],[⟨19,[5,4,0]⟩],[⟨7,[11]⟩],[⟨14,[2,1]⟩],[⟨17,[5,4,0]⟩],[⟨17,[6,2,1]⟩,⟨17,[7,2,1]⟩],[⟨19,[6,2,1]⟩,⟨19,[7,2,1]⟩],[⟨14,[3,1]⟩],[⟨17,[8,4,0]⟩],[⟨10,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨10,[]⟩,1⟩],[⟨⟨14,[2,1]⟩,1⟩],[⟨⟨14,[3,1]⟩,8⟩],[⟨⟨14,[3,1]⟩,9⟩],[⟨⟨14,[4,0]⟩,1⟩],[⟨⟨17,[5,4,0]⟩,1⟩],[⟨⟨17,[6,2,1]⟩,1⟩],[⟨⟨17,[7,2,1]⟩,1⟩],[⟨⟨17,[8,4,0]⟩,9⟩],[⟨⟨19,[5,4,0]⟩,8⟩],[⟨⟨19,[5,4,0]⟩,9⟩],[⟨⟨19,[6,2,1]⟩,9⟩],[⟨⟨19,[7,2,1]⟩,9⟩],[⟨⟨7,[11]⟩,1⟩],[⟨⟨6,[11]⟩,15⟩],[⟨⟨9,[11]⟩,6⟩],[⟨⟨9,[11]⟩,11⟩],[⟨⟨9,[11]⟩,12⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[11]⟩,1⟩,⟨⟨4,[11]⟩,15⟩,⟨⟨5,[11]⟩,16⟩,⟨⟨7,[11]⟩,6⟩,⟨⟨7,[11]⟩,11⟩,⟨⟨7,[11]⟩,12⟩,⟨⟨8,[11]⟩,17⟩,⟨⟨8,[11]⟩,18⟩,⟨⟨8,[11]⟩,19⟩,⟨⟨10,[]⟩,16⟩,⟨⟨10,[]⟩,17⟩,⟨⟨10,[]⟩,18⟩,⟨⟨10,[]⟩,19⟩,⟨⟨11,[0]⟩,15⟩,⟨⟨11,[1]⟩,6⟩,⟨⟨11,[1]⟩,11⟩,⟨⟨11,[1]⟩,12⟩,⟨⟨12,[2,1]⟩,1⟩,⟨⟨12,[3,1]⟩,8⟩,⟨⟨12,[3,1]⟩,9⟩,⟨⟨12,[4,0]⟩,1⟩,⟨⟨13,[2,1]⟩,3⟩,⟨⟨13,[3,1]⟩,4⟩,⟨⟨13,[3,1]⟩,5⟩,⟨⟨13,[4,0]⟩,6⟩,⟨⟨14,[2,1]⟩,7⟩,⟨⟨14,[2,1]⟩,8⟩,⟨⟨14,[2,1]⟩,9⟩,⟨⟨14,[4,0]⟩,3⟩,⟨⟨14,[4,0]⟩,13⟩,⟨⟨14,[4,0]⟩,14⟩,⟨⟨15,[5,4,0]⟩,1⟩,⟨⟨15,[6,2,1]⟩,1⟩,⟨⟨15,[7,2,1]⟩,1⟩,⟨⟨15,[8,4,0]⟩,9⟩,⟨⟨16,[5,4,0]⟩,7⟩,⟨⟨16,[6,2,1]⟩,8⟩,⟨⟨16,[7,2,1]⟩,9⟩,⟨⟨16,[8,4,0]⟩,10⟩,⟨⟨17,[5,4,0]⟩,8⟩,⟨⟨17,[5,4,0]⟩,9⟩,⟨⟨17,[6,2,1]⟩,9⟩,⟨⟨17,[7,2,1]⟩,9⟩,⟨⟨18,[5,4,0]⟩,11⟩,⟨⟨18,[5,4,0]⟩,12⟩,⟨⟨18,[6,2,1]⟩,13⟩,⟨⟨18,[7,2,1]⟩,14⟩,⟨⟨19,[5,4,0]⟩,4⟩,⟨⟨19,[5,4,0]⟩,5⟩,⟨⟨19,[6,2,1]⟩,10⟩,⟨⟨19,[7,2,1]⟩,10⟩,⟨⟨20,[9,5,4,0]⟩,8⟩,⟨⟨20,[9,5,4,0]⟩,9⟩,⟨⟨20,[10,6,2,1]⟩,9⟩,⟨⟨20,[10,7,2,1]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[12],[9],[10],[11],[13],[14],[15],[16],[17],[18],[19],[23],[20],[21],[22],[24],[25],[26],[27],[31],[50],[51],[6],[35],[36],[36],[34],[37],[37],[38],[39],[40],[41],[28],[42],[44,45],[52,53],[46],[47],[48],[49],[7],[8],[32],[33],[54],[55],[56],[57],[29],[30],[43],[44,45]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 10=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<58 := hi
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
end Certgen.R314
