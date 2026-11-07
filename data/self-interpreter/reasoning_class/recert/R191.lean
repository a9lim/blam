import Regular
namespace Certgen.R191
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.app 9 15,.lam 10,.lam 11,.app 12 13,.var 1,.lam 14,.var 2,.app 16 17,.var 0,.lam 18,.var 1,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨19,[4]⟩,⟨19,[5]⟩,⟨19,[6]⟩],[⟨17,[4]⟩],[⟨17,[5]⟩],[⟨6,[]⟩],[⟨13,[0,7,4]⟩,⟨13,[0,8,5]⟩],[⟨17,[6]⟩],[⟨5,[3]⟩],[⟨15,[4]⟩],[⟨15,[5]⟩],[⟨15,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨13,[0,7,4]⟩,5⟩],[⟨⟨13,[0,8,5]⟩,5⟩],[⟨⟨13,[0,9,6]⟩,1⟩],[⟨⟨17,[4]⟩,3⟩],[⟨⟨17,[5]⟩,4⟩],[⟨⟨17,[5]⟩,3⟩],[⟨⟨17,[6]⟩,5⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨19,[4]⟩,5⟩],[⟨⟨19,[5]⟩,5⟩],[⟨⟨19,[6]⟩,1⟩],[⟨⟨15,[4]⟩,11⟩],[⟨⟨15,[5]⟩,12⟩],[⟨⟨15,[6]⟩,13⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,10⟩,⟨⟨5,[3]⟩,3⟩,⟨⟨5,[3]⟩,4⟩,⟨⟨5,[3]⟩,9⟩,⟨⟨6,[]⟩,3⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,10⟩,⟨⟨7,[4]⟩,5⟩,⟨⟨7,[5]⟩,5⟩,⟨⟨7,[6]⟩,1⟩,⟨⟨8,[4]⟩,11⟩,⟨⟨8,[5]⟩,12⟩,⟨⟨8,[6]⟩,13⟩,⟨⟨9,[4]⟩,14⟩,⟨⟨9,[5]⟩,15⟩,⟨⟨9,[6]⟩,16⟩,⟨⟨10,[7,4]⟩,11⟩,⟨⟨10,[8,5]⟩,12⟩,⟨⟨10,[9,6]⟩,13⟩,⟨⟨11,[0,7,4]⟩,5⟩,⟨⟨11,[0,8,5]⟩,5⟩,⟨⟨11,[0,9,6]⟩,1⟩,⟨⟨12,[0,7,4]⟩,3⟩,⟨⟨12,[0,8,5]⟩,4⟩,⟨⟨12,[0,9,6]⟩,5⟩,⟨⟨13,[0,7,4]⟩,6⟩,⟨⟨13,[0,8,5]⟩,6⟩,⟨⟨14,[1,0,7,4]⟩,3⟩,⟨⟨14,[1,0,8,5]⟩,3⟩,⟨⟨15,[4]⟩,3⟩,⟨⟨15,[5]⟩,3⟩,⟨⟨15,[5]⟩,4⟩,⟨⟨15,[6]⟩,5⟩,⟨⟨16,[4]⟩,6⟩,⟨⟨16,[5]⟩,7⟩,⟨⟨16,[5]⟩,8⟩,⟨⟨16,[6]⟩,9⟩,⟨⟨17,[6]⟩,7⟩,⟨⟨17,[6]⟩,8⟩,⟨⟨18,[2,6]⟩,3⟩,⟨⟨18,[2,6]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[8],[9],[10],[12],[12],[13],[14],[15],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[34],[36],[37],[32],[33],[34],[35],[38],[40],[39],[41],[30,31],[42],[43],[7],[45],[44],[5],[6]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 10=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<46 := hi
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
end Certgen.R191
