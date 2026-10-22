import Regular
namespace Certgen.R143
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 8,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.var 0,.lam 9,.app 10 14,.lam 11,.app 12 13,.var 0,.var 0,.app 15 20,.app 16 17,.var 0,.lam 18,.lam 19,.var 2,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨14,[7]⟩],[⟨14,[8]⟩,⟨14,[9]⟩],[⟨14,[10]⟩],[⟨14,[11]⟩],[⟨17,[8]⟩,⟨17,[9]⟩],[⟨20,[8]⟩,⟨20,[9]⟩],[⟨8,[]⟩],[⟨13,[1,8]⟩,⟨13,[1,9]⟩],[⟨17,[11]⟩],[⟨17,[7]⟩],[⟨5,[6]⟩],[⟨7,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨13,[0,7]⟩,8⟩,⟨⟨13,[0,7]⟩,16⟩],[⟨⟨13,[1,8]⟩,16⟩],[⟨⟨13,[1,9]⟩,8⟩],[⟨⟨13,[2,10]⟩,1⟩],[⟨⟨13,[3,11]⟩,24⟩],[⟨⟨20,[7]⟩,3⟩],[⟨⟨20,[8]⟩,17⟩],[⟨⟨20,[8]⟩,4⟩,⟨⟨20,[8]⟩,5⟩],[⟨⟨20,[8]⟩,4⟩,⟨⟨20,[8]⟩,5⟩,⟨⟨20,[8]⟩,17⟩],[⟨⟨20,[9]⟩,17⟩],[⟨⟨20,[9]⟩,4⟩,⟨⟨20,[9]⟩,5⟩],[⟨⟨20,[9]⟩,4⟩,⟨⟨20,[9]⟩,5⟩,⟨⟨20,[9]⟩,17⟩],[⟨⟨20,[10]⟩,6⟩],[⟨⟨20,[11]⟩,7⟩],[⟨⟨17,[7]⟩,8⟩],[⟨⟨17,[8]⟩,9⟩],[⟨⟨17,[8]⟩,10⟩],[⟨⟨17,[8]⟩,11⟩],[⟨⟨17,[9]⟩,12⟩],[⟨⟨17,[9]⟩,13⟩],[⟨⟨17,[9]⟩,14⟩],[⟨⟨17,[10]⟩,15⟩],[⟨⟨17,[11]⟩,16⟩],[⟨⟨5,[6]⟩,1⟩],[⟨⟨7,[6]⟩,24⟩],[⟨⟨14,[7]⟩,8⟩,⟨⟨14,[7]⟩,16⟩],[⟨⟨14,[8]⟩,16⟩],[⟨⟨14,[9]⟩,8⟩],[⟨⟨14,[10]⟩,1⟩],[⟨⟨14,[11]⟩,24⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,26⟩,⟨⟨5,[6]⟩,24⟩,⟨⟨6,[6]⟩,27⟩,⟨⟨7,[6]⟩,4⟩,⟨⟨7,[6]⟩,5⟩,⟨⟨7,[6]⟩,17⟩,⟨⟨7,[6]⟩,25⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,5⟩,⟨⟨8,[]⟩,17⟩,⟨⟨8,[]⟩,25⟩,⟨⟨8,[]⟩,26⟩,⟨⟨8,[]⟩,27⟩,⟨⟨9,[7]⟩,8⟩,⟨⟨9,[7]⟩,16⟩,⟨⟨9,[8]⟩,16⟩,⟨⟨9,[9]⟩,8⟩,⟨⟨9,[10]⟩,1⟩,⟨⟨9,[11]⟩,24⟩,⟨⟨10,[7]⟩,28⟩,⟨⟨10,[8]⟩,29⟩,⟨⟨10,[9]⟩,30⟩,⟨⟨10,[10]⟩,31⟩,⟨⟨10,[11]⟩,32⟩,⟨⟨11,[0,7]⟩,8⟩,⟨⟨11,[0,7]⟩,16⟩,⟨⟨11,[1,8]⟩,16⟩,⟨⟨11,[1,9]⟩,8⟩,⟨⟨11,[2,10]⟩,1⟩,⟨⟨11,[3,11]⟩,24⟩,⟨⟨12,[0,7]⟩,3⟩,⟨⟨12,[1,8]⟩,4⟩,⟨⟨12,[1,9]⟩,5⟩,⟨⟨12,[2,10]⟩,6⟩,⟨⟨12,[3,11]⟩,7⟩,⟨⟨13,[1,8]⟩,4⟩,⟨⟨13,[1,8]⟩,5⟩,⟨⟨13,[1,8]⟩,17⟩,⟨⟨13,[1,9]⟩,4⟩,⟨⟨13,[1,9]⟩,5⟩,⟨⟨13,[1,9]⟩,17⟩,⟨⟨14,[7]⟩,3⟩,⟨⟨14,[8]⟩,4⟩,⟨⟨14,[8]⟩,5⟩,⟨⟨14,[8]⟩,17⟩,⟨⟨14,[9]⟩,4⟩,⟨⟨14,[9]⟩,5⟩,⟨⟨14,[9]⟩,17⟩,⟨⟨14,[10]⟩,6⟩,⟨⟨14,[11]⟩,7⟩,⟨⟨15,[7]⟩,8⟩,⟨⟨15,[8]⟩,9⟩,⟨⟨15,[8]⟩,10⟩,⟨⟨15,[8]⟩,11⟩,⟨⟨15,[9]⟩,12⟩,⟨⟨15,[9]⟩,13⟩,⟨⟨15,[9]⟩,14⟩,⟨⟨15,[10]⟩,15⟩,⟨⟨15,[11]⟩,16⟩,⟨⟨16,[7]⟩,17⟩,⟨⟨16,[8]⟩,18⟩,⟨⟨16,[8]⟩,19⟩,⟨⟨16,[8]⟩,20⟩,⟨⟨16,[9]⟩,21⟩,⟨⟨16,[9]⟩,22⟩,⟨⟨16,[9]⟩,23⟩,⟨⟨16,[10]⟩,24⟩,⟨⟨16,[11]⟩,25⟩,⟨⟨17,[7]⟩,21⟩,⟨⟨17,[7]⟩,22⟩,⟨⟨17,[7]⟩,23⟩,⟨⟨17,[11]⟩,18⟩,⟨⟨17,[11]⟩,19⟩,⟨⟨17,[11]⟩,20⟩,⟨⟨18,[4,7]⟩,12⟩,⟨⟨18,[4,7]⟩,13⟩,⟨⟨18,[4,7]⟩,14⟩,⟨⟨18,[4,11]⟩,9⟩,⟨⟨18,[4,11]⟩,10⟩,⟨⟨18,[4,11]⟩,11⟩,⟨⟨19,[5,4,7]⟩,4⟩,⟨⟨19,[5,4,7]⟩,5⟩,⟨⟨19,[5,4,7]⟩,17⟩,⟨⟨19,[5,4,11]⟩,4⟩,⟨⟨19,[5,4,11]⟩,5⟩,⟨⟨19,[5,4,11]⟩,17⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[6],[16],[11],[12],[13],[14],[18],[17],[20],[19],[21],[22],[23],[23],[24],[25],[26],[27],[28,29],[30],[31],[32],[33],[34],[34],[35],[36],[37],[38],[45],[46,49],[47,50],[52],[53],[46,49],[47,50],[48,51],[46,49],[47,50],[48,51],[54],[56],[56],[55],[59],[59],[58],[61],[62],[63],[64],[65],[66],[67],[68],[69],[70],[71],[41,44],[75],[76],[77],[72],[73],[74],[5],[10],[78],[79],[80],[81],[82],[83],[86],[84,85],[84,85,86],[89],[87,88],[87,88,89],[39,42],[40,43],[41,44],[7],[8],[9]]
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
theorem block84 : checkRange P V K states hints 84 6=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<90 := hi
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
end Certgen.R143
