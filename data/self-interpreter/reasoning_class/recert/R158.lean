import Regular
namespace Certgen.R158
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 19,.lam 10,.app 11 16,.lam 12,.app 13 14,.var 0,.lam 15,.var 1,.app 17 18,.var 1,.opaque,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[6,4]⟩,⟨16,[7,5]⟩],[⟨18,[6,4]⟩],[⟨7,[]⟩],[⟨18,[7,5]⟩],[⟨14,[0,6,4]⟩,⟨14,[0,7,5]⟩],[⟨5,[2]⟩],[⟨19,[4]⟩],[⟨19,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨16,[6,4]⟩,1⟩],[⟨⟨16,[7,5]⟩,1⟩],[⟨⟨14,[0,6,4]⟩,1⟩],[⟨⟨14,[0,7,5]⟩,1⟩],[⟨⟨18,[6,4]⟩,5⟩,⟨⟨18,[6,4]⟩,6⟩],[⟨⟨18,[7,5]⟩,5⟩,⟨⟨18,[7,5]⟩,6⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨19,[4]⟩,1⟩],[⟨⟨19,[5]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,9⟩,⟨⟨5,[2]⟩,8⟩,⟨⟨6,[3,2]⟩,5⟩,⟨⟨6,[3,2]⟩,6⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,9⟩,⟨⟨8,[4]⟩,1⟩,⟨⟨8,[5]⟩,1⟩,⟨⟨9,[4]⟩,10⟩,⟨⟨9,[5]⟩,11⟩,⟨⟨10,[6,4]⟩,1⟩,⟨⟨10,[7,5]⟩,1⟩,⟨⟨11,[6,4]⟩,3⟩,⟨⟨11,[7,5]⟩,4⟩,⟨⟨12,[0,6,4]⟩,1⟩,⟨⟨12,[0,7,5]⟩,1⟩,⟨⟨13,[0,6,4]⟩,5⟩,⟨⟨13,[0,7,5]⟩,6⟩,⟨⟨14,[0,6,4]⟩,7⟩,⟨⟨14,[0,7,5]⟩,7⟩,⟨⟨15,[1,0,6,4]⟩,5⟩,⟨⟨15,[1,0,6,4]⟩,6⟩,⟨⟨15,[1,0,7,5]⟩,5⟩,⟨⟨15,[1,0,7,5]⟩,6⟩,⟨⟨16,[6,4]⟩,5⟩,⟨⟨16,[6,4]⟩,6⟩,⟨⟨16,[7,5]⟩,5⟩,⟨⟨16,[7,5]⟩,6⟩,⟨⟨17,[6,4]⟩,7⟩,⟨⟨17,[7,5]⟩,8⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[10],[6,7],[8],[9],[11],[11],[12],[13],[14],[15],[16],[17],[18],[19],[20],[21],[22],[29,31],[30,32],[25,26],[27,28],[29,31],[30,32],[29,31],[30,32],[33],[33],[34],[34],[23,24],[5]]
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
end Certgen.R158
