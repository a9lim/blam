import Regular
namespace Certgen.R318
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 18,.app 2 10,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.app 8 9,.var 0,.opaque,.lam 11,.lam 12,.app 13 14,.var 0,.app 15 16,.var 0,.lam 17,.var 1,.lam 19,.app 20 25,.app 21 22,.var 0,.lam 23,.lam 24,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨6,[6]⟩],[⟨9,[6]⟩],[⟨14,[2,1]⟩,⟨14,[4,0]⟩],[⟨16,[2,1]⟩,⟨16,[4,0]⟩],[⟨7,[6]⟩],[⟨14,[3,1]⟩],[⟨10,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨18,[]⟩,0⟩],[⟨⟨10,[]⟩,1⟩],[⟨⟨14,[2,1]⟩,1⟩],[⟨⟨14,[3,1]⟩,3⟩,⟨⟨14,[3,1]⟩,6⟩],[⟨⟨14,[4,0]⟩,1⟩],[⟨⟨16,[2,1]⟩,3⟩,⟨⟨16,[2,1]⟩,6⟩],[⟨⟨16,[4,0]⟩,3⟩,⟨⟨16,[4,0]⟩,6⟩],[⟨⟨7,[6]⟩,1⟩],[⟨⟨6,[6]⟩,8⟩],[⟨⟨9,[6]⟩,7⟩],[⟨⟨9,[6]⟩,5⟩],[⟨⟨9,[6]⟩,3⟩,⟨⟨9,[6]⟩,6⟩,⟨⟨9,[6]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,8⟩,⟨⟨5,[6]⟩,9⟩,⟨⟨7,[6]⟩,3⟩,⟨⟨7,[6]⟩,5⟩,⟨⟨7,[6]⟩,6⟩,⟨⟨7,[6]⟩,7⟩,⟨⟨8,[6]⟩,10⟩,⟨⟨8,[6]⟩,11⟩,⟨⟨8,[6]⟩,12⟩,⟨⟨10,[]⟩,9⟩,⟨⟨10,[]⟩,10⟩,⟨⟨10,[]⟩,11⟩,⟨⟨10,[]⟩,12⟩,⟨⟨11,[0]⟩,8⟩,⟨⟨11,[1]⟩,3⟩,⟨⟨11,[1]⟩,5⟩,⟨⟨11,[1]⟩,6⟩,⟨⟨11,[1]⟩,7⟩,⟨⟨12,[2,1]⟩,1⟩,⟨⟨12,[3,1]⟩,3⟩,⟨⟨12,[3,1]⟩,6⟩,⟨⟨12,[4,0]⟩,1⟩,⟨⟨13,[2,1]⟩,3⟩,⟨⟨13,[3,1]⟩,4⟩,⟨⟨13,[4,0]⟩,5⟩,⟨⟨14,[2,1]⟩,3⟩,⟨⟨14,[2,1]⟩,6⟩,⟨⟨14,[4,0]⟩,3⟩,⟨⟨14,[4,0]⟩,6⟩,⟨⟨15,[2,1]⟩,6⟩,⟨⟨15,[4,0]⟩,7⟩,⟨⟨16,[2,1]⟩,4⟩,⟨⟨16,[4,0]⟩,4⟩,⟨⟨17,[5,2,1]⟩,3⟩,⟨⟨17,[5,2,1]⟩,6⟩,⟨⟨17,[5,4,0]⟩,3⟩,⟨⟨17,[5,4,0]⟩,6⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[13],[12],[11],[12],[10],[14],[15],[16],[17],[21],[19],[18,20,21],[25],[22],[22],[23,24],[23,24],[26],[27],[27],[28],[29,31],[35,36],[7],[33],[33],[34],[34],[30,32],[9],[37,38],[39,40],[29,31],[30,32],[6],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 5=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<41 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 exact range_sound block36 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R318
