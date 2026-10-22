import Regular
namespace Certgen.Case10
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.app 9 10,.var 0,.lam 11,.app 12 13,.var 1,.app 14 15,.var 1,.app 16 17,.var 0,.lam 18,.var 1,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨13,[2,12]⟩,⟨13,[3,12]⟩],[⟨15,[2,12]⟩,⟨15,[3,12]⟩],[⟨17,[1,11]⟩],[⟨17,[4,11]⟩],[⟨10,[12]⟩],[⟨17,[2,12]⟩,⟨17,[3,12]⟩],[⟨6,[]⟩],[⟨13,[0,11]⟩],[⟨13,[1,11]⟩],[⟨13,[4,11]⟩],[⟨15,[0,11]⟩,⟨15,[1,11]⟩,⟨15,[4,11]⟩],[⟨5,[6]⟩],[⟨10,[11]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨13,[0,11]⟩,28⟩],[⟨⟨13,[1,11]⟩,13⟩],[⟨⟨13,[2,12]⟩,28⟩],[⟨⟨13,[3,12]⟩,28⟩],[⟨⟨13,[4,11]⟩,24⟩],[⟨⟨15,[0,11]⟩,25⟩],[⟨⟨15,[1,11]⟩,26⟩],[⟨⟨15,[2,12]⟩,13⟩],[⟨⟨15,[3,12]⟩,13⟩],[⟨⟨15,[4,11]⟩,27⟩],[⟨⟨17,[0,11]⟩,28⟩],[⟨⟨17,[1,11]⟩,28⟩],[⟨⟨17,[2,12]⟩,14⟩],[⟨⟨17,[3,12]⟩,14⟩],[⟨⟨17,[4,11]⟩,28⟩],[⟨⟨5,[6]⟩,1⟩],[⟨⟨19,[7]⟩,28⟩],[⟨⟨19,[8]⟩,13⟩],[⟨⟨19,[9]⟩,24⟩],[⟨⟨19,[10]⟩,25⟩,⟨⟨19,[10]⟩,26⟩,⟨⟨19,[10]⟩,27⟩],[⟨⟨19,[11]⟩,1⟩],[⟨⟨19,[12]⟩,23⟩],[⟨⟨10,[7]⟩,19⟩],[⟨⟨10,[8]⟩,20⟩],[⟨⟨10,[9]⟩,21⟩],[⟨⟨10,[10]⟩,22⟩],[⟨⟨10,[11]⟩,23⟩],[⟨⟨10,[12]⟩,24⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,18⟩,⟨⟨5,[6]⟩,3⟩,⟨⟨5,[6]⟩,4⟩,⟨⟨5,[6]⟩,7⟩,⟨⟨5,[6]⟩,8⟩,⟨⟨5,[6]⟩,9⟩,⟨⟨5,[6]⟩,12⟩,⟨⟨5,[6]⟩,29⟩,⟨⟨6,[]⟩,3⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,7⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,18⟩,⟨⟨6,[]⟩,29⟩,⟨⟨7,[7]⟩,28⟩,⟨⟨7,[8]⟩,13⟩,⟨⟨7,[9]⟩,24⟩,⟨⟨7,[10]⟩,25⟩,⟨⟨7,[10]⟩,26⟩,⟨⟨7,[10]⟩,27⟩,⟨⟨7,[11]⟩,1⟩,⟨⟨7,[12]⟩,23⟩,⟨⟨8,[7]⟩,19⟩,⟨⟨8,[8]⟩,20⟩,⟨⟨8,[9]⟩,21⟩,⟨⟨8,[10]⟩,22⟩,⟨⟨8,[11]⟩,23⟩,⟨⟨8,[12]⟩,24⟩,⟨⟨9,[7]⟩,25⟩,⟨⟨9,[8]⟩,26⟩,⟨⟨9,[9]⟩,27⟩,⟨⟨9,[10]⟩,28⟩,⟨⟨9,[11]⟩,29⟩,⟨⟨9,[12]⟩,30⟩,⟨⟨10,[11]⟩,5⟩,⟨⟨10,[11]⟩,6⟩,⟨⟨10,[11]⟩,10⟩,⟨⟨10,[11]⟩,11⟩,⟨⟨10,[11]⟩,30⟩,⟨⟨10,[12]⟩,14⟩,⟨⟨10,[12]⟩,17⟩,⟨⟨11,[0,11]⟩,28⟩,⟨⟨11,[1,11]⟩,13⟩,⟨⟨11,[2,12]⟩,28⟩,⟨⟨11,[3,12]⟩,28⟩,⟨⟨11,[4,11]⟩,24⟩,⟨⟨12,[0,11]⟩,3⟩,⟨⟨12,[1,11]⟩,4⟩,⟨⟨12,[2,12]⟩,5⟩,⟨⟨12,[3,12]⟩,6⟩,⟨⟨12,[4,11]⟩,7⟩,⟨⟨13,[0,11]⟩,25⟩,⟨⟨13,[1,11]⟩,26⟩,⟨⟨13,[2,12]⟩,13⟩,⟨⟨13,[3,12]⟩,13⟩,⟨⟨13,[4,11]⟩,27⟩,⟨⟨14,[0,11]⟩,8⟩,⟨⟨14,[1,11]⟩,9⟩,⟨⟨14,[2,12]⟩,10⟩,⟨⟨14,[3,12]⟩,11⟩,⟨⟨14,[4,11]⟩,12⟩,⟨⟨15,[0,11]⟩,28⟩,⟨⟨15,[1,11]⟩,28⟩,⟨⟨15,[2,12]⟩,14⟩,⟨⟨15,[3,12]⟩,14⟩,⟨⟨15,[4,11]⟩,28⟩,⟨⟨16,[0,11]⟩,13⟩,⟨⟨16,[1,11]⟩,14⟩,⟨⟨16,[2,12]⟩,15⟩,⟨⟨16,[3,12]⟩,16⟩,⟨⟨16,[4,11]⟩,17⟩,⟨⟨17,[1,11]⟩,15⟩,⟨⟨17,[4,11]⟩,16⟩,⟨⟨18,[5,1,11]⟩,14⟩,⟨⟨18,[5,4,11]⟩,14⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[18],[12],[13],[14],[15],[16],[17],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[31],[31],[32],[33],[34],[35],[36],[37],[38],[39],[57],[58],[61],[67,68,71],[11],[44],[47],[47],[48],[48],[51],[49],[50],[52],[53],[54],[55],[56],[5],[6],[40],[41],[7],[62],[63],[64],[65],[66],[8],[9],[42],[43],[10],[72],[73],[74],[75],[76],[59,60],[69,70],[77],[78],[46],[79],[80],[69,70],[45]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 9=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<81 := hi
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
 exact range_sound block72 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.Case10
