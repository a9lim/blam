import Regular
namespace Certgen.Case06
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 10,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.app 8 9,.var 0,.var 0,.lam 11,.app 12 18,.app 13 14,.var 0,.app 15 16,.var 0,.lam 17,.var 1,.app 19 20,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[4]⟩],[⟨18,[5]⟩],[⟨14,[8]⟩],[⟨14,[0]⟩,⟨14,[1]⟩],[⟨16,[8]⟩],[⟨16,[0]⟩,⟨16,[1]⟩],[⟨5,[11]⟩],[⟨7,[11]⟩],[⟨9,[11]⟩],[⟨14,[4]⟩,⟨14,[5]⟩],[⟨20,[4]⟩,⟨20,[5]⟩],[⟨10,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨10,[]⟩,1⟩],[⟨⟨18,[0]⟩,14⟩],[⟨⟨18,[1]⟩,15⟩],[⟨⟨18,[2]⟩,11⟩],[⟨⟨18,[3]⟩,3⟩,⟨⟨18,[3]⟩,4⟩],[⟨⟨18,[4]⟩,14⟩],[⟨⟨18,[5]⟩,15⟩],[⟨⟨18,[6]⟩,1⟩],[⟨⟨18,[7]⟩,18⟩],[⟨⟨18,[8]⟩,19⟩],[⟨⟨14,[0]⟩,3⟩],[⟨⟨14,[1]⟩,4⟩],[⟨⟨14,[2]⟩,5⟩],[⟨⟨14,[3]⟩,6⟩],[⟨⟨14,[4]⟩,7⟩],[⟨⟨14,[5]⟩,8⟩],[⟨⟨14,[6]⟩,9⟩],[⟨⟨14,[7]⟩,10⟩],[⟨⟨14,[8]⟩,11⟩],[⟨⟨16,[0]⟩,15⟩],[⟨⟨16,[1]⟩,15⟩],[⟨⟨16,[8]⟩,14⟩],[⟨⟨20,[4]⟩,12⟩],[⟨⟨20,[4]⟩,21⟩],[⟨⟨20,[4]⟩,8⟩],[⟨⟨20,[4]⟩,13⟩],[⟨⟨20,[4]⟩,22⟩],[⟨⟨20,[4]⟩,8⟩,⟨⟨20,[4]⟩,13⟩,⟨⟨20,[4]⟩,22⟩],[⟨⟨20,[5]⟩,13⟩],[⟨⟨20,[5]⟩,22⟩],[⟨⟨20,[5]⟩,8⟩],[⟨⟨20,[5]⟩,8⟩,⟨⟨20,[5]⟩,13⟩,⟨⟨20,[5]⟩,22⟩],[⟨⟨5,[11]⟩,1⟩],[⟨⟨7,[11]⟩,18⟩],[⟨⟨9,[11]⟩,19⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[11]⟩,1⟩,⟨⟨4,[11]⟩,34⟩,⟨⟨5,[11]⟩,18⟩,⟨⟨6,[11]⟩,35⟩,⟨⟨7,[11]⟩,19⟩,⟨⟨8,[11]⟩,36⟩,⟨⟨9,[11]⟩,7⟩,⟨⟨9,[11]⟩,8⟩,⟨⟨9,[11]⟩,12⟩,⟨⟨9,[11]⟩,13⟩,⟨⟨9,[11]⟩,20⟩,⟨⟨9,[11]⟩,21⟩,⟨⟨9,[11]⟩,22⟩,⟨⟨9,[11]⟩,23⟩,⟨⟨10,[]⟩,7⟩,⟨⟨10,[]⟩,8⟩,⟨⟨10,[]⟩,12⟩,⟨⟨10,[]⟩,13⟩,⟨⟨10,[]⟩,20⟩,⟨⟨10,[]⟩,21⟩,⟨⟨10,[]⟩,22⟩,⟨⟨10,[]⟩,23⟩,⟨⟨10,[]⟩,34⟩,⟨⟨10,[]⟩,35⟩,⟨⟨10,[]⟩,36⟩,⟨⟨11,[0]⟩,14⟩,⟨⟨11,[1]⟩,15⟩,⟨⟨11,[2]⟩,11⟩,⟨⟨11,[3]⟩,3⟩,⟨⟨11,[3]⟩,4⟩,⟨⟨11,[4]⟩,14⟩,⟨⟨11,[5]⟩,15⟩,⟨⟨11,[6]⟩,1⟩,⟨⟨11,[7]⟩,18⟩,⟨⟨11,[8]⟩,19⟩,⟨⟨12,[0]⟩,3⟩,⟨⟨12,[1]⟩,4⟩,⟨⟨12,[2]⟩,5⟩,⟨⟨12,[3]⟩,6⟩,⟨⟨12,[4]⟩,7⟩,⟨⟨12,[5]⟩,8⟩,⟨⟨12,[6]⟩,9⟩,⟨⟨12,[7]⟩,10⟩,⟨⟨12,[8]⟩,11⟩,⟨⟨13,[0]⟩,12⟩,⟨⟨13,[1]⟩,13⟩,⟨⟨13,[2]⟩,14⟩,⟨⟨13,[3]⟩,15⟩,⟨⟨13,[4]⟩,16⟩,⟨⟨13,[5]⟩,17⟩,⟨⟨13,[6]⟩,18⟩,⟨⟨13,[7]⟩,19⟩,⟨⟨13,[8]⟩,20⟩,⟨⟨14,[0]⟩,15⟩,⟨⟨14,[1]⟩,15⟩,⟨⟨14,[8]⟩,14⟩,⟨⟨15,[0]⟩,21⟩,⟨⟨15,[1]⟩,22⟩,⟨⟨15,[8]⟩,23⟩,⟨⟨16,[0]⟩,17⟩,⟨⟨16,[0]⟩,30⟩,⟨⟨16,[0]⟩,31⟩,⟨⟨16,[0]⟩,32⟩,⟨⟨16,[0]⟩,33⟩,⟨⟨16,[1]⟩,17⟩,⟨⟨16,[1]⟩,30⟩,⟨⟨16,[1]⟩,31⟩,⟨⟨16,[1]⟩,32⟩,⟨⟨16,[1]⟩,33⟩,⟨⟨16,[8]⟩,16⟩,⟨⟨16,[8]⟩,24⟩,⟨⟨16,[8]⟩,25⟩,⟨⟨16,[8]⟩,26⟩,⟨⟨16,[8]⟩,27⟩,⟨⟨16,[8]⟩,28⟩,⟨⟨16,[8]⟩,29⟩,⟨⟨17,[9,0]⟩,8⟩,⟨⟨17,[9,1]⟩,8⟩,⟨⟨17,[9,8]⟩,7⟩,⟨⟨17,[10,0]⟩,8⟩,⟨⟨17,[10,0]⟩,13⟩,⟨⟨17,[10,0]⟩,22⟩,⟨⟨17,[10,1]⟩,8⟩,⟨⟨17,[10,1]⟩,13⟩,⟨⟨17,[10,1]⟩,22⟩,⟨⟨17,[10,8]⟩,8⟩,⟨⟨17,[10,8]⟩,12⟩,⟨⟨17,[10,8]⟩,13⟩,⟨⟨17,[10,8]⟩,21⟩,⟨⟨17,[10,8]⟩,22⟩,⟨⟨18,[4]⟩,8⟩,⟨⟨18,[4]⟩,12⟩,⟨⟨18,[4]⟩,13⟩,⟨⟨18,[4]⟩,21⟩,⟨⟨18,[4]⟩,22⟩,⟨⟨18,[5]⟩,8⟩,⟨⟨18,[5]⟩,13⟩,⟨⟨18,[5]⟩,22⟩,⟨⟨19,[4]⟩,24⟩,⟨⟨19,[4]⟩,25⟩,⟨⟨19,[4]⟩,26⟩,⟨⟨19,[4]⟩,27⟩,⟨⟨19,[4]⟩,28⟩,⟨⟨19,[4]⟩,29⟩,⟨⟨19,[5]⟩,30⟩,⟨⟨19,[5]⟩,31⟩,⟨⟨19,[5]⟩,32⟩,⟨⟨19,[5]⟩,33⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[25],[6],[26],[8],[27],[17],[18],[19],[20],[21],[22],[23],[24],[28],[29],[31],[32],[30],[34],[34],[33],[35],[36],[37],[38],[39],[40],[41],[41],[42],[43],[44],[45],[46],[47],[48],[49],[50],[51],[52],[53],[54],[55],[94],[99],[58],[56,57],[72],[62,67],[5],[7],[13],[59],[60],[61],[96],[100],[16],[79],[83],[84],[82],[82,83,84],[80],[86],[87],[85],[85,86,87],[81],[89],[91],[88],[90],[92],[88,90,92],[93],[98],[9],[93],[95],[97],[98],[99],[100],[10],[11],[12],[14],[15],[103],[101],[104],[102],[105],[109],[107],[108],[73],[74],[75],[76],[77],[78],[63,68],[64,69],[65,70],[66,71]]
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
theorem block96 : checkRange P V K states hints 96 12=true := by decide
theorem block108 : checkRange P V K states hints 108 3=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<111 := hi
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
 by_cases h96 : i<108
 · exact range_sound block96 i (by omega) h96 hi
 exact range_sound block108 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.Case06
