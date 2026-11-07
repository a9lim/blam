import Regular
namespace Certgen.R123
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 18,.lam 10,.app 11 12,.var 0,.app 13 17,.app 14 15,.var 0,.lam 16,.var 1,.opaque,.app 19 20,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨20,[4]⟩],[⟨7,[]⟩],[⟨20,[5]⟩],[⟨12,[7,4]⟩,⟨12,[8,5]⟩],[⟨15,[7,4]⟩,⟨15,[8,5]⟩],[⟨5,[1]⟩],[⟨18,[3]⟩],[⟨18,[4]⟩],[⟨18,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[6,3]⟩,1⟩,⟨⟨12,[6,3]⟩,6⟩,⟨⟨12,[6,3]⟩,7⟩],[⟨⟨12,[7,4]⟩,6⟩,⟨⟨12,[7,4]⟩,7⟩],[⟨⟨12,[8,5]⟩,1⟩],[⟨⟨17,[7,4]⟩,10⟩],[⟨⟨17,[8,5]⟩,10⟩],[⟨⟨15,[7,4]⟩,6⟩],[⟨⟨15,[8,5]⟩,7⟩],[⟨⟨20,[3]⟩,3⟩],[⟨⟨20,[4]⟩,4⟩,⟨⟨20,[4]⟩,8⟩],[⟨⟨20,[4]⟩,8⟩],[⟨⟨20,[4]⟩,4⟩],[⟨⟨20,[5]⟩,4⟩,⟨⟨20,[5]⟩,8⟩],[⟨⟨20,[5]⟩,9⟩],[⟨⟨20,[5]⟩,5⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨18,[3]⟩,1⟩,⟨⟨18,[3]⟩,6⟩,⟨⟨18,[3]⟩,7⟩],[⟨⟨18,[4]⟩,6⟩,⟨⟨18,[4]⟩,7⟩],[⟨⟨18,[5]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,17⟩,⟨⟨5,[1]⟩,14⟩,⟨⟨5,[1]⟩,15⟩,⟨⟨5,[1]⟩,16⟩,⟨⟨6,[2,1]⟩,4⟩,⟨⟨6,[2,1]⟩,5⟩,⟨⟨6,[2,1]⟩,8⟩,⟨⟨6,[2,1]⟩,9⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,9⟩,⟨⟨7,[]⟩,17⟩,⟨⟨8,[3]⟩,1⟩,⟨⟨8,[3]⟩,6⟩,⟨⟨8,[3]⟩,7⟩,⟨⟨8,[4]⟩,6⟩,⟨⟨8,[4]⟩,7⟩,⟨⟨8,[5]⟩,1⟩,⟨⟨9,[3]⟩,18⟩,⟨⟨9,[4]⟩,19⟩,⟨⟨9,[5]⟩,20⟩,⟨⟨10,[6,3]⟩,1⟩,⟨⟨10,[6,3]⟩,6⟩,⟨⟨10,[6,3]⟩,7⟩,⟨⟨10,[7,4]⟩,6⟩,⟨⟨10,[7,4]⟩,7⟩,⟨⟨10,[8,5]⟩,1⟩,⟨⟨11,[6,3]⟩,3⟩,⟨⟨11,[7,4]⟩,4⟩,⟨⟨11,[8,5]⟩,5⟩,⟨⟨12,[7,4]⟩,10⟩,⟨⟨12,[8,5]⟩,10⟩,⟨⟨13,[7,4]⟩,6⟩,⟨⟨13,[8,5]⟩,7⟩,⟨⟨14,[7,4]⟩,8⟩,⟨⟨14,[8,5]⟩,9⟩,⟨⟨15,[7,4]⟩,11⟩,⟨⟨15,[7,4]⟩,12⟩,⟨⟨15,[7,4]⟩,13⟩,⟨⟨15,[8,5]⟩,11⟩,⟨⟨15,[8,5]⟩,12⟩,⟨⟨15,[8,5]⟩,13⟩,⟨⟨16,[0,7,4]⟩,4⟩,⟨⟨16,[0,7,4]⟩,8⟩,⟨⟨16,[0,8,5]⟩,4⟩,⟨⟨16,[0,8,5]⟩,8⟩,⟨⟨18,[3]⟩,3⟩,⟨⟨18,[4]⟩,4⟩,⟨⟨18,[4]⟩,8⟩,⟨⟨18,[5]⟩,4⟩,⟨⟨18,[5]⟩,5⟩,⟨⟨18,[5]⟩,8⟩,⟨⟨18,[5]⟩,9⟩,⟨⟨19,[3]⟩,10⟩,⟨⟨19,[4]⟩,11⟩,⟨⟨19,[4]⟩,12⟩,⟨⟨19,[4]⟩,13⟩,⟨⟨19,[5]⟩,14⟩,⟨⟨19,[5]⟩,15⟩,⟨⟨19,[5]⟩,16⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[16],[8,10],[11],[9],[12],[13],[14],[15],[18,19],[17],[20],[21],[22],[23],[23],[23],[24],[24],[25],[26,27,28],[29,30],[31],[32],[32],[32],[33],[33],[34],[51],[52],[55],[37],[38],[39],[40],[53],[57],[47,48],[48],[47],[49,50],[50],[49],[52],[53],[54],[56],[58],[59],[59],[62],[64],[62],[63],[35,36],[41,44],[42,45],[43,46],[5],[6],[7]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 5=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<65 := hi
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
end Certgen.R123
