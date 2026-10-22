import Regular
namespace Certgen.R242
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 20,.app 10 17,.lam 11,.app 12 16,.app 13 14,.var 0,.lam 15,.var 1,.opaque,.app 18 19,.var 0,.opaque,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[5]⟩],[⟨17,[6]⟩],[⟨19,[5]⟩],[⟨7,[]⟩],[⟨19,[6]⟩],[⟨14,[0,5]⟩,⟨14,[1,6]⟩],[⟨5,[3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨16,[0,5]⟩,11⟩],[⟨⟨16,[1,6]⟩,12⟩],[⟨⟨14,[0,5]⟩,3⟩],[⟨⟨14,[1,6]⟩,4⟩],[⟨⟨19,[5]⟩,5⟩],[⟨⟨19,[6]⟩,6⟩],[⟨⟨19,[6]⟩,5⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨20,[5]⟩,3⟩,⟨⟨20,[5]⟩,4⟩],[⟨⟨20,[6]⟩,1⟩],[⟨⟨17,[5]⟩,11⟩],[⟨⟨17,[6]⟩,12⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,10⟩,⟨⟨5,[3]⟩,8⟩,⟨⟨5,[3]⟩,9⟩,⟨⟨6,[4,3]⟩,5⟩,⟨⟨6,[4,3]⟩,6⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,10⟩,⟨⟨8,[5]⟩,3⟩,⟨⟨8,[5]⟩,4⟩,⟨⟨8,[6]⟩,1⟩,⟨⟨9,[5]⟩,11⟩,⟨⟨9,[6]⟩,12⟩,⟨⟨10,[5]⟩,13⟩,⟨⟨10,[6]⟩,14⟩,⟨⟨11,[0,5]⟩,11⟩,⟨⟨11,[1,6]⟩,12⟩,⟨⟨12,[0,5]⟩,3⟩,⟨⟨12,[1,6]⟩,4⟩,⟨⟨13,[0,5]⟩,5⟩,⟨⟨13,[1,6]⟩,6⟩,⟨⟨14,[0,5]⟩,7⟩,⟨⟨14,[1,6]⟩,7⟩,⟨⟨15,[2,0,5]⟩,5⟩,⟨⟨15,[2,1,6]⟩,5⟩,⟨⟨17,[5]⟩,5⟩,⟨⟨17,[6]⟩,5⟩,⟨⟨17,[6]⟩,6⟩,⟨⟨18,[5]⟩,7⟩,⟨⟨18,[6]⟩,8⟩,⟨⟨18,[6]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[8],[7],[9],[10],[12],[13],[14],[15],[15],[16],[17],[18],[19],[20],[21],[22],[23],[24],[29],[31],[27],[28],[29],[30],[32],[34],[33],[25,26],[5],[6]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<35 := hi
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
end Certgen.R242
