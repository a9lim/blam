import Regular
namespace Certgen.R168
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 8,.lam 3,.app 4 5,.var 0,.lam 6,.lam 7,.var 2,.lam 9,.app 10 17,.lam 11,.app 12 15,.app 13 14,.var 0,.opaque,.lam 16,.var 1,.app 18 19,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[6]⟩],[⟨17,[7]⟩],[⟨19,[6]⟩],[⟨8,[]⟩],[⟨19,[7]⟩],[⟨14,[0,6]⟩,⟨14,[1,7]⟩],[⟨15,[0,6]⟩,⟨15,[1,7]⟩],[⟨5,[3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨15,[0,6]⟩,1⟩],[⟨⟨15,[1,7]⟩,1⟩],[⟨⟨14,[0,6]⟩,3⟩],[⟨⟨14,[1,7]⟩,4⟩],[⟨⟨19,[6]⟩,5⟩],[⟨⟨19,[7]⟩,6⟩],[⟨⟨19,[7]⟩,5⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨17,[6]⟩,1⟩],[⟨⟨17,[7]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,10⟩,⟨⟨5,[3]⟩,8⟩,⟨⟨5,[3]⟩,9⟩,⟨⟨6,[4,3]⟩,5⟩,⟨⟨6,[4,3]⟩,6⟩,⟨⟨7,[5,4,3]⟩,3⟩,⟨⟨7,[5,4,3]⟩,4⟩,⟨⟨8,[]⟩,3⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,10⟩,⟨⟨9,[6]⟩,1⟩,⟨⟨9,[7]⟩,1⟩,⟨⟨10,[6]⟩,11⟩,⟨⟨10,[7]⟩,12⟩,⟨⟨11,[0,6]⟩,1⟩,⟨⟨11,[1,7]⟩,1⟩,⟨⟨12,[0,6]⟩,3⟩,⟨⟨12,[1,7]⟩,4⟩,⟨⟨13,[0,6]⟩,5⟩,⟨⟨13,[1,7]⟩,6⟩,⟨⟨15,[0,6]⟩,7⟩,⟨⟨15,[1,7]⟩,7⟩,⟨⟨16,[2,0,6]⟩,5⟩,⟨⟨16,[2,1,7]⟩,5⟩,⟨⟨17,[6]⟩,5⟩,⟨⟨17,[7]⟩,5⟩,⟨⟨17,[7]⟩,6⟩,⟨⟨18,[6]⟩,7⟩,⟨⟨18,[7]⟩,8⟩,⟨⟨18,[7]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[8],[7],[9],[10],[11],[12],[14],[14],[15],[16],[17],[18],[19],[20],[21],[22],[23],[28],[30],[26],[27],[28],[29],[31],[33],[32],[24,25],[5],[6]]
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
end Certgen.R168
