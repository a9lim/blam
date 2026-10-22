import Regular
namespace Certgen.R126
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 9,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.lam 8,.var 1,.lam 10,.app 11 16,.lam 12,.app 13 14,.var 0,.lam 15,.var 1,.app 17 18,.var 0,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[6]⟩],[⟨16,[7]⟩],[⟨16,[8]⟩],[⟨18,[6]⟩],[⟨9,[]⟩],[⟨18,[8]⟩],[⟨14,[0,6]⟩,⟨14,[2,8]⟩],[⟨5,[4]⟩],[⟨7,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨9,[]⟩,1⟩],[⟨⟨16,[6]⟩,10⟩],[⟨⟨16,[7]⟩,1⟩],[⟨⟨16,[8]⟩,10⟩],[⟨⟨14,[0,6]⟩,10⟩],[⟨⟨14,[1,7]⟩,1⟩],[⟨⟨14,[2,8]⟩,10⟩],[⟨⟨18,[6]⟩,6⟩],[⟨⟨18,[7]⟩,7⟩],[⟨⟨18,[8]⟩,8⟩],[⟨⟨18,[8]⟩,6⟩],[⟨⟨5,[4]⟩,1⟩],[⟨⟨7,[4]⟩,10⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,13⟩,⟨⟨5,[4]⟩,10⟩,⟨⟨6,[4]⟩,14⟩,⟨⟨7,[4]⟩,11⟩,⟨⟨7,[4]⟩,12⟩,⟨⟨8,[5,4]⟩,6⟩,⟨⟨8,[5,4]⟩,8⟩,⟨⟨9,[]⟩,6⟩,⟨⟨9,[]⟩,8⟩,⟨⟨9,[]⟩,13⟩,⟨⟨9,[]⟩,14⟩,⟨⟨10,[6]⟩,10⟩,⟨⟨10,[7]⟩,1⟩,⟨⟨10,[8]⟩,10⟩,⟨⟨11,[6]⟩,3⟩,⟨⟨11,[7]⟩,4⟩,⟨⟨11,[8]⟩,5⟩,⟨⟨12,[0,6]⟩,10⟩,⟨⟨12,[1,7]⟩,1⟩,⟨⟨12,[2,8]⟩,10⟩,⟨⟨13,[0,6]⟩,6⟩,⟨⟨13,[1,7]⟩,7⟩,⟨⟨13,[2,8]⟩,8⟩,⟨⟨14,[0,6]⟩,9⟩,⟨⟨14,[2,8]⟩,9⟩,⟨⟨15,[3,0,6]⟩,6⟩,⟨⟨15,[3,2,8]⟩,6⟩,⟨⟨16,[6]⟩,6⟩,⟨⟨16,[7]⟩,7⟩,⟨⟨16,[8]⟩,6⟩,⟨⟨16,[8]⟩,8⟩,⟨⟨17,[6]⟩,9⟩,⟨⟨17,[7]⟩,10⟩,⟨⟨17,[8]⟩,11⟩,⟨⟨17,[8]⟩,12⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[6],[14],[10],[9],[11],[12],[15],[15],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[31],[32],[34],[29],[30],[31],[33],[35],[36],[38],[37],[27,28],[5],[7],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 3=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<39 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 exact range_sound block36 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R126
