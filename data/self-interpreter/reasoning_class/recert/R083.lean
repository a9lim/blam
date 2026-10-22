import Regular
namespace Certgen.R083
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 15,.app 3 14,.lam 4,.lam 5,.lam 6,.app 7 8,.var 1,.lam 9,.app 10 11,.var 2,.app 12 13,.var 0,.opaque,.opaque,.lam 16,.app 17 18,.var 0,.lam 19,.var 1,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨8,[5,4,3]⟩],[⟨11,[6,5,4,3]⟩,⟨11,[7,5,4,3]⟩],[⟨13,[6,5,4,3]⟩,⟨13,[7,5,4,3]⟩],[⟨14,[]⟩],[⟨15,[]⟩],[⟨20,[]⟩],[⟨18,[0]⟩],[⟨18,[1]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨15,[]⟩,1⟩],[⟨⟨13,[6,5,4,3]⟩,6⟩],[⟨⟨13,[7,5,4,3]⟩,6⟩],[⟨⟨18,[0]⟩,0⟩],[⟨⟨18,[1]⟩,0⟩],[⟨⟨14,[]⟩,2⟩],[⟨⟨8,[5,4,3]⟩,0⟩],[⟨⟨11,[6,5,4,3]⟩,0⟩],[⟨⟨11,[7,5,4,3]⟩,0⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,7⟩,⟨⟨4,[3]⟩,2⟩,⟨⟨5,[4,3]⟩,1⟩,⟨⟨6,[5,4,3]⟩,0⟩,⟨⟨7,[5,4,3]⟩,8⟩,⟨⟨8,[5,4,3]⟩,5⟩,⟨⟨8,[5,4,3]⟩,6⟩,⟨⟨9,[6,5,4,3]⟩,0⟩,⟨⟨9,[7,5,4,3]⟩,0⟩,⟨⟨10,[6,5,4,3]⟩,9⟩,⟨⟨10,[7,5,4,3]⟩,10⟩,⟨⟨11,[6,5,4,3]⟩,6⟩,⟨⟨11,[7,5,4,3]⟩,6⟩,⟨⟨12,[6,5,4,3]⟩,3⟩,⟨⟨12,[7,5,4,3]⟩,4⟩,⟨⟨15,[]⟩,8⟩,⟨⟨15,[]⟩,9⟩,⟨⟨15,[]⟩,10⟩,⟨⟨16,[0]⟩,0⟩,⟨⟨16,[1]⟩,0⟩,⟨⟨17,[0]⟩,5⟩,⟨⟨17,[1]⟩,6⟩,⟨⟨18,[0]⟩,3⟩,⟨⟨18,[1]⟩,4⟩,⟨⟨19,[2,0]⟩,6⟩,⟨⟨19,[2,1]⟩,6⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[18],[10],[11],[12],[13],[19],[20],[16],[17],[25],[26],[21],[22],[22],[23],[24],[8],[14,15],[27],[28],[9],[14,15]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 5=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<29 := hi
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
end Certgen.R083
