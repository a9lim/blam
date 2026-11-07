import Regular
namespace Certgen.R163
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 17,.lam 10,.app 11 15,.app 12 13,.var 0,.lam 14,.var 2,.lam 16,.var 1,.app 18 19,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨19,[6]⟩],[⟨19,[5]⟩],[⟨7,[]⟩],[⟨13,[8,5]⟩,⟨13,[9,6]⟩],[⟨19,[7]⟩],[⟨15,[8,5]⟩,⟨15,[9,6]⟩],[⟨13,[10,7]⟩],[⟨5,[2]⟩],[⟨17,[5]⟩],[⟨17,[6]⟩],[⟨17,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨15,[8,5]⟩,5⟩],[⟨⟨15,[9,6]⟩,5⟩],[⟨⟨15,[10,7]⟩,1⟩],[⟨⟨13,[8,5]⟩,3⟩],[⟨⟨13,[9,6]⟩,4⟩],[⟨⟨13,[10,7]⟩,5⟩],[⟨⟨19,[5]⟩,6⟩],[⟨⟨19,[6]⟩,6⟩],[⟨⟨19,[6]⟩,7⟩],[⟨⟨19,[7]⟩,8⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨17,[5]⟩,5⟩],[⟨⟨17,[6]⟩,5⟩],[⟨⟨17,[7]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,13⟩,⟨⟨5,[2]⟩,6⟩,⟨⟨5,[2]⟩,7⟩,⟨⟨5,[2]⟩,12⟩,⟨⟨6,[3,2]⟩,3⟩,⟨⟨6,[3,2]⟩,4⟩,⟨⟨6,[4,2]⟩,8⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,13⟩,⟨⟨8,[5]⟩,5⟩,⟨⟨8,[6]⟩,5⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨9,[5]⟩,14⟩,⟨⟨9,[6]⟩,15⟩,⟨⟨9,[7]⟩,16⟩,⟨⟨10,[8,5]⟩,5⟩,⟨⟨10,[9,6]⟩,5⟩,⟨⟨10,[10,7]⟩,1⟩,⟨⟨11,[8,5]⟩,3⟩,⟨⟨11,[9,6]⟩,4⟩,⟨⟨11,[10,7]⟩,5⟩,⟨⟨12,[8,5]⟩,6⟩,⟨⟨12,[9,6]⟩,7⟩,⟨⟨12,[10,7]⟩,8⟩,⟨⟨13,[10,7]⟩,10⟩,⟨⟨13,[10,7]⟩,11⟩,⟨⟨14,[0,10,7]⟩,6⟩,⟨⟨14,[0,10,7]⟩,7⟩,⟨⟨15,[8,5]⟩,9⟩,⟨⟨15,[9,6]⟩,9⟩,⟨⟨16,[1,8,5]⟩,6⟩,⟨⟨16,[1,9,6]⟩,6⟩,⟨⟨17,[5]⟩,6⟩,⟨⟨17,[6]⟩,6⟩,⟨⟨17,[6]⟩,7⟩,⟨⟨17,[7]⟩,8⟩,⟨⟨18,[5]⟩,9⟩,⟨⟨18,[6]⟩,10⟩,⟨⟨18,[6]⟩,11⟩,⟨⟨18,[7]⟩,12⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[14],[8],[9],[10],[11],[12],[13],[15],[15],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[38],[40],[41],[32],[33],[5],[6],[36],[37],[38],[39],[42],[43],[44],[45],[34,35],[30],[31],[7]]
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
end Certgen.R163
