import Regular
namespace Certgen.R117
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 17,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 14,.lam 10,.app 11 12,.var 0,.lam 13,.var 1,.app 15 16,.var 0,.opaque,.lam 18,.app 19 24,.app 20 21,.var 0,.lam 22,.lam 23,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[3]⟩],[⟨7,[]⟩],[⟨16,[4]⟩],[⟨12,[5,3]⟩,⟨12,[6,4]⟩],[⟨5,[1]⟩],[⟨14,[3]⟩],[⟨14,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨17,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[5,3]⟩,1⟩],[⟨⟨12,[6,4]⟩,1⟩],[⟨⟨16,[3]⟩,3⟩],[⟨⟨16,[4]⟩,3⟩],[⟨⟨16,[4]⟩,4⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨14,[3]⟩,1⟩],[⟨⟨14,[4]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,8⟩,⟨⟨5,[1]⟩,6⟩,⟨⟨5,[1]⟩,7⟩,⟨⟨6,[2,1]⟩,3⟩,⟨⟨6,[2,1]⟩,4⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,8⟩,⟨⟨8,[3]⟩,1⟩,⟨⟨8,[4]⟩,1⟩,⟨⟨9,[3]⟩,9⟩,⟨⟨9,[4]⟩,10⟩,⟨⟨10,[5,3]⟩,1⟩,⟨⟨10,[6,4]⟩,1⟩,⟨⟨11,[5,3]⟩,3⟩,⟨⟨11,[6,4]⟩,4⟩,⟨⟨12,[5,3]⟩,5⟩,⟨⟨12,[6,4]⟩,5⟩,⟨⟨13,[0,5,3]⟩,3⟩,⟨⟨13,[0,6,4]⟩,3⟩,⟨⟨14,[3]⟩,3⟩,⟨⟨14,[4]⟩,3⟩,⟨⟨14,[4]⟩,4⟩,⟨⟨15,[3]⟩,5⟩,⟨⟨15,[4]⟩,6⟩,⟨⟨15,[4]⟩,7⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[7],[8],[9],[10],[12],[12],[13],[14],[15],[16],[17],[18],[19],[24],[26],[22],[23],[24],[25],[27],[28],[29],[20,21],[5],[6]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 6=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<30 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 exact range_sound block24 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R117
