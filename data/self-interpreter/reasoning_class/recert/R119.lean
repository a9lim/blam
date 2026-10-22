import Regular
namespace Certgen.R119
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 16,.lam 10,.app 11 12,.var 0,.lam 13,.app 14 15,.var 2,.opaque,.app 17 18,.var 0,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[0,10,7]⟩,⟨15,[0,10,8]⟩,⟨15,[1,10,7]⟩,⟨15,[1,10,8]⟩],[⟨15,[2,10,7]⟩,⟨15,[2,10,8]⟩],[⟨18,[7]⟩,⟨18,[8]⟩],[⟨7,[]⟩],[⟨15,[0,11,9]⟩,⟨15,[1,11,9]⟩],[⟨15,[2,11,9]⟩],[⟨18,[9]⟩],[⟨12,[10,7]⟩,⟨12,[10,8]⟩],[⟨12,[11,9]⟩],[⟨5,[3]⟩],[⟨16,[7]⟩,⟨16,[8]⟩],[⟨16,[9]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[10,7]⟩,1⟩],[⟨⟨12,[10,8]⟩,1⟩],[⟨⟨12,[11,9]⟩,1⟩],[⟨⟨15,[0,10,7]⟩,3⟩,⟨⟨15,[0,10,7]⟩,4⟩],[⟨⟨15,[0,10,8]⟩,3⟩,⟨⟨15,[0,10,8]⟩,4⟩],[⟨⟨15,[0,11,9]⟩,3⟩,⟨⟨15,[0,11,9]⟩,4⟩],[⟨⟨15,[1,10,7]⟩,3⟩,⟨⟨15,[1,10,7]⟩,4⟩],[⟨⟨15,[1,10,8]⟩,3⟩,⟨⟨15,[1,10,8]⟩,4⟩],[⟨⟨15,[1,11,9]⟩,3⟩,⟨⟨15,[1,11,9]⟩,4⟩],[⟨⟨15,[2,10,7]⟩,3⟩,⟨⟨15,[2,10,7]⟩,4⟩],[⟨⟨15,[2,10,8]⟩,3⟩,⟨⟨15,[2,10,8]⟩,4⟩],[⟨⟨15,[2,11,9]⟩,3⟩,⟨⟨15,[2,11,9]⟩,4⟩],[⟨⟨18,[7]⟩,3⟩,⟨⟨18,[7]⟩,4⟩],[⟨⟨18,[8]⟩,3⟩,⟨⟨18,[8]⟩,4⟩],[⟨⟨18,[9]⟩,5⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨16,[7]⟩,1⟩],[⟨⟨16,[8]⟩,1⟩],[⟨⟨16,[9]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,18⟩,⟨⟨5,[3]⟩,8⟩,⟨⟨5,[3]⟩,11⟩,⟨⟨5,[3]⟩,14⟩,⟨⟨5,[3]⟩,17⟩,⟨⟨6,[4,3]⟩,3⟩,⟨⟨6,[4,3]⟩,4⟩,⟨⟨6,[5,3]⟩,3⟩,⟨⟨6,[5,3]⟩,4⟩,⟨⟨6,[6,3]⟩,5⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,18⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨8,[8]⟩,1⟩,⟨⟨8,[9]⟩,1⟩,⟨⟨9,[7]⟩,19⟩,⟨⟨9,[8]⟩,20⟩,⟨⟨9,[9]⟩,21⟩,⟨⟨10,[10,7]⟩,1⟩,⟨⟨10,[10,8]⟩,1⟩,⟨⟨10,[11,9]⟩,1⟩,⟨⟨11,[10,7]⟩,3⟩,⟨⟨11,[10,8]⟩,4⟩,⟨⟨11,[11,9]⟩,5⟩,⟨⟨12,[10,7]⟩,6⟩,⟨⟨12,[10,7]⟩,9⟩,⟨⟨12,[10,7]⟩,12⟩,⟨⟨12,[10,7]⟩,15⟩,⟨⟨12,[10,8]⟩,6⟩,⟨⟨12,[10,8]⟩,9⟩,⟨⟨12,[10,8]⟩,12⟩,⟨⟨12,[10,8]⟩,15⟩,⟨⟨12,[11,9]⟩,7⟩,⟨⟨12,[11,9]⟩,10⟩,⟨⟨12,[11,9]⟩,13⟩,⟨⟨12,[11,9]⟩,16⟩,⟨⟨13,[0,10,7]⟩,3⟩,⟨⟨13,[0,10,7]⟩,4⟩,⟨⟨13,[0,10,8]⟩,3⟩,⟨⟨13,[0,10,8]⟩,4⟩,⟨⟨13,[0,11,9]⟩,3⟩,⟨⟨13,[0,11,9]⟩,4⟩,⟨⟨13,[1,10,7]⟩,3⟩,⟨⟨13,[1,10,7]⟩,4⟩,⟨⟨13,[1,10,8]⟩,3⟩,⟨⟨13,[1,10,8]⟩,4⟩,⟨⟨13,[1,11,9]⟩,3⟩,⟨⟨13,[1,11,9]⟩,4⟩,⟨⟨13,[2,10,7]⟩,3⟩,⟨⟨13,[2,10,7]⟩,4⟩,⟨⟨13,[2,10,8]⟩,3⟩,⟨⟨13,[2,10,8]⟩,4⟩,⟨⟨13,[2,11,9]⟩,3⟩,⟨⟨13,[2,11,9]⟩,4⟩,⟨⟨14,[0,10,7]⟩,6⟩,⟨⟨14,[0,10,8]⟩,7⟩,⟨⟨14,[0,11,9]⟩,8⟩,⟨⟨14,[1,10,7]⟩,9⟩,⟨⟨14,[1,10,8]⟩,10⟩,⟨⟨14,[1,11,9]⟩,11⟩,⟨⟨14,[2,10,7]⟩,12⟩,⟨⟨14,[2,10,8]⟩,13⟩,⟨⟨14,[2,11,9]⟩,14⟩,⟨⟨16,[7]⟩,3⟩,⟨⟨16,[7]⟩,4⟩,⟨⟨16,[8]⟩,3⟩,⟨⟨16,[8]⟩,4⟩,⟨⟨16,[9]⟩,5⟩,⟨⟨17,[7]⟩,15⟩,⟨⟨17,[8]⟩,16⟩,⟨⟨17,[9]⟩,17⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[17],[9,10],[9,10],[11,12],[13],[14],[15],[14],[15],[16],[18],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[69,71],[70,72],[73],[42,43],[42,43],[48,49],[54,55],[44,45],[44,45],[50,51],[56,57],[46,47],[46,47],[52,53],[58,59],[60],[60],[61],[61],[62],[62],[63],[63],[64],[64],[65],[65],[66],[66],[67],[67],[68],[68],[30,34],[38],[5],[31,35],[39],[6],[32,36],[40],[7],[74],[74],[75],[75],[76],[33,37],[41],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 5=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<77 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 by_cases h48 : i<60
 · exact range_sound block48 i (by omega) h48 hi
 by_cases h60 : i<72
 · exact range_sound block60 i (by omega) h60 hi
 exact range_sound block72 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R119
