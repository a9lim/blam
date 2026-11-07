import Regular
namespace Certgen.R225
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 9,.lam 3,.app 4 5,.var 0,.lam 6,.app 7 8,.var 0,.var 1,.lam 10,.app 11 20,.app 12 16,.lam 13,.app 14 15,.var 0,.var 0,.app 17 18,.var 0,.lam 19,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[10]⟩],[⟨16,[11]⟩,⟨16,[12]⟩],[⟨16,[13]⟩],[⟨16,[14]⟩],[⟨18,[11]⟩,⟨18,[12]⟩],[⟨8,[8,6]⟩],[⟨9,[]⟩],[⟨15,[2,13]⟩],[⟨18,[13]⟩],[⟨8,[7,6]⟩],[⟨15,[1,11]⟩,⟨15,[1,12]⟩],[⟨18,[14]⟩],[⟨18,[10]⟩],[⟨5,[6]⟩],[⟨8,[9,6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨9,[]⟩,1⟩],[⟨⟨20,[10]⟩,4⟩,⟨⟨20,[10]⟩,5⟩],[⟨⟨20,[11]⟩,17⟩],[⟨⟨20,[12]⟩,13⟩],[⟨⟨20,[13]⟩,1⟩],[⟨⟨20,[14]⟩,6⟩],[⟨⟨16,[10]⟩,3⟩],[⟨⟨16,[11]⟩,4⟩],[⟨⟨16,[12]⟩,5⟩],[⟨⟨16,[13]⟩,6⟩],[⟨⟨16,[14]⟩,7⟩],[⟨⟨15,[0,10]⟩,3⟩],[⟨⟨15,[1,11]⟩,4⟩],[⟨⟨15,[1,12]⟩,5⟩],[⟨⟨15,[2,13]⟩,6⟩],[⟨⟨15,[3,14]⟩,7⟩],[⟨⟨18,[10]⟩,13⟩],[⟨⟨18,[11]⟩,18⟩],[⟨⟨18,[11]⟩,14⟩,⟨⟨18,[11]⟩,15⟩],[⟨⟨18,[11]⟩,14⟩,⟨⟨18,[11]⟩,15⟩,⟨⟨18,[11]⟩,18⟩],[⟨⟨18,[12]⟩,18⟩],[⟨⟨18,[12]⟩,14⟩,⟨⟨18,[12]⟩,15⟩],[⟨⟨18,[12]⟩,14⟩,⟨⟨18,[12]⟩,15⟩,⟨⟨18,[12]⟩,18⟩],[⟨⟨18,[13]⟩,16⟩],[⟨⟨18,[13]⟩,29⟩],[⟨⟨18,[14]⟩,17⟩],[⟨⟨5,[6]⟩,1⟩],[⟨⟨8,[7,6]⟩,6⟩],[⟨⟨8,[8,6]⟩,16⟩],[⟨⟨8,[8,6]⟩,29⟩],[⟨⟨8,[9,6]⟩,6⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,28⟩,⟨⟨5,[6]⟩,16⟩,⟨⟨5,[6]⟩,25⟩,⟨⟨5,[6]⟩,26⟩,⟨⟨5,[6]⟩,29⟩,⟨⟨6,[7,6]⟩,6⟩,⟨⟨6,[8,6]⟩,16⟩,⟨⟨6,[8,6]⟩,29⟩,⟨⟨6,[9,6]⟩,6⟩,⟨⟨7,[7,6]⟩,29⟩,⟨⟨7,[8,6]⟩,30⟩,⟨⟨7,[8,6]⟩,31⟩,⟨⟨7,[9,6]⟩,32⟩,⟨⟨8,[7,6]⟩,32⟩,⟨⟨8,[9,6]⟩,14⟩,⟨⟨8,[9,6]⟩,15⟩,⟨⟨8,[9,6]⟩,18⟩,⟨⟨8,[9,6]⟩,27⟩,⟨⟨9,[]⟩,14⟩,⟨⟨9,[]⟩,15⟩,⟨⟨9,[]⟩,18⟩,⟨⟨9,[]⟩,27⟩,⟨⟨9,[]⟩,28⟩,⟨⟨9,[]⟩,32⟩,⟨⟨10,[10]⟩,4⟩,⟨⟨10,[10]⟩,5⟩,⟨⟨10,[11]⟩,17⟩,⟨⟨10,[12]⟩,13⟩,⟨⟨10,[13]⟩,1⟩,⟨⟨10,[14]⟩,6⟩,⟨⟨11,[10]⟩,3⟩,⟨⟨11,[11]⟩,4⟩,⟨⟨11,[12]⟩,5⟩,⟨⟨11,[13]⟩,6⟩,⟨⟨11,[14]⟩,7⟩,⟨⟨12,[10]⟩,8⟩,⟨⟨12,[11]⟩,9⟩,⟨⟨12,[12]⟩,10⟩,⟨⟨12,[13]⟩,11⟩,⟨⟨12,[14]⟩,12⟩,⟨⟨13,[0,10]⟩,3⟩,⟨⟨13,[1,11]⟩,4⟩,⟨⟨13,[1,12]⟩,5⟩,⟨⟨13,[2,13]⟩,6⟩,⟨⟨13,[3,14]⟩,7⟩,⟨⟨14,[0,10]⟩,13⟩,⟨⟨14,[1,11]⟩,14⟩,⟨⟨14,[1,12]⟩,15⟩,⟨⟨14,[2,13]⟩,16⟩,⟨⟨14,[3,14]⟩,17⟩,⟨⟨15,[1,11]⟩,14⟩,⟨⟨15,[1,11]⟩,15⟩,⟨⟨15,[1,11]⟩,18⟩,⟨⟨15,[1,12]⟩,14⟩,⟨⟨15,[1,12]⟩,15⟩,⟨⟨15,[1,12]⟩,18⟩,⟨⟨15,[2,13]⟩,29⟩,⟨⟨16,[10]⟩,13⟩,⟨⟨16,[11]⟩,14⟩,⟨⟨16,[11]⟩,15⟩,⟨⟨16,[11]⟩,18⟩,⟨⟨16,[12]⟩,14⟩,⟨⟨16,[12]⟩,15⟩,⟨⟨16,[12]⟩,18⟩,⟨⟨16,[13]⟩,16⟩,⟨⟨16,[13]⟩,29⟩,⟨⟨16,[14]⟩,17⟩,⟨⟨17,[10]⟩,18⟩,⟨⟨17,[11]⟩,19⟩,⟨⟨17,[11]⟩,20⟩,⟨⟨17,[11]⟩,21⟩,⟨⟨17,[12]⟩,22⟩,⟨⟨17,[12]⟩,23⟩,⟨⟨17,[12]⟩,24⟩,⟨⟨17,[13]⟩,25⟩,⟨⟨17,[13]⟩,26⟩,⟨⟨17,[14]⟩,27⟩,⟨⟨18,[10]⟩,22⟩,⟨⟨18,[10]⟩,23⟩,⟨⟨18,[10]⟩,24⟩,⟨⟨18,[13]⟩,30⟩,⟨⟨18,[13]⟩,31⟩,⟨⟨18,[14]⟩,19⟩,⟨⟨18,[14]⟩,20⟩,⟨⟨18,[14]⟩,21⟩,⟨⟨19,[4,10]⟩,14⟩,⟨⟨19,[4,10]⟩,15⟩,⟨⟨19,[4,10]⟩,18⟩,⟨⟨19,[4,14]⟩,14⟩,⟨⟨19,[4,14]⟩,15⟩,⟨⟨19,[4,14]⟩,18⟩,⟨⟨19,[5,13]⟩,16⟩,⟨⟨19,[5,13]⟩,29⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[26],[9],[10],[11],[12],[13],[14],[15],[16],[60],[84],[85],[17],[27],[22],[23],[24],[25],[28],[29],[31],[30],[32],[33],[34],[34],[35],[36],[37],[38],[39],[40],[41],[42],[43],[44],[45],[46],[47],[48],[49],[50],[51],[52],[53],[61],[62,65],[63,66],[68],[70],[62,65],[63,66],[64,67],[62,65],[63,66],[64,67],[69],[71],[73],[73],[72],[76],[76],[75],[78],[79],[80],[56,59],[86],[87],[88],[81],[82],[83],[6],[7],[21],[91],[89,90],[89,90,91],[95],[96],[94],[92,93],[92,93,94],[54,57],[55,58],[56,59],[18],[19],[20],[5],[8]]
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
theorem block84 : checkRange P V K states hints 84 12=true := by decide
theorem block96 : checkRange P V K states hints 96 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<97 := hi
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
 by_cases h84 : i<96
 · exact range_sound block84 i (by omega) h84 hi
 exact range_sound block96 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R225
