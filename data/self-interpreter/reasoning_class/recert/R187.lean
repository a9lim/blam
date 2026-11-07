import Regular
namespace Certgen.R187
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 20,.app 9 12,.lam 10,.lam 11,.var 1,.app 13 17,.app 14 15,.var 0,.lam 16,.var 1,.app 18 19,.var 0,.opaque,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨20,[4]⟩,⟨20,[5]⟩,⟨20,[6]⟩,⟨20,[7]⟩,⟨20,[8]⟩],[⟨15,[6]⟩,⟨15,[7]⟩],[⟨19,[6]⟩,⟨19,[7]⟩],[⟨6,[]⟩],[⟨17,[6]⟩],[⟨17,[7]⟩],[⟨15,[8]⟩],[⟨15,[4]⟩,⟨15,[5]⟩],[⟨5,[3]⟩],[⟨12,[4]⟩,⟨12,[5]⟩],[⟨12,[6]⟩,⟨12,[7]⟩],[⟨12,[8]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨17,[4]⟩,3⟩,⟨⟨17,[4]⟩,4⟩,⟨⟨17,[4]⟩,7⟩],[⟨⟨17,[5]⟩,3⟩,⟨⟨17,[5]⟩,4⟩,⟨⟨17,[5]⟩,7⟩],[⟨⟨17,[6]⟩,3⟩,⟨⟨17,[6]⟩,4⟩,⟨⟨17,[6]⟩,7⟩],[⟨⟨17,[7]⟩,3⟩,⟨⟨17,[7]⟩,4⟩,⟨⟨17,[7]⟩,7⟩],[⟨⟨17,[8]⟩,1⟩],[⟨⟨15,[4]⟩,3⟩],[⟨⟨15,[5]⟩,4⟩],[⟨⟨15,[6]⟩,5⟩],[⟨⟨15,[7]⟩,6⟩],[⟨⟨15,[8]⟩,7⟩],[⟨⟨19,[6]⟩,8⟩],[⟨⟨19,[6]⟩,6⟩],[⟨⟨19,[6]⟩,9⟩],[⟨⟨19,[6]⟩,6⟩,⟨⟨19,[6]⟩,9⟩],[⟨⟨19,[7]⟩,9⟩],[⟨⟨19,[7]⟩,6⟩],[⟨⟨19,[7]⟩,6⟩,⟨⟨19,[7]⟩,9⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨20,[4]⟩,3⟩,⟨⟨20,[4]⟩,4⟩,⟨⟨20,[4]⟩,7⟩],[⟨⟨20,[5]⟩,3⟩,⟨⟨20,[5]⟩,4⟩,⟨⟨20,[5]⟩,7⟩],[⟨⟨20,[6]⟩,7⟩],[⟨⟨20,[7]⟩,3⟩,⟨⟨20,[7]⟩,4⟩],[⟨⟨20,[8]⟩,1⟩],[⟨⟨12,[4]⟩,21⟩],[⟨⟨12,[5]⟩,22⟩],[⟨⟨12,[6]⟩,23⟩],[⟨⟨12,[7]⟩,24⟩],[⟨⟨12,[8]⟩,25⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,20⟩,⟨⟨5,[3]⟩,5⟩,⟨⟨5,[3]⟩,6⟩,⟨⟨5,[3]⟩,8⟩,⟨⟨5,[3]⟩,9⟩,⟨⟨5,[3]⟩,12⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,20⟩,⟨⟨7,[4]⟩,3⟩,⟨⟨7,[4]⟩,4⟩,⟨⟨7,[4]⟩,7⟩,⟨⟨7,[5]⟩,3⟩,⟨⟨7,[5]⟩,4⟩,⟨⟨7,[5]⟩,7⟩,⟨⟨7,[6]⟩,7⟩,⟨⟨7,[7]⟩,3⟩,⟨⟨7,[7]⟩,4⟩,⟨⟨7,[8]⟩,1⟩,⟨⟨8,[4]⟩,21⟩,⟨⟨8,[5]⟩,22⟩,⟨⟨8,[6]⟩,23⟩,⟨⟨8,[7]⟩,24⟩,⟨⟨8,[8]⟩,25⟩,⟨⟨9,[4]⟩,26⟩,⟨⟨9,[5]⟩,27⟩,⟨⟨9,[6]⟩,28⟩,⟨⟨9,[7]⟩,29⟩,⟨⟨9,[8]⟩,30⟩,⟨⟨10,[9,4]⟩,21⟩,⟨⟨10,[9,5]⟩,22⟩,⟨⟨10,[10,6]⟩,23⟩,⟨⟨10,[10,7]⟩,24⟩,⟨⟨10,[11,8]⟩,25⟩,⟨⟨11,[0,9,4]⟩,3⟩,⟨⟨11,[0,9,4]⟩,4⟩,⟨⟨11,[0,9,4]⟩,7⟩,⟨⟨11,[0,9,5]⟩,3⟩,⟨⟨11,[0,9,5]⟩,4⟩,⟨⟨11,[0,9,5]⟩,7⟩,⟨⟨11,[0,10,6]⟩,7⟩,⟨⟨11,[0,10,7]⟩,3⟩,⟨⟨11,[0,10,7]⟩,4⟩,⟨⟨11,[0,11,8]⟩,1⟩,⟨⟨12,[4]⟩,3⟩,⟨⟨12,[4]⟩,4⟩,⟨⟨12,[4]⟩,7⟩,⟨⟨12,[5]⟩,3⟩,⟨⟨12,[5]⟩,4⟩,⟨⟨12,[5]⟩,7⟩,⟨⟨12,[6]⟩,3⟩,⟨⟨12,[6]⟩,4⟩,⟨⟨12,[6]⟩,7⟩,⟨⟨12,[7]⟩,3⟩,⟨⟨12,[7]⟩,4⟩,⟨⟨12,[7]⟩,7⟩,⟨⟨12,[8]⟩,1⟩,⟨⟨13,[4]⟩,3⟩,⟨⟨13,[5]⟩,4⟩,⟨⟨13,[6]⟩,5⟩,⟨⟨13,[7]⟩,6⟩,⟨⟨13,[8]⟩,7⟩,⟨⟨14,[4]⟩,8⟩,⟨⟨14,[5]⟩,9⟩,⟨⟨14,[6]⟩,10⟩,⟨⟨14,[7]⟩,11⟩,⟨⟨14,[8]⟩,12⟩,⟨⟨15,[4]⟩,11⟩,⟨⟨15,[4]⟩,17⟩,⟨⟨15,[4]⟩,18⟩,⟨⟨15,[4]⟩,19⟩,⟨⟨15,[5]⟩,11⟩,⟨⟨15,[5]⟩,17⟩,⟨⟨15,[5]⟩,18⟩,⟨⟨15,[5]⟩,19⟩,⟨⟨15,[8]⟩,10⟩,⟨⟨15,[8]⟩,13⟩,⟨⟨15,[8]⟩,14⟩,⟨⟨15,[8]⟩,15⟩,⟨⟨15,[8]⟩,16⟩,⟨⟨16,[1,4]⟩,6⟩,⟨⟨16,[1,5]⟩,6⟩,⟨⟨16,[1,8]⟩,5⟩,⟨⟨16,[2,4]⟩,6⟩,⟨⟨16,[2,4]⟩,9⟩,⟨⟨16,[2,5]⟩,6⟩,⟨⟨16,[2,5]⟩,9⟩,⟨⟨16,[2,8]⟩,6⟩,⟨⟨16,[2,8]⟩,8⟩,⟨⟨16,[2,8]⟩,9⟩,⟨⟨17,[6]⟩,6⟩,⟨⟨17,[6]⟩,8⟩,⟨⟨17,[6]⟩,9⟩,⟨⟨17,[7]⟩,6⟩,⟨⟨17,[7]⟩,9⟩,⟨⟨18,[6]⟩,13⟩,⟨⟨18,[6]⟩,14⟩,⟨⟨18,[6]⟩,15⟩,⟨⟨18,[6]⟩,16⟩,⟨⟨18,[7]⟩,17⟩,⟨⟨18,[7]⟩,18⟩,⟨⟨18,[7]⟩,19⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[10],[11],[12],[13],[14],[16,17,18],[19,20,21],[23],[24],[22],[25],[26],[26],[26],[27],[27],[27],[28],[29],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[41,42,43],[44,45,46],[47],[48,49],[50],[51,54],[52,55],[53,56],[51,54],[52,55],[53,56],[59,62],[57,60],[58,61],[63],[64],[64],[64],[65],[65],[65],[66],[66],[66],[67],[67],[67],[68],[69],[70],[71],[72],[73],[98],[101],[82],[74,78],[9],[87],[91],[90],[90,91],[88],[93],[92],[92,93],[89],[95],[94],[96],[94,96],[97],[100],[5],[97],[99],[100],[101],[6],[7],[8],[103],[102],[104],[107],[106],[83],[84],[85],[86],[75,79],[76,80],[77,81]]
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
theorem block108 : checkRange P V K states hints 108 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<109 := hi
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
end Certgen.R187
