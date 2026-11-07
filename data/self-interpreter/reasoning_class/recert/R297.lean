import Regular
namespace Certgen.R297
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 14,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.lam 8,.app 9 10,.var 0,.app 11 12,.var 0,.lam 13,.var 1,.lam 15,.lam 16,.app 17 18,.var 0,.var 0,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨10,[4,3]⟩,⟨10,[5,3]⟩],[⟨6,[3]⟩],[⟨7,[3]⟩],[⟨14,[]⟩],[⟨12,[6,3]⟩,⟨12,[7,3]⟩,⟨12,[8,3]⟩],[⟨12,[6,3]⟩],[⟨18,[2,1]⟩],[⟨10,[7,3]⟩,⟨10,[8,3]⟩],[⟨10,[6,3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨14,[]⟩,1⟩],[⟨⟨12,[6,3]⟩,6⟩,⟨⟨12,[6,3]⟩,7⟩,⟨⟨12,[6,3]⟩,8⟩,⟨⟨12,[6,3]⟩,16⟩],[⟨⟨12,[6,3]⟩,9⟩],[⟨⟨12,[6,3]⟩,17⟩],[⟨⟨12,[7,3]⟩,6⟩,⟨⟨12,[7,3]⟩,7⟩,⟨⟨12,[7,3]⟩,8⟩,⟨⟨12,[7,3]⟩,16⟩],[⟨⟨12,[7,3]⟩,7⟩,⟨⟨12,[7,3]⟩,16⟩],[⟨⟨12,[8,3]⟩,6⟩,⟨⟨12,[8,3]⟩,7⟩,⟨⟨12,[8,3]⟩,8⟩,⟨⟨12,[8,3]⟩,16⟩],[⟨⟨12,[8,3]⟩,7⟩,⟨⟨12,[8,3]⟩,16⟩],[⟨⟨18,[2,1]⟩,1⟩],[⟨⟨7,[3]⟩,1⟩],[⟨⟨6,[3]⟩,11⟩],[⟨⟨10,[4,3]⟩,6⟩,⟨⟨10,[4,3]⟩,7⟩,⟨⟨10,[4,3]⟩,8⟩,⟨⟨10,[4,3]⟩,16⟩],[⟨⟨10,[5,3]⟩,9⟩,⟨⟨10,[5,3]⟩,17⟩],[⟨⟨10,[6,3]⟩,1⟩],[⟨⟨10,[7,3]⟩,1⟩],[⟨⟨10,[8,3]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,11⟩,⟨⟨5,[3]⟩,12⟩,⟨⟨7,[3]⟩,3⟩,⟨⟨7,[3]⟩,4⟩,⟨⟨7,[3]⟩,5⟩,⟨⟨7,[3]⟩,6⟩,⟨⟨7,[3]⟩,7⟩,⟨⟨7,[3]⟩,8⟩,⟨⟨7,[3]⟩,9⟩,⟨⟨7,[3]⟩,10⟩,⟨⟨7,[3]⟩,15⟩,⟨⟨7,[3]⟩,16⟩,⟨⟨7,[3]⟩,17⟩,⟨⟨8,[4,3]⟩,6⟩,⟨⟨8,[4,3]⟩,7⟩,⟨⟨8,[4,3]⟩,8⟩,⟨⟨8,[4,3]⟩,16⟩,⟨⟨8,[5,3]⟩,9⟩,⟨⟨8,[5,3]⟩,17⟩,⟨⟨8,[6,3]⟩,1⟩,⟨⟨8,[7,3]⟩,1⟩,⟨⟨8,[8,3]⟩,1⟩,⟨⟨9,[4,3]⟩,13⟩,⟨⟨9,[5,3]⟩,14⟩,⟨⟨9,[6,3]⟩,15⟩,⟨⟨9,[7,3]⟩,16⟩,⟨⟨9,[8,3]⟩,17⟩,⟨⟨10,[6,3]⟩,6⟩,⟨⟨10,[6,3]⟩,7⟩,⟨⟨10,[6,3]⟩,8⟩,⟨⟨10,[6,3]⟩,9⟩,⟨⟨10,[6,3]⟩,16⟩,⟨⟨10,[6,3]⟩,17⟩,⟨⟨10,[7,3]⟩,6⟩,⟨⟨10,[7,3]⟩,7⟩,⟨⟨10,[7,3]⟩,8⟩,⟨⟨10,[7,3]⟩,16⟩,⟨⟨10,[8,3]⟩,6⟩,⟨⟨10,[8,3]⟩,7⟩,⟨⟨10,[8,3]⟩,8⟩,⟨⟨10,[8,3]⟩,16⟩,⟨⟨11,[6,3]⟩,3⟩,⟨⟨11,[6,3]⟩,4⟩,⟨⟨11,[6,3]⟩,5⟩,⟨⟨11,[7,3]⟩,6⟩,⟨⟨11,[7,3]⟩,7⟩,⟨⟨11,[8,3]⟩,8⟩,⟨⟨11,[8,3]⟩,9⟩,⟨⟨12,[6,3]⟩,13⟩,⟨⟨12,[6,3]⟩,14⟩,⟨⟨12,[7,3]⟩,13⟩,⟨⟨12,[8,3]⟩,13⟩,⟨⟨13,[0,6,3]⟩,6⟩,⟨⟨13,[0,6,3]⟩,7⟩,⟨⟨13,[0,6,3]⟩,8⟩,⟨⟨13,[0,6,3]⟩,9⟩,⟨⟨13,[0,6,3]⟩,16⟩,⟨⟨13,[0,6,3]⟩,17⟩,⟨⟨13,[0,7,3]⟩,6⟩,⟨⟨13,[0,7,3]⟩,7⟩,⟨⟨13,[0,7,3]⟩,8⟩,⟨⟨13,[0,7,3]⟩,16⟩,⟨⟨13,[0,8,3]⟩,6⟩,⟨⟨13,[0,8,3]⟩,7⟩,⟨⟨13,[0,8,3]⟩,8⟩,⟨⟨13,[0,8,3]⟩,16⟩,⟨⟨14,[]⟩,12⟩,⟨⟨15,[1]⟩,11⟩,⟨⟨16,[2,1]⟩,1⟩,⟨⟨17,[2,1]⟩,10⟩,⟨⟨18,[2,1]⟩,3⟩,⟨⟨18,[2,1]⟩,4⟩,⟨⟨18,[2,1]⟩,5⟩,⟨⟨18,[2,1]⟩,6⟩,⟨⟨18,[2,1]⟩,7⟩,⟨⟨18,[2,1]⟩,8⟩,⟨⟨18,[2,1]⟩,9⟩,⟨⟨18,[2,1]⟩,15⟩,⟨⟨18,[2,1]⟩,16⟩,⟨⟨18,[2,1]⟩,17⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[70],[17,18,19,20],[21],[22],[17,18,19,20],[18,20],[17,18,19,20],[18,20],[23],[25],[24],[24],[26],[26],[26],[26],[27],[27],[28],[29],[30],[52,54,55],[53],[81],[40,44],[36],[45],[45],[45],[46],[45],[47],[48],[48],[48],[48],[50],[50],[50],[50],[74],[75],[76],[37,41],[38,42],[33],[34],[56,57,58,60],[59,61],[62,63,64,65],[66,67,68,69],[77],[78],[79],[80],[82],[83],[37,41],[38,42],[39,43],[40,44],[31],[32],[33],[35],[71],[72],[73],[13],[6],[7],[8],[9],[10],[11],[12],[14],[15],[16]]
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
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<84 := hi
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
end Certgen.R297
