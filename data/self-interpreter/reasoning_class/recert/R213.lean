import Regular
namespace Certgen.R213
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 20,.app 9 16,.lam 10,.app 11 12,.var 0,.app 13 14,.var 0,.lam 15,.var 1,.app 17 18,.var 0,.lam 19,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[4]⟩],[⟨18,[5]⟩],[⟨6,[]⟩],[⟨12,[8,4]⟩,⟨12,[9,5]⟩],[⟨14,[8,4]⟩,⟨14,[9,5]⟩],[⟨18,[6]⟩],[⟨5,[2]⟩],[⟨16,[3]⟩],[⟨16,[4]⟩],[⟨16,[5]⟩],[⟨16,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[7,3]⟩,18⟩],[⟨⟨12,[8,4]⟩,19⟩],[⟨⟨12,[9,5]⟩,20⟩],[⟨⟨12,[10,6]⟩,21⟩],[⟨⟨14,[8,4]⟩,9⟩],[⟨⟨14,[9,5]⟩,9⟩],[⟨⟨18,[3]⟩,3⟩],[⟨⟨18,[4]⟩,4⟩,⟨⟨18,[4]⟩,7⟩],[⟨⟨18,[4]⟩,7⟩],[⟨⟨18,[4]⟩,4⟩],[⟨⟨18,[5]⟩,4⟩,⟨⟨18,[5]⟩,7⟩],[⟨⟨18,[5]⟩,8⟩],[⟨⟨18,[5]⟩,5⟩],[⟨⟨18,[6]⟩,6⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨20,[3]⟩,19⟩,⟨⟨20,[3]⟩,20⟩],[⟨⟨20,[4]⟩,9⟩],[⟨⟨20,[5]⟩,6⟩],[⟨⟨20,[6]⟩,1⟩],[⟨⟨16,[3]⟩,18⟩],[⟨⟨16,[4]⟩,19⟩],[⟨⟨16,[5]⟩,20⟩],[⟨⟨16,[6]⟩,21⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,17⟩,⟨⟨5,[2]⟩,4⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨5,[2]⟩,7⟩,⟨⟨5,[2]⟩,8⟩,⟨⟨5,[2]⟩,16⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,7⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,16⟩,⟨⟨6,[]⟩,17⟩,⟨⟨7,[3]⟩,19⟩,⟨⟨7,[3]⟩,20⟩,⟨⟨7,[4]⟩,9⟩,⟨⟨7,[5]⟩,6⟩,⟨⟨7,[6]⟩,1⟩,⟨⟨8,[3]⟩,18⟩,⟨⟨8,[4]⟩,19⟩,⟨⟨8,[5]⟩,20⟩,⟨⟨8,[6]⟩,21⟩,⟨⟨9,[3]⟩,22⟩,⟨⟨9,[4]⟩,23⟩,⟨⟨9,[5]⟩,24⟩,⟨⟨9,[6]⟩,25⟩,⟨⟨10,[7,3]⟩,18⟩,⟨⟨10,[8,4]⟩,19⟩,⟨⟨10,[9,5]⟩,20⟩,⟨⟨10,[10,6]⟩,21⟩,⟨⟨11,[7,3]⟩,3⟩,⟨⟨11,[8,4]⟩,4⟩,⟨⟨11,[9,5]⟩,5⟩,⟨⟨11,[10,6]⟩,6⟩,⟨⟨12,[8,4]⟩,9⟩,⟨⟨12,[9,5]⟩,9⟩,⟨⟨13,[8,4]⟩,7⟩,⟨⟨13,[9,5]⟩,8⟩,⟨⟨14,[8,4]⟩,10⟩,⟨⟨14,[8,4]⟩,11⟩,⟨⟨14,[8,4]⟩,12⟩,⟨⟨14,[9,5]⟩,10⟩,⟨⟨14,[9,5]⟩,11⟩,⟨⟨14,[9,5]⟩,12⟩,⟨⟨15,[0,8,4]⟩,4⟩,⟨⟨15,[0,8,4]⟩,7⟩,⟨⟨15,[0,9,5]⟩,4⟩,⟨⟨15,[0,9,5]⟩,7⟩,⟨⟨16,[3]⟩,3⟩,⟨⟨16,[4]⟩,4⟩,⟨⟨16,[4]⟩,7⟩,⟨⟨16,[5]⟩,4⟩,⟨⟨16,[5]⟩,5⟩,⟨⟨16,[5]⟩,7⟩,⟨⟨16,[5]⟩,8⟩,⟨⟨16,[6]⟩,6⟩,⟨⟨17,[3]⟩,9⟩,⟨⟨17,[4]⟩,10⟩,⟨⟨17,[4]⟩,11⟩,⟨⟨17,[4]⟩,12⟩,⟨⟨17,[5]⟩,13⟩,⟨⟨17,[5]⟩,14⟩,⟨⟨17,[5]⟩,15⟩,⟨⟨17,[6]⟩,16⟩,⟨⟨18,[6]⟩,13⟩,⟨⟨18,[6]⟩,14⟩,⟨⟨18,[6]⟩,15⟩,⟨⟨19,[1,6]⟩,4⟩,⟨⟨19,[1,6]⟩,5⟩,⟨⟨19,[1,6]⟩,7⟩,⟨⟨19,[1,6]⟩,8⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[10],[11],[12],[13],[14],[16],[17],[18],[18],[19],[20],[21],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[51],[52],[55],[58],[39],[40],[53],[57],[47,48],[48],[47],[49,50],[50],[49],[52],[53],[54],[56],[59],[60],[60],[63],[65],[63],[64],[66],[37,38],[41,44],[42,45],[43,46],[67],[68],[69],[9],[70,72],[73],[71],[5],[6],[7],[8]]
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
end Certgen.R213
