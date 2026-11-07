import Regular
namespace Certgen.R329
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 10,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.app 8 9,.var 0,.opaque,.lam 11,.lam 12,.app 13 14,.var 0,.app 15 20,.app 16 17,.var 0,.lam 18,.lam 19,.var 2,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨6,[7]⟩],[⟨9,[7]⟩],[⟨14,[2,1]⟩,⟨14,[4,0]⟩],[⟨17,[2,1]⟩,⟨17,[4,0]⟩],[⟨7,[7]⟩],[⟨14,[3,1]⟩],[⟨20,[2,1]⟩,⟨20,[4,0]⟩],[⟨10,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨10,[]⟩,1⟩],[⟨⟨14,[2,1]⟩,1⟩],[⟨⟨14,[3,1]⟩,8⟩],[⟨⟨14,[3,1]⟩,7⟩,⟨⟨14,[3,1]⟩,8⟩],[⟨⟨14,[4,0]⟩,1⟩],[⟨⟨20,[2,1]⟩,3⟩,⟨⟨20,[2,1]⟩,9⟩],[⟨⟨20,[4,0]⟩,3⟩,⟨⟨20,[4,0]⟩,9⟩],[⟨⟨17,[2,1]⟩,7⟩],[⟨⟨17,[4,0]⟩,8⟩],[⟨⟨7,[7]⟩,1⟩],[⟨⟨6,[7]⟩,11⟩],[⟨⟨9,[7]⟩,10⟩],[⟨⟨9,[7]⟩,6⟩],[⟨⟨9,[7]⟩,3⟩,⟨⟨9,[7]⟩,9⟩,⟨⟨9,[7]⟩,10⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[7]⟩,1⟩,⟨⟨4,[7]⟩,11⟩,⟨⟨5,[7]⟩,12⟩,⟨⟨7,[7]⟩,3⟩,⟨⟨7,[7]⟩,6⟩,⟨⟨7,[7]⟩,9⟩,⟨⟨7,[7]⟩,10⟩,⟨⟨8,[7]⟩,13⟩,⟨⟨8,[7]⟩,14⟩,⟨⟨8,[7]⟩,15⟩,⟨⟨10,[]⟩,12⟩,⟨⟨10,[]⟩,13⟩,⟨⟨10,[]⟩,14⟩,⟨⟨10,[]⟩,15⟩,⟨⟨11,[0]⟩,11⟩,⟨⟨11,[1]⟩,3⟩,⟨⟨11,[1]⟩,6⟩,⟨⟨11,[1]⟩,9⟩,⟨⟨11,[1]⟩,10⟩,⟨⟨12,[2,1]⟩,1⟩,⟨⟨12,[3,1]⟩,7⟩,⟨⟨12,[3,1]⟩,8⟩,⟨⟨12,[4,0]⟩,1⟩,⟨⟨13,[2,1]⟩,3⟩,⟨⟨13,[3,1]⟩,4⟩,⟨⟨13,[3,1]⟩,5⟩,⟨⟨13,[4,0]⟩,6⟩,⟨⟨14,[2,1]⟩,3⟩,⟨⟨14,[2,1]⟩,9⟩,⟨⟨14,[4,0]⟩,3⟩,⟨⟨14,[4,0]⟩,9⟩,⟨⟨15,[2,1]⟩,7⟩,⟨⟨15,[4,0]⟩,8⟩,⟨⟨16,[2,1]⟩,9⟩,⟨⟨16,[4,0]⟩,10⟩,⟨⟨17,[2,1]⟩,4⟩,⟨⟨17,[2,1]⟩,5⟩,⟨⟨17,[4,0]⟩,4⟩,⟨⟨17,[4,0]⟩,5⟩,⟨⟨18,[5,2,1]⟩,7⟩,⟨⟨18,[5,2,1]⟩,8⟩,⟨⟨18,[5,4,0]⟩,7⟩,⟨⟨18,[5,4,0]⟩,8⟩,⟨⟨19,[6,5,2,1]⟩,3⟩,⟨⟨19,[6,5,2,1]⟩,9⟩,⟨⟨19,[6,5,4,0]⟩,3⟩,⟨⟨19,[6,5,4,0]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[13],[12],[11],[12],[10],[14],[15],[16],[17],[21],[19],[18,20,21],[25],[22],[22],[23],[24],[26],[28],[27],[29],[30,32],[38,40],[39,41],[7],[34],[34],[35],[35],[36],[37],[31,33],[9],[43],[42,43],[45],[44,45],[46,47],[46,47],[48,49],[48,49],[30,32],[31,33],[6],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 2=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<50 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 exact range_sound block48 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R329
