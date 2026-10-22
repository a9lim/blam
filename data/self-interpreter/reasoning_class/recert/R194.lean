import Regular
namespace Certgen.R194
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 19,.app 10 16,.lam 11,.lam 12,.app 13 14,.var 1,.lam 15,.var 2,.app 17 18,.var 0,.opaque,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[6]⟩],[⟨16,[7]⟩],[⟨19,[6]⟩,⟨19,[7]⟩],[⟨18,[6]⟩],[⟨7,[]⟩],[⟨18,[7]⟩],[⟨14,[2,0,6]⟩,⟨14,[2,1,7]⟩],[⟨5,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨14,[2,0,6]⟩,1⟩],[⟨⟨14,[2,1,7]⟩,1⟩],[⟨⟨18,[6]⟩,3⟩],[⟨⟨18,[7]⟩,4⟩],[⟨⟨18,[7]⟩,3⟩],[⟨⟨5,[4]⟩,1⟩],[⟨⟨19,[6]⟩,1⟩],[⟨⟨19,[7]⟩,1⟩],[⟨⟨16,[6]⟩,9⟩],[⟨⟨16,[7]⟩,10⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,8⟩,⟨⟨5,[4]⟩,6⟩,⟨⟨5,[4]⟩,7⟩,⟨⟨6,[5,4]⟩,3⟩,⟨⟨6,[5,4]⟩,4⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,8⟩,⟨⟨8,[6]⟩,1⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨9,[6]⟩,9⟩,⟨⟨9,[7]⟩,10⟩,⟨⟨10,[6]⟩,11⟩,⟨⟨10,[7]⟩,12⟩,⟨⟨11,[0,6]⟩,9⟩,⟨⟨11,[1,7]⟩,10⟩,⟨⟨12,[2,0,6]⟩,1⟩,⟨⟨12,[2,1,7]⟩,1⟩,⟨⟨13,[2,0,6]⟩,3⟩,⟨⟨13,[2,1,7]⟩,4⟩,⟨⟨14,[2,0,6]⟩,5⟩,⟨⟨14,[2,1,7]⟩,5⟩,⟨⟨15,[3,2,0,6]⟩,3⟩,⟨⟨15,[3,2,1,7]⟩,3⟩,⟨⟨16,[6]⟩,3⟩,⟨⟨16,[7]⟩,3⟩,⟨⟨16,[7]⟩,4⟩,⟨⟨17,[6]⟩,5⟩,⟨⟨17,[7]⟩,6⟩,⟨⟨17,[7]⟩,7⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[8],[7],[9],[10],[12],[12],[13],[14],[15],[16],[17],[18],[19],[20],[21],[22],[23],[28],[30],[26],[27],[28],[29],[31],[33],[32],[24,25],[5],[6]]
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
end Certgen.R194
