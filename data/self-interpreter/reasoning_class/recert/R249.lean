import Regular
namespace Certgen.R249
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 20,.app 9 19,.app 10 18,.app 11 15,.app 12 13,.var 0,.lam 14,.var 1,.app 16 17,.var 0,.opaque,.opaque,.opaque,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨13,[5]⟩,⟨13,[6]⟩],[⟨17,[5]⟩,⟨17,[6]⟩],[⟨6,[]⟩],[⟨15,[6]⟩],[⟨15,[5]⟩],[⟨13,[3]⟩,⟨13,[4]⟩],[⟨13,[7]⟩],[⟨5,[2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨15,[3]⟩,31⟩],[⟨⟨15,[4]⟩,32⟩],[⟨⟨15,[5]⟩,33⟩],[⟨⟨15,[6]⟩,34⟩],[⟨⟨15,[7]⟩,35⟩],[⟨⟨13,[3]⟩,3⟩],[⟨⟨13,[4]⟩,4⟩],[⟨⟨13,[5]⟩,5⟩],[⟨⟨13,[6]⟩,6⟩],[⟨⟨13,[7]⟩,7⟩],[⟨⟨17,[5]⟩,5⟩],[⟨⟨17,[5]⟩,5⟩,⟨⟨17,[5]⟩,9⟩],[⟨⟨17,[5]⟩,9⟩],[⟨⟨17,[6]⟩,5⟩],[⟨⟨17,[6]⟩,5⟩,⟨⟨17,[6]⟩,9⟩],[⟨⟨17,[6]⟩,9⟩],[⟨⟨17,[6]⟩,8⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨20,[3]⟩,34⟩],[⟨⟨20,[4]⟩,33⟩],[⟨⟨20,[5]⟩,3⟩,⟨⟨20,[5]⟩,4⟩],[⟨⟨20,[6]⟩,7⟩],[⟨⟨20,[7]⟩,1⟩],[⟨⟨19,[3]⟩,21⟩],[⟨⟨19,[4]⟩,22⟩],[⟨⟨19,[5]⟩,23⟩],[⟨⟨19,[6]⟩,24⟩],[⟨⟨19,[7]⟩,25⟩],[⟨⟨18,[3]⟩,26⟩],[⟨⟨18,[4]⟩,27⟩],[⟨⟨18,[5]⟩,28⟩],[⟨⟨18,[6]⟩,29⟩],[⟨⟨18,[7]⟩,30⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,20⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨5,[2]⟩,6⟩,⟨⟨5,[2]⟩,8⟩,⟨⟨5,[2]⟩,9⟩,⟨⟨5,[2]⟩,12⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,20⟩,⟨⟨7,[3]⟩,34⟩,⟨⟨7,[4]⟩,33⟩,⟨⟨7,[5]⟩,3⟩,⟨⟨7,[5]⟩,4⟩,⟨⟨7,[6]⟩,7⟩,⟨⟨7,[7]⟩,1⟩,⟨⟨8,[3]⟩,21⟩,⟨⟨8,[4]⟩,22⟩,⟨⟨8,[5]⟩,23⟩,⟨⟨8,[6]⟩,24⟩,⟨⟨8,[7]⟩,25⟩,⟨⟨9,[3]⟩,26⟩,⟨⟨9,[4]⟩,27⟩,⟨⟨9,[5]⟩,28⟩,⟨⟨9,[6]⟩,29⟩,⟨⟨9,[7]⟩,30⟩,⟨⟨10,[3]⟩,31⟩,⟨⟨10,[4]⟩,32⟩,⟨⟨10,[5]⟩,33⟩,⟨⟨10,[6]⟩,34⟩,⟨⟨10,[7]⟩,35⟩,⟨⟨11,[3]⟩,3⟩,⟨⟨11,[4]⟩,4⟩,⟨⟨11,[5]⟩,5⟩,⟨⟨11,[6]⟩,6⟩,⟨⟨11,[7]⟩,7⟩,⟨⟨12,[3]⟩,8⟩,⟨⟨12,[4]⟩,9⟩,⟨⟨12,[5]⟩,10⟩,⟨⟨12,[6]⟩,11⟩,⟨⟨12,[7]⟩,12⟩,⟨⟨13,[3]⟩,10⟩,⟨⟨13,[3]⟩,13⟩,⟨⟨13,[3]⟩,14⟩,⟨⟨13,[3]⟩,15⟩,⟨⟨13,[4]⟩,10⟩,⟨⟨13,[4]⟩,13⟩,⟨⟨13,[4]⟩,14⟩,⟨⟨13,[4]⟩,15⟩,⟨⟨13,[7]⟩,11⟩,⟨⟨13,[7]⟩,16⟩,⟨⟨13,[7]⟩,17⟩,⟨⟨13,[7]⟩,18⟩,⟨⟨13,[7]⟩,19⟩,⟨⟨14,[0,3]⟩,5⟩,⟨⟨14,[0,4]⟩,5⟩,⟨⟨14,[0,7]⟩,6⟩,⟨⟨14,[1,3]⟩,5⟩,⟨⟨14,[1,3]⟩,9⟩,⟨⟨14,[1,4]⟩,5⟩,⟨⟨14,[1,4]⟩,9⟩,⟨⟨14,[1,7]⟩,5⟩,⟨⟨14,[1,7]⟩,8⟩,⟨⟨14,[1,7]⟩,9⟩,⟨⟨15,[5]⟩,5⟩,⟨⟨15,[5]⟩,9⟩,⟨⟨15,[6]⟩,5⟩,⟨⟨15,[6]⟩,8⟩,⟨⟨15,[6]⟩,9⟩,⟨⟨16,[5]⟩,13⟩,⟨⟨16,[5]⟩,14⟩,⟨⟨16,[5]⟩,15⟩,⟨⟨16,[6]⟩,16⟩,⟨⟨16,[6]⟩,17⟩,⟨⟨16,[6]⟩,18⟩,⟨⟨16,[6]⟩,19⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[10],[11],[12],[13],[14],[17],[16],[18],[19],[20],[21],[22],[23],[24],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[41],[42],[43],[44],[45],[46],[73],[71],[47,51],[55],[9],[60],[63],[63,64],[64],[61],[65],[65,66],[66],[62],[67],[67,69],[69],[68],[72],[70],[6],[72],[74],[70],[71],[5],[7],[8],[75],[76],[78],[81],[79],[48,52],[49,53],[50,54],[56],[57],[58],[59]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 10=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<82 := hi
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
end Certgen.R249
