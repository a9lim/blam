import Regular
namespace Certgen.Case39
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.app 9 18,.app 10 14,.app 11 12,.var 0,.lam 13,.var 1,.lam 15,.app 16 17,.var 1,.opaque,.opaque,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[7]⟩],[⟨17,[3,7]⟩],[⟨17,[4,7]⟩,⟨17,[5,7]⟩],[⟨12,[9]⟩,⟨12,[10]⟩],[⟨17,[3,9]⟩,⟨17,[3,10]⟩],[⟨17,[4,9]⟩,⟨17,[4,10]⟩,⟨17,[5,9]⟩,⟨17,[5,10]⟩],[⟨6,[]⟩],[⟨12,[8]⟩],[⟨5,[6]⟩],[⟨14,[7]⟩],[⟨14,[9]⟩,⟨14,[10]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[7]⟩,25⟩],[⟨⟨12,[8]⟩,26⟩],[⟨⟨12,[9]⟩,27⟩],[⟨⟨12,[10]⟩,28⟩],[⟨⟨17,[3,7]⟩,27⟩],[⟨⟨17,[3,9]⟩,28⟩],[⟨⟨17,[3,10]⟩,28⟩],[⟨⟨17,[4,7]⟩,28⟩],[⟨⟨17,[4,9]⟩,28⟩],[⟨⟨17,[4,10]⟩,28⟩],[⟨⟨17,[5,7]⟩,28⟩],[⟨⟨17,[5,9]⟩,28⟩],[⟨⟨17,[5,10]⟩,28⟩],[⟨⟨5,[6]⟩,1⟩],[⟨⟨19,[7]⟩,26⟩],[⟨⟨19,[8]⟩,1⟩],[⟨⟨19,[9]⟩,21⟩],[⟨⟨19,[10]⟩,23⟩,⟨⟨19,[10]⟩,24⟩],[⟨⟨18,[7]⟩,17⟩],[⟨⟨18,[8]⟩,18⟩],[⟨⟨18,[9]⟩,19⟩],[⟨⟨18,[10]⟩,20⟩],[⟨⟨14,[7]⟩,21⟩],[⟨⟨14,[8]⟩,22⟩],[⟨⟨14,[9]⟩,23⟩],[⟨⟨14,[10]⟩,24⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,16⟩,⟨⟨5,[6]⟩,4⟩,⟨⟨5,[6]⟩,25⟩,⟨⟨5,[6]⟩,27⟩,⟨⟨5,[6]⟩,28⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,16⟩,⟨⟨6,[]⟩,25⟩,⟨⟨6,[]⟩,27⟩,⟨⟨6,[]⟩,28⟩,⟨⟨7,[7]⟩,26⟩,⟨⟨7,[8]⟩,1⟩,⟨⟨7,[9]⟩,21⟩,⟨⟨7,[10]⟩,23⟩,⟨⟨7,[10]⟩,24⟩,⟨⟨8,[7]⟩,17⟩,⟨⟨8,[8]⟩,18⟩,⟨⟨8,[9]⟩,19⟩,⟨⟨8,[10]⟩,20⟩,⟨⟨9,[7]⟩,21⟩,⟨⟨9,[8]⟩,22⟩,⟨⟨9,[9]⟩,23⟩,⟨⟨9,[10]⟩,24⟩,⟨⟨10,[7]⟩,25⟩,⟨⟨10,[8]⟩,26⟩,⟨⟨10,[9]⟩,27⟩,⟨⟨10,[10]⟩,28⟩,⟨⟨11,[7]⟩,3⟩,⟨⟨11,[8]⟩,4⟩,⟨⟨11,[9]⟩,5⟩,⟨⟨11,[10]⟩,6⟩,⟨⟨12,[8]⟩,3⟩,⟨⟨12,[8]⟩,7⟩,⟨⟨12,[8]⟩,10⟩,⟨⟨12,[8]⟩,13⟩,⟨⟨13,[0,8]⟩,25⟩,⟨⟨13,[1,8]⟩,27⟩,⟨⟨13,[2,8]⟩,28⟩,⟨⟨14,[7]⟩,5⟩,⟨⟨14,[7]⟩,8⟩,⟨⟨14,[7]⟩,11⟩,⟨⟨14,[7]⟩,14⟩,⟨⟨14,[9]⟩,6⟩,⟨⟨14,[9]⟩,9⟩,⟨⟨14,[9]⟩,12⟩,⟨⟨14,[9]⟩,15⟩,⟨⟨14,[10]⟩,6⟩,⟨⟨14,[10]⟩,9⟩,⟨⟨14,[10]⟩,12⟩,⟨⟨14,[10]⟩,15⟩,⟨⟨15,[3,7]⟩,27⟩,⟨⟨15,[3,9]⟩,28⟩,⟨⟨15,[3,10]⟩,28⟩,⟨⟨15,[4,7]⟩,28⟩,⟨⟨15,[4,9]⟩,28⟩,⟨⟨15,[4,10]⟩,28⟩,⟨⟨15,[5,7]⟩,28⟩,⟨⟨15,[5,9]⟩,28⟩,⟨⟨15,[5,10]⟩,28⟩,⟨⟨16,[3,7]⟩,7⟩,⟨⟨16,[3,9]⟩,8⟩,⟨⟨16,[3,10]⟩,9⟩,⟨⟨16,[4,7]⟩,10⟩,⟨⟨16,[4,9]⟩,11⟩,⟨⟨16,[4,10]⟩,12⟩,⟨⟨16,[5,7]⟩,13⟩,⟨⟨16,[5,9]⟩,14⟩,⟨⟨16,[5,10]⟩,15⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[10],[9],[11],[12],[13],[14],[15],[16],[17],[18],[19],[20],[21],[22],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[5],[42],[46,50],[39],[40],[41],[41],[6],[7],[8],[54],[57],[60],[60],[55],[58],[61],[61],[56],[59],[62],[62],[63],[64],[65],[66],[67],[68],[69],[70],[71],[36],[43],[47,51],[37],[44],[48,52],[38],[45],[49,53]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<72 := hi
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
 exact range_sound block60 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.Case39
