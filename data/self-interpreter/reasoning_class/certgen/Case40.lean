import Regular
namespace Certgen.Case40
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 18,.app 9 17,.app 10 14,.app 11 12,.var 0,.lam 13,.var 1,.app 15 16,.var 0,.opaque,.opaque,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[3]⟩,⟨12,[4]⟩],[⟨16,[3]⟩,⟨16,[4]⟩],[⟨6,[]⟩],[⟨12,[6]⟩,⟨12,[7]⟩],[⟨12,[5]⟩],[⟨5,[2]⟩],[⟨14,[4]⟩],[⟨14,[3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[3]⟩,26⟩],[⟨⟨12,[4]⟩,27⟩],[⟨⟨12,[5]⟩,28⟩],[⟨⟨12,[6]⟩,29⟩],[⟨⟨12,[7]⟩,30⟩],[⟨⟨16,[3]⟩,26⟩],[⟨⟨16,[3]⟩,7⟩,⟨⟨16,[3]⟩,26⟩],[⟨⟨16,[3]⟩,7⟩],[⟨⟨16,[4]⟩,26⟩],[⟨⟨16,[4]⟩,7⟩,⟨⟨16,[4]⟩,26⟩],[⟨⟨16,[4]⟩,7⟩],[⟨⟨16,[4]⟩,6⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨18,[3]⟩,29⟩,⟨⟨18,[3]⟩,30⟩],[⟨⟨18,[4]⟩,28⟩],[⟨⟨18,[5]⟩,1⟩],[⟨⟨18,[6]⟩,22⟩],[⟨⟨18,[7]⟩,21⟩],[⟨⟨17,[3]⟩,16⟩],[⟨⟨17,[4]⟩,17⟩],[⟨⟨17,[5]⟩,18⟩],[⟨⟨17,[6]⟩,19⟩],[⟨⟨17,[7]⟩,20⟩],[⟨⟨14,[3]⟩,21⟩],[⟨⟨14,[4]⟩,22⟩],[⟨⟨14,[5]⟩,23⟩],[⟨⟨14,[6]⟩,24⟩],[⟨⟨14,[7]⟩,25⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,15⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨5,[2]⟩,6⟩,⟨⟨5,[2]⟩,7⟩,⟨⟨5,[2]⟩,26⟩,⟨⟨5,[2]⟩,27⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,7⟩,⟨⟨6,[]⟩,15⟩,⟨⟨6,[]⟩,26⟩,⟨⟨6,[]⟩,27⟩,⟨⟨7,[3]⟩,29⟩,⟨⟨7,[3]⟩,30⟩,⟨⟨7,[4]⟩,28⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨7,[6]⟩,22⟩,⟨⟨7,[7]⟩,21⟩,⟨⟨8,[3]⟩,16⟩,⟨⟨8,[4]⟩,17⟩,⟨⟨8,[5]⟩,18⟩,⟨⟨8,[6]⟩,19⟩,⟨⟨8,[7]⟩,20⟩,⟨⟨9,[3]⟩,21⟩,⟨⟨9,[4]⟩,22⟩,⟨⟨9,[5]⟩,23⟩,⟨⟨9,[6]⟩,24⟩,⟨⟨9,[7]⟩,25⟩,⟨⟨10,[3]⟩,26⟩,⟨⟨10,[4]⟩,27⟩,⟨⟨10,[5]⟩,28⟩,⟨⟨10,[6]⟩,29⟩,⟨⟨10,[7]⟩,30⟩,⟨⟨11,[3]⟩,3⟩,⟨⟨11,[4]⟩,4⟩,⟨⟨11,[5]⟩,5⟩,⟨⟨11,[6]⟩,6⟩,⟨⟨11,[7]⟩,7⟩,⟨⟨12,[5]⟩,4⟩,⟨⟨12,[5]⟩,11⟩,⟨⟨12,[5]⟩,12⟩,⟨⟨12,[5]⟩,13⟩,⟨⟨12,[5]⟩,14⟩,⟨⟨12,[6]⟩,3⟩,⟨⟨12,[6]⟩,8⟩,⟨⟨12,[6]⟩,9⟩,⟨⟨12,[6]⟩,10⟩,⟨⟨12,[7]⟩,3⟩,⟨⟨12,[7]⟩,8⟩,⟨⟨12,[7]⟩,9⟩,⟨⟨12,[7]⟩,10⟩,⟨⟨13,[0,5]⟩,27⟩,⟨⟨13,[0,6]⟩,26⟩,⟨⟨13,[0,7]⟩,26⟩,⟨⟨13,[1,5]⟩,6⟩,⟨⟨13,[1,5]⟩,7⟩,⟨⟨13,[1,5]⟩,26⟩,⟨⟨13,[1,6]⟩,7⟩,⟨⟨13,[1,6]⟩,26⟩,⟨⟨13,[1,7]⟩,7⟩,⟨⟨13,[1,7]⟩,26⟩,⟨⟨14,[3]⟩,7⟩,⟨⟨14,[3]⟩,26⟩,⟨⟨14,[4]⟩,6⟩,⟨⟨14,[4]⟩,7⟩,⟨⟨14,[4]⟩,26⟩,⟨⟨15,[3]⟩,8⟩,⟨⟨15,[3]⟩,9⟩,⟨⟨15,[3]⟩,10⟩,⟨⟨15,[4]⟩,11⟩,⟨⟨15,[4]⟩,12⟩,⟨⟨15,[4]⟩,13⟩,⟨⟨15,[4]⟩,14⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[10],[11],[12],[14],[15],[18],[16],[17],[19],[21],[20],[22],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[41],[47,51],[42],[5],[67],[65],[55],[60],[59,60],[59],[58],[56],[62],[61,62],[61],[57],[64],[63,64],[63],[9],[69],[66],[6],[7],[8],[68],[69],[65],[66],[71],[70],[76],[74],[73],[48,52],[49,53],[50,54],[43],[44],[45],[46]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 5=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<77 := hi
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
end Certgen.Case40
