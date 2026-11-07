import Regular
namespace Certgen.R161
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 16,.lam 10,.app 11 15,.app 12 13,.var 0,.lam 14,.var 1,.opaque,.app 17 18,.var 0,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[3]⟩],[⟨7,[]⟩],[⟨18,[4]⟩],[⟨13,[5,3]⟩,⟨13,[6,4]⟩],[⟨5,[1]⟩],[⟨16,[3]⟩],[⟨16,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨15,[5,3]⟩,3⟩,⟨⟨15,[5,3]⟩,4⟩],[⟨⟨15,[6,4]⟩,1⟩],[⟨⟨13,[5,3]⟩,3⟩],[⟨⟨13,[6,4]⟩,4⟩],[⟨⟨18,[3]⟩,5⟩],[⟨⟨18,[4]⟩,5⟩],[⟨⟨18,[4]⟩,6⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨16,[3]⟩,3⟩,⟨⟨16,[3]⟩,4⟩],[⟨⟨16,[4]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,10⟩,⟨⟨5,[1]⟩,8⟩,⟨⟨5,[1]⟩,9⟩,⟨⟨6,[2,1]⟩,5⟩,⟨⟨6,[2,1]⟩,6⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,10⟩,⟨⟨8,[3]⟩,3⟩,⟨⟨8,[3]⟩,4⟩,⟨⟨8,[4]⟩,1⟩,⟨⟨9,[3]⟩,11⟩,⟨⟨9,[4]⟩,12⟩,⟨⟨10,[5,3]⟩,3⟩,⟨⟨10,[5,3]⟩,4⟩,⟨⟨10,[6,4]⟩,1⟩,⟨⟨11,[5,3]⟩,3⟩,⟨⟨11,[6,4]⟩,4⟩,⟨⟨12,[5,3]⟩,5⟩,⟨⟨12,[6,4]⟩,6⟩,⟨⟨13,[5,3]⟩,7⟩,⟨⟨13,[6,4]⟩,7⟩,⟨⟨14,[0,5,3]⟩,5⟩,⟨⟨14,[0,6,4]⟩,5⟩,⟨⟨16,[3]⟩,5⟩,⟨⟨16,[4]⟩,5⟩,⟨⟨16,[4]⟩,6⟩,⟨⟨17,[3]⟩,7⟩,⟨⟨17,[4]⟩,8⟩,⟨⟨17,[4]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[7],[8],[9],[10],[12],[13],[14],[15],[15],[16],[17,18],[19],[20],[20],[21],[22],[23],[28],[30],[26],[27],[28],[29],[31],[32],[33],[24,25],[5],[6]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 10=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<34 := hi
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
end Certgen.R161
