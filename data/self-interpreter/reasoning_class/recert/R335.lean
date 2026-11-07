import Regular
namespace Certgen.R335
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.var 0,.opaque,.lam 9,.lam 10,.lam 11,.app 12 17,.lam 13,.app 14 15,.var 0,.lam 16,.var 1,.app 18 19,.var 0,.var 2,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨20,[]⟩],[⟨15,[2,0,10,8]⟩,⟨15,[3,1,9,7]⟩],[⟨17,[0,10,8]⟩],[⟨17,[1,9,7]⟩],[⟨19,[1,9,7]⟩],[⟨8,[]⟩],[⟨19,[0,10,8]⟩],[⟨24,[6]⟩],[⟨6,[5]⟩],[⟨27,[6]⟩],[⟨7,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨17,[0,10,8]⟩,0⟩],[⟨⟨17,[1,9,7]⟩,0⟩],[⟨⟨15,[2,0,10,8]⟩,0⟩],[⟨⟨15,[3,1,9,7]⟩,0⟩],[⟨⟨19,[0,10,8]⟩,5⟩],[⟨⟨19,[0,10,8]⟩,6⟩],[⟨⟨19,[1,9,7]⟩,6⟩],[⟨⟨27,[6]⟩,5⟩],[⟨⟨27,[6]⟩,6⟩],[⟨⟨24,[6]⟩,10⟩],[⟨⟨24,[6]⟩,11⟩],[⟨⟨7,[5]⟩,1⟩],[⟨⟨6,[5]⟩,14⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,14⟩,⟨⟨5,[5]⟩,15⟩,⟨⟨6,[5]⟩,12⟩,⟨⟨6,[5]⟩,13⟩,⟨⟨8,[]⟩,12⟩,⟨⟨8,[]⟩,13⟩,⟨⟨8,[]⟩,15⟩,⟨⟨9,[7]⟩,10⟩,⟨⟨9,[7]⟩,11⟩,⟨⟨9,[8]⟩,14⟩,⟨⟨10,[9,7]⟩,5⟩,⟨⟨10,[9,7]⟩,6⟩,⟨⟨10,[10,8]⟩,1⟩,⟨⟨11,[0,10,8]⟩,0⟩,⟨⟨11,[1,9,7]⟩,0⟩,⟨⟨12,[0,10,8]⟩,3⟩,⟨⟨12,[1,9,7]⟩,4⟩,⟨⟨13,[2,0,10,8]⟩,0⟩,⟨⟨13,[3,1,9,7]⟩,0⟩,⟨⟨14,[2,0,10,8]⟩,5⟩,⟨⟨14,[3,1,9,7]⟩,6⟩,⟨⟨15,[2,0,10,8]⟩,9⟩,⟨⟨15,[3,1,9,7]⟩,9⟩,⟨⟨16,[4,2,0,10,8]⟩,6⟩,⟨⟨16,[4,3,1,9,7]⟩,6⟩,⟨⟨17,[0,10,8]⟩,5⟩,⟨⟨17,[0,10,8]⟩,6⟩,⟨⟨17,[1,9,7]⟩,6⟩,⟨⟨18,[0,10,8]⟩,7⟩,⟨⟨18,[0,10,8]⟩,8⟩,⟨⟨18,[1,9,7]⟩,9⟩,⟨⟨19,[0,10,8]⟩,12⟩,⟨⟨19,[0,10,8]⟩,13⟩,⟨⟨20,[]⟩,7⟩,⟨⟨20,[]⟩,8⟩,⟨⟨21,[6]⟩,5⟩,⟨⟨21,[6]⟩,6⟩,⟨⟨22,[6]⟩,10⟩,⟨⟨22,[6]⟩,11⟩,⟨⟨23,[6]⟩,12⟩,⟨⟨23,[6]⟩,13⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[10],[8],[9],[11],[12],[13],[14],[15],[16],[18],[18],[17],[19],[20],[21],[22],[23],[24],[29],[31],[27],[28],[30],[31],[32],[33],[34],[37],[38],[25,26],[6],[7],[39],[40],[41],[42],[43],[44],[35],[36]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 9=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<45 := hi
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
end Certgen.R335
