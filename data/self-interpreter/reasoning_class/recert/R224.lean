import Regular
namespace Certgen.R224
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 20,.app 10 17,.lam 11,.app 12 13,.var 0,.app 14 15,.var 0,.lam 16,.var 1,.app 18 19,.var 0,.opaque,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[6]⟩],[⟨17,[7]⟩],[⟨17,[8]⟩],[⟨19,[7]⟩],[⟨7,[]⟩],[⟨19,[8]⟩],[⟨13,[1,7]⟩,⟨13,[2,8]⟩],[⟨15,[1,7]⟩,⟨15,[2,8]⟩],[⟨5,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨13,[0,6]⟩,16⟩],[⟨⟨13,[1,7]⟩,17⟩],[⟨⟨13,[2,8]⟩,18⟩],[⟨⟨15,[1,7]⟩,8⟩],[⟨⟨15,[2,8]⟩,8⟩],[⟨⟨19,[6]⟩,3⟩],[⟨⟨19,[7]⟩,6⟩],[⟨⟨19,[7]⟩,4⟩],[⟨⟨19,[7]⟩,4⟩,⟨⟨19,[7]⟩,6⟩],[⟨⟨19,[8]⟩,7⟩],[⟨⟨19,[8]⟩,5⟩],[⟨⟨19,[8]⟩,4⟩,⟨⟨19,[8]⟩,6⟩],[⟨⟨5,[4]⟩,1⟩],[⟨⟨20,[6]⟩,17⟩,⟨⟨20,[6]⟩,18⟩],[⟨⟨20,[7]⟩,8⟩],[⟨⟨20,[8]⟩,1⟩],[⟨⟨17,[6]⟩,16⟩],[⟨⟨17,[7]⟩,17⟩],[⟨⟨17,[8]⟩,18⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,15⟩,⟨⟨5,[4]⟩,12⟩,⟨⟨5,[4]⟩,13⟩,⟨⟨5,[4]⟩,14⟩,⟨⟨6,[5,4]⟩,4⟩,⟨⟨6,[5,4]⟩,5⟩,⟨⟨6,[5,4]⟩,6⟩,⟨⟨6,[5,4]⟩,7⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,15⟩,⟨⟨8,[6]⟩,17⟩,⟨⟨8,[6]⟩,18⟩,⟨⟨8,[7]⟩,8⟩,⟨⟨8,[8]⟩,1⟩,⟨⟨9,[6]⟩,16⟩,⟨⟨9,[7]⟩,17⟩,⟨⟨9,[8]⟩,18⟩,⟨⟨10,[6]⟩,19⟩,⟨⟨10,[7]⟩,20⟩,⟨⟨10,[8]⟩,21⟩,⟨⟨11,[0,6]⟩,16⟩,⟨⟨11,[1,7]⟩,17⟩,⟨⟨11,[2,8]⟩,18⟩,⟨⟨12,[0,6]⟩,3⟩,⟨⟨12,[1,7]⟩,4⟩,⟨⟨12,[2,8]⟩,5⟩,⟨⟨13,[1,7]⟩,8⟩,⟨⟨13,[2,8]⟩,8⟩,⟨⟨14,[1,7]⟩,6⟩,⟨⟨14,[2,8]⟩,7⟩,⟨⟨15,[1,7]⟩,9⟩,⟨⟨15,[1,7]⟩,10⟩,⟨⟨15,[1,7]⟩,11⟩,⟨⟨15,[2,8]⟩,9⟩,⟨⟨15,[2,8]⟩,10⟩,⟨⟨15,[2,8]⟩,11⟩,⟨⟨16,[3,1,7]⟩,4⟩,⟨⟨16,[3,1,7]⟩,6⟩,⟨⟨16,[3,2,8]⟩,4⟩,⟨⟨16,[3,2,8]⟩,6⟩,⟨⟨17,[6]⟩,3⟩,⟨⟨17,[7]⟩,4⟩,⟨⟨17,[7]⟩,6⟩,⟨⟨17,[8]⟩,4⟩,⟨⟨17,[8]⟩,5⟩,⟨⟨17,[8]⟩,6⟩,⟨⟨17,[8]⟩,7⟩,⟨⟨18,[6]⟩,8⟩,⟨⟨18,[7]⟩,9⟩,⟨⟨18,[7]⟩,10⟩,⟨⟨18,[7]⟩,11⟩,⟨⟨18,[8]⟩,12⟩,⟨⟨18,[8]⟩,13⟩,⟨⟨18,[8]⟩,14⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[16],[11],[9],[8,10],[12],[13],[14],[15],[17],[18],[19],[19],[20],[21],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[47],[48],[51],[35],[36],[49],[53],[44],[43],[43,44],[46],[45],[45,46],[48],[49],[50],[52],[54],[56],[55],[60],[59],[60],[58],[33,34],[37,40],[38,41],[39,42],[5],[6],[7]]
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
end Certgen.R224
