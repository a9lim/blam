import Regular
namespace Certgen.R235
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.app 9 17,.lam 10,.app 11 14,.app 12 13,.var 0,.opaque,.app 15 16,.var 0,.opaque,.lam 18,.var 1,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨13,[6,3]⟩,⟨13,[6,4]⟩,⟨13,[7,5]⟩],[⟨16,[6,3]⟩,⟨16,[6,4]⟩,⟨16,[7,5]⟩],[⟨6,[]⟩],[⟨14,[7,5]⟩],[⟨14,[6,3]⟩,⟨14,[6,4]⟩],[⟨5,[2]⟩],[⟨17,[3]⟩,⟨17,[4]⟩],[⟨17,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨14,[6,3]⟩,13⟩],[⟨⟨14,[6,4]⟩,14⟩],[⟨⟨14,[7,5]⟩,15⟩],[⟨⟨13,[6,3]⟩,3⟩],[⟨⟨13,[6,4]⟩,4⟩],[⟨⟨13,[7,5]⟩,5⟩],[⟨⟨16,[6,3]⟩,3⟩,⟨⟨16,[6,3]⟩,4⟩],[⟨⟨16,[6,4]⟩,3⟩,⟨⟨16,[6,4]⟩,4⟩],[⟨⟨16,[7,5]⟩,3⟩,⟨⟨16,[7,5]⟩,4⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨19,[3]⟩,15⟩],[⟨⟨19,[4]⟩,13⟩,⟨⟨19,[4]⟩,14⟩],[⟨⟨19,[5]⟩,1⟩],[⟨⟨17,[3]⟩,13⟩],[⟨⟨17,[4]⟩,14⟩],[⟨⟨17,[5]⟩,15⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,12⟩,⟨⟨5,[2]⟩,3⟩,⟨⟨5,[2]⟩,4⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨6,[]⟩,3⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,12⟩,⟨⟨7,[3]⟩,15⟩,⟨⟨7,[4]⟩,13⟩,⟨⟨7,[4]⟩,14⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨8,[3]⟩,13⟩,⟨⟨8,[4]⟩,14⟩,⟨⟨8,[5]⟩,15⟩,⟨⟨9,[3]⟩,16⟩,⟨⟨9,[4]⟩,17⟩,⟨⟨9,[5]⟩,18⟩,⟨⟨10,[6,3]⟩,13⟩,⟨⟨10,[6,4]⟩,14⟩,⟨⟨10,[7,5]⟩,15⟩,⟨⟨11,[6,3]⟩,3⟩,⟨⟨11,[6,4]⟩,4⟩,⟨⟨11,[7,5]⟩,5⟩,⟨⟨12,[6,3]⟩,6⟩,⟨⟨12,[6,4]⟩,7⟩,⟨⟨12,[7,5]⟩,8⟩,⟨⟨14,[6,3]⟩,3⟩,⟨⟨14,[6,3]⟩,4⟩,⟨⟨14,[6,4]⟩,3⟩,⟨⟨14,[6,4]⟩,4⟩,⟨⟨14,[7,5]⟩,3⟩,⟨⟨14,[7,5]⟩,4⟩,⟨⟨15,[6,3]⟩,9⟩,⟨⟨15,[6,4]⟩,10⟩,⟨⟨15,[7,5]⟩,11⟩,⟨⟨17,[3]⟩,6⟩,⟨⟨17,[3]⟩,7⟩,⟨⟨17,[3]⟩,9⟩,⟨⟨17,[3]⟩,10⟩,⟨⟨17,[4]⟩,6⟩,⟨⟨17,[4]⟩,7⟩,⟨⟨17,[4]⟩,9⟩,⟨⟨17,[4]⟩,10⟩,⟨⟨17,[5]⟩,8⟩,⟨⟨17,[5]⟩,11⟩,⟨⟨18,[0,3]⟩,3⟩,⟨⟨18,[0,3]⟩,4⟩,⟨⟨18,[0,4]⟩,3⟩,⟨⟨18,[0,4]⟩,4⟩,⟨⟨18,[0,5]⟩,5⟩,⟨⟨18,[1,3]⟩,3⟩,⟨⟨18,[1,3]⟩,4⟩,⟨⟨18,[1,4]⟩,3⟩,⟨⟨18,[1,4]⟩,4⟩,⟨⟨18,[1,5]⟩,3⟩,⟨⟨18,[1,5]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[8],[9],[10],[13],[14],[12],[15],[16],[17],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[40,44],[41,45],[48],[37],[37],[38],[38],[39],[39],[42,46],[43,47],[49],[50],[51],[55,56],[55,56],[52],[53],[57,58],[57,58],[54],[59,60],[35],[36],[31,33],[32,34],[7],[35],[36],[31,33],[32,34],[5],[6]]
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
end Certgen.R235
