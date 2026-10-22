import Regular
namespace Certgen.R281
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 12,.lam 3,.app 4 11,.app 5 6,.var 0,.app 7 10,.app 8 9,.var 0,.var 0,.var 0,.opaque,.lam 13,.lam 14,.app 15 16,.var 1,.app 17 20,.app 18 19,.var 0,.var 0,.var 0,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[6,2]⟩],[⟨16,[8,4]⟩],[⟨19,[6,2]⟩,⟨19,[8,4]⟩],[⟨6,[9]⟩],[⟨9,[9]⟩],[⟨16,[5,0]⟩,⟨16,[5,1]⟩,⟨16,[7,3]⟩],[⟨20,[6,2]⟩,⟨20,[8,4]⟩],[⟨11,[9]⟩],[⟨10,[9]⟩],[⟨12,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨12,[]⟩,1⟩],[⟨⟨16,[5,0]⟩,1⟩],[⟨⟨16,[5,1]⟩,1⟩],[⟨⟨16,[6,2]⟩,3⟩,⟨⟨16,[6,2]⟩,4⟩],[⟨⟨16,[7,3]⟩,1⟩],[⟨⟨16,[8,4]⟩,6⟩],[⟨⟨20,[6,2]⟩,3⟩],[⟨⟨20,[8,4]⟩,4⟩],[⟨⟨19,[6,2]⟩,8⟩],[⟨⟨19,[8,4]⟩,9⟩],[⟨⟨11,[9]⟩,1⟩],[⟨⟨6,[9]⟩,12⟩],[⟨⟨10,[9]⟩,6⟩],[⟨⟨9,[9]⟩,14⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[9]⟩,1⟩,⟨⟨4,[9]⟩,12⟩,⟨⟨5,[9]⟩,13⟩,⟨⟨6,[9]⟩,6⟩,⟨⟨7,[9]⟩,14⟩,⟨⟨8,[9]⟩,15⟩,⟨⟨9,[9]⟩,7⟩,⟨⟨10,[9]⟩,5⟩,⟨⟨10,[9]⟩,10⟩,⟨⟨10,[9]⟩,11⟩,⟨⟨12,[]⟩,5⟩,⟨⟨12,[]⟩,7⟩,⟨⟨12,[]⟩,10⟩,⟨⟨12,[]⟩,11⟩,⟨⟨12,[]⟩,13⟩,⟨⟨12,[]⟩,15⟩,⟨⟨13,[0]⟩,3⟩,⟨⟨13,[0]⟩,4⟩,⟨⟨13,[1]⟩,6⟩,⟨⟨13,[2]⟩,8⟩,⟨⟨13,[2]⟩,9⟩,⟨⟨13,[3]⟩,12⟩,⟨⟨13,[4]⟩,14⟩,⟨⟨14,[5,0]⟩,1⟩,⟨⟨14,[5,1]⟩,1⟩,⟨⟨14,[6,2]⟩,3⟩,⟨⟨14,[6,2]⟩,4⟩,⟨⟨14,[7,3]⟩,1⟩,⟨⟨14,[8,4]⟩,6⟩,⟨⟨15,[5,0]⟩,3⟩,⟨⟨15,[5,1]⟩,4⟩,⟨⟨15,[6,2]⟩,5⟩,⟨⟨15,[7,3]⟩,6⟩,⟨⟨15,[8,4]⟩,7⟩,⟨⟨16,[6,2]⟩,3⟩,⟨⟨16,[8,4]⟩,4⟩,⟨⟨17,[6,2]⟩,8⟩,⟨⟨17,[8,4]⟩,9⟩,⟨⟨18,[6,2]⟩,10⟩,⟨⟨18,[8,4]⟩,11⟩,⟨⟨19,[6,2]⟩,5⟩,⟨⟨19,[8,4]⟩,5⟩,⟨⟨20,[6,2]⟩,5⟩,⟨⟨20,[6,2]⟩,10⟩,⟨⟨20,[8,4]⟩,5⟩,⟨⟨20,[8,4]⟩,10⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[17],[7],[8],[18],[14],[13],[15],[16],[19,20],[21],[22],[23],[24],[25],[26],[26],[27],[28],[29],[30],[31],[32],[33],[34],[34],[35],[36],[37],[38],[43,44],[6],[9],[39],[40],[41],[42],[46,48],[12],[45,47],[10],[45,47],[46,48],[10],[11]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<49 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 exact range_sound block48 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R281
