import Regular
namespace Certgen.R302
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 16,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.lam 8,.app 9 10,.var 0,.app 11 14,.app 12 13,.var 1,.opaque,.lam 15,.var 1,.lam 17,.lam 18,.app 19 20,.var 0,.var 0,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨20,[3,1]⟩],[⟨13,[6,5]⟩,⟨13,[7,5]⟩,⟨13,[8,5]⟩],[⟨6,[5]⟩],[⟨14,[6,5]⟩,⟨14,[7,5]⟩,⟨14,[8,5]⟩],[⟨7,[5]⟩],[⟨16,[]⟩],[⟨20,[4,2]⟩],[⟨10,[7,5]⟩,⟨10,[8,5]⟩],[⟨10,[6,5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨16,[]⟩,1⟩],[⟨⟨14,[6,5]⟩,20⟩,⟨⟨14,[6,5]⟩,21⟩],[⟨⟨14,[6,5]⟩,21⟩],[⟨⟨14,[7,5]⟩,20⟩,⟨⟨14,[7,5]⟩,21⟩],[⟨⟨14,[7,5]⟩,20⟩],[⟨⟨14,[8,5]⟩,20⟩,⟨⟨14,[8,5]⟩,21⟩],[⟨⟨14,[8,5]⟩,20⟩],[⟨⟨13,[6,5]⟩,3⟩],[⟨⟨13,[6,5]⟩,4⟩],[⟨⟨13,[7,5]⟩,5⟩],[⟨⟨13,[7,5]⟩,6⟩],[⟨⟨13,[8,5]⟩,7⟩],[⟨⟨13,[8,5]⟩,8⟩],[⟨⟨20,[3,1]⟩,20⟩,⟨⟨20,[3,1]⟩,21⟩],[⟨⟨20,[4,2]⟩,1⟩],[⟨⟨7,[5]⟩,1⟩],[⟨⟨6,[5]⟩,17⟩],[⟨⟨10,[6,5]⟩,1⟩],[⟨⟨10,[7,5]⟩,1⟩],[⟨⟨10,[8,5]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,17⟩,⟨⟨5,[5]⟩,18⟩,⟨⟨7,[5]⟩,16⟩,⟨⟨7,[5]⟩,19⟩,⟨⟨7,[5]⟩,20⟩,⟨⟨7,[5]⟩,21⟩,⟨⟨8,[6,5]⟩,1⟩,⟨⟨8,[7,5]⟩,1⟩,⟨⟨8,[8,5]⟩,1⟩,⟨⟨9,[6,5]⟩,19⟩,⟨⟨9,[7,5]⟩,20⟩,⟨⟨9,[8,5]⟩,21⟩,⟨⟨10,[6,5]⟩,20⟩,⟨⟨10,[6,5]⟩,21⟩,⟨⟨10,[7,5]⟩,20⟩,⟨⟨10,[7,5]⟩,21⟩,⟨⟨10,[8,5]⟩,20⟩,⟨⟨10,[8,5]⟩,21⟩,⟨⟨11,[6,5]⟩,3⟩,⟨⟨11,[6,5]⟩,4⟩,⟨⟨11,[7,5]⟩,5⟩,⟨⟨11,[7,5]⟩,6⟩,⟨⟨11,[8,5]⟩,7⟩,⟨⟨11,[8,5]⟩,8⟩,⟨⟨12,[6,5]⟩,9⟩,⟨⟨12,[6,5]⟩,10⟩,⟨⟨12,[7,5]⟩,11⟩,⟨⟨12,[7,5]⟩,12⟩,⟨⟨12,[8,5]⟩,13⟩,⟨⟨12,[8,5]⟩,14⟩,⟨⟨14,[6,5]⟩,15⟩,⟨⟨14,[7,5]⟩,15⟩,⟨⟨14,[8,5]⟩,15⟩,⟨⟨15,[0,6,5]⟩,20⟩,⟨⟨15,[0,6,5]⟩,21⟩,⟨⟨15,[0,7,5]⟩,20⟩,⟨⟨15,[0,7,5]⟩,21⟩,⟨⟨15,[0,8,5]⟩,20⟩,⟨⟨15,[0,8,5]⟩,21⟩,⟨⟨16,[]⟩,9⟩,⟨⟨16,[]⟩,10⟩,⟨⟨16,[]⟩,11⟩,⟨⟨16,[]⟩,12⟩,⟨⟨16,[]⟩,13⟩,⟨⟨16,[]⟩,14⟩,⟨⟨16,[]⟩,18⟩,⟨⟨17,[1]⟩,3⟩,⟨⟨17,[1]⟩,4⟩,⟨⟨17,[1]⟩,5⟩,⟨⟨17,[1]⟩,6⟩,⟨⟨17,[1]⟩,7⟩,⟨⟨17,[1]⟩,8⟩,⟨⟨17,[2]⟩,17⟩,⟨⟨18,[3,1]⟩,20⟩,⟨⟨18,[3,1]⟩,21⟩,⟨⟨18,[4,2]⟩,1⟩,⟨⟨19,[3,1]⟩,15⟩,⟨⟨19,[4,2]⟩,16⟩,⟨⟨20,[4,2]⟩,19⟩,⟨⟨20,[4,2]⟩,20⟩,⟨⟨20,[4,2]⟩,21⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[49],[10],[12],[11],[11],[13],[14],[15],[62],[18,20],[17],[22],[22],[24],[24],[26],[26],[28],[29],[30],[31],[32],[33],[43],[44],[45],[46],[47],[48],[37,38],[39,40],[41,42],[63],[64],[18,20],[19,21],[16],[17],[50],[51],[52],[53],[54],[55],[56],[57,58],[58],[57,58],[57],[57,58],[57],[59],[60],[60],[61],[34,35,36],[6],[7],[8],[9]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 5=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<65 := hi
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
end Certgen.R302
