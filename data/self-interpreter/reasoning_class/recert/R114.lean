import Regular
namespace Certgen.R114
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 12,.lam 9,.app 10 11,.var 0,.var 0,.app 13 14,.var 0,.app 15 19,.app 16 17,.var 0,.lam 18,.var 1,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨14,[4]⟩,⟨14,[5]⟩],[⟨6,[]⟩],[⟨14,[7]⟩],[⟨14,[6]⟩],[⟨17,[7]⟩],[⟨17,[6]⟩],[⟨5,[1]⟩],[⟨11,[9,4]⟩,⟨11,[9,5]⟩],[⟨12,[2]⟩,⟨12,[3]⟩],[⟨12,[4]⟩,⟨12,[5]⟩],[⟨12,[6]⟩],[⟨12,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨14,[2]⟩,26⟩,⟨⟨14,[2]⟩,27⟩],[⟨⟨14,[3]⟩,26⟩,⟨⟨14,[3]⟩,27⟩],[⟨⟨14,[4]⟩,14⟩,⟨⟨14,[4]⟩,18⟩,⟨⟨14,[4]⟩,28⟩,⟨⟨14,[4]⟩,29⟩],[⟨⟨14,[4]⟩,18⟩],[⟨⟨14,[4]⟩,28⟩,⟨⟨14,[4]⟩,29⟩],[⟨⟨14,[4]⟩,14⟩],[⟨⟨14,[5]⟩,14⟩,⟨⟨14,[5]⟩,18⟩,⟨⟨14,[5]⟩,28⟩,⟨⟨14,[5]⟩,29⟩],[⟨⟨14,[5]⟩,18⟩],[⟨⟨14,[5]⟩,28⟩,⟨⟨14,[5]⟩,29⟩],[⟨⟨14,[5]⟩,14⟩],[⟨⟨14,[6]⟩,30⟩],[⟨⟨14,[7]⟩,31⟩],[⟨⟨19,[6]⟩,4⟩],[⟨⟨19,[7]⟩,3⟩],[⟨⟨17,[6]⟩,15⟩],[⟨⟨17,[7]⟩,16⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨12,[2]⟩,31⟩],[⟨⟨12,[3]⟩,30⟩],[⟨⟨12,[4]⟩,16⟩],[⟨⟨12,[5]⟩,15⟩],[⟨⟨12,[6]⟩,1⟩],[⟨⟨12,[7]⟩,15⟩,⟨⟨12,[7]⟩,16⟩],[⟨⟨11,[8,2]⟩,31⟩],[⟨⟨11,[8,3]⟩,30⟩],[⟨⟨11,[9,4]⟩,16⟩],[⟨⟨11,[9,5]⟩,15⟩],[⟨⟨11,[10,6]⟩,1⟩],[⟨⟨11,[11,7]⟩,15⟩,⟨⟨11,[11,7]⟩,16⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,19⟩,⟨⟨5,[1]⟩,13⟩,⟨⟨5,[1]⟩,14⟩,⟨⟨5,[1]⟩,17⟩,⟨⟨5,[1]⟩,18⟩,⟨⟨5,[1]⟩,28⟩,⟨⟨5,[1]⟩,29⟩,⟨⟨6,[]⟩,13⟩,⟨⟨6,[]⟩,14⟩,⟨⟨6,[]⟩,17⟩,⟨⟨6,[]⟩,18⟩,⟨⟨6,[]⟩,19⟩,⟨⟨6,[]⟩,28⟩,⟨⟨6,[]⟩,29⟩,⟨⟨7,[2]⟩,31⟩,⟨⟨7,[3]⟩,30⟩,⟨⟨7,[4]⟩,16⟩,⟨⟨7,[5]⟩,15⟩,⟨⟨7,[6]⟩,1⟩,⟨⟨7,[7]⟩,15⟩,⟨⟨7,[7]⟩,16⟩,⟨⟨8,[2]⟩,20⟩,⟨⟨8,[3]⟩,21⟩,⟨⟨8,[4]⟩,22⟩,⟨⟨8,[5]⟩,23⟩,⟨⟨8,[6]⟩,24⟩,⟨⟨8,[7]⟩,25⟩,⟨⟨9,[8,2]⟩,31⟩,⟨⟨9,[8,3]⟩,30⟩,⟨⟨9,[9,4]⟩,16⟩,⟨⟨9,[9,5]⟩,15⟩,⟨⟨9,[10,6]⟩,1⟩,⟨⟨9,[11,7]⟩,15⟩,⟨⟨9,[11,7]⟩,16⟩,⟨⟨10,[8,2]⟩,26⟩,⟨⟨10,[8,3]⟩,27⟩,⟨⟨10,[9,4]⟩,28⟩,⟨⟨10,[9,5]⟩,29⟩,⟨⟨10,[10,6]⟩,30⟩,⟨⟨10,[11,7]⟩,31⟩,⟨⟨11,[9,4]⟩,14⟩,⟨⟨11,[9,4]⟩,18⟩,⟨⟨11,[9,4]⟩,28⟩,⟨⟨11,[9,4]⟩,29⟩,⟨⟨11,[9,5]⟩,14⟩,⟨⟨11,[9,5]⟩,18⟩,⟨⟨11,[9,5]⟩,28⟩,⟨⟨11,[9,5]⟩,29⟩,⟨⟨12,[2]⟩,26⟩,⟨⟨12,[2]⟩,27⟩,⟨⟨12,[3]⟩,26⟩,⟨⟨12,[3]⟩,27⟩,⟨⟨12,[4]⟩,14⟩,⟨⟨12,[4]⟩,18⟩,⟨⟨12,[4]⟩,28⟩,⟨⟨12,[4]⟩,29⟩,⟨⟨12,[5]⟩,14⟩,⟨⟨12,[5]⟩,18⟩,⟨⟨12,[5]⟩,28⟩,⟨⟨12,[5]⟩,29⟩,⟨⟨12,[6]⟩,30⟩,⟨⟨12,[7]⟩,31⟩,⟨⟨13,[2]⟩,3⟩,⟨⟨13,[3]⟩,4⟩,⟨⟨13,[4]⟩,5⟩,⟨⟨13,[4]⟩,6⟩,⟨⟨13,[4]⟩,7⟩,⟨⟨13,[4]⟩,8⟩,⟨⟨13,[5]⟩,9⟩,⟨⟨13,[5]⟩,10⟩,⟨⟨13,[5]⟩,11⟩,⟨⟨13,[5]⟩,12⟩,⟨⟨13,[6]⟩,13⟩,⟨⟨13,[7]⟩,14⟩,⟨⟨14,[6]⟩,4⟩,⟨⟨14,[7]⟩,3⟩,⟨⟨15,[6]⟩,15⟩,⟨⟨15,[7]⟩,16⟩,⟨⟨16,[6]⟩,17⟩,⟨⟨16,[7]⟩,18⟩,⟨⟨17,[6]⟩,9⟩,⟨⟨17,[6]⟩,10⟩,⟨⟨17,[6]⟩,11⟩,⟨⟨17,[6]⟩,12⟩,⟨⟨17,[7]⟩,5⟩,⟨⟨17,[7]⟩,6⟩,⟨⟨17,[7]⟩,7⟩,⟨⟨17,[7]⟩,8⟩,⟨⟨18,[0,6]⟩,14⟩,⟨⟨18,[0,6]⟩,18⟩,⟨⟨18,[0,6]⟩,28⟩,⟨⟨18,[0,6]⟩,29⟩,⟨⟨18,[0,7]⟩,14⟩,⟨⟨18,[0,7]⟩,18⟩,⟨⟨18,[0,7]⟩,28⟩,⟨⟨18,[0,7]⟩,29⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[11],[12],[13],[14],[16],[17],[19],[18],[21],[20],[22],[24],[23],[25],[26],[27],[28],[29],[30],[30],[31],[32],[33],[34],[35],[36,37],[38],[39],[40],[41],[42],[43],[43],[52,54],[53,55],[58,62],[59,63],[64],[65],[56,60],[57,61],[58,62],[59,63],[56,60],[57,61],[58,62],[59,63],[66],[66],[67],[67],[68],[68],[68],[68],[72],[72],[72],[72],[76],[77],[79],[78],[88],[89],[90],[91],[84],[85],[86],[87],[5],[44,48],[80],[81],[82],[83],[7],[45,49],[92,93,94,95],[93],[94,95],[92],[96,97,98,99],[97],[98,99],[96],[6],[8],[9],[10],[44,48],[45,49],[46,50],[47,51]]
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
theorem block96 : checkRange P V K states hints 96 4=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<100 := hi
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
end Certgen.R114
