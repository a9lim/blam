import Regular
namespace Certgen.R182
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 8,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.var 0,.lam 9,.app 10 19,.lam 11,.app 12 16,.app 13 14,.var 1,.lam 15,.var 2,.app 17 18,.var 1,.opaque,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨19,[7]⟩,⟨19,[8]⟩],[⟨19,[9]⟩,⟨19,[10]⟩],[⟨19,[11]⟩],[⟨19,[12]⟩],[⟨14,[1,9]⟩,⟨14,[1,10]⟩],[⟨18,[1,9]⟩,⟨18,[1,10]⟩],[⟨8,[]⟩],[⟨16,[1,9]⟩],[⟨16,[1,10]⟩],[⟨14,[3,12]⟩],[⟨14,[0,7]⟩,⟨14,[0,8]⟩],[⟨5,[6]⟩],[⟨7,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨16,[0,7]⟩,8⟩],[⟨⟨16,[0,8]⟩,3⟩,⟨⟨16,[0,8]⟩,4⟩],[⟨⟨16,[1,9]⟩,8⟩],[⟨⟨16,[1,10]⟩,3⟩,⟨⟨16,[1,10]⟩,4⟩],[⟨⟨16,[2,11]⟩,1⟩],[⟨⟨16,[3,12]⟩,13⟩],[⟨⟨14,[0,7]⟩,3⟩],[⟨⟨14,[0,8]⟩,4⟩],[⟨⟨14,[1,9]⟩,5⟩],[⟨⟨14,[1,10]⟩,6⟩],[⟨⟨14,[2,11]⟩,7⟩],[⟨⟨14,[3,12]⟩,8⟩],[⟨⟨18,[1,9]⟩,9⟩],[⟨⟨18,[1,9]⟩,6⟩],[⟨⟨18,[1,9]⟩,10⟩],[⟨⟨18,[1,9]⟩,6⟩,⟨⟨18,[1,9]⟩,10⟩],[⟨⟨18,[1,10]⟩,10⟩],[⟨⟨18,[1,10]⟩,6⟩],[⟨⟨18,[1,10]⟩,6⟩,⟨⟨18,[1,10]⟩,10⟩],[⟨⟨5,[6]⟩,1⟩],[⟨⟨7,[6]⟩,13⟩],[⟨⟨19,[7]⟩,8⟩],[⟨⟨19,[8]⟩,3⟩,⟨⟨19,[8]⟩,4⟩],[⟨⟨19,[9]⟩,8⟩],[⟨⟨19,[10]⟩,3⟩,⟨⟨19,[10]⟩,4⟩],[⟨⟨19,[11]⟩,1⟩],[⟨⟨19,[12]⟩,13⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,22⟩,⟨⟨5,[6]⟩,13⟩,⟨⟨6,[6]⟩,23⟩,⟨⟨7,[6]⟩,5⟩,⟨⟨7,[6]⟩,6⟩,⟨⟨7,[6]⟩,9⟩,⟨⟨7,[6]⟩,10⟩,⟨⟨7,[6]⟩,14⟩,⟨⟨8,[]⟩,5⟩,⟨⟨8,[]⟩,6⟩,⟨⟨8,[]⟩,9⟩,⟨⟨8,[]⟩,10⟩,⟨⟨8,[]⟩,14⟩,⟨⟨8,[]⟩,22⟩,⟨⟨8,[]⟩,23⟩,⟨⟨9,[7]⟩,8⟩,⟨⟨9,[8]⟩,3⟩,⟨⟨9,[8]⟩,4⟩,⟨⟨9,[9]⟩,8⟩,⟨⟨9,[10]⟩,3⟩,⟨⟨9,[10]⟩,4⟩,⟨⟨9,[11]⟩,1⟩,⟨⟨9,[12]⟩,13⟩,⟨⟨10,[7]⟩,24⟩,⟨⟨10,[8]⟩,25⟩,⟨⟨10,[9]⟩,26⟩,⟨⟨10,[10]⟩,27⟩,⟨⟨10,[11]⟩,28⟩,⟨⟨10,[12]⟩,29⟩,⟨⟨11,[0,7]⟩,8⟩,⟨⟨11,[0,8]⟩,3⟩,⟨⟨11,[0,8]⟩,4⟩,⟨⟨11,[1,9]⟩,8⟩,⟨⟨11,[1,10]⟩,3⟩,⟨⟨11,[1,10]⟩,4⟩,⟨⟨11,[2,11]⟩,1⟩,⟨⟨11,[3,12]⟩,13⟩,⟨⟨12,[0,7]⟩,3⟩,⟨⟨12,[0,8]⟩,4⟩,⟨⟨12,[1,9]⟩,5⟩,⟨⟨12,[1,10]⟩,6⟩,⟨⟨12,[2,11]⟩,7⟩,⟨⟨12,[3,12]⟩,8⟩,⟨⟨13,[0,7]⟩,9⟩,⟨⟨13,[0,8]⟩,10⟩,⟨⟨13,[1,9]⟩,11⟩,⟨⟨13,[1,10]⟩,12⟩,⟨⟨13,[2,11]⟩,13⟩,⟨⟨13,[3,12]⟩,14⟩,⟨⟨14,[0,7]⟩,12⟩,⟨⟨14,[0,7]⟩,19⟩,⟨⟨14,[0,7]⟩,20⟩,⟨⟨14,[0,7]⟩,21⟩,⟨⟨14,[0,8]⟩,12⟩,⟨⟨14,[0,8]⟩,19⟩,⟨⟨14,[0,8]⟩,20⟩,⟨⟨14,[0,8]⟩,21⟩,⟨⟨14,[3,12]⟩,11⟩,⟨⟨14,[3,12]⟩,15⟩,⟨⟨14,[3,12]⟩,16⟩,⟨⟨14,[3,12]⟩,17⟩,⟨⟨14,[3,12]⟩,18⟩,⟨⟨15,[4,0,7]⟩,6⟩,⟨⟨15,[4,0,8]⟩,6⟩,⟨⟨15,[4,3,12]⟩,5⟩,⟨⟨15,[5,0,7]⟩,6⟩,⟨⟨15,[5,0,7]⟩,10⟩,⟨⟨15,[5,0,8]⟩,6⟩,⟨⟨15,[5,0,8]⟩,10⟩,⟨⟨15,[5,3,12]⟩,6⟩,⟨⟨15,[5,3,12]⟩,9⟩,⟨⟨15,[5,3,12]⟩,10⟩,⟨⟨16,[1,9]⟩,6⟩,⟨⟨16,[1,9]⟩,9⟩,⟨⟨16,[1,9]⟩,10⟩,⟨⟨16,[1,10]⟩,6⟩,⟨⟨16,[1,10]⟩,10⟩,⟨⟨17,[1,9]⟩,15⟩,⟨⟨17,[1,9]⟩,16⟩,⟨⟨17,[1,9]⟩,17⟩,⟨⟨17,[1,9]⟩,18⟩,⟨⟨17,[1,10]⟩,19⟩,⟨⟨17,[1,10]⟩,20⟩,⟨⟨17,[1,10]⟩,21⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[17],[6],[18],[12],[13],[14],[15],[16],[19],[20,21],[23],[24],[22],[25],[26],[27],[28],[28],[29],[30],[30],[31],[32],[33],[34,35],[36],[37,38],[39],[40],[41],[42],[42],[43],[44],[44],[45],[46],[47],[48],[49],[50],[51],[52],[77],[80],[61],[53,57],[5],[11],[66],[70],[69],[69,70],[67],[72],[71],[71,72],[68],[74],[73],[75],[73,75],[76],[79],[7],[76],[78],[79],[80],[8],[9],[10],[82],[81],[83],[86],[85],[62],[63],[64],[65],[54,58],[55,59],[56,60]]
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
theorem block84 : checkRange P V K states hints 84 4=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<88 := hi
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
end Certgen.R182
