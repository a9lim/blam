import Regular
namespace Certgen.Case46
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 20,.app 9 19,.app 10 16,.app 11 12,.var 0,.app 13 14,.var 0,.lam 15,.var 1,.app 17 18,.var 0,.opaque,.opaque,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[5]⟩,⟨12,[6]⟩],[⟨18,[5]⟩,⟨18,[6]⟩],[⟨6,[]⟩],[⟨12,[8]⟩,⟨12,[9]⟩],[⟨12,[7]⟩],[⟨14,[8]⟩,⟨14,[9]⟩],[⟨14,[7]⟩],[⟨5,[2]⟩],[⟨16,[6]⟩],[⟨16,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[3]⟩,38⟩],[⟨⟨12,[4]⟩,39⟩],[⟨⟨12,[5]⟩,40⟩],[⟨⟨12,[6]⟩,41⟩],[⟨⟨12,[7]⟩,42⟩],[⟨⟨12,[8]⟩,43⟩],[⟨⟨12,[9]⟩,44⟩],[⟨⟨14,[7]⟩,4⟩],[⟨⟨14,[8]⟩,3⟩],[⟨⟨14,[9]⟩,3⟩],[⟨⟨18,[5]⟩,40⟩],[⟨⟨18,[5]⟩,9⟩,⟨⟨18,[5]⟩,12⟩,⟨⟨18,[5]⟩,40⟩],[⟨⟨18,[5]⟩,12⟩],[⟨⟨18,[5]⟩,9⟩],[⟨⟨18,[6]⟩,40⟩],[⟨⟨18,[6]⟩,9⟩,⟨⟨18,[6]⟩,12⟩,⟨⟨18,[6]⟩,40⟩],[⟨⟨18,[6]⟩,12⟩],[⟨⟨18,[6]⟩,9⟩],[⟨⟨18,[6]⟩,11⟩],[⟨⟨18,[6]⟩,8⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨20,[3]⟩,43⟩,⟨⟨20,[3]⟩,44⟩],[⟨⟨20,[4]⟩,42⟩],[⟨⟨20,[5]⟩,3⟩],[⟨⟨20,[6]⟩,4⟩],[⟨⟨20,[7]⟩,1⟩],[⟨⟨20,[8]⟩,34⟩],[⟨⟨20,[9]⟩,33⟩],[⟨⟨19,[3]⟩,24⟩],[⟨⟨19,[4]⟩,25⟩],[⟨⟨19,[5]⟩,26⟩],[⟨⟨19,[6]⟩,27⟩],[⟨⟨19,[7]⟩,28⟩],[⟨⟨19,[8]⟩,29⟩],[⟨⟨19,[9]⟩,30⟩],[⟨⟨16,[3]⟩,31⟩],[⟨⟨16,[4]⟩,32⟩],[⟨⟨16,[5]⟩,33⟩],[⟨⟨16,[6]⟩,34⟩],[⟨⟨16,[7]⟩,35⟩],[⟨⟨16,[8]⟩,36⟩],[⟨⟨16,[9]⟩,37⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,23⟩,⟨⟨5,[2]⟩,7⟩,⟨⟨5,[2]⟩,8⟩,⟨⟨5,[2]⟩,9⟩,⟨⟨5,[2]⟩,10⟩,⟨⟨5,[2]⟩,11⟩,⟨⟨5,[2]⟩,12⟩,⟨⟨5,[2]⟩,40⟩,⟨⟨5,[2]⟩,41⟩,⟨⟨6,[]⟩,7⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,10⟩,⟨⟨6,[]⟩,11⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,23⟩,⟨⟨6,[]⟩,40⟩,⟨⟨6,[]⟩,41⟩,⟨⟨7,[3]⟩,43⟩,⟨⟨7,[3]⟩,44⟩,⟨⟨7,[4]⟩,42⟩,⟨⟨7,[5]⟩,3⟩,⟨⟨7,[6]⟩,4⟩,⟨⟨7,[7]⟩,1⟩,⟨⟨7,[8]⟩,34⟩,⟨⟨7,[9]⟩,33⟩,⟨⟨8,[3]⟩,24⟩,⟨⟨8,[4]⟩,25⟩,⟨⟨8,[5]⟩,26⟩,⟨⟨8,[6]⟩,27⟩,⟨⟨8,[7]⟩,28⟩,⟨⟨8,[8]⟩,29⟩,⟨⟨8,[9]⟩,30⟩,⟨⟨9,[3]⟩,31⟩,⟨⟨9,[4]⟩,32⟩,⟨⟨9,[5]⟩,33⟩,⟨⟨9,[6]⟩,34⟩,⟨⟨9,[7]⟩,35⟩,⟨⟨9,[8]⟩,36⟩,⟨⟨9,[9]⟩,37⟩,⟨⟨10,[3]⟩,38⟩,⟨⟨10,[4]⟩,39⟩,⟨⟨10,[5]⟩,40⟩,⟨⟨10,[6]⟩,41⟩,⟨⟨10,[7]⟩,42⟩,⟨⟨10,[8]⟩,43⟩,⟨⟨10,[9]⟩,44⟩,⟨⟨11,[3]⟩,3⟩,⟨⟨11,[4]⟩,4⟩,⟨⟨11,[5]⟩,5⟩,⟨⟨11,[6]⟩,6⟩,⟨⟨11,[7]⟩,7⟩,⟨⟨11,[8]⟩,8⟩,⟨⟨11,[9]⟩,9⟩,⟨⟨12,[7]⟩,4⟩,⟨⟨12,[8]⟩,3⟩,⟨⟨12,[9]⟩,3⟩,⟨⟨13,[7]⟩,10⟩,⟨⟨13,[8]⟩,11⟩,⟨⟨13,[9]⟩,12⟩,⟨⟨14,[7]⟩,6⟩,⟨⟨14,[7]⟩,17⟩,⟨⟨14,[7]⟩,18⟩,⟨⟨14,[7]⟩,19⟩,⟨⟨14,[7]⟩,20⟩,⟨⟨14,[7]⟩,21⟩,⟨⟨14,[7]⟩,22⟩,⟨⟨14,[8]⟩,5⟩,⟨⟨14,[8]⟩,13⟩,⟨⟨14,[8]⟩,14⟩,⟨⟨14,[8]⟩,15⟩,⟨⟨14,[8]⟩,16⟩,⟨⟨14,[9]⟩,5⟩,⟨⟨14,[9]⟩,13⟩,⟨⟨14,[9]⟩,14⟩,⟨⟨14,[9]⟩,15⟩,⟨⟨14,[9]⟩,16⟩,⟨⟨15,[0,7]⟩,41⟩,⟨⟨15,[0,8]⟩,40⟩,⟨⟨15,[0,9]⟩,40⟩,⟨⟨15,[1,7]⟩,8⟩,⟨⟨15,[1,7]⟩,9⟩,⟨⟨15,[1,7]⟩,11⟩,⟨⟨15,[1,7]⟩,12⟩,⟨⟨15,[1,7]⟩,40⟩,⟨⟨15,[1,8]⟩,9⟩,⟨⟨15,[1,8]⟩,12⟩,⟨⟨15,[1,8]⟩,40⟩,⟨⟨15,[1,9]⟩,9⟩,⟨⟨15,[1,9]⟩,12⟩,⟨⟨15,[1,9]⟩,40⟩,⟨⟨16,[5]⟩,9⟩,⟨⟨16,[5]⟩,12⟩,⟨⟨16,[5]⟩,40⟩,⟨⟨16,[6]⟩,8⟩,⟨⟨16,[6]⟩,9⟩,⟨⟨16,[6]⟩,11⟩,⟨⟨16,[6]⟩,12⟩,⟨⟨16,[6]⟩,40⟩,⟨⟨17,[5]⟩,13⟩,⟨⟨17,[5]⟩,14⟩,⟨⟨17,[5]⟩,15⟩,⟨⟨17,[5]⟩,16⟩,⟨⟨17,[6]⟩,17⟩,⟨⟨17,[6]⟩,18⟩,⟨⟨17,[6]⟩,19⟩,⟨⟨17,[6]⟩,20⟩,⟨⟨17,[6]⟩,21⟩,⟨⟨17,[6]⟩,22⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[19],[13],[14],[15],[16],[17],[18],[20],[21],[24],[22],[23],[26],[25],[25],[27],[29],[28],[30],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[41],[42],[43],[44],[45],[46],[47],[48],[49],[50],[51],[52],[53],[54],[55],[56],[57],[59,60],[58],[71,76],[64],[5],[98],[95],[61],[62],[63],[8],[100],[96],[81],[88],[85,87,88],[87],[85],[86],[84],[82],[91],[89,90,91],[90],[89],[83],[94],[92,93,94],[93],[92],[12],[102],[97],[6],[7],[9],[10],[11],[99],[101],[102],[95],[96],[97],[104],[104],[103],[112],[108],[111],[108],[107],[72,77],[73,78],[74,79],[75,80],[65],[66],[67],[68],[69],[70]]
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
theorem block108 : checkRange P V K states hints 108 5=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<113 := hi
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
end Certgen.Case46
