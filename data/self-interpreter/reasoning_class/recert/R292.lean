import Regular
namespace Certgen.R292
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.app 11 12,.var 0,.app 13 20,.app 14 15,.var 0,.app 16 17,.var 1,.app 18 19,.var 1,.var 0,.var 0,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨8,[]⟩],[⟨12,[8,5]⟩],[⟨12,[11,4]⟩],[⟨15,[8,5]⟩,⟨15,[11,4]⟩],[⟨12,[9,6]⟩],[⟨12,[12,7]⟩],[⟨15,[9,6]⟩,⟨15,[12,7]⟩],[⟨6,[0]⟩],[⟨21,[]⟩],[⟨20,[9,6]⟩,⟨20,[12,7]⟩],[⟨17,[8,5]⟩,⟨17,[11,4]⟩],[⟨19,[8,5]⟩,⟨19,[11,4]⟩],[⟨7,[0]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨12,[8,5]⟩,0⟩],[⟨⟨12,[9,6]⟩,21⟩,⟨⟨12,[9,6]⟩,22⟩],[⟨⟨12,[9,6]⟩,23⟩,⟨⟨12,[9,6]⟩,24⟩],[⟨⟨12,[10,4]⟩,30⟩],[⟨⟨12,[11,4]⟩,6⟩],[⟨⟨12,[12,7]⟩,1⟩],[⟨⟨20,[8,5]⟩,28⟩],[⟨⟨20,[9,6]⟩,22⟩],[⟨⟨20,[9,6]⟩,24⟩],[⟨⟨20,[11,4]⟩,29⟩],[⟨⟨20,[12,7]⟩,21⟩],[⟨⟨20,[12,7]⟩,23⟩],[⟨⟨15,[8,5]⟩,9⟩],[⟨⟨15,[9,6]⟩,10⟩],[⟨⟨15,[9,6]⟩,11⟩],[⟨⟨15,[11,4]⟩,12⟩],[⟨⟨15,[12,7]⟩,13⟩],[⟨⟨15,[12,7]⟩,14⟩],[⟨⟨17,[8,5]⟩,30⟩],[⟨⟨17,[11,4]⟩,30⟩],[⟨⟨19,[8,5]⟩,6⟩],[⟨⟨19,[11,4]⟩,6⟩],[⟨⟨28,[1]⟩,0⟩],[⟨⟨28,[2]⟩,6⟩],[⟨⟨28,[3]⟩,9⟩,⟨⟨28,[3]⟩,12⟩],[⟨⟨25,[1]⟩,25⟩],[⟨⟨25,[2]⟩,26⟩],[⟨⟨25,[3]⟩,27⟩],[⟨⟨7,[0]⟩,1⟩],[⟨⟨6,[0]⟩,31⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[0]⟩,1⟩,⟨⟨4,[0]⟩,31⟩,⟨⟨5,[0]⟩,32⟩,⟨⟨7,[0]⟩,4⟩,⟨⟨7,[0]⟩,5⟩,⟨⟨7,[0]⟩,8⟩,⟨⟨7,[0]⟩,16⟩,⟨⟨7,[0]⟩,17⟩,⟨⟨7,[0]⟩,19⟩,⟨⟨7,[0]⟩,20⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,5⟩,⟨⟨8,[]⟩,8⟩,⟨⟨8,[]⟩,16⟩,⟨⟨8,[]⟩,17⟩,⟨⟨8,[]⟩,19⟩,⟨⟨8,[]⟩,20⟩,⟨⟨8,[]⟩,32⟩,⟨⟨9,[4]⟩,21⟩,⟨⟨9,[4]⟩,22⟩,⟨⟨9,[4]⟩,23⟩,⟨⟨9,[4]⟩,24⟩,⟨⟨9,[5]⟩,1⟩,⟨⟨9,[6]⟩,10⟩,⟨⟨9,[6]⟩,11⟩,⟨⟨9,[6]⟩,13⟩,⟨⟨9,[6]⟩,14⟩,⟨⟨9,[7]⟩,31⟩,⟨⟨10,[8,5]⟩,0⟩,⟨⟨10,[9,6]⟩,21⟩,⟨⟨10,[9,6]⟩,22⟩,⟨⟨10,[9,6]⟩,23⟩,⟨⟨10,[9,6]⟩,24⟩,⟨⟨10,[10,4]⟩,30⟩,⟨⟨10,[11,4]⟩,6⟩,⟨⟨10,[12,7]⟩,1⟩,⟨⟨11,[8,5]⟩,3⟩,⟨⟨11,[9,6]⟩,4⟩,⟨⟨11,[9,6]⟩,5⟩,⟨⟨11,[10,4]⟩,6⟩,⟨⟨11,[11,4]⟩,7⟩,⟨⟨11,[12,7]⟩,8⟩,⟨⟨12,[8,5]⟩,28⟩,⟨⟨12,[9,6]⟩,22⟩,⟨⟨12,[9,6]⟩,24⟩,⟨⟨12,[11,4]⟩,29⟩,⟨⟨12,[12,7]⟩,21⟩,⟨⟨12,[12,7]⟩,23⟩,⟨⟨13,[8,5]⟩,9⟩,⟨⟨13,[9,6]⟩,10⟩,⟨⟨13,[9,6]⟩,11⟩,⟨⟨13,[11,4]⟩,12⟩,⟨⟨13,[12,7]⟩,13⟩,⟨⟨13,[12,7]⟩,14⟩,⟨⟨14,[8,5]⟩,15⟩,⟨⟨14,[9,6]⟩,16⟩,⟨⟨14,[9,6]⟩,17⟩,⟨⟨14,[11,4]⟩,18⟩,⟨⟨14,[12,7]⟩,19⟩,⟨⟨14,[12,7]⟩,20⟩,⟨⟨15,[8,5]⟩,30⟩,⟨⟨15,[11,4]⟩,30⟩,⟨⟨16,[8,5]⟩,21⟩,⟨⟨16,[11,4]⟩,22⟩,⟨⟨17,[8,5]⟩,6⟩,⟨⟨17,[11,4]⟩,6⟩,⟨⟨18,[8,5]⟩,23⟩,⟨⟨18,[11,4]⟩,24⟩,⟨⟨19,[8,5]⟩,7⟩,⟨⟨19,[8,5]⟩,18⟩,⟨⟨19,[11,4]⟩,7⟩,⟨⟨19,[11,4]⟩,18⟩,⟨⟨20,[9,6]⟩,4⟩,⟨⟨20,[9,6]⟩,5⟩,⟨⟨20,[9,6]⟩,16⟩,⟨⟨20,[9,6]⟩,17⟩,⟨⟨20,[12,7]⟩,4⟩,⟨⟨20,[12,7]⟩,5⟩,⟨⟨20,[12,7]⟩,16⟩,⟨⟨20,[12,7]⟩,17⟩,⟨⟨21,[]⟩,3⟩,⟨⟨21,[]⟩,7⟩,⟨⟨21,[]⟩,15⟩,⟨⟨21,[]⟩,18⟩,⟨⟨22,[1]⟩,0⟩,⟨⟨22,[2]⟩,6⟩,⟨⟨22,[3]⟩,9⟩,⟨⟨22,[3]⟩,12⟩,⟨⟨23,[1]⟩,25⟩,⟨⟨23,[2]⟩,26⟩,⟨⟨23,[3]⟩,27⟩,⟨⟨24,[1]⟩,28⟩,⟨⟨24,[2]⟩,29⟩,⟨⟨24,[3]⟩,30⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[20],[13],[14],[15],[16],[17],[18],[19],[21,22],[23,24],[25],[26],[27],[28],[29],[30],[36],[36],[37],[37],[31],[33],[35],[32],[34],[38],[39],[40],[40],[41],[41],[42],[43],[44],[83],[75,79],[76,80],[67,68],[71,73],[8],[51],[52],[53],[54],[55],[56],[57],[58],[59],[60],[61],[62],[85],[77,81],[78,82],[72,74],[11],[12],[65],[66],[49],[46],[69],[70],[50],[47],[84],[86],[71,73],[72,74],[75,79],[76,80],[77,81],[78,82],[6],[7],[9],[10],[87],[88],[89],[90],[91],[92],[93],[93],[94],[95],[96],[45],[48],[63,64]]
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
end Certgen.R292
