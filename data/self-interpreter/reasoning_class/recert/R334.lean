import Regular
namespace Certgen.R334
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 14,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.lam 8,.app 9 10,.var 0,.app 11 12,.var 0,.lam 13,.var 1,.lam 15,.lam 16,.lam 17,.app 18 19,.var 1,.var 1,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨10,[5,4]⟩,⟨10,[6,4]⟩],[⟨6,[4]⟩],[⟨7,[4]⟩],[⟨20,[]⟩],[⟨14,[]⟩],[⟨12,[7,4]⟩,⟨12,[8,4]⟩,⟨12,[9,4]⟩],[⟨12,[7,4]⟩],[⟨19,[3,2,1]⟩],[⟨10,[8,4]⟩,⟨10,[9,4]⟩],[⟨10,[7,4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨14,[]⟩,1⟩],[⟨⟨12,[7,4]⟩,6⟩,⟨⟨12,[7,4]⟩,7⟩,⟨⟨12,[7,4]⟩,8⟩,⟨⟨12,[7,4]⟩,16⟩],[⟨⟨12,[7,4]⟩,9⟩],[⟨⟨12,[7,4]⟩,17⟩],[⟨⟨12,[8,4]⟩,6⟩,⟨⟨12,[8,4]⟩,7⟩,⟨⟨12,[8,4]⟩,8⟩,⟨⟨12,[8,4]⟩,16⟩],[⟨⟨12,[8,4]⟩,7⟩,⟨⟨12,[8,4]⟩,16⟩],[⟨⟨12,[9,4]⟩,6⟩,⟨⟨12,[9,4]⟩,7⟩,⟨⟨12,[9,4]⟩,8⟩,⟨⟨12,[9,4]⟩,16⟩],[⟨⟨12,[9,4]⟩,7⟩,⟨⟨12,[9,4]⟩,16⟩],[⟨⟨19,[3,2,1]⟩,0⟩],[⟨⟨7,[4]⟩,1⟩],[⟨⟨6,[4]⟩,11⟩],[⟨⟨10,[5,4]⟩,6⟩,⟨⟨10,[5,4]⟩,7⟩,⟨⟨10,[5,4]⟩,8⟩,⟨⟨10,[5,4]⟩,16⟩],[⟨⟨10,[6,4]⟩,9⟩,⟨⟨10,[6,4]⟩,17⟩],[⟨⟨10,[7,4]⟩,0⟩],[⟨⟨10,[8,4]⟩,0⟩],[⟨⟨10,[9,4]⟩,0⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,11⟩,⟨⟨5,[4]⟩,12⟩,⟨⟨7,[4]⟩,3⟩,⟨⟨7,[4]⟩,4⟩,⟨⟨7,[4]⟩,5⟩,⟨⟨7,[4]⟩,6⟩,⟨⟨7,[4]⟩,7⟩,⟨⟨7,[4]⟩,8⟩,⟨⟨7,[4]⟩,9⟩,⟨⟨7,[4]⟩,10⟩,⟨⟨7,[4]⟩,15⟩,⟨⟨7,[4]⟩,16⟩,⟨⟨7,[4]⟩,17⟩,⟨⟨8,[5,4]⟩,6⟩,⟨⟨8,[5,4]⟩,7⟩,⟨⟨8,[5,4]⟩,8⟩,⟨⟨8,[5,4]⟩,16⟩,⟨⟨8,[6,4]⟩,9⟩,⟨⟨8,[6,4]⟩,17⟩,⟨⟨8,[7,4]⟩,0⟩,⟨⟨8,[8,4]⟩,0⟩,⟨⟨8,[9,4]⟩,0⟩,⟨⟨9,[5,4]⟩,13⟩,⟨⟨9,[6,4]⟩,14⟩,⟨⟨9,[7,4]⟩,15⟩,⟨⟨9,[8,4]⟩,16⟩,⟨⟨9,[9,4]⟩,17⟩,⟨⟨10,[7,4]⟩,6⟩,⟨⟨10,[7,4]⟩,7⟩,⟨⟨10,[7,4]⟩,8⟩,⟨⟨10,[7,4]⟩,9⟩,⟨⟨10,[7,4]⟩,16⟩,⟨⟨10,[7,4]⟩,17⟩,⟨⟨10,[8,4]⟩,6⟩,⟨⟨10,[8,4]⟩,7⟩,⟨⟨10,[8,4]⟩,8⟩,⟨⟨10,[8,4]⟩,16⟩,⟨⟨10,[9,4]⟩,6⟩,⟨⟨10,[9,4]⟩,7⟩,⟨⟨10,[9,4]⟩,8⟩,⟨⟨10,[9,4]⟩,16⟩,⟨⟨11,[7,4]⟩,3⟩,⟨⟨11,[7,4]⟩,4⟩,⟨⟨11,[7,4]⟩,5⟩,⟨⟨11,[8,4]⟩,6⟩,⟨⟨11,[8,4]⟩,7⟩,⟨⟨11,[9,4]⟩,8⟩,⟨⟨11,[9,4]⟩,9⟩,⟨⟨12,[7,4]⟩,13⟩,⟨⟨12,[7,4]⟩,14⟩,⟨⟨12,[8,4]⟩,13⟩,⟨⟨12,[9,4]⟩,13⟩,⟨⟨13,[0,7,4]⟩,6⟩,⟨⟨13,[0,7,4]⟩,7⟩,⟨⟨13,[0,7,4]⟩,8⟩,⟨⟨13,[0,7,4]⟩,9⟩,⟨⟨13,[0,7,4]⟩,16⟩,⟨⟨13,[0,7,4]⟩,17⟩,⟨⟨13,[0,8,4]⟩,6⟩,⟨⟨13,[0,8,4]⟩,7⟩,⟨⟨13,[0,8,4]⟩,8⟩,⟨⟨13,[0,8,4]⟩,16⟩,⟨⟨13,[0,9,4]⟩,6⟩,⟨⟨13,[0,9,4]⟩,7⟩,⟨⟨13,[0,9,4]⟩,8⟩,⟨⟨13,[0,9,4]⟩,16⟩,⟨⟨14,[]⟩,12⟩,⟨⟨15,[1]⟩,11⟩,⟨⟨16,[2,1]⟩,1⟩,⟨⟨17,[3,2,1]⟩,0⟩,⟨⟨18,[3,2,1]⟩,10⟩,⟨⟨19,[3,2,1]⟩,3⟩,⟨⟨19,[3,2,1]⟩,4⟩,⟨⟨19,[3,2,1]⟩,5⟩,⟨⟨19,[3,2,1]⟩,6⟩,⟨⟨19,[3,2,1]⟩,7⟩,⟨⟨19,[3,2,1]⟩,8⟩,⟨⟨19,[3,2,1]⟩,9⟩,⟨⟨19,[3,2,1]⟩,15⟩,⟨⟨19,[3,2,1]⟩,16⟩,⟨⟨19,[3,2,1]⟩,17⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[70],[17,18,19,20],[21],[22],[17,18,19,20],[18,20],[17,18,19,20],[18,20],[23],[25],[24],[24],[26],[26],[26],[26],[27],[27],[28],[29],[30],[52,54,55],[53],[82],[40,44],[36],[45],[45],[45],[46],[45],[47],[48],[48],[48],[48],[50],[50],[50],[50],[75],[76],[77],[37,41],[38,42],[33],[34],[56,57,58,60],[59,61],[62,63,64,65],[66,67,68,69],[78],[79],[80],[81],[83],[84],[37,41],[38,42],[39,43],[40,44],[31],[32],[33],[35],[71],[72],[73],[74],[13],[6],[7],[8],[9],[10],[11],[12],[14],[15],[16]]
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
end Certgen.R334
