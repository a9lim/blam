import Regular
namespace Certgen.R181
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 18,.lam 10,.app 11 15,.app 12 13,.var 1,.lam 14,.var 2,.app 16 17,.var 1,.opaque,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨13,[10,7]⟩],[⟨17,[10,7]⟩],[⟨7,[]⟩],[⟨13,[11,8]⟩],[⟨17,[11,8]⟩],[⟨15,[11,8]⟩],[⟨15,[10,7]⟩],[⟨13,[9,5]⟩,⟨13,[9,6]⟩],[⟨5,[2]⟩],[⟨18,[5]⟩,⟨18,[6]⟩],[⟨18,[7]⟩],[⟨18,[8]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨15,[9,5]⟩,1⟩],[⟨⟨15,[9,6]⟩,3⟩,⟨⟨15,[9,6]⟩,4⟩],[⟨⟨15,[10,7]⟩,3⟩,⟨⟨15,[10,7]⟩,4⟩],[⟨⟨15,[11,8]⟩,1⟩],[⟨⟨13,[9,5]⟩,3⟩],[⟨⟨13,[9,6]⟩,4⟩],[⟨⟨13,[10,7]⟩,5⟩],[⟨⟨13,[11,8]⟩,6⟩],[⟨⟨17,[10,7]⟩,5⟩],[⟨⟨17,[10,7]⟩,5⟩,⟨⟨17,[10,7]⟩,8⟩],[⟨⟨17,[10,7]⟩,8⟩],[⟨⟨17,[11,8]⟩,5⟩],[⟨⟨17,[11,8]⟩,5⟩,⟨⟨17,[11,8]⟩,8⟩],[⟨⟨17,[11,8]⟩,8⟩],[⟨⟨17,[11,8]⟩,7⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨18,[5]⟩,1⟩],[⟨⟨18,[6]⟩,3⟩,⟨⟨18,[6]⟩,4⟩],[⟨⟨18,[7]⟩,3⟩,⟨⟨18,[7]⟩,4⟩],[⟨⟨18,[8]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,18⟩,⟨⟨5,[2]⟩,10⟩,⟨⟨5,[2]⟩,14⟩,⟨⟨5,[2]⟩,15⟩,⟨⟨5,[2]⟩,16⟩,⟨⟨5,[2]⟩,17⟩,⟨⟨6,[3,2]⟩,6⟩,⟨⟨6,[4,2]⟩,5⟩,⟨⟨6,[4,2]⟩,7⟩,⟨⟨6,[4,2]⟩,8⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,18⟩,⟨⟨8,[5]⟩,1⟩,⟨⟨8,[6]⟩,3⟩,⟨⟨8,[6]⟩,4⟩,⟨⟨8,[7]⟩,3⟩,⟨⟨8,[7]⟩,4⟩,⟨⟨8,[8]⟩,1⟩,⟨⟨9,[5]⟩,19⟩,⟨⟨9,[6]⟩,20⟩,⟨⟨9,[7]⟩,21⟩,⟨⟨9,[8]⟩,22⟩,⟨⟨10,[9,5]⟩,1⟩,⟨⟨10,[9,6]⟩,3⟩,⟨⟨10,[9,6]⟩,4⟩,⟨⟨10,[10,7]⟩,3⟩,⟨⟨10,[10,7]⟩,4⟩,⟨⟨10,[11,8]⟩,1⟩,⟨⟨11,[9,5]⟩,3⟩,⟨⟨11,[9,6]⟩,4⟩,⟨⟨11,[10,7]⟩,5⟩,⟨⟨11,[11,8]⟩,6⟩,⟨⟨12,[9,5]⟩,7⟩,⟨⟨12,[9,6]⟩,8⟩,⟨⟨12,[10,7]⟩,9⟩,⟨⟨12,[11,8]⟩,10⟩,⟨⟨13,[9,5]⟩,9⟩,⟨⟨13,[9,5]⟩,11⟩,⟨⟨13,[9,5]⟩,12⟩,⟨⟨13,[9,5]⟩,13⟩,⟨⟨13,[9,6]⟩,9⟩,⟨⟨13,[9,6]⟩,11⟩,⟨⟨13,[9,6]⟩,12⟩,⟨⟨13,[9,6]⟩,13⟩,⟨⟨14,[0,9,5]⟩,5⟩,⟨⟨14,[0,9,6]⟩,5⟩,⟨⟨14,[1,9,5]⟩,5⟩,⟨⟨14,[1,9,5]⟩,8⟩,⟨⟨14,[1,9,6]⟩,5⟩,⟨⟨14,[1,9,6]⟩,8⟩,⟨⟨15,[10,7]⟩,5⟩,⟨⟨15,[10,7]⟩,8⟩,⟨⟨15,[11,8]⟩,5⟩,⟨⟨15,[11,8]⟩,7⟩,⟨⟨15,[11,8]⟩,8⟩,⟨⟨16,[10,7]⟩,11⟩,⟨⟨16,[10,7]⟩,12⟩,⟨⟨16,[10,7]⟩,13⟩,⟨⟨16,[11,8]⟩,14⟩,⟨⟨16,[11,8]⟩,15⟩,⟨⟨16,[11,8]⟩,16⟩,⟨⟨16,[11,8]⟩,17⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[18],[10],[11],[11,13],[13],[12],[15],[14],[16],[17],[20,21],[19],[22],[23],[24],[25],[26],[26],[27],[27],[28],[29],[30,31],[32,33],[34],[35],[36],[36],[37],[37],[38],[39],[40],[41],[42],[60],[58],[43,47],[5],[51],[53],[53,54],[54],[52],[55],[55,56],[56],[59],[57],[59],[61],[57],[58],[62],[63],[65],[68],[66],[44,48],[45,49],[46,50],[6],[7],[8],[9]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 9=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<69 := hi
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
 exact range_sound block60 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R181
