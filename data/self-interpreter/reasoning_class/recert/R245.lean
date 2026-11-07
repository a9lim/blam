import Regular
namespace Certgen.R245
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.app 9 18,.app 10 14,.lam 11,.app 12 13,.var 0,.var 0,.app 15 16,.var 0,.lam 17,.var 1,.opaque,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨14,[5]⟩],[⟨14,[6]⟩,⟨14,[7]⟩],[⟨14,[8]⟩],[⟨16,[6]⟩,⟨16,[7]⟩],[⟨6,[]⟩],[⟨13,[1,6]⟩,⟨13,[1,7]⟩],[⟨16,[8]⟩],[⟨16,[5]⟩],[⟨5,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨13,[0,5]⟩,20⟩],[⟨⟨13,[1,6]⟩,21⟩],[⟨⟨13,[1,7]⟩,22⟩],[⟨⟨13,[2,8]⟩,23⟩],[⟨⟨16,[5]⟩,3⟩],[⟨⟨16,[6]⟩,7⟩],[⟨⟨16,[6]⟩,4⟩,⟨⟨16,[6]⟩,5⟩],[⟨⟨16,[6]⟩,4⟩,⟨⟨16,[6]⟩,5⟩,⟨⟨16,[6]⟩,7⟩],[⟨⟨16,[7]⟩,7⟩],[⟨⟨16,[7]⟩,4⟩,⟨⟨16,[7]⟩,5⟩],[⟨⟨16,[7]⟩,4⟩,⟨⟨16,[7]⟩,5⟩,⟨⟨16,[7]⟩,7⟩],[⟨⟨16,[8]⟩,6⟩],[⟨⟨5,[4]⟩,1⟩],[⟨⟨19,[5]⟩,21⟩,⟨⟨19,[5]⟩,22⟩],[⟨⟨19,[6]⟩,6⟩],[⟨⟨19,[7]⟩,3⟩],[⟨⟨19,[8]⟩,1⟩],[⟨⟨18,[5]⟩,16⟩],[⟨⟨18,[6]⟩,17⟩],[⟨⟨18,[7]⟩,18⟩],[⟨⟨18,[8]⟩,19⟩],[⟨⟨14,[5]⟩,20⟩],[⟨⟨14,[6]⟩,21⟩],[⟨⟨14,[7]⟩,22⟩],[⟨⟨14,[8]⟩,23⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,15⟩,⟨⟨5,[4]⟩,4⟩,⟨⟨5,[4]⟩,5⟩,⟨⟨5,[4]⟩,7⟩,⟨⟨5,[4]⟩,14⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,7⟩,⟨⟨6,[]⟩,14⟩,⟨⟨6,[]⟩,15⟩,⟨⟨7,[5]⟩,21⟩,⟨⟨7,[5]⟩,22⟩,⟨⟨7,[6]⟩,6⟩,⟨⟨7,[7]⟩,3⟩,⟨⟨7,[8]⟩,1⟩,⟨⟨8,[5]⟩,16⟩,⟨⟨8,[6]⟩,17⟩,⟨⟨8,[7]⟩,18⟩,⟨⟨8,[8]⟩,19⟩,⟨⟨9,[5]⟩,20⟩,⟨⟨9,[6]⟩,21⟩,⟨⟨9,[7]⟩,22⟩,⟨⟨9,[8]⟩,23⟩,⟨⟨10,[5]⟩,24⟩,⟨⟨10,[6]⟩,25⟩,⟨⟨10,[7]⟩,26⟩,⟨⟨10,[8]⟩,27⟩,⟨⟨11,[0,5]⟩,20⟩,⟨⟨11,[1,6]⟩,21⟩,⟨⟨11,[1,7]⟩,22⟩,⟨⟨11,[2,8]⟩,23⟩,⟨⟨12,[0,5]⟩,3⟩,⟨⟨12,[1,6]⟩,4⟩,⟨⟨12,[1,7]⟩,5⟩,⟨⟨12,[2,8]⟩,6⟩,⟨⟨13,[1,6]⟩,4⟩,⟨⟨13,[1,6]⟩,5⟩,⟨⟨13,[1,6]⟩,7⟩,⟨⟨13,[1,7]⟩,4⟩,⟨⟨13,[1,7]⟩,5⟩,⟨⟨13,[1,7]⟩,7⟩,⟨⟨14,[5]⟩,3⟩,⟨⟨14,[6]⟩,4⟩,⟨⟨14,[6]⟩,5⟩,⟨⟨14,[6]⟩,7⟩,⟨⟨14,[7]⟩,4⟩,⟨⟨14,[7]⟩,5⟩,⟨⟨14,[7]⟩,7⟩,⟨⟨14,[8]⟩,6⟩,⟨⟨15,[5]⟩,7⟩,⟨⟨15,[6]⟩,8⟩,⟨⟨15,[6]⟩,9⟩,⟨⟨15,[6]⟩,10⟩,⟨⟨15,[7]⟩,11⟩,⟨⟨15,[7]⟩,12⟩,⟨⟨15,[7]⟩,13⟩,⟨⟨15,[8]⟩,14⟩,⟨⟨16,[5]⟩,11⟩,⟨⟨16,[5]⟩,12⟩,⟨⟨16,[5]⟩,13⟩,⟨⟨16,[8]⟩,8⟩,⟨⟨16,[8]⟩,9⟩,⟨⟨16,[8]⟩,10⟩,⟨⟨17,[3,5]⟩,4⟩,⟨⟨17,[3,5]⟩,5⟩,⟨⟨17,[3,5]⟩,7⟩,⟨⟨17,[3,8]⟩,4⟩,⟨⟨17,[3,8]⟩,5⟩,⟨⟨17,[3,8]⟩,7⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[9],[10],[11],[12],[14],[15],[17],[16],[18],[19],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[45],[46,49],[47,50],[52],[46,49],[47,50],[48,51],[46,49],[47,50],[48,51],[53],[55],[55],[54],[58],[58],[57],[60],[41,44],[64],[65],[66],[61],[62],[63],[8],[69],[67,68],[67,68,69],[72],[70,71],[70,71,72],[39,42],[40,43],[41,44],[5],[6],[7]]
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
end Certgen.R245
