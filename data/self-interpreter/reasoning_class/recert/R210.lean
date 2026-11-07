import Regular
namespace Certgen.R210
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 18,.app 9 14,.lam 10,.app 11 12,.var 0,.lam 13,.var 1,.app 15 16,.var 0,.lam 17,.var 1,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[3]⟩],[⟨16,[4]⟩],[⟨6,[]⟩],[⟨12,[6,3]⟩,⟨12,[7,4]⟩],[⟨16,[5]⟩],[⟨5,[2]⟩],[⟨14,[3]⟩],[⟨14,[4]⟩],[⟨14,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[6,3]⟩,11⟩],[⟨⟨12,[7,4]⟩,12⟩],[⟨⟨12,[8,5]⟩,13⟩],[⟨⟨16,[3]⟩,3⟩],[⟨⟨16,[4]⟩,3⟩],[⟨⟨16,[4]⟩,4⟩],[⟨⟨16,[5]⟩,5⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨18,[3]⟩,11⟩,⟨⟨18,[3]⟩,12⟩],[⟨⟨18,[4]⟩,5⟩],[⟨⟨18,[5]⟩,1⟩],[⟨⟨14,[3]⟩,11⟩],[⟨⟨14,[4]⟩,12⟩],[⟨⟨14,[5]⟩,13⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,10⟩,⟨⟨5,[2]⟩,3⟩,⟨⟨5,[2]⟩,4⟩,⟨⟨5,[2]⟩,9⟩,⟨⟨6,[]⟩,3⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,10⟩,⟨⟨7,[3]⟩,11⟩,⟨⟨7,[3]⟩,12⟩,⟨⟨7,[4]⟩,5⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨8,[3]⟩,11⟩,⟨⟨8,[4]⟩,12⟩,⟨⟨8,[5]⟩,13⟩,⟨⟨9,[3]⟩,14⟩,⟨⟨9,[4]⟩,15⟩,⟨⟨9,[5]⟩,16⟩,⟨⟨10,[6,3]⟩,11⟩,⟨⟨10,[7,4]⟩,12⟩,⟨⟨10,[8,5]⟩,13⟩,⟨⟨11,[6,3]⟩,3⟩,⟨⟨11,[7,4]⟩,4⟩,⟨⟨11,[8,5]⟩,5⟩,⟨⟨12,[6,3]⟩,6⟩,⟨⟨12,[7,4]⟩,6⟩,⟨⟨13,[0,6,3]⟩,3⟩,⟨⟨13,[0,7,4]⟩,3⟩,⟨⟨14,[3]⟩,3⟩,⟨⟨14,[4]⟩,3⟩,⟨⟨14,[4]⟩,4⟩,⟨⟨14,[5]⟩,5⟩,⟨⟨15,[3]⟩,6⟩,⟨⟨15,[4]⟩,7⟩,⟨⟨15,[4]⟩,8⟩,⟨⟨15,[5]⟩,9⟩,⟨⟨16,[5]⟩,7⟩,⟨⟨16,[5]⟩,8⟩,⟨⟨17,[1,5]⟩,3⟩,⟨⟨17,[1,5]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[8],[9],[10],[12],[13],[14],[15],[16],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[32],[34],[35],[30],[31],[32],[33],[36],[37],[38],[39],[28,29],[40],[41],[7],[42],[43],[5],[6]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 8=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<44 := hi
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
end Certgen.R210
