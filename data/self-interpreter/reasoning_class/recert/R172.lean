import Regular
namespace Certgen.R172
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 18,.lam 9,.app 10 14,.app 11 12,.var 1,.lam 13,.var 2,.lam 15,.app 16 17,.var 2,.opaque,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[11,7]⟩],[⟨17,[3,11,7]⟩],[⟨17,[4,11,7]⟩,⟨17,[5,11,7]⟩],[⟨12,[13,9]⟩,⟨12,[13,10]⟩],[⟨17,[3,13,9]⟩,⟨17,[3,13,10]⟩],[⟨17,[4,13,9]⟩,⟨17,[4,13,10]⟩,⟨17,[5,13,9]⟩,⟨17,[5,13,10]⟩],[⟨6,[]⟩],[⟨12,[12,8]⟩],[⟨5,[6]⟩],[⟨14,[11,7]⟩],[⟨14,[13,9]⟩,⟨14,[13,10]⟩],[⟨18,[7]⟩],[⟨18,[8]⟩],[⟨18,[9]⟩,⟨18,[10]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[11,7]⟩,21⟩],[⟨⟨12,[12,8]⟩,22⟩],[⟨⟨12,[13,9]⟩,23⟩],[⟨⟨12,[13,10]⟩,24⟩],[⟨⟨17,[3,11,7]⟩,23⟩],[⟨⟨17,[3,13,9]⟩,24⟩],[⟨⟨17,[3,13,10]⟩,24⟩],[⟨⟨17,[4,11,7]⟩,24⟩],[⟨⟨17,[4,13,9]⟩,24⟩],[⟨⟨17,[4,13,10]⟩,24⟩],[⟨⟨17,[5,11,7]⟩,24⟩],[⟨⟨17,[5,13,9]⟩,24⟩],[⟨⟨17,[5,13,10]⟩,24⟩],[⟨⟨5,[6]⟩,1⟩],[⟨⟨18,[7]⟩,22⟩],[⟨⟨18,[8]⟩,1⟩],[⟨⟨18,[9]⟩,22⟩],[⟨⟨18,[10]⟩,22⟩],[⟨⟨14,[11,7]⟩,22⟩],[⟨⟨14,[12,8]⟩,1⟩],[⟨⟨14,[13,9]⟩,22⟩],[⟨⟨14,[13,10]⟩,22⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,16⟩,⟨⟨5,[6]⟩,4⟩,⟨⟨5,[6]⟩,21⟩,⟨⟨5,[6]⟩,23⟩,⟨⟨5,[6]⟩,24⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,16⟩,⟨⟨6,[]⟩,21⟩,⟨⟨6,[]⟩,23⟩,⟨⟨6,[]⟩,24⟩,⟨⟨7,[7]⟩,22⟩,⟨⟨7,[8]⟩,1⟩,⟨⟨7,[9]⟩,22⟩,⟨⟨7,[10]⟩,22⟩,⟨⟨8,[7]⟩,17⟩,⟨⟨8,[8]⟩,18⟩,⟨⟨8,[9]⟩,19⟩,⟨⟨8,[10]⟩,20⟩,⟨⟨9,[11,7]⟩,22⟩,⟨⟨9,[12,8]⟩,1⟩,⟨⟨9,[13,9]⟩,22⟩,⟨⟨9,[13,10]⟩,22⟩,⟨⟨10,[11,7]⟩,21⟩,⟨⟨10,[12,8]⟩,22⟩,⟨⟨10,[13,9]⟩,23⟩,⟨⟨10,[13,10]⟩,24⟩,⟨⟨11,[11,7]⟩,3⟩,⟨⟨11,[12,8]⟩,4⟩,⟨⟨11,[13,9]⟩,5⟩,⟨⟨11,[13,10]⟩,6⟩,⟨⟨12,[12,8]⟩,3⟩,⟨⟨12,[12,8]⟩,7⟩,⟨⟨12,[12,8]⟩,10⟩,⟨⟨12,[12,8]⟩,13⟩,⟨⟨13,[0,12,8]⟩,21⟩,⟨⟨13,[1,12,8]⟩,23⟩,⟨⟨13,[2,12,8]⟩,24⟩,⟨⟨14,[11,7]⟩,5⟩,⟨⟨14,[11,7]⟩,8⟩,⟨⟨14,[11,7]⟩,11⟩,⟨⟨14,[11,7]⟩,14⟩,⟨⟨14,[13,9]⟩,6⟩,⟨⟨14,[13,9]⟩,9⟩,⟨⟨14,[13,9]⟩,12⟩,⟨⟨14,[13,9]⟩,15⟩,⟨⟨14,[13,10]⟩,6⟩,⟨⟨14,[13,10]⟩,9⟩,⟨⟨14,[13,10]⟩,12⟩,⟨⟨14,[13,10]⟩,15⟩,⟨⟨15,[3,11,7]⟩,23⟩,⟨⟨15,[3,13,9]⟩,24⟩,⟨⟨15,[3,13,10]⟩,24⟩,⟨⟨15,[4,11,7]⟩,24⟩,⟨⟨15,[4,13,9]⟩,24⟩,⟨⟨15,[4,13,10]⟩,24⟩,⟨⟨15,[5,11,7]⟩,24⟩,⟨⟨15,[5,13,9]⟩,24⟩,⟨⟨15,[5,13,10]⟩,24⟩,⟨⟨16,[3,11,7]⟩,7⟩,⟨⟨16,[3,13,9]⟩,8⟩,⟨⟨16,[3,13,10]⟩,9⟩,⟨⟨16,[4,11,7]⟩,10⟩,⟨⟨16,[4,13,9]⟩,11⟩,⟨⟨16,[4,13,10]⟩,12⟩,⟨⟨16,[5,11,7]⟩,13⟩,⟨⟨16,[5,13,9]⟩,14⟩,⟨⟨16,[5,13,10]⟩,15⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[10],[9],[11],[12],[13],[14],[15],[16],[17],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[5],[41],[45,49],[38],[39],[40],[40],[6],[7],[8],[53],[56],[59],[59],[54],[57],[60],[60],[55],[58],[61],[61],[62],[63],[64],[65],[66],[67],[68],[69],[70],[35],[42],[46,50],[36],[43],[47,51],[37],[44],[48,52]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<71 := hi
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
end Certgen.R172
