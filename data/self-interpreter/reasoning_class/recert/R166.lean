import Regular
namespace Certgen.R166
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 8,.lam 3,.app 4 5,.var 0,.lam 6,.lam 7,.var 2,.lam 9,.app 10 17,.lam 11,.app 12 16,.app 13 14,.var 0,.lam 15,.var 1,.var 0,.app 18 19,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[8]⟩],[⟨17,[9]⟩],[⟨17,[10]⟩],[⟨19,[9]⟩],[⟨8,[]⟩],[⟨19,[10]⟩],[⟨14,[2,10]⟩],[⟨19,[8]⟩],[⟨16,[2,10]⟩],[⟨14,[0,8]⟩,⟨14,[1,9]⟩],[⟨5,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨16,[0,8]⟩,1⟩],[⟨⟨16,[1,9]⟩,3⟩,⟨⟨16,[1,9]⟩,4⟩],[⟨⟨16,[2,10]⟩,1⟩],[⟨⟨14,[0,8]⟩,3⟩],[⟨⟨14,[1,9]⟩,4⟩],[⟨⟨14,[2,10]⟩,5⟩],[⟨⟨19,[8]⟩,6⟩],[⟨⟨19,[8]⟩,7⟩],[⟨⟨19,[9]⟩,7⟩],[⟨⟨19,[10]⟩,9⟩],[⟨⟨19,[10]⟩,8⟩],[⟨⟨19,[10]⟩,10⟩],[⟨⟨5,[4]⟩,1⟩],[⟨⟨17,[8]⟩,1⟩],[⟨⟨17,[9]⟩,3⟩,⟨⟨17,[9]⟩,4⟩],[⟨⟨17,[10]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,15⟩,⟨⟨5,[4]⟩,12⟩,⟨⟨5,[4]⟩,13⟩,⟨⟨5,[4]⟩,14⟩,⟨⟨6,[5,4]⟩,8⟩,⟨⟨6,[5,4]⟩,9⟩,⟨⟨6,[5,4]⟩,10⟩,⟨⟨7,[6,5,4]⟩,5⟩,⟨⟨7,[7,5,4]⟩,6⟩,⟨⟨7,[7,5,4]⟩,7⟩,⟨⟨8,[]⟩,5⟩,⟨⟨8,[]⟩,6⟩,⟨⟨8,[]⟩,7⟩,⟨⟨8,[]⟩,15⟩,⟨⟨9,[8]⟩,1⟩,⟨⟨9,[9]⟩,3⟩,⟨⟨9,[9]⟩,4⟩,⟨⟨9,[10]⟩,1⟩,⟨⟨10,[8]⟩,16⟩,⟨⟨10,[9]⟩,17⟩,⟨⟨10,[10]⟩,18⟩,⟨⟨11,[0,8]⟩,1⟩,⟨⟨11,[1,9]⟩,3⟩,⟨⟨11,[1,9]⟩,4⟩,⟨⟨11,[2,10]⟩,1⟩,⟨⟨12,[0,8]⟩,3⟩,⟨⟨12,[1,9]⟩,4⟩,⟨⟨12,[2,10]⟩,5⟩,⟨⟨13,[0,8]⟩,6⟩,⟨⟨13,[1,9]⟩,7⟩,⟨⟨13,[2,10]⟩,8⟩,⟨⟨14,[0,8]⟩,11⟩,⟨⟨14,[1,9]⟩,11⟩,⟨⟨15,[3,0,8]⟩,7⟩,⟨⟨15,[3,1,9]⟩,7⟩,⟨⟨16,[2,10]⟩,9⟩,⟨⟨16,[2,10]⟩,10⟩,⟨⟨17,[8]⟩,6⟩,⟨⟨17,[8]⟩,7⟩,⟨⟨17,[9]⟩,7⟩,⟨⟨17,[10]⟩,8⟩,⟨⟨17,[10]⟩,9⟩,⟨⟨17,[10]⟩,10⟩,⟨⟨18,[8]⟩,9⟩,⟨⟨18,[8]⟩,10⟩,⟨⟨18,[9]⟩,11⟩,⟨⟨18,[10]⟩,12⟩,⟨⟨18,[10]⟩,13⟩,⟨⟨18,[10]⟩,14⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[17],[9],[8],[10],[11],[12],[13],[14],[15],[16],[18],[19],[20],[21],[22],[23],[23],[24],[25],[26,27],[28],[29],[30],[30],[31],[32],[33],[34],[41],[43],[44],[37],[38],[42],[43],[45],[46],[47],[48],[49],[51],[50],[52],[39],[40],[35,36],[5],[6],[7]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 5=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<53 := hi
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
end Certgen.R166
