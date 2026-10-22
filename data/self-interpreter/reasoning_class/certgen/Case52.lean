import Regular
namespace Certgen.Case52
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 8,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.var 0,.lam 9,.app 10 20,.app 11 19,.app 12 16,.app 13 14,.var 0,.lam 15,.var 1,.app 17 18,.var 0,.opaque,.opaque,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨14,[5]⟩,⟨14,[6]⟩],[⟨18,[5]⟩,⟨18,[6]⟩],[⟨8,[]⟩],[⟨16,[6]⟩],[⟨16,[5]⟩],[⟨14,[3]⟩,⟨14,[4]⟩],[⟨14,[8]⟩],[⟨5,[2]⟩],[⟨7,[2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨19,[3]⟩,30⟩],[⟨⟨19,[4]⟩,31⟩],[⟨⟨19,[5]⟩,32⟩],[⟨⟨19,[6]⟩,33⟩],[⟨⟨19,[7]⟩,34⟩],[⟨⟨19,[8]⟩,35⟩],[⟨⟨16,[3]⟩,3⟩],[⟨⟨16,[4]⟩,4⟩],[⟨⟨16,[5]⟩,5⟩],[⟨⟨16,[6]⟩,6⟩],[⟨⟨16,[7]⟩,7⟩],[⟨⟨16,[8]⟩,8⟩],[⟨⟨14,[3]⟩,9⟩],[⟨⟨14,[4]⟩,10⟩],[⟨⟨14,[5]⟩,11⟩],[⟨⟨14,[6]⟩,12⟩],[⟨⟨14,[7]⟩,13⟩],[⟨⟨14,[8]⟩,14⟩],[⟨⟨18,[5]⟩,11⟩],[⟨⟨18,[5]⟩,11⟩,⟨⟨18,[5]⟩,16⟩],[⟨⟨18,[5]⟩,16⟩],[⟨⟨18,[6]⟩,11⟩],[⟨⟨18,[6]⟩,11⟩,⟨⟨18,[6]⟩,16⟩],[⟨⟨18,[6]⟩,16⟩],[⟨⟨18,[6]⟩,15⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨7,[2]⟩,19⟩],[⟨⟨20,[3]⟩,6⟩],[⟨⟨20,[4]⟩,5⟩],[⟨⟨20,[5]⟩,9⟩,⟨⟨20,[5]⟩,10⟩],[⟨⟨20,[6]⟩,14⟩],[⟨⟨20,[7]⟩,1⟩],[⟨⟨20,[8]⟩,19⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,28⟩,⟨⟨5,[2]⟩,19⟩,⟨⟨6,[2]⟩,29⟩,⟨⟨7,[2]⟩,11⟩,⟨⟨7,[2]⟩,12⟩,⟨⟨7,[2]⟩,15⟩,⟨⟨7,[2]⟩,16⟩,⟨⟨7,[2]⟩,20⟩,⟨⟨8,[]⟩,11⟩,⟨⟨8,[]⟩,12⟩,⟨⟨8,[]⟩,15⟩,⟨⟨8,[]⟩,16⟩,⟨⟨8,[]⟩,20⟩,⟨⟨8,[]⟩,28⟩,⟨⟨8,[]⟩,29⟩,⟨⟨9,[3]⟩,6⟩,⟨⟨9,[4]⟩,5⟩,⟨⟨9,[5]⟩,9⟩,⟨⟨9,[5]⟩,10⟩,⟨⟨9,[6]⟩,14⟩,⟨⟨9,[7]⟩,1⟩,⟨⟨9,[8]⟩,19⟩,⟨⟨10,[3]⟩,30⟩,⟨⟨10,[4]⟩,31⟩,⟨⟨10,[5]⟩,32⟩,⟨⟨10,[6]⟩,33⟩,⟨⟨10,[7]⟩,34⟩,⟨⟨10,[8]⟩,35⟩,⟨⟨11,[3]⟩,3⟩,⟨⟨11,[4]⟩,4⟩,⟨⟨11,[5]⟩,5⟩,⟨⟨11,[6]⟩,6⟩,⟨⟨11,[7]⟩,7⟩,⟨⟨11,[8]⟩,8⟩,⟨⟨12,[3]⟩,9⟩,⟨⟨12,[4]⟩,10⟩,⟨⟨12,[5]⟩,11⟩,⟨⟨12,[6]⟩,12⟩,⟨⟨12,[7]⟩,13⟩,⟨⟨12,[8]⟩,14⟩,⟨⟨13,[3]⟩,15⟩,⟨⟨13,[4]⟩,16⟩,⟨⟨13,[5]⟩,17⟩,⟨⟨13,[6]⟩,18⟩,⟨⟨13,[7]⟩,19⟩,⟨⟨13,[8]⟩,20⟩,⟨⟨14,[3]⟩,17⟩,⟨⟨14,[3]⟩,21⟩,⟨⟨14,[3]⟩,22⟩,⟨⟨14,[3]⟩,23⟩,⟨⟨14,[4]⟩,17⟩,⟨⟨14,[4]⟩,21⟩,⟨⟨14,[4]⟩,22⟩,⟨⟨14,[4]⟩,23⟩,⟨⟨14,[8]⟩,18⟩,⟨⟨14,[8]⟩,24⟩,⟨⟨14,[8]⟩,25⟩,⟨⟨14,[8]⟩,26⟩,⟨⟨14,[8]⟩,27⟩,⟨⟨15,[0,3]⟩,11⟩,⟨⟨15,[0,4]⟩,11⟩,⟨⟨15,[0,8]⟩,12⟩,⟨⟨15,[1,3]⟩,11⟩,⟨⟨15,[1,3]⟩,16⟩,⟨⟨15,[1,4]⟩,11⟩,⟨⟨15,[1,4]⟩,16⟩,⟨⟨15,[1,8]⟩,11⟩,⟨⟨15,[1,8]⟩,15⟩,⟨⟨15,[1,8]⟩,16⟩,⟨⟨16,[5]⟩,11⟩,⟨⟨16,[5]⟩,16⟩,⟨⟨16,[6]⟩,11⟩,⟨⟨16,[6]⟩,15⟩,⟨⟨16,[6]⟩,16⟩,⟨⟨17,[5]⟩,21⟩,⟨⟨17,[5]⟩,22⟩,⟨⟨17,[5]⟩,23⟩,⟨⟨17,[6]⟩,24⟩,⟨⟨17,[6]⟩,25⟩,⟨⟨17,[6]⟩,26⟩,⟨⟨17,[6]⟩,27⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[17],[6],[18],[12],[13],[14],[15],[16],[20],[19],[21],[22],[23],[24],[25],[26],[27],[28],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[41],[42],[43],[44],[45],[46],[47],[48],[49],[76],[74],[50,54],[58],[5],[11],[63],[66],[66,67],[67],[64],[68],[68,69],[69],[65],[70],[70,72],[72],[71],[75],[73],[8],[75],[77],[73],[74],[7],[9],[10],[78],[79],[81],[84],[82],[51,55],[52,56],[53,57],[59],[60],[61],[62]]
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
end Certgen.Case52
