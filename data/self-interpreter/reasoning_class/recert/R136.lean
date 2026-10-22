import Regular
namespace Certgen.R136
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 12,.lam 9,.app 10 11,.var 0,.opaque,.app 13 17,.app 14 15,.var 0,.lam 16,.var 1,.app 18 19,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[5]⟩,⟨15,[6]⟩],[⟨19,[5]⟩,⟨19,[6]⟩],[⟨6,[]⟩],[⟨17,[6]⟩],[⟨17,[5]⟩],[⟨15,[3]⟩,⟨15,[4]⟩],[⟨15,[7]⟩],[⟨5,[2]⟩],[⟨12,[3]⟩,⟨12,[4]⟩],[⟨12,[5]⟩,⟨12,[6]⟩],[⟨12,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨17,[3]⟩,26⟩,⟨⟨17,[3]⟩,27⟩],[⟨⟨17,[4]⟩,26⟩,⟨⟨17,[4]⟩,27⟩],[⟨⟨17,[5]⟩,28⟩,⟨⟨17,[5]⟩,29⟩],[⟨⟨17,[6]⟩,28⟩,⟨⟨17,[6]⟩,29⟩],[⟨⟨17,[7]⟩,30⟩],[⟨⟨15,[3]⟩,3⟩],[⟨⟨15,[4]⟩,4⟩],[⟨⟨15,[5]⟩,5⟩],[⟨⟨15,[6]⟩,6⟩],[⟨⟨15,[7]⟩,7⟩],[⟨⟨19,[5]⟩,5⟩],[⟨⟨19,[5]⟩,5⟩,⟨⟨19,[5]⟩,9⟩],[⟨⟨19,[5]⟩,9⟩],[⟨⟨19,[6]⟩,5⟩],[⟨⟨19,[6]⟩,5⟩,⟨⟨19,[6]⟩,9⟩],[⟨⟨19,[6]⟩,9⟩],[⟨⟨19,[6]⟩,8⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨12,[3]⟩,28⟩,⟨⟨12,[3]⟩,29⟩],[⟨⟨12,[4]⟩,28⟩,⟨⟨12,[4]⟩,29⟩],[⟨⟨12,[5]⟩,3⟩,⟨⟨12,[5]⟩,4⟩],[⟨⟨12,[6]⟩,7⟩],[⟨⟨12,[7]⟩,1⟩],[⟨⟨11,[8,3]⟩,28⟩,⟨⟨11,[8,3]⟩,29⟩],[⟨⟨11,[8,4]⟩,28⟩,⟨⟨11,[8,4]⟩,29⟩],[⟨⟨11,[9,5]⟩,3⟩,⟨⟨11,[9,5]⟩,4⟩],[⟨⟨11,[9,6]⟩,7⟩],[⟨⟨11,[10,7]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,20⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨5,[2]⟩,6⟩,⟨⟨5,[2]⟩,8⟩,⟨⟨5,[2]⟩,9⟩,⟨⟨5,[2]⟩,12⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,20⟩,⟨⟨7,[3]⟩,28⟩,⟨⟨7,[3]⟩,29⟩,⟨⟨7,[4]⟩,28⟩,⟨⟨7,[4]⟩,29⟩,⟨⟨7,[5]⟩,3⟩,⟨⟨7,[5]⟩,4⟩,⟨⟨7,[6]⟩,7⟩,⟨⟨7,[7]⟩,1⟩,⟨⟨8,[3]⟩,21⟩,⟨⟨8,[4]⟩,22⟩,⟨⟨8,[5]⟩,23⟩,⟨⟨8,[6]⟩,24⟩,⟨⟨8,[7]⟩,25⟩,⟨⟨9,[8,3]⟩,28⟩,⟨⟨9,[8,3]⟩,29⟩,⟨⟨9,[8,4]⟩,28⟩,⟨⟨9,[8,4]⟩,29⟩,⟨⟨9,[9,5]⟩,3⟩,⟨⟨9,[9,5]⟩,4⟩,⟨⟨9,[9,6]⟩,7⟩,⟨⟨9,[10,7]⟩,1⟩,⟨⟨10,[8,3]⟩,26⟩,⟨⟨10,[8,4]⟩,27⟩,⟨⟨10,[9,5]⟩,28⟩,⟨⟨10,[9,6]⟩,29⟩,⟨⟨10,[10,7]⟩,30⟩,⟨⟨12,[3]⟩,26⟩,⟨⟨12,[3]⟩,27⟩,⟨⟨12,[4]⟩,26⟩,⟨⟨12,[4]⟩,27⟩,⟨⟨12,[5]⟩,28⟩,⟨⟨12,[5]⟩,29⟩,⟨⟨12,[6]⟩,28⟩,⟨⟨12,[6]⟩,29⟩,⟨⟨12,[7]⟩,30⟩,⟨⟨13,[3]⟩,3⟩,⟨⟨13,[4]⟩,4⟩,⟨⟨13,[5]⟩,5⟩,⟨⟨13,[6]⟩,6⟩,⟨⟨13,[7]⟩,7⟩,⟨⟨14,[3]⟩,8⟩,⟨⟨14,[4]⟩,9⟩,⟨⟨14,[5]⟩,10⟩,⟨⟨14,[6]⟩,11⟩,⟨⟨14,[7]⟩,12⟩,⟨⟨15,[3]⟩,10⟩,⟨⟨15,[3]⟩,13⟩,⟨⟨15,[3]⟩,14⟩,⟨⟨15,[3]⟩,15⟩,⟨⟨15,[4]⟩,10⟩,⟨⟨15,[4]⟩,13⟩,⟨⟨15,[4]⟩,14⟩,⟨⟨15,[4]⟩,15⟩,⟨⟨15,[7]⟩,11⟩,⟨⟨15,[7]⟩,16⟩,⟨⟨15,[7]⟩,17⟩,⟨⟨15,[7]⟩,18⟩,⟨⟨15,[7]⟩,19⟩,⟨⟨16,[0,3]⟩,5⟩,⟨⟨16,[0,4]⟩,5⟩,⟨⟨16,[0,7]⟩,6⟩,⟨⟨16,[1,3]⟩,5⟩,⟨⟨16,[1,3]⟩,9⟩,⟨⟨16,[1,4]⟩,5⟩,⟨⟨16,[1,4]⟩,9⟩,⟨⟨16,[1,7]⟩,5⟩,⟨⟨16,[1,7]⟩,8⟩,⟨⟨16,[1,7]⟩,9⟩,⟨⟨17,[5]⟩,5⟩,⟨⟨17,[5]⟩,9⟩,⟨⟨17,[6]⟩,5⟩,⟨⟨17,[6]⟩,8⟩,⟨⟨17,[6]⟩,9⟩,⟨⟨18,[5]⟩,13⟩,⟨⟨18,[5]⟩,14⟩,⟨⟨18,[5]⟩,15⟩,⟨⟨18,[6]⟩,16⟩,⟨⟨18,[6]⟩,17⟩,⟨⟨18,[6]⟩,18⟩,⟨⟨18,[6]⟩,19⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[10],[11],[12],[13],[14],[18,19],[16,17],[20],[21],[22],[23],[24],[24],[25],[25],[26],[26],[27],[28],[29,30],[31,32],[33,34],[35],[36],[37],[37],[38],[38],[39],[39],[40],[41],[42,44],[43,45],[46,48],[47,49],[50],[51],[51],[52],[52],[53],[53],[54],[54],[55],[56],[57],[58],[59],[60],[87],[85],[61,65],[69],[9],[74],[77],[77,78],[78],[75],[79],[79,80],[80],[76],[81],[81,83],[83],[82],[86],[84],[6],[86],[88],[84],[85],[5],[7],[8],[89],[90],[92],[95],[93],[62,66],[63,67],[64,68],[70],[71],[72],[73]]
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
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<96 := hi
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
end Certgen.R136
