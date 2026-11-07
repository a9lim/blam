import Regular
namespace Certgen.R076
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 18,.lam 3,.lam 4,.app 5 9,.lam 6,.app 7 8,.var 0,.var 0,.lam 10,.app 11 15,.app 12 13,.var 0,.lam 14,.var 1,.app 16 17,.var 0,.opaque,.lam 19,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨13,[7,3,2]⟩,⟨13,[8,3,2]⟩],[⟨17,[7,3,2]⟩,⟨17,[8,3,2]⟩],[⟨18,[]⟩],[⟨20,[]⟩],[⟨9,[3,2]⟩],[⟨15,[8,3,2]⟩],[⟨15,[7,3,2]⟩],[⟨13,[5,3,2]⟩,⟨13,[6,3,2]⟩],[⟨13,[9,3,2]⟩],[⟨8,[4,3,2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨18,[]⟩,1⟩],[⟨⟨15,[5,3,2]⟩,7⟩],[⟨⟨15,[6,3,2]⟩,3⟩,⟨⟨15,[6,3,2]⟩,4⟩],[⟨⟨15,[7,3,2]⟩,3⟩,⟨⟨15,[7,3,2]⟩,4⟩],[⟨⟨15,[8,3,2]⟩,7⟩],[⟨⟨15,[9,3,2]⟩,0⟩],[⟨⟨13,[5,3,2]⟩,3⟩],[⟨⟨13,[6,3,2]⟩,4⟩],[⟨⟨13,[7,3,2]⟩,5⟩],[⟨⟨13,[8,3,2]⟩,6⟩],[⟨⟨13,[9,3,2]⟩,7⟩],[⟨⟨17,[7,3,2]⟩,5⟩],[⟨⟨17,[7,3,2]⟩,5⟩,⟨⟨17,[7,3,2]⟩,9⟩],[⟨⟨17,[7,3,2]⟩,9⟩],[⟨⟨17,[8,3,2]⟩,5⟩],[⟨⟨17,[8,3,2]⟩,5⟩,⟨⟨17,[8,3,2]⟩,9⟩],[⟨⟨17,[8,3,2]⟩,9⟩],[⟨⟨17,[8,3,2]⟩,8⟩],[⟨⟨9,[3,2]⟩,0⟩],[⟨⟨8,[4,3,2]⟩,0⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[3,2]⟩,0⟩,⟨⟨5,[3,2]⟩,20⟩,⟨⟨6,[4,3,2]⟩,0⟩,⟨⟨7,[4,3,2]⟩,21⟩,⟨⟨8,[4,3,2]⟩,5⟩,⟨⟨8,[4,3,2]⟩,6⟩,⟨⟨8,[4,3,2]⟩,8⟩,⟨⟨8,[4,3,2]⟩,9⟩,⟨⟨8,[4,3,2]⟩,12⟩,⟨⟨9,[3,2]⟩,5⟩,⟨⟨9,[3,2]⟩,6⟩,⟨⟨9,[3,2]⟩,8⟩,⟨⟨9,[3,2]⟩,9⟩,⟨⟨9,[3,2]⟩,12⟩,⟨⟨9,[3,2]⟩,21⟩,⟨⟨10,[5,3,2]⟩,7⟩,⟨⟨10,[6,3,2]⟩,3⟩,⟨⟨10,[6,3,2]⟩,4⟩,⟨⟨10,[7,3,2]⟩,3⟩,⟨⟨10,[7,3,2]⟩,4⟩,⟨⟨10,[8,3,2]⟩,7⟩,⟨⟨10,[9,3,2]⟩,0⟩,⟨⟨11,[5,3,2]⟩,3⟩,⟨⟨11,[6,3,2]⟩,4⟩,⟨⟨11,[7,3,2]⟩,5⟩,⟨⟨11,[8,3,2]⟩,6⟩,⟨⟨11,[9,3,2]⟩,7⟩,⟨⟨12,[5,3,2]⟩,8⟩,⟨⟨12,[6,3,2]⟩,9⟩,⟨⟨12,[7,3,2]⟩,10⟩,⟨⟨12,[8,3,2]⟩,11⟩,⟨⟨12,[9,3,2]⟩,12⟩,⟨⟨13,[5,3,2]⟩,10⟩,⟨⟨13,[5,3,2]⟩,13⟩,⟨⟨13,[5,3,2]⟩,14⟩,⟨⟨13,[5,3,2]⟩,15⟩,⟨⟨13,[6,3,2]⟩,10⟩,⟨⟨13,[6,3,2]⟩,13⟩,⟨⟨13,[6,3,2]⟩,14⟩,⟨⟨13,[6,3,2]⟩,15⟩,⟨⟨13,[9,3,2]⟩,11⟩,⟨⟨13,[9,3,2]⟩,16⟩,⟨⟨13,[9,3,2]⟩,17⟩,⟨⟨13,[9,3,2]⟩,18⟩,⟨⟨13,[9,3,2]⟩,19⟩,⟨⟨14,[0,5,3,2]⟩,5⟩,⟨⟨14,[0,6,3,2]⟩,5⟩,⟨⟨14,[0,9,3,2]⟩,6⟩,⟨⟨14,[1,5,3,2]⟩,5⟩,⟨⟨14,[1,5,3,2]⟩,9⟩,⟨⟨14,[1,6,3,2]⟩,5⟩,⟨⟨14,[1,6,3,2]⟩,9⟩,⟨⟨14,[1,9,3,2]⟩,5⟩,⟨⟨14,[1,9,3,2]⟩,8⟩,⟨⟨14,[1,9,3,2]⟩,9⟩,⟨⟨15,[7,3,2]⟩,5⟩,⟨⟨15,[7,3,2]⟩,9⟩,⟨⟨15,[8,3,2]⟩,5⟩,⟨⟨15,[8,3,2]⟩,8⟩,⟨⟨15,[8,3,2]⟩,9⟩,⟨⟨16,[7,3,2]⟩,13⟩,⟨⟨16,[7,3,2]⟩,14⟩,⟨⟨16,[7,3,2]⟩,15⟩,⟨⟨16,[8,3,2]⟩,16⟩,⟨⟨16,[8,3,2]⟩,17⟩,⟨⟨16,[8,3,2]⟩,18⟩,⟨⟨16,[8,3,2]⟩,19⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[18],[13],[14],[15],[16],[17],[20,21],[19],[22],[23],[24],[25],[26],[27],[27],[28],[28],[29],[30],[31],[32],[33],[34],[35],[62],[60],[36,40],[44],[12],[49],[52],[52,53],[53],[50],[54],[54,55],[55],[51],[56],[56,58],[58],[57],[61],[59],[9],[61],[63],[59],[60],[8],[10],[11],[64],[65],[67],[70],[68],[37,41],[38,42],[39,43],[45],[46],[47],[48]]
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
end Certgen.R076
