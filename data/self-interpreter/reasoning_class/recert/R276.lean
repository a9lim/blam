import Regular
namespace Certgen.R276
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 14,.lam 3,.app 4 13,.app 5 6,.var 0,.lam 7,.app 8 9,.var 0,.app 10 11,.var 0,.lam 12,.var 1,.opaque,.lam 15,.lam 16,.app 17 18,.var 1,.var 1,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨9,[7,3]⟩,⟨9,[8,3]⟩],[⟨6,[3]⟩],[⟨13,[3]⟩],[⟨14,[]⟩],[⟨18,[2,1]⟩],[⟨9,[5,3]⟩,⟨9,[6,3]⟩],[⟨9,[4,3]⟩],[⟨11,[4,3]⟩,⟨11,[5,3]⟩,⟨11,[6,3]⟩],[⟨11,[4,3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨14,[]⟩,1⟩],[⟨⟨18,[2,1]⟩,1⟩],[⟨⟨13,[3]⟩,1⟩],[⟨⟨6,[3]⟩,4⟩],[⟨⟨9,[4,3]⟩,1⟩],[⟨⟨9,[5,3]⟩,1⟩],[⟨⟨9,[6,3]⟩,1⟩],[⟨⟨9,[7,3]⟩,7⟩,⟨⟨9,[7,3]⟩,14⟩,⟨⟨9,[7,3]⟩,15⟩,⟨⟨9,[7,3]⟩,16⟩],[⟨⟨9,[8,3]⟩,8⟩,⟨⟨9,[8,3]⟩,17⟩],[⟨⟨11,[4,3]⟩,7⟩,⟨⟨11,[4,3]⟩,14⟩,⟨⟨11,[4,3]⟩,15⟩,⟨⟨11,[4,3]⟩,16⟩],[⟨⟨11,[4,3]⟩,17⟩],[⟨⟨11,[4,3]⟩,8⟩],[⟨⟨11,[5,3]⟩,7⟩,⟨⟨11,[5,3]⟩,14⟩,⟨⟨11,[5,3]⟩,15⟩,⟨⟨11,[5,3]⟩,16⟩],[⟨⟨11,[5,3]⟩,7⟩,⟨⟨11,[5,3]⟩,15⟩],[⟨⟨11,[6,3]⟩,7⟩,⟨⟨11,[6,3]⟩,14⟩,⟨⟨11,[6,3]⟩,15⟩,⟨⟨11,[6,3]⟩,16⟩],[⟨⟨11,[6,3]⟩,7⟩,⟨⟨11,[6,3]⟩,15⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,4⟩,⟨⟨5,[3]⟩,5⟩,⟨⟨6,[3]⟩,3⟩,⟨⟨6,[3]⟩,6⟩,⟨⟨6,[3]⟩,7⟩,⟨⟨6,[3]⟩,8⟩,⟨⟨6,[3]⟩,11⟩,⟨⟨6,[3]⟩,12⟩,⟨⟨6,[3]⟩,13⟩,⟨⟨6,[3]⟩,14⟩,⟨⟨6,[3]⟩,15⟩,⟨⟨6,[3]⟩,16⟩,⟨⟨6,[3]⟩,17⟩,⟨⟨7,[4,3]⟩,1⟩,⟨⟨7,[5,3]⟩,1⟩,⟨⟨7,[6,3]⟩,1⟩,⟨⟨7,[7,3]⟩,7⟩,⟨⟨7,[7,3]⟩,14⟩,⟨⟨7,[7,3]⟩,15⟩,⟨⟨7,[7,3]⟩,16⟩,⟨⟨7,[8,3]⟩,8⟩,⟨⟨7,[8,3]⟩,17⟩,⟨⟨8,[4,3]⟩,6⟩,⟨⟨8,[5,3]⟩,7⟩,⟨⟨8,[6,3]⟩,8⟩,⟨⟨8,[7,3]⟩,9⟩,⟨⟨8,[8,3]⟩,10⟩,⟨⟨9,[4,3]⟩,7⟩,⟨⟨9,[4,3]⟩,8⟩,⟨⟨9,[4,3]⟩,14⟩,⟨⟨9,[4,3]⟩,15⟩,⟨⟨9,[4,3]⟩,16⟩,⟨⟨9,[4,3]⟩,17⟩,⟨⟨9,[5,3]⟩,7⟩,⟨⟨9,[5,3]⟩,14⟩,⟨⟨9,[5,3]⟩,15⟩,⟨⟨9,[5,3]⟩,16⟩,⟨⟨9,[6,3]⟩,7⟩,⟨⟨9,[6,3]⟩,14⟩,⟨⟨9,[6,3]⟩,15⟩,⟨⟨9,[6,3]⟩,16⟩,⟨⟨10,[4,3]⟩,11⟩,⟨⟨10,[4,3]⟩,12⟩,⟨⟨10,[4,3]⟩,13⟩,⟨⟨10,[5,3]⟩,14⟩,⟨⟨10,[5,3]⟩,15⟩,⟨⟨10,[6,3]⟩,16⟩,⟨⟨10,[6,3]⟩,17⟩,⟨⟨11,[4,3]⟩,9⟩,⟨⟨11,[4,3]⟩,10⟩,⟨⟨11,[5,3]⟩,9⟩,⟨⟨11,[6,3]⟩,9⟩,⟨⟨12,[0,4,3]⟩,7⟩,⟨⟨12,[0,4,3]⟩,8⟩,⟨⟨12,[0,4,3]⟩,14⟩,⟨⟨12,[0,4,3]⟩,15⟩,⟨⟨12,[0,4,3]⟩,16⟩,⟨⟨12,[0,4,3]⟩,17⟩,⟨⟨12,[0,5,3]⟩,7⟩,⟨⟨12,[0,5,3]⟩,14⟩,⟨⟨12,[0,5,3]⟩,15⟩,⟨⟨12,[0,5,3]⟩,16⟩,⟨⟨12,[0,6,3]⟩,7⟩,⟨⟨12,[0,6,3]⟩,14⟩,⟨⟨12,[0,6,3]⟩,15⟩,⟨⟨12,[0,6,3]⟩,16⟩,⟨⟨14,[]⟩,5⟩,⟨⟨15,[1]⟩,4⟩,⟨⟨16,[2,1]⟩,1⟩,⟨⟨17,[2,1]⟩,3⟩,⟨⟨18,[2,1]⟩,6⟩,⟨⟨18,[2,1]⟩,7⟩,⟨⟨18,[2,1]⟩,8⟩,⟨⟨18,[2,1]⟩,11⟩,⟨⟨18,[2,1]⟩,12⟩,⟨⟨18,[2,1]⟩,13⟩,⟨⟨18,[2,1]⟩,14⟩,⟨⟨18,[2,1]⟩,15⟩,⟨⟨18,[2,1]⟩,16⟩,⟨⟨18,[2,1]⟩,17⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[70],[17],[19],[18],[18],[20,21,22,23],[25],[24],[20,21,22,23],[20,22],[20,21,22,23],[20,22],[26],[27],[28],[29],[29],[29],[29],[30],[30],[74],[37,41],[32],[52,54,55],[53],[45],[47],[45],[45],[45],[46],[48],[48],[48],[48],[50],[50],[50],[50],[77],[78],[79],[38,42],[39,43],[35],[36],[56,58,59,60],[57,61],[62,63,64,65],[66,67,68,69],[75],[76],[80],[81],[82],[83],[37,41],[38,42],[39,43],[40,44],[31],[33],[34],[35],[71],[72],[73],[6],[7],[8],[9],[10],[11],[12],[13],[14],[15],[16]]
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
end Certgen.R276
