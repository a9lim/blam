import Regular
namespace Certgen.R150
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 20,.lam 9,.app 10 11,.var 1,.lam 12,.app 13 17,.app 14 15,.var 0,.lam 16,.var 1,.app 18 19,.var 0,.opaque,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[2,11,9]⟩],[⟨17,[3,11,9]⟩],[⟨15,[4,10,8]⟩],[⟨15,[0,11,9]⟩,⟨15,[1,11,9]⟩],[⟨11,[11,9]⟩],[⟨15,[2,11,9]⟩,⟨15,[3,11,9]⟩],[⟨19,[2,11,9]⟩,⟨19,[3,11,9]⟩],[⟨6,[]⟩],[⟨5,[7]⟩],[⟨11,[10,8]⟩],[⟨20,[8]⟩],[⟨20,[9]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨17,[0,11,9]⟩,7⟩],[⟨⟨17,[1,11,9]⟩,3⟩,⟨⟨17,[1,11,9]⟩,4⟩],[⟨⟨17,[2,11,9]⟩,7⟩],[⟨⟨17,[3,11,9]⟩,3⟩,⟨⟨17,[3,11,9]⟩,4⟩],[⟨⟨17,[4,10,8]⟩,1⟩],[⟨⟨15,[0,11,9]⟩,3⟩],[⟨⟨15,[1,11,9]⟩,4⟩],[⟨⟨15,[2,11,9]⟩,5⟩],[⟨⟨15,[3,11,9]⟩,6⟩],[⟨⟨15,[4,10,8]⟩,7⟩],[⟨⟨19,[2,11,9]⟩,8⟩],[⟨⟨19,[2,11,9]⟩,6⟩],[⟨⟨19,[2,11,9]⟩,9⟩],[⟨⟨19,[2,11,9]⟩,6⟩,⟨⟨19,[2,11,9]⟩,9⟩],[⟨⟨19,[3,11,9]⟩,9⟩],[⟨⟨19,[3,11,9]⟩,6⟩],[⟨⟨19,[3,11,9]⟩,6⟩,⟨⟨19,[3,11,9]⟩,9⟩],[⟨⟨5,[7]⟩,1⟩],[⟨⟨20,[8]⟩,1⟩],[⟨⟨20,[9]⟩,1⟩],[⟨⟨11,[10,8]⟩,1⟩],[⟨⟨11,[11,9]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[7]⟩,1⟩,⟨⟨4,[7]⟩,20⟩,⟨⟨5,[7]⟩,23⟩,⟨⟨6,[]⟩,20⟩,⟨⟨6,[]⟩,23⟩,⟨⟨7,[8]⟩,1⟩,⟨⟨7,[9]⟩,1⟩,⟨⟨8,[8]⟩,21⟩,⟨⟨8,[9]⟩,22⟩,⟨⟨9,[10,8]⟩,1⟩,⟨⟨9,[11,9]⟩,1⟩,⟨⟨10,[10,8]⟩,23⟩,⟨⟨10,[11,9]⟩,24⟩,⟨⟨11,[10,8]⟩,24⟩,⟨⟨11,[11,9]⟩,5⟩,⟨⟨11,[11,9]⟩,6⟩,⟨⟨11,[11,9]⟩,8⟩,⟨⟨11,[11,9]⟩,9⟩,⟨⟨11,[11,9]⟩,12⟩,⟨⟨12,[0,11,9]⟩,7⟩,⟨⟨12,[1,11,9]⟩,3⟩,⟨⟨12,[1,11,9]⟩,4⟩,⟨⟨12,[2,11,9]⟩,7⟩,⟨⟨12,[3,11,9]⟩,3⟩,⟨⟨12,[3,11,9]⟩,4⟩,⟨⟨12,[4,10,8]⟩,1⟩,⟨⟨13,[0,11,9]⟩,3⟩,⟨⟨13,[1,11,9]⟩,4⟩,⟨⟨13,[2,11,9]⟩,5⟩,⟨⟨13,[3,11,9]⟩,6⟩,⟨⟨13,[4,10,8]⟩,7⟩,⟨⟨14,[0,11,9]⟩,8⟩,⟨⟨14,[1,11,9]⟩,9⟩,⟨⟨14,[2,11,9]⟩,10⟩,⟨⟨14,[3,11,9]⟩,11⟩,⟨⟨14,[4,10,8]⟩,12⟩,⟨⟨15,[0,11,9]⟩,11⟩,⟨⟨15,[0,11,9]⟩,17⟩,⟨⟨15,[0,11,9]⟩,18⟩,⟨⟨15,[0,11,9]⟩,19⟩,⟨⟨15,[1,11,9]⟩,11⟩,⟨⟨15,[1,11,9]⟩,17⟩,⟨⟨15,[1,11,9]⟩,18⟩,⟨⟨15,[1,11,9]⟩,19⟩,⟨⟨15,[4,10,8]⟩,10⟩,⟨⟨15,[4,10,8]⟩,13⟩,⟨⟨15,[4,10,8]⟩,14⟩,⟨⟨15,[4,10,8]⟩,15⟩,⟨⟨15,[4,10,8]⟩,16⟩,⟨⟨16,[5,0,11,9]⟩,6⟩,⟨⟨16,[5,1,11,9]⟩,6⟩,⟨⟨16,[5,4,10,8]⟩,5⟩,⟨⟨16,[6,0,11,9]⟩,6⟩,⟨⟨16,[6,0,11,9]⟩,9⟩,⟨⟨16,[6,1,11,9]⟩,6⟩,⟨⟨16,[6,1,11,9]⟩,9⟩,⟨⟨16,[6,4,10,8]⟩,6⟩,⟨⟨16,[6,4,10,8]⟩,8⟩,⟨⟨16,[6,4,10,8]⟩,9⟩,⟨⟨17,[2,11,9]⟩,6⟩,⟨⟨17,[2,11,9]⟩,8⟩,⟨⟨17,[2,11,9]⟩,9⟩,⟨⟨17,[3,11,9]⟩,6⟩,⟨⟨17,[3,11,9]⟩,9⟩,⟨⟨18,[2,11,9]⟩,13⟩,⟨⟨18,[2,11,9]⟩,14⟩,⟨⟨18,[2,11,9]⟩,15⟩,⟨⟨18,[2,11,9]⟩,16⟩,⟨⟨18,[3,11,9]⟩,17⟩,⟨⟨18,[3,11,9]⟩,18⟩,⟨⟨18,[3,11,9]⟩,19⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[6],[7],[8],[9],[10],[11],[12],[13],[14],[15],[5],[16],[28],[22],[23,24],[26],[27],[25],[29],[30],[30],[31],[32],[32],[33],[34],[35],[36],[37],[38],[63],[66],[47],[39,43],[21],[52],[56],[55],[55,56],[53],[58],[57],[57,58],[54],[60],[59],[61],[59,61],[62],[65],[17],[62],[64],[65],[66],[18],[19],[20],[68],[67],[69],[72],[71],[48],[49],[50],[51],[40,44],[41,45],[42,46]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 2=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<74 := hi
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
end Certgen.R150
