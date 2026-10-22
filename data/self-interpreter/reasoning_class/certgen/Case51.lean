import Regular
namespace Certgen.Case51
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 19,.app 10 18,.app 11 15,.app 12 13,.var 0,.lam 14,.var 1,.app 16 17,.var 0,.opaque,.opaque,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨13,[7]⟩],[⟨17,[7]⟩],[⟨7,[]⟩],[⟨13,[8]⟩],[⟨17,[8]⟩],[⟨15,[8]⟩],[⟨15,[7]⟩],[⟨13,[5]⟩,⟨13,[6]⟩],[⟨5,[2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨15,[5]⟩,23⟩],[⟨⟨15,[6]⟩,24⟩],[⟨⟨15,[7]⟩,25⟩],[⟨⟨15,[8]⟩,26⟩],[⟨⟨13,[5]⟩,3⟩],[⟨⟨13,[6]⟩,4⟩],[⟨⟨13,[7]⟩,5⟩],[⟨⟨13,[8]⟩,6⟩],[⟨⟨17,[7]⟩,5⟩],[⟨⟨17,[7]⟩,5⟩,⟨⟨17,[7]⟩,8⟩],[⟨⟨17,[7]⟩,8⟩],[⟨⟨17,[8]⟩,5⟩],[⟨⟨17,[8]⟩,5⟩,⟨⟨17,[8]⟩,8⟩],[⟨⟨17,[8]⟩,8⟩],[⟨⟨17,[8]⟩,7⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨19,[5]⟩,26⟩],[⟨⟨19,[6]⟩,25⟩],[⟨⟨19,[7]⟩,3⟩,⟨⟨19,[7]⟩,4⟩],[⟨⟨19,[8]⟩,1⟩],[⟨⟨18,[5]⟩,19⟩],[⟨⟨18,[6]⟩,20⟩],[⟨⟨18,[7]⟩,21⟩],[⟨⟨18,[8]⟩,22⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,18⟩,⟨⟨5,[2]⟩,10⟩,⟨⟨5,[2]⟩,14⟩,⟨⟨5,[2]⟩,15⟩,⟨⟨5,[2]⟩,16⟩,⟨⟨5,[2]⟩,17⟩,⟨⟨6,[3,2]⟩,6⟩,⟨⟨6,[4,2]⟩,5⟩,⟨⟨6,[4,2]⟩,7⟩,⟨⟨6,[4,2]⟩,8⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,18⟩,⟨⟨8,[5]⟩,26⟩,⟨⟨8,[6]⟩,25⟩,⟨⟨8,[7]⟩,3⟩,⟨⟨8,[7]⟩,4⟩,⟨⟨8,[8]⟩,1⟩,⟨⟨9,[5]⟩,19⟩,⟨⟨9,[6]⟩,20⟩,⟨⟨9,[7]⟩,21⟩,⟨⟨9,[8]⟩,22⟩,⟨⟨10,[5]⟩,23⟩,⟨⟨10,[6]⟩,24⟩,⟨⟨10,[7]⟩,25⟩,⟨⟨10,[8]⟩,26⟩,⟨⟨11,[5]⟩,3⟩,⟨⟨11,[6]⟩,4⟩,⟨⟨11,[7]⟩,5⟩,⟨⟨11,[8]⟩,6⟩,⟨⟨12,[5]⟩,7⟩,⟨⟨12,[6]⟩,8⟩,⟨⟨12,[7]⟩,9⟩,⟨⟨12,[8]⟩,10⟩,⟨⟨13,[5]⟩,9⟩,⟨⟨13,[5]⟩,11⟩,⟨⟨13,[5]⟩,12⟩,⟨⟨13,[5]⟩,13⟩,⟨⟨13,[6]⟩,9⟩,⟨⟨13,[6]⟩,11⟩,⟨⟨13,[6]⟩,12⟩,⟨⟨13,[6]⟩,13⟩,⟨⟨14,[0,5]⟩,5⟩,⟨⟨14,[0,6]⟩,5⟩,⟨⟨14,[1,5]⟩,5⟩,⟨⟨14,[1,5]⟩,8⟩,⟨⟨14,[1,6]⟩,5⟩,⟨⟨14,[1,6]⟩,8⟩,⟨⟨15,[7]⟩,5⟩,⟨⟨15,[7]⟩,8⟩,⟨⟨15,[8]⟩,5⟩,⟨⟨15,[8]⟩,7⟩,⟨⟨15,[8]⟩,8⟩,⟨⟨16,[7]⟩,11⟩,⟨⟨16,[7]⟩,12⟩,⟨⟨16,[7]⟩,13⟩,⟨⟨16,[8]⟩,14⟩,⟨⟨16,[8]⟩,15⟩,⟨⟨16,[8]⟩,16⟩,⟨⟨16,[8]⟩,17⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[18],[10],[11],[11,13],[13],[12],[15],[14],[16],[17],[20],[19],[21],[22],[23],[24],[25],[26],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[57],[55],[40,44],[5],[48],[50],[50,51],[51],[49],[52],[52,53],[53],[56],[54],[56],[58],[54],[55],[59],[60],[62],[65],[63],[41,45],[42,46],[43,47],[6],[7],[8],[9]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 6=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<66 := hi
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
end Certgen.Case51
