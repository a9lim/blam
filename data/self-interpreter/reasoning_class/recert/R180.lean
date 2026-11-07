import Regular
namespace Certgen.R180
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 18,.lam 10,.app 11 14,.app 12 13,.var 1,.opaque,.lam 15,.app 16 17,.var 2,.opaque,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨13,[10,7]⟩,⟨13,[10,8]⟩],[⟨17,[0,10,7]⟩,⟨17,[0,10,8]⟩],[⟨17,[1,10,7]⟩,⟨17,[1,10,8]⟩,⟨17,[2,10,7]⟩,⟨17,[2,10,8]⟩],[⟨7,[]⟩],[⟨13,[11,9]⟩],[⟨17,[0,11,9]⟩],[⟨17,[1,11,9]⟩,⟨17,[2,11,9]⟩],[⟨14,[11,9]⟩],[⟨14,[10,7]⟩,⟨14,[10,8]⟩],[⟨5,[3]⟩],[⟨18,[7]⟩,⟨18,[8]⟩],[⟨18,[9]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨14,[10,7]⟩,1⟩],[⟨⟨14,[10,8]⟩,1⟩],[⟨⟨14,[11,9]⟩,1⟩],[⟨⟨13,[10,7]⟩,3⟩],[⟨⟨13,[10,8]⟩,4⟩],[⟨⟨13,[11,9]⟩,5⟩],[⟨⟨17,[0,10,7]⟩,4⟩],[⟨⟨17,[0,10,8]⟩,4⟩],[⟨⟨17,[0,11,9]⟩,3⟩],[⟨⟨17,[1,10,7]⟩,4⟩],[⟨⟨17,[1,10,8]⟩,4⟩],[⟨⟨17,[1,11,9]⟩,4⟩],[⟨⟨17,[2,10,7]⟩,4⟩],[⟨⟨17,[2,10,8]⟩,4⟩],[⟨⟨17,[2,11,9]⟩,4⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨18,[7]⟩,1⟩],[⟨⟨18,[8]⟩,1⟩],[⟨⟨18,[9]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,18⟩,⟨⟨5,[3]⟩,8⟩,⟨⟨5,[3]⟩,11⟩,⟨⟨5,[3]⟩,14⟩,⟨⟨5,[3]⟩,17⟩,⟨⟨6,[4,3]⟩,5⟩,⟨⟨6,[5,3]⟩,3⟩,⟨⟨6,[6,3]⟩,4⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,18⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨8,[8]⟩,1⟩,⟨⟨8,[9]⟩,1⟩,⟨⟨9,[7]⟩,19⟩,⟨⟨9,[8]⟩,20⟩,⟨⟨9,[9]⟩,21⟩,⟨⟨10,[10,7]⟩,1⟩,⟨⟨10,[10,8]⟩,1⟩,⟨⟨10,[11,9]⟩,1⟩,⟨⟨11,[10,7]⟩,3⟩,⟨⟨11,[10,8]⟩,4⟩,⟨⟨11,[11,9]⟩,5⟩,⟨⟨12,[10,7]⟩,6⟩,⟨⟨12,[10,8]⟩,7⟩,⟨⟨12,[11,9]⟩,8⟩,⟨⟨14,[10,7]⟩,7⟩,⟨⟨14,[10,7]⟩,10⟩,⟨⟨14,[10,7]⟩,13⟩,⟨⟨14,[10,7]⟩,16⟩,⟨⟨14,[10,8]⟩,7⟩,⟨⟨14,[10,8]⟩,10⟩,⟨⟨14,[10,8]⟩,13⟩,⟨⟨14,[10,8]⟩,16⟩,⟨⟨14,[11,9]⟩,6⟩,⟨⟨14,[11,9]⟩,9⟩,⟨⟨14,[11,9]⟩,12⟩,⟨⟨14,[11,9]⟩,15⟩,⟨⟨15,[0,10,7]⟩,4⟩,⟨⟨15,[0,10,8]⟩,4⟩,⟨⟨15,[0,11,9]⟩,3⟩,⟨⟨15,[1,10,7]⟩,4⟩,⟨⟨15,[1,10,8]⟩,4⟩,⟨⟨15,[1,11,9]⟩,4⟩,⟨⟨15,[2,10,7]⟩,4⟩,⟨⟨15,[2,10,8]⟩,4⟩,⟨⟨15,[2,11,9]⟩,4⟩,⟨⟨16,[0,10,7]⟩,9⟩,⟨⟨16,[0,10,8]⟩,10⟩,⟨⟨16,[0,11,9]⟩,11⟩,⟨⟨16,[1,10,7]⟩,12⟩,⟨⟨16,[1,10,8]⟩,13⟩,⟨⟨16,[1,11,9]⟩,14⟩,⟨⟨16,[2,10,7]⟩,15⟩,⟨⟨16,[2,10,8]⟩,16⟩,⟨⟨16,[2,11,9]⟩,17⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[9],[10],[11],[11],[14],[12],[13],[17],[17],[16],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[39],[31,35],[5],[43],[46],[49],[49],[44],[47],[50],[50],[45],[48],[51],[51],[52],[53],[54],[55],[56],[57],[58],[59],[60],[40],[32,36],[6],[41],[33,37],[7],[42],[34,38],[8]]
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
end Certgen.R180
