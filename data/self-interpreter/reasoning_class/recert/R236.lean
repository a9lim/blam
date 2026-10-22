import Regular
namespace Certgen.R236
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 18,.app 10 16,.lam 11,.app 12 15,.app 13 14,.var 0,.opaque,.var 0,.lam 17,.var 1,.app 19 20,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[9]⟩],[⟨16,[10]⟩],[⟨16,[11]⟩,⟨16,[12]⟩],[⟨15,[0,9]⟩],[⟨14,[0,9]⟩,⟨14,[1,10]⟩,⟨14,[2,11]⟩,⟨14,[2,12]⟩],[⟨20,[9]⟩],[⟨7,[]⟩],[⟨15,[1,10]⟩],[⟨20,[10]⟩],[⟨15,[2,11]⟩,⟨15,[2,12]⟩],[⟨5,[6]⟩],[⟨18,[10]⟩],[⟨18,[9]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨15,[0,9]⟩,18⟩],[⟨⟨15,[1,10]⟩,19⟩],[⟨⟨15,[2,11]⟩,20⟩],[⟨⟨15,[2,12]⟩,21⟩],[⟨⟨14,[0,9]⟩,3⟩],[⟨⟨14,[1,10]⟩,4⟩],[⟨⟨14,[2,11]⟩,5⟩],[⟨⟨14,[2,12]⟩,6⟩],[⟨⟨20,[9]⟩,18⟩],[⟨⟨20,[9]⟩,5⟩,⟨⟨20,[9]⟩,6⟩],[⟨⟨20,[9]⟩,5⟩,⟨⟨20,[9]⟩,6⟩,⟨⟨20,[9]⟩,18⟩],[⟨⟨20,[10]⟩,18⟩],[⟨⟨20,[10]⟩,5⟩,⟨⟨20,[10]⟩,6⟩],[⟨⟨20,[10]⟩,5⟩,⟨⟨20,[10]⟩,6⟩,⟨⟨20,[10]⟩,18⟩],[⟨⟨5,[6]⟩,1⟩],[⟨⟨18,[9]⟩,20⟩,⟨⟨18,[9]⟩,21⟩],[⟨⟨18,[10]⟩,1⟩],[⟨⟨18,[11]⟩,1⟩],[⟨⟨18,[12]⟩,20⟩,⟨⟨18,[12]⟩,21⟩],[⟨⟨16,[9]⟩,18⟩],[⟨⟨16,[10]⟩,19⟩],[⟨⟨16,[11]⟩,20⟩],[⟨⟨16,[12]⟩,21⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,17⟩,⟨⟨5,[6]⟩,4⟩,⟨⟨5,[6]⟩,14⟩,⟨⟨5,[6]⟩,15⟩,⟨⟨5,[6]⟩,16⟩,⟨⟨6,[7,6]⟩,19⟩,⟨⟨6,[8,6]⟩,5⟩,⟨⟨6,[8,6]⟩,6⟩,⟨⟨6,[8,6]⟩,18⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,17⟩,⟨⟨7,[]⟩,18⟩,⟨⟨7,[]⟩,19⟩,⟨⟨8,[9]⟩,20⟩,⟨⟨8,[9]⟩,21⟩,⟨⟨8,[10]⟩,1⟩,⟨⟨8,[11]⟩,1⟩,⟨⟨8,[12]⟩,20⟩,⟨⟨8,[12]⟩,21⟩,⟨⟨9,[9]⟩,18⟩,⟨⟨9,[10]⟩,19⟩,⟨⟨9,[11]⟩,20⟩,⟨⟨9,[12]⟩,21⟩,⟨⟨10,[9]⟩,22⟩,⟨⟨10,[10]⟩,23⟩,⟨⟨10,[11]⟩,24⟩,⟨⟨10,[12]⟩,25⟩,⟨⟨11,[0,9]⟩,18⟩,⟨⟨11,[1,10]⟩,19⟩,⟨⟨11,[2,11]⟩,20⟩,⟨⟨11,[2,12]⟩,21⟩,⟨⟨12,[0,9]⟩,3⟩,⟨⟨12,[1,10]⟩,4⟩,⟨⟨12,[2,11]⟩,5⟩,⟨⟨12,[2,12]⟩,6⟩,⟨⟨13,[0,9]⟩,7⟩,⟨⟨13,[1,10]⟩,8⟩,⟨⟨13,[2,11]⟩,9⟩,⟨⟨13,[2,12]⟩,10⟩,⟨⟨15,[2,11]⟩,3⟩,⟨⟨15,[2,11]⟩,11⟩,⟨⟨15,[2,11]⟩,12⟩,⟨⟨15,[2,11]⟩,13⟩,⟨⟨15,[2,12]⟩,3⟩,⟨⟨15,[2,12]⟩,11⟩,⟨⟨15,[2,12]⟩,12⟩,⟨⟨15,[2,12]⟩,13⟩,⟨⟨16,[9]⟩,7⟩,⟨⟨16,[10]⟩,8⟩,⟨⟨16,[11]⟩,3⟩,⟨⟨16,[11]⟩,9⟩,⟨⟨16,[11]⟩,10⟩,⟨⟨16,[11]⟩,11⟩,⟨⟨16,[11]⟩,12⟩,⟨⟨16,[11]⟩,13⟩,⟨⟨16,[12]⟩,3⟩,⟨⟨16,[12]⟩,9⟩,⟨⟨16,[12]⟩,10⟩,⟨⟨16,[12]⟩,11⟩,⟨⟨16,[12]⟩,12⟩,⟨⟨16,[12]⟩,13⟩,⟨⟨17,[3,11]⟩,18⟩,⟨⟨17,[3,12]⟩,18⟩,⟨⟨17,[4,9]⟩,3⟩,⟨⟨17,[4,10]⟩,4⟩,⟨⟨17,[4,11]⟩,5⟩,⟨⟨17,[4,11]⟩,6⟩,⟨⟨17,[4,12]⟩,5⟩,⟨⟨17,[4,12]⟩,6⟩,⟨⟨17,[5,11]⟩,5⟩,⟨⟨17,[5,11]⟩,6⟩,⟨⟨17,[5,11]⟩,18⟩,⟨⟨17,[5,12]⟩,5⟩,⟨⟨17,[5,12]⟩,6⟩,⟨⟨17,[5,12]⟩,18⟩,⟨⟨18,[9]⟩,5⟩,⟨⟨18,[9]⟩,6⟩,⟨⟨18,[9]⟩,18⟩,⟨⟨18,[10]⟩,5⟩,⟨⟨18,[10]⟩,6⟩,⟨⟨18,[10]⟩,18⟩,⟨⟨19,[9]⟩,11⟩,⟨⟨19,[9]⟩,12⟩,⟨⟨19,[9]⟩,13⟩,⟨⟨19,[10]⟩,14⟩,⟨⟨19,[10]⟩,15⟩,⟨⟨19,[10]⟩,16⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[9],[12],[10,11],[10,11,12],[17],[13],[14],[16],[18],[19],[20],[22,23],[21],[24],[24],[25],[26],[27],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[41],[42],[43],[52],[53],[55,61],[56,62],[54,60],[57,63],[58,64],[59,65],[54,60],[57,63],[58,64],[59,65],[68],[69],[66],[70],[71],[76],[74,75],[74,75,76],[67],[72],[73],[79],[77,78],[77,78,79],[85],[82],[44,48],[5],[83],[84],[80],[81],[83],[84],[85],[80],[81],[82],[87],[87],[86],[90],[90],[89],[45,49],[46,50],[47,51],[6],[7],[8]]
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
theorem block84 : checkRange P V K states hints 84 8=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<92 := hi
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
end Certgen.R236
