import Regular
namespace Certgen.R238
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.app 9 15,.lam 10,.app 11 14,.app 12 13,.var 0,.var 0,.opaque,.app 16 17,.var 0,.lam 18,.var 1,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[3]⟩,⟨17,[4]⟩],[⟨6,[]⟩],[⟨13,[7,3]⟩,⟨13,[7,4]⟩],[⟨17,[2]⟩],[⟨17,[5]⟩],[⟨5,[1]⟩],[⟨15,[2]⟩],[⟨15,[3]⟩,⟨15,[4]⟩],[⟨15,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨14,[6,2]⟩,20⟩],[⟨⟨14,[7,3]⟩,21⟩],[⟨⟨14,[7,4]⟩,22⟩],[⟨⟨14,[8,5]⟩,23⟩],[⟨⟨13,[6,2]⟩,3⟩],[⟨⟨13,[7,3]⟩,4⟩],[⟨⟨13,[7,4]⟩,5⟩],[⟨⟨13,[8,5]⟩,6⟩],[⟨⟨17,[2]⟩,7⟩],[⟨⟨17,[3]⟩,8⟩,⟨⟨17,[3]⟩,9⟩,⟨⟨17,[3]⟩,11⟩],[⟨⟨17,[3]⟩,11⟩],[⟨⟨17,[3]⟩,8⟩,⟨⟨17,[3]⟩,9⟩],[⟨⟨17,[4]⟩,8⟩,⟨⟨17,[4]⟩,9⟩,⟨⟨17,[4]⟩,11⟩],[⟨⟨17,[4]⟩,11⟩],[⟨⟨17,[4]⟩,8⟩,⟨⟨17,[4]⟩,9⟩],[⟨⟨17,[5]⟩,10⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨19,[2]⟩,4⟩,⟨⟨19,[2]⟩,5⟩],[⟨⟨19,[3]⟩,7⟩],[⟨⟨19,[4]⟩,10⟩],[⟨⟨19,[5]⟩,1⟩],[⟨⟨15,[2]⟩,20⟩],[⟨⟨15,[3]⟩,21⟩],[⟨⟨15,[4]⟩,22⟩],[⟨⟨15,[5]⟩,23⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,19⟩,⟨⟨5,[1]⟩,8⟩,⟨⟨5,[1]⟩,9⟩,⟨⟨5,[1]⟩,11⟩,⟨⟨5,[1]⟩,18⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,11⟩,⟨⟨6,[]⟩,18⟩,⟨⟨6,[]⟩,19⟩,⟨⟨7,[2]⟩,4⟩,⟨⟨7,[2]⟩,5⟩,⟨⟨7,[3]⟩,7⟩,⟨⟨7,[4]⟩,10⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨8,[2]⟩,20⟩,⟨⟨8,[3]⟩,21⟩,⟨⟨8,[4]⟩,22⟩,⟨⟨8,[5]⟩,23⟩,⟨⟨9,[2]⟩,24⟩,⟨⟨9,[3]⟩,25⟩,⟨⟨9,[4]⟩,26⟩,⟨⟨9,[5]⟩,27⟩,⟨⟨10,[6,2]⟩,20⟩,⟨⟨10,[7,3]⟩,21⟩,⟨⟨10,[7,4]⟩,22⟩,⟨⟨10,[8,5]⟩,23⟩,⟨⟨11,[6,2]⟩,3⟩,⟨⟨11,[7,3]⟩,4⟩,⟨⟨11,[7,4]⟩,5⟩,⟨⟨11,[8,5]⟩,6⟩,⟨⟨12,[6,2]⟩,7⟩,⟨⟨12,[7,3]⟩,8⟩,⟨⟨12,[7,4]⟩,9⟩,⟨⟨12,[8,5]⟩,10⟩,⟨⟨13,[7,3]⟩,8⟩,⟨⟨13,[7,3]⟩,9⟩,⟨⟨13,[7,3]⟩,11⟩,⟨⟨13,[7,4]⟩,8⟩,⟨⟨13,[7,4]⟩,9⟩,⟨⟨13,[7,4]⟩,11⟩,⟨⟨15,[2]⟩,7⟩,⟨⟨15,[3]⟩,8⟩,⟨⟨15,[3]⟩,9⟩,⟨⟨15,[3]⟩,11⟩,⟨⟨15,[4]⟩,8⟩,⟨⟨15,[4]⟩,9⟩,⟨⟨15,[4]⟩,11⟩,⟨⟨15,[5]⟩,10⟩,⟨⟨16,[2]⟩,11⟩,⟨⟨16,[3]⟩,12⟩,⟨⟨16,[3]⟩,13⟩,⟨⟨16,[3]⟩,14⟩,⟨⟨16,[4]⟩,15⟩,⟨⟨16,[4]⟩,16⟩,⟨⟨16,[4]⟩,17⟩,⟨⟨16,[5]⟩,18⟩,⟨⟨17,[2]⟩,12⟩,⟨⟨17,[2]⟩,13⟩,⟨⟨17,[2]⟩,14⟩,⟨⟨17,[5]⟩,15⟩,⟨⟨17,[5]⟩,16⟩,⟨⟨17,[5]⟩,17⟩,⟨⟨18,[0,2]⟩,8⟩,⟨⟨18,[0,2]⟩,9⟩,⟨⟨18,[0,2]⟩,11⟩,⟨⟨18,[0,5]⟩,8⟩,⟨⟨18,[0,5]⟩,9⟩,⟨⟨18,[0,5]⟩,11⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[9],[10],[11],[12],[14],[15],[16],[17],[18],[19],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[45],[46,49],[47,50],[52],[46,49],[47,50],[48,51],[46,49],[47,50],[48,51],[53],[54],[54],[54],[57],[57],[57],[60],[41,44],[61],[62],[63],[64],[65],[66],[8],[67,68,69],[69],[67,68],[70,71,72],[72],[70,71],[39,42],[40,43],[41,44],[5],[6],[7]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<73 := hi
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
end Certgen.R238
