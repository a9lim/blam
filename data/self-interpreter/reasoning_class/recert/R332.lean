import Regular
namespace Certgen.R332
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 12,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.app 8 11,.app 9 10,.var 0,.opaque,.var 0,.lam 13,.lam 14,.app 15 16,.var 0,.app 17 18,.var 0,.lam 19,.var 1,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[6,2]⟩],[⟨6,[8]⟩],[⟨10,[8]⟩],[⟨16,[3,0]⟩,⟨16,[5,1]⟩],[⟨18,[3,0]⟩,⟨18,[5,1]⟩],[⟨7,[8]⟩],[⟨11,[8]⟩],[⟨16,[4,0]⟩],[⟨12,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨12,[]⟩,1⟩],[⟨⟨16,[3,0]⟩,1⟩],[⟨⟨16,[4,0]⟩,3⟩,⟨⟨16,[4,0]⟩,9⟩],[⟨⟨16,[5,1]⟩,1⟩],[⟨⟨16,[6,2]⟩,10⟩],[⟨⟨16,[6,2]⟩,5⟩],[⟨⟨16,[6,2]⟩,3⟩,⟨⟨16,[6,2]⟩,9⟩,⟨⟨16,[6,2]⟩,10⟩],[⟨⟨18,[3,0]⟩,3⟩,⟨⟨18,[3,0]⟩,9⟩],[⟨⟨18,[5,1]⟩,3⟩,⟨⟨18,[5,1]⟩,9⟩],[⟨⟨7,[8]⟩,1⟩],[⟨⟨6,[8]⟩,11⟩],[⟨⟨11,[8]⟩,10⟩],[⟨⟨11,[8]⟩,5⟩],[⟨⟨11,[8]⟩,3⟩,⟨⟨11,[8]⟩,9⟩,⟨⟨11,[8]⟩,10⟩],[⟨⟨10,[8]⟩,13⟩],[⟨⟨10,[8]⟩,14⟩],[⟨⟨10,[8]⟩,15⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[8]⟩,1⟩,⟨⟨4,[8]⟩,11⟩,⟨⟨5,[8]⟩,12⟩,⟨⟨7,[8]⟩,3⟩,⟨⟨7,[8]⟩,5⟩,⟨⟨7,[8]⟩,9⟩,⟨⟨7,[8]⟩,10⟩,⟨⟨8,[8]⟩,13⟩,⟨⟨8,[8]⟩,14⟩,⟨⟨8,[8]⟩,15⟩,⟨⟨9,[8]⟩,16⟩,⟨⟨9,[8]⟩,17⟩,⟨⟨9,[8]⟩,18⟩,⟨⟨11,[8]⟩,6⟩,⟨⟨11,[8]⟩,7⟩,⟨⟨11,[8]⟩,8⟩,⟨⟨12,[]⟩,6⟩,⟨⟨12,[]⟩,7⟩,⟨⟨12,[]⟩,8⟩,⟨⟨12,[]⟩,12⟩,⟨⟨12,[]⟩,16⟩,⟨⟨12,[]⟩,17⟩,⟨⟨12,[]⟩,18⟩,⟨⟨13,[0]⟩,3⟩,⟨⟨13,[0]⟩,5⟩,⟨⟨13,[0]⟩,9⟩,⟨⟨13,[0]⟩,10⟩,⟨⟨13,[1]⟩,11⟩,⟨⟨13,[2]⟩,13⟩,⟨⟨13,[2]⟩,14⟩,⟨⟨13,[2]⟩,15⟩,⟨⟨14,[3,0]⟩,1⟩,⟨⟨14,[4,0]⟩,3⟩,⟨⟨14,[4,0]⟩,9⟩,⟨⟨14,[5,1]⟩,1⟩,⟨⟨14,[6,2]⟩,3⟩,⟨⟨14,[6,2]⟩,5⟩,⟨⟨14,[6,2]⟩,9⟩,⟨⟨14,[6,2]⟩,10⟩,⟨⟨15,[3,0]⟩,3⟩,⟨⟨15,[4,0]⟩,4⟩,⟨⟨15,[5,1]⟩,5⟩,⟨⟨15,[6,2]⟩,6⟩,⟨⟨15,[6,2]⟩,7⟩,⟨⟨15,[6,2]⟩,8⟩,⟨⟨16,[3,0]⟩,3⟩,⟨⟨16,[3,0]⟩,9⟩,⟨⟨16,[5,1]⟩,3⟩,⟨⟨16,[5,1]⟩,9⟩,⟨⟨17,[3,0]⟩,9⟩,⟨⟨17,[5,1]⟩,10⟩,⟨⟨18,[3,0]⟩,4⟩,⟨⟨18,[5,1]⟩,4⟩,⟨⟨19,[7,3,0]⟩,3⟩,⟨⟨19,[7,3,0]⟩,9⟩,⟨⟨19,[7,5,1]⟩,3⟩,⟨⟨19,[7,5,1]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[22],[12],[11],[12],[10],[13],[14],[15],[23],[24],[25],[19],[20],[21],[29],[27],[26,28,29],[30],[31],[32],[33],[34],[34],[35,36],[35,36],[37],[41],[39],[38,40,41],[42],[43],[43],[44],[47],[46],[47],[45],[48,50],[54,55],[7],[16],[17],[18],[52],[52],[53],[53],[49,51],[9],[56,57],[58,59],[48,50],[49,51],[6],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<60 := hi
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
end Certgen.R332
