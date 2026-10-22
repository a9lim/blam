import Regular
namespace Certgen.R222
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 18,.app 10 15,.lam 11,.app 12 13,.var 0,.lam 14,.var 1,.app 16 17,.var 0,.opaque,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[5]⟩],[⟨15,[6]⟩],[⟨17,[5]⟩],[⟨7,[]⟩],[⟨17,[6]⟩],[⟨13,[0,5]⟩,⟨13,[1,6]⟩],[⟨5,[3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨13,[0,5]⟩,9⟩],[⟨⟨13,[1,6]⟩,10⟩],[⟨⟨17,[5]⟩,3⟩],[⟨⟨17,[6]⟩,4⟩],[⟨⟨17,[6]⟩,3⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨18,[5]⟩,9⟩,⟨⟨18,[5]⟩,10⟩],[⟨⟨18,[6]⟩,1⟩],[⟨⟨15,[5]⟩,9⟩],[⟨⟨15,[6]⟩,10⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,8⟩,⟨⟨5,[3]⟩,6⟩,⟨⟨5,[3]⟩,7⟩,⟨⟨6,[4,3]⟩,3⟩,⟨⟨6,[4,3]⟩,4⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,8⟩,⟨⟨8,[5]⟩,9⟩,⟨⟨8,[5]⟩,10⟩,⟨⟨8,[6]⟩,1⟩,⟨⟨9,[5]⟩,9⟩,⟨⟨9,[6]⟩,10⟩,⟨⟨10,[5]⟩,11⟩,⟨⟨10,[6]⟩,12⟩,⟨⟨11,[0,5]⟩,9⟩,⟨⟨11,[1,6]⟩,10⟩,⟨⟨12,[0,5]⟩,3⟩,⟨⟨12,[1,6]⟩,4⟩,⟨⟨13,[0,5]⟩,5⟩,⟨⟨13,[1,6]⟩,5⟩,⟨⟨14,[2,0,5]⟩,3⟩,⟨⟨14,[2,1,6]⟩,3⟩,⟨⟨15,[5]⟩,3⟩,⟨⟨15,[6]⟩,3⟩,⟨⟨15,[6]⟩,4⟩,⟨⟨16,[5]⟩,5⟩,⟨⟨16,[6]⟩,6⟩,⟨⟨16,[6]⟩,7⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[8],[7],[9],[10],[12],[13],[14],[15],[15],[16],[17],[18],[19],[20],[21],[22],[27],[29],[25],[26],[27],[28],[30],[32],[31],[23,24],[5],[6]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 9=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<33 := hi
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
end Certgen.R222
