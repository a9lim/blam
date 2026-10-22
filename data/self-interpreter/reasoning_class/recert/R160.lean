import Regular
namespace Certgen.R160
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.opaque,.lam 7,.app 8 14,.lam 9,.app 10 13,.app 11 12,.var 0,.var 0,.opaque,.lam 15,.app 16 17,.var 0,.app 18 19,.var 0,.lam 20,.var 1,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[8,7]⟩],[⟨17,[0,7]⟩],[⟨17,[1,7]⟩,⟨17,[2,7]⟩],[⟨19,[0,7]⟩],[⟨19,[0,7]⟩,⟨19,[1,7]⟩,⟨19,[2,7]⟩],[⟨17,[3,7]⟩,⟨17,[4,7]⟩],[⟨6,[]⟩],[⟨5,[6]⟩],[⟨14,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[8,7]⟩,18⟩],[⟨⟨17,[0,7]⟩,18⟩],[⟨⟨17,[1,7]⟩,18⟩],[⟨⟨17,[2,7]⟩,18⟩],[⟨⟨17,[3,7]⟩,5⟩,⟨⟨17,[3,7]⟩,12⟩],[⟨⟨17,[4,7]⟩,6⟩,⟨⟨17,[4,7]⟩,13⟩,⟨⟨17,[4,7]⟩,14⟩,⟨⟨17,[4,7]⟩,15⟩],[⟨⟨19,[0,7]⟩,5⟩],[⟨⟨19,[0,7]⟩,12⟩],[⟨⟨19,[0,7]⟩,6⟩,⟨⟨19,[0,7]⟩,13⟩,⟨⟨19,[0,7]⟩,14⟩,⟨⟨19,[0,7]⟩,15⟩],[⟨⟨19,[1,7]⟩,6⟩,⟨⟨19,[1,7]⟩,14⟩],[⟨⟨19,[1,7]⟩,6⟩,⟨⟨19,[1,7]⟩,13⟩,⟨⟨19,[1,7]⟩,14⟩,⟨⟨19,[1,7]⟩,15⟩],[⟨⟨19,[2,7]⟩,6⟩,⟨⟨19,[2,7]⟩,14⟩],[⟨⟨19,[2,7]⟩,6⟩,⟨⟨19,[2,7]⟩,13⟩,⟨⟨19,[2,7]⟩,14⟩,⟨⟨19,[2,7]⟩,15⟩],[⟨⟨5,[6]⟩,1⟩],[⟨⟨14,[7]⟩,1⟩],[⟨⟨13,[8,7]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,16⟩,⟨⟨6,[]⟩,16⟩,⟨⟨7,[7]⟩,1⟩,⟨⟨8,[7]⟩,17⟩,⟨⟨9,[8,7]⟩,1⟩,⟨⟨10,[8,7]⟩,18⟩,⟨⟨11,[8,7]⟩,3⟩,⟨⟨12,[8,7]⟩,4⟩,⟨⟨12,[8,7]⟩,5⟩,⟨⟨12,[8,7]⟩,6⟩,⟨⟨12,[8,7]⟩,9⟩,⟨⟨12,[8,7]⟩,10⟩,⟨⟨12,[8,7]⟩,11⟩,⟨⟨12,[8,7]⟩,12⟩,⟨⟨12,[8,7]⟩,13⟩,⟨⟨12,[8,7]⟩,14⟩,⟨⟨12,[8,7]⟩,15⟩,⟨⟨14,[7]⟩,3⟩,⟨⟨14,[7]⟩,4⟩,⟨⟨14,[7]⟩,5⟩,⟨⟨14,[7]⟩,6⟩,⟨⟨14,[7]⟩,9⟩,⟨⟨14,[7]⟩,10⟩,⟨⟨14,[7]⟩,11⟩,⟨⟨14,[7]⟩,12⟩,⟨⟨14,[7]⟩,13⟩,⟨⟨14,[7]⟩,14⟩,⟨⟨14,[7]⟩,15⟩,⟨⟨15,[0,7]⟩,18⟩,⟨⟨15,[1,7]⟩,18⟩,⟨⟨15,[2,7]⟩,18⟩,⟨⟨15,[3,7]⟩,5⟩,⟨⟨15,[3,7]⟩,12⟩,⟨⟨15,[4,7]⟩,6⟩,⟨⟨15,[4,7]⟩,13⟩,⟨⟨15,[4,7]⟩,14⟩,⟨⟨15,[4,7]⟩,15⟩,⟨⟨16,[0,7]⟩,4⟩,⟨⟨16,[1,7]⟩,5⟩,⟨⟨16,[2,7]⟩,6⟩,⟨⟨16,[3,7]⟩,7⟩,⟨⟨16,[4,7]⟩,8⟩,⟨⟨17,[0,7]⟩,5⟩,⟨⟨17,[0,7]⟩,6⟩,⟨⟨17,[0,7]⟩,12⟩,⟨⟨17,[0,7]⟩,13⟩,⟨⟨17,[0,7]⟩,14⟩,⟨⟨17,[0,7]⟩,15⟩,⟨⟨17,[1,7]⟩,6⟩,⟨⟨17,[1,7]⟩,13⟩,⟨⟨17,[1,7]⟩,14⟩,⟨⟨17,[1,7]⟩,15⟩,⟨⟨17,[2,7]⟩,6⟩,⟨⟨17,[2,7]⟩,13⟩,⟨⟨17,[2,7]⟩,14⟩,⟨⟨17,[2,7]⟩,15⟩,⟨⟨18,[0,7]⟩,9⟩,⟨⟨18,[0,7]⟩,10⟩,⟨⟨18,[0,7]⟩,11⟩,⟨⟨18,[1,7]⟩,12⟩,⟨⟨18,[1,7]⟩,13⟩,⟨⟨18,[2,7]⟩,14⟩,⟨⟨18,[2,7]⟩,15⟩,⟨⟨19,[0,7]⟩,7⟩,⟨⟨19,[0,7]⟩,8⟩,⟨⟨19,[1,7]⟩,8⟩,⟨⟨19,[2,7]⟩,8⟩,⟨⟨20,[5,0,7]⟩,5⟩,⟨⟨20,[5,0,7]⟩,6⟩,⟨⟨20,[5,0,7]⟩,12⟩,⟨⟨20,[5,0,7]⟩,13⟩,⟨⟨20,[5,0,7]⟩,14⟩,⟨⟨20,[5,0,7]⟩,15⟩,⟨⟨20,[5,1,7]⟩,6⟩,⟨⟨20,[5,1,7]⟩,13⟩,⟨⟨20,[5,1,7]⟩,14⟩,⟨⟨20,[5,1,7]⟩,15⟩,⟨⟨20,[5,2,7]⟩,6⟩,⟨⟨20,[5,2,7]⟩,13⟩,⟨⟨20,[5,2,7]⟩,14⟩,⟨⟨20,[5,2,7]⟩,15⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[34],[35],[36],[37,38,39,40],[37,39],[37,38,39,40],[37,39],[37,38,39,40],[41],[42],[43],[44],[44],[45],[45],[45],[45],[11],[46],[52,56],[67],[68,69,70],[60],[62],[61],[62],[62],[62],[63],[64],[63],[64],[65],[66],[65],[66],[14],[15],[16],[48],[49],[54,58],[55,59],[71,73],[72,74,75,76],[77,78,79,80],[81,82,83,84],[12],[13],[17],[18],[19],[20],[47],[49],[50],[51],[52,56],[53,57],[54,58],[55,59]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 12=true := by decide
theorem block84 : checkRange P V K states hints 84 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<85 := hi
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
 by_cases h72 : i<84
 · exact range_sound block72 i (by omega) h72 hi
 exact range_sound block84 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R160
