import Regular
namespace Certgen.R233
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 15,.app 10 14,.lam 11,.app 12 13,.var 1,.opaque,.opaque,.lam 16,.app 17 18,.var 1,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨14,[9]⟩],[⟨14,[10]⟩,⟨14,[11]⟩],[⟨13,[1,10]⟩,⟨13,[1,11]⟩],[⟨18,[2,10]⟩,⟨18,[2,11]⟩],[⟨18,[3,10]⟩,⟨18,[3,11]⟩,⟨18,[4,10]⟩,⟨18,[4,11]⟩],[⟨7,[]⟩],[⟨13,[0,9]⟩],[⟨18,[2,9]⟩],[⟨18,[3,9]⟩,⟨18,[4,9]⟩],[⟨5,[5]⟩],[⟨15,[9]⟩],[⟨15,[10]⟩,⟨15,[11]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨13,[0,9]⟩,16⟩],[⟨⟨13,[1,10]⟩,17⟩],[⟨⟨13,[1,11]⟩,18⟩],[⟨⟨18,[2,9]⟩,17⟩],[⟨⟨18,[2,10]⟩,18⟩],[⟨⟨18,[2,11]⟩,18⟩],[⟨⟨18,[3,9]⟩,18⟩],[⟨⟨18,[3,10]⟩,18⟩],[⟨⟨18,[3,11]⟩,18⟩],[⟨⟨18,[4,9]⟩,18⟩],[⟨⟨18,[4,10]⟩,18⟩],[⟨⟨18,[4,11]⟩,18⟩],[⟨⟨5,[5]⟩,1⟩],[⟨⟨15,[9]⟩,1⟩],[⟨⟨15,[10]⟩,1⟩],[⟨⟨15,[11]⟩,1⟩],[⟨⟨14,[9]⟩,16⟩],[⟨⟨14,[10]⟩,17⟩],[⟨⟨14,[11]⟩,18⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,15⟩,⟨⟨5,[5]⟩,3⟩,⟨⟨5,[5]⟩,6⟩,⟨⟨5,[5]⟩,9⟩,⟨⟨5,[5]⟩,12⟩,⟨⟨6,[6,5]⟩,16⟩,⟨⟨6,[7,5]⟩,17⟩,⟨⟨6,[8,5]⟩,18⟩,⟨⟨7,[]⟩,15⟩,⟨⟨7,[]⟩,16⟩,⟨⟨7,[]⟩,17⟩,⟨⟨7,[]⟩,18⟩,⟨⟨8,[9]⟩,1⟩,⟨⟨8,[10]⟩,1⟩,⟨⟨8,[11]⟩,1⟩,⟨⟨9,[9]⟩,16⟩,⟨⟨9,[10]⟩,17⟩,⟨⟨9,[11]⟩,18⟩,⟨⟨10,[9]⟩,19⟩,⟨⟨10,[10]⟩,20⟩,⟨⟨10,[11]⟩,21⟩,⟨⟨11,[0,9]⟩,16⟩,⟨⟨11,[1,10]⟩,17⟩,⟨⟨11,[1,11]⟩,18⟩,⟨⟨12,[0,9]⟩,3⟩,⟨⟨12,[1,10]⟩,4⟩,⟨⟨12,[1,11]⟩,5⟩,⟨⟨15,[9]⟩,4⟩,⟨⟨15,[9]⟩,7⟩,⟨⟨15,[9]⟩,10⟩,⟨⟨15,[9]⟩,13⟩,⟨⟨15,[10]⟩,5⟩,⟨⟨15,[10]⟩,8⟩,⟨⟨15,[10]⟩,11⟩,⟨⟨15,[10]⟩,14⟩,⟨⟨15,[11]⟩,5⟩,⟨⟨15,[11]⟩,8⟩,⟨⟨15,[11]⟩,11⟩,⟨⟨15,[11]⟩,14⟩,⟨⟨16,[2,9]⟩,17⟩,⟨⟨16,[2,10]⟩,18⟩,⟨⟨16,[2,11]⟩,18⟩,⟨⟨16,[3,9]⟩,18⟩,⟨⟨16,[3,10]⟩,18⟩,⟨⟨16,[3,11]⟩,18⟩,⟨⟨16,[4,9]⟩,18⟩,⟨⟨16,[4,10]⟩,18⟩,⟨⟨16,[4,11]⟩,18⟩,⟨⟨17,[2,9]⟩,6⟩,⟨⟨17,[2,10]⟩,7⟩,⟨⟨17,[2,11]⟩,8⟩,⟨⟨17,[3,9]⟩,9⟩,⟨⟨17,[3,10]⟩,10⟩,⟨⟨17,[3,11]⟩,11⟩,⟨⟨17,[4,9]⟩,12⟩,⟨⟨17,[4,10]⟩,13⟩,⟨⟨17,[4,11]⟩,14⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[12],[9],[10],[11],[11],[13],[14],[15],[16],[17],[18],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[5],[31],[35,39],[43],[46],[49],[49],[44],[47],[50],[50],[45],[48],[51],[51],[52],[53],[54],[55],[56],[57],[58],[59],[60],[6],[32],[36,40],[7],[33],[37,41],[8],[34],[38,42]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<61 := hi
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
end Certgen.R233
