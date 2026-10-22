import Regular
namespace Certgen.R124
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 11,.lam 3,.app 4 5,.var 0,.lam 6,.lam 7,.app 8 9,.var 2,.lam 10,.var 1,.lam 12,.app 13 17,.lam 14,.app 15 16,.var 0,.var 0,.app 18 19,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨5,[4]⟩],[⟨9,[6,5,4]⟩],[⟨17,[0]⟩],[⟨17,[1]⟩],[⟨11,[]⟩],[⟨19,[0]⟩],[⟨16,[2,0]⟩,⟨16,[3,1]⟩],[⟨19,[1]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨11,[]⟩,1⟩],[⟨⟨17,[0]⟩,1⟩],[⟨⟨17,[1]⟩,1⟩],[⟨⟨16,[2,0]⟩,1⟩],[⟨⟨16,[3,1]⟩,1⟩],[⟨⟨19,[0]⟩,5⟩],[⟨⟨19,[0]⟩,6⟩],[⟨⟨19,[1]⟩,6⟩],[⟨⟨5,[4]⟩,1⟩],[⟨⟨9,[6,5,4]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,10⟩,⟨⟨5,[4]⟩,7⟩,⟨⟨5,[4]⟩,8⟩,⟨⟨6,[5,4]⟩,5⟩,⟨⟨6,[5,4]⟩,6⟩,⟨⟨7,[6,5,4]⟩,1⟩,⟨⟨8,[6,5,4]⟩,11⟩,⟨⟨9,[6,5,4]⟩,9⟩,⟨⟨10,[7,6,5,4]⟩,6⟩,⟨⟨11,[]⟩,10⟩,⟨⟨11,[]⟩,11⟩,⟨⟨12,[0]⟩,1⟩,⟨⟨12,[1]⟩,1⟩,⟨⟨13,[0]⟩,3⟩,⟨⟨13,[1]⟩,4⟩,⟨⟨14,[2,0]⟩,1⟩,⟨⟨14,[3,1]⟩,1⟩,⟨⟨15,[2,0]⟩,5⟩,⟨⟨15,[3,1]⟩,6⟩,⟨⟨16,[2,0]⟩,6⟩,⟨⟨16,[3,1]⟩,6⟩,⟨⟨17,[0]⟩,5⟩,⟨⟨17,[0]⟩,6⟩,⟨⟨17,[1]⟩,6⟩,⟨⟨18,[0]⟩,7⟩,⟨⟨18,[0]⟩,8⟩,⟨⟨18,[1]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[7],[8],[9],[9],[10],[14],[12],[23,24],[15],[16],[17],[18],[19],[20],[21],[22],[25],[27],[26],[27],[28],[29],[30],[5],[6],[11]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 7=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<31 := hi
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
end Certgen.R124
