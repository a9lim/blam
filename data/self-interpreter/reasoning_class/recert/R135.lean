import Regular
namespace Certgen.R135
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 14,.lam 10,.app 11 12,.var 0,.lam 13,.var 1,.app 15 19,.lam 16,.app 17 18,.var 1,.opaque,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[1,4]⟩],[⟨19,[4]⟩,⟨19,[5]⟩],[⟨7,[]⟩],[⟨18,[1,5]⟩],[⟨12,[6,4]⟩,⟨12,[7,5]⟩],[⟨5,[2]⟩],[⟨14,[4]⟩],[⟨14,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[6,4]⟩,1⟩],[⟨⟨12,[7,5]⟩,1⟩],[⟨⟨19,[4]⟩,3⟩],[⟨⟨19,[5]⟩,3⟩],[⟨⟨19,[5]⟩,4⟩],[⟨⟨18,[1,4]⟩,3⟩],[⟨⟨18,[1,5]⟩,3⟩],[⟨⟨18,[1,5]⟩,4⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨14,[4]⟩,1⟩],[⟨⟨14,[5]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,11⟩,⟨⟨5,[2]⟩,9⟩,⟨⟨5,[2]⟩,10⟩,⟨⟨6,[3,2]⟩,3⟩,⟨⟨6,[3,2]⟩,4⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,11⟩,⟨⟨8,[4]⟩,1⟩,⟨⟨8,[5]⟩,1⟩,⟨⟨9,[4]⟩,12⟩,⟨⟨9,[5]⟩,13⟩,⟨⟨10,[6,4]⟩,1⟩,⟨⟨10,[7,5]⟩,1⟩,⟨⟨11,[6,4]⟩,3⟩,⟨⟨11,[7,5]⟩,4⟩,⟨⟨12,[6,4]⟩,8⟩,⟨⟨12,[7,5]⟩,8⟩,⟨⟨13,[0,6,4]⟩,3⟩,⟨⟨13,[0,7,5]⟩,3⟩,⟨⟨14,[4]⟩,3⟩,⟨⟨14,[5]⟩,3⟩,⟨⟨14,[5]⟩,4⟩,⟨⟨15,[4]⟩,5⟩,⟨⟨15,[5]⟩,6⟩,⟨⟨15,[5]⟩,7⟩,⟨⟨16,[1,4]⟩,3⟩,⟨⟨16,[1,5]⟩,3⟩,⟨⟨16,[1,5]⟩,4⟩,⟨⟨17,[1,4]⟩,8⟩,⟨⟨17,[1,5]⟩,9⟩,⟨⟨17,[1,5]⟩,10⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[7],[8],[9],[10],[12],[12],[13],[14],[15],[16],[17],[18],[19],[24],[26],[22],[23],[24],[25],[27],[28],[29],[30],[31],[32],[33],[34],[35],[20,21],[5],[6]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<36 := hi
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
end Certgen.R135
