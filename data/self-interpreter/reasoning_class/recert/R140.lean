import Regular
namespace Certgen.R140
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 14,.lam 10,.app 11 12,.var 0,.lam 13,.var 1,.app 15 18,.app 16 17,.var 0,.opaque,.lam 19,.var 1,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[7]⟩],[⟨17,[6]⟩],[⟨17,[7]⟩,⟨17,[8]⟩],[⟨7,[]⟩],[⟨18,[8]⟩],[⟨17,[9]⟩],[⟨12,[11,7]⟩,⟨12,[11,8]⟩],[⟨18,[6]⟩],[⟨18,[9]⟩],[⟨5,[3]⟩],[⟨14,[6]⟩],[⟨14,[7]⟩,⟨14,[8]⟩],[⟨14,[9]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[10,6]⟩,3⟩,⟨⟨12,[10,6]⟩,6⟩],[⟨⟨12,[11,7]⟩,3⟩],[⟨⟨12,[11,8]⟩,6⟩],[⟨⟨12,[12,9]⟩,1⟩],[⟨⟨18,[6]⟩,3⟩],[⟨⟨18,[7]⟩,4⟩,⟨⟨18,[7]⟩,5⟩,⟨⟨18,[7]⟩,7⟩],[⟨⟨18,[7]⟩,7⟩],[⟨⟨18,[7]⟩,4⟩,⟨⟨18,[7]⟩,5⟩],[⟨⟨18,[8]⟩,4⟩,⟨⟨18,[8]⟩,5⟩,⟨⟨18,[8]⟩,7⟩],[⟨⟨18,[8]⟩,7⟩],[⟨⟨18,[8]⟩,4⟩,⟨⟨18,[8]⟩,5⟩],[⟨⟨18,[9]⟩,6⟩],[⟨⟨17,[6]⟩,7⟩],[⟨⟨17,[7]⟩,8⟩],[⟨⟨17,[7]⟩,9⟩],[⟨⟨17,[7]⟩,10⟩],[⟨⟨17,[8]⟩,11⟩],[⟨⟨17,[8]⟩,12⟩],[⟨⟨17,[8]⟩,13⟩],[⟨⟨17,[9]⟩,14⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨14,[6]⟩,3⟩,⟨⟨14,[6]⟩,6⟩],[⟨⟨14,[7]⟩,3⟩],[⟨⟨14,[8]⟩,6⟩],[⟨⟨14,[9]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,23⟩,⟨⟨5,[3]⟩,11⟩,⟨⟨5,[3]⟩,12⟩,⟨⟨5,[3]⟩,13⟩,⟨⟨5,[3]⟩,22⟩,⟨⟨6,[4,3]⟩,4⟩,⟨⟨6,[4,3]⟩,5⟩,⟨⟨6,[4,3]⟩,7⟩,⟨⟨6,[5,3]⟩,14⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,14⟩,⟨⟨7,[]⟩,23⟩,⟨⟨8,[6]⟩,3⟩,⟨⟨8,[6]⟩,6⟩,⟨⟨8,[7]⟩,3⟩,⟨⟨8,[8]⟩,6⟩,⟨⟨8,[9]⟩,1⟩,⟨⟨9,[6]⟩,24⟩,⟨⟨9,[7]⟩,25⟩,⟨⟨9,[8]⟩,26⟩,⟨⟨9,[9]⟩,27⟩,⟨⟨10,[10,6]⟩,3⟩,⟨⟨10,[10,6]⟩,6⟩,⟨⟨10,[11,7]⟩,3⟩,⟨⟨10,[11,8]⟩,6⟩,⟨⟨10,[12,9]⟩,1⟩,⟨⟨11,[10,6]⟩,3⟩,⟨⟨11,[11,7]⟩,4⟩,⟨⟨11,[11,8]⟩,5⟩,⟨⟨11,[12,9]⟩,6⟩,⟨⟨12,[11,7]⟩,8⟩,⟨⟨12,[11,7]⟩,9⟩,⟨⟨12,[11,7]⟩,10⟩,⟨⟨12,[11,7]⟩,15⟩,⟨⟨12,[11,8]⟩,8⟩,⟨⟨12,[11,8]⟩,9⟩,⟨⟨12,[11,8]⟩,10⟩,⟨⟨12,[11,8]⟩,15⟩,⟨⟨13,[0,11,7]⟩,4⟩,⟨⟨13,[0,11,7]⟩,5⟩,⟨⟨13,[0,11,7]⟩,7⟩,⟨⟨13,[0,11,8]⟩,4⟩,⟨⟨13,[0,11,8]⟩,5⟩,⟨⟨13,[0,11,8]⟩,7⟩,⟨⟨13,[1,11,7]⟩,7⟩,⟨⟨13,[1,11,8]⟩,7⟩,⟨⟨14,[6]⟩,3⟩,⟨⟨14,[7]⟩,4⟩,⟨⟨14,[7]⟩,5⟩,⟨⟨14,[7]⟩,7⟩,⟨⟨14,[8]⟩,4⟩,⟨⟨14,[8]⟩,5⟩,⟨⟨14,[8]⟩,7⟩,⟨⟨14,[9]⟩,6⟩,⟨⟨15,[6]⟩,7⟩,⟨⟨15,[7]⟩,8⟩,⟨⟨15,[7]⟩,9⟩,⟨⟨15,[7]⟩,10⟩,⟨⟨15,[8]⟩,11⟩,⟨⟨15,[8]⟩,12⟩,⟨⟨15,[8]⟩,13⟩,⟨⟨15,[9]⟩,14⟩,⟨⟨16,[6]⟩,15⟩,⟨⟨16,[7]⟩,16⟩,⟨⟨16,[7]⟩,17⟩,⟨⟨16,[7]⟩,18⟩,⟨⟨16,[8]⟩,19⟩,⟨⟨16,[8]⟩,20⟩,⟨⟨16,[8]⟩,21⟩,⟨⟨16,[9]⟩,22⟩,⟨⟨18,[6]⟩,16⟩,⟨⟨18,[6]⟩,17⟩,⟨⟨18,[6]⟩,18⟩,⟨⟨18,[9]⟩,19⟩,⟨⟨18,[9]⟩,20⟩,⟨⟨18,[9]⟩,21⟩,⟨⟨19,[2,6]⟩,8⟩,⟨⟨19,[2,6]⟩,9⟩,⟨⟨19,[2,6]⟩,10⟩,⟨⟨19,[2,9]⟩,11⟩,⟨⟨19,[2,9]⟩,12⟩,⟨⟨19,[2,9]⟩,13⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[17],[9,10,11],[11],[9,10],[12],[13],[14],[15],[16],[18],[19],[20],[21],[22],[23],[23],[24],[25],[26],[27,28],[29],[30],[31],[32],[32],[33],[34],[35],[52],[53,56],[54,57],[59],[44,45,46],[46],[44,45],[50],[47,48,49],[49],[47,48],[51],[53,56],[54,57],[55,58],[53,56],[54,57],[55,58],[55,58],[55,58],[60],[61],[61],[61],[64],[64],[64],[67],[68],[69],[70],[71],[72],[73],[74],[75],[39,43],[76],[77],[78],[79],[80],[81],[8],[82],[83],[84],[85],[86],[87],[36,40],[37,41],[38,42],[5],[6],[7]]
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
end Certgen.R140
