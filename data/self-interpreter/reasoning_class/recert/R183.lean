import Regular
namespace Certgen.R183
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 18,.lam 10,.app 11 17,.app 12 16,.app 13 14,.var 0,.lam 15,.var 1,.opaque,.opaque,.app 19 20,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨20,[3]⟩],[⟨7,[]⟩],[⟨20,[4]⟩],[⟨14,[5,3]⟩,⟨14,[6,4]⟩],[⟨5,[1]⟩],[⟨18,[3]⟩],[⟨18,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨17,[5,3]⟩,5⟩,⟨⟨17,[5,3]⟩,6⟩],[⟨⟨17,[6,4]⟩,1⟩],[⟨⟨16,[5,3]⟩,3⟩],[⟨⟨16,[6,4]⟩,4⟩],[⟨⟨14,[5,3]⟩,5⟩],[⟨⟨14,[6,4]⟩,6⟩],[⟨⟨20,[3]⟩,7⟩],[⟨⟨20,[4]⟩,7⟩],[⟨⟨20,[4]⟩,8⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨18,[3]⟩,5⟩,⟨⟨18,[3]⟩,6⟩],[⟨⟨18,[4]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,12⟩,⟨⟨5,[1]⟩,10⟩,⟨⟨5,[1]⟩,11⟩,⟨⟨6,[2,1]⟩,7⟩,⟨⟨6,[2,1]⟩,8⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,12⟩,⟨⟨8,[3]⟩,5⟩,⟨⟨8,[3]⟩,6⟩,⟨⟨8,[4]⟩,1⟩,⟨⟨9,[3]⟩,13⟩,⟨⟨9,[4]⟩,14⟩,⟨⟨10,[5,3]⟩,5⟩,⟨⟨10,[5,3]⟩,6⟩,⟨⟨10,[6,4]⟩,1⟩,⟨⟨11,[5,3]⟩,3⟩,⟨⟨11,[6,4]⟩,4⟩,⟨⟨12,[5,3]⟩,5⟩,⟨⟨12,[6,4]⟩,6⟩,⟨⟨13,[5,3]⟩,7⟩,⟨⟨13,[6,4]⟩,8⟩,⟨⟨14,[5,3]⟩,9⟩,⟨⟨14,[6,4]⟩,9⟩,⟨⟨15,[0,5,3]⟩,7⟩,⟨⟨15,[0,6,4]⟩,7⟩,⟨⟨18,[3]⟩,7⟩,⟨⟨18,[4]⟩,7⟩,⟨⟨18,[4]⟩,8⟩,⟨⟨19,[3]⟩,9⟩,⟨⟨19,[4]⟩,10⟩,⟨⟨19,[4]⟩,11⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[7],[8],[9],[10],[12],[13],[14],[15],[15],[16],[17,18],[19],[20],[20],[21],[22],[23],[24],[25],[30],[32],[28],[29],[30],[31],[33],[34],[35],[26,27],[5],[6]]
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
end Certgen.R183
