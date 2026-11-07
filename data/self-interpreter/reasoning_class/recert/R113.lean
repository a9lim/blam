import Regular
namespace Certgen.R113
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.opaque,.lam 7,.app 8 12,.lam 9,.app 10 11,.var 0,.var 0,.lam 13,.app 14 18,.app 15 16,.var 0,.lam 17,.var 1,.app 19 20,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[2,8]⟩],[⟨18,[3,8]⟩],[⟨16,[4,8]⟩],[⟨16,[0,8]⟩,⟨16,[1,8]⟩],[⟨11,[9,8]⟩],[⟨16,[2,8]⟩,⟨16,[3,8]⟩],[⟨20,[2,8]⟩,⟨20,[3,8]⟩],[⟨6,[]⟩],[⟨5,[7]⟩],[⟨12,[8]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨18,[0,8]⟩,7⟩],[⟨⟨18,[1,8]⟩,3⟩,⟨⟨18,[1,8]⟩,4⟩],[⟨⟨18,[2,8]⟩,7⟩],[⟨⟨18,[3,8]⟩,3⟩,⟨⟨18,[3,8]⟩,4⟩],[⟨⟨18,[4,8]⟩,1⟩],[⟨⟨16,[0,8]⟩,3⟩],[⟨⟨16,[1,8]⟩,4⟩],[⟨⟨16,[2,8]⟩,5⟩],[⟨⟨16,[3,8]⟩,6⟩],[⟨⟨16,[4,8]⟩,7⟩],[⟨⟨20,[2,8]⟩,8⟩],[⟨⟨20,[2,8]⟩,6⟩],[⟨⟨20,[2,8]⟩,9⟩],[⟨⟨20,[2,8]⟩,6⟩,⟨⟨20,[2,8]⟩,9⟩],[⟨⟨20,[3,8]⟩,9⟩],[⟨⟨20,[3,8]⟩,6⟩],[⟨⟨20,[3,8]⟩,6⟩,⟨⟨20,[3,8]⟩,9⟩],[⟨⟨5,[7]⟩,1⟩],[⟨⟨12,[8]⟩,1⟩],[⟨⟨11,[9,8]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[7]⟩,1⟩,⟨⟨4,[7]⟩,20⟩,⟨⟨6,[]⟩,20⟩,⟨⟨7,[8]⟩,1⟩,⟨⟨8,[8]⟩,21⟩,⟨⟨9,[9,8]⟩,1⟩,⟨⟨10,[9,8]⟩,22⟩,⟨⟨11,[9,8]⟩,5⟩,⟨⟨11,[9,8]⟩,6⟩,⟨⟨11,[9,8]⟩,8⟩,⟨⟨11,[9,8]⟩,9⟩,⟨⟨11,[9,8]⟩,12⟩,⟨⟨12,[8]⟩,5⟩,⟨⟨12,[8]⟩,6⟩,⟨⟨12,[8]⟩,8⟩,⟨⟨12,[8]⟩,9⟩,⟨⟨12,[8]⟩,12⟩,⟨⟨12,[8]⟩,22⟩,⟨⟨13,[0,8]⟩,7⟩,⟨⟨13,[1,8]⟩,3⟩,⟨⟨13,[1,8]⟩,4⟩,⟨⟨13,[2,8]⟩,7⟩,⟨⟨13,[3,8]⟩,3⟩,⟨⟨13,[3,8]⟩,4⟩,⟨⟨13,[4,8]⟩,1⟩,⟨⟨14,[0,8]⟩,3⟩,⟨⟨14,[1,8]⟩,4⟩,⟨⟨14,[2,8]⟩,5⟩,⟨⟨14,[3,8]⟩,6⟩,⟨⟨14,[4,8]⟩,7⟩,⟨⟨15,[0,8]⟩,8⟩,⟨⟨15,[1,8]⟩,9⟩,⟨⟨15,[2,8]⟩,10⟩,⟨⟨15,[3,8]⟩,11⟩,⟨⟨15,[4,8]⟩,12⟩,⟨⟨16,[0,8]⟩,11⟩,⟨⟨16,[0,8]⟩,17⟩,⟨⟨16,[0,8]⟩,18⟩,⟨⟨16,[0,8]⟩,19⟩,⟨⟨16,[1,8]⟩,11⟩,⟨⟨16,[1,8]⟩,17⟩,⟨⟨16,[1,8]⟩,18⟩,⟨⟨16,[1,8]⟩,19⟩,⟨⟨16,[4,8]⟩,10⟩,⟨⟨16,[4,8]⟩,13⟩,⟨⟨16,[4,8]⟩,14⟩,⟨⟨16,[4,8]⟩,15⟩,⟨⟨16,[4,8]⟩,16⟩,⟨⟨17,[5,0,8]⟩,6⟩,⟨⟨17,[5,1,8]⟩,6⟩,⟨⟨17,[5,4,8]⟩,5⟩,⟨⟨17,[6,0,8]⟩,6⟩,⟨⟨17,[6,0,8]⟩,9⟩,⟨⟨17,[6,1,8]⟩,6⟩,⟨⟨17,[6,1,8]⟩,9⟩,⟨⟨17,[6,4,8]⟩,6⟩,⟨⟨17,[6,4,8]⟩,8⟩,⟨⟨17,[6,4,8]⟩,9⟩,⟨⟨18,[2,8]⟩,6⟩,⟨⟨18,[2,8]⟩,8⟩,⟨⟨18,[2,8]⟩,9⟩,⟨⟨18,[3,8]⟩,6⟩,⟨⟨18,[3,8]⟩,9⟩,⟨⟨19,[2,8]⟩,13⟩,⟨⟨19,[2,8]⟩,14⟩,⟨⟨19,[2,8]⟩,15⟩,⟨⟨19,[2,8]⟩,16⟩,⟨⟨19,[3,8]⟩,17⟩,⟨⟨19,[3,8]⟩,18⟩,⟨⟨19,[3,8]⟩,19⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[8],[9],[20],[15],[16],[17],[18],[19],[21],[22,23],[25],[26],[24],[27],[28],[29],[29],[30],[31],[31],[32],[33],[34],[35],[36],[37],[62],[65],[46],[38,42],[14],[51],[55],[54],[54,55],[52],[57],[56],[56,57],[53],[59],[58],[60],[58,60],[61],[64],[10],[61],[63],[64],[65],[11],[12],[13],[67],[66],[68],[71],[70],[47],[48],[49],[50],[39,43],[40,44],[41,45]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<73 := hi
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
end Certgen.R113
