import Regular
namespace Certgen.R229
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 9,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.lam 8,.var 1,.lam 10,.app 11 20,.app 12 17,.lam 13,.app 14 15,.var 0,.lam 16,.var 1,.app 18 19,.var 0,.opaque,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[6]⟩],[⟨17,[7]⟩],[⟨17,[8]⟩],[⟨19,[6]⟩],[⟨9,[]⟩],[⟨19,[8]⟩],[⟨15,[0,6]⟩,⟨15,[2,8]⟩],[⟨5,[4]⟩],[⟨7,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨9,[]⟩,1⟩],[⟨⟨20,[6]⟩,3⟩,⟨⟨20,[6]⟩,5⟩],[⟨⟨20,[7]⟩,1⟩],[⟨⟨20,[8]⟩,13⟩],[⟨⟨17,[6]⟩,3⟩],[⟨⟨17,[7]⟩,4⟩],[⟨⟨17,[8]⟩,5⟩],[⟨⟨15,[0,6]⟩,3⟩],[⟨⟨15,[1,7]⟩,4⟩],[⟨⟨15,[2,8]⟩,5⟩],[⟨⟨19,[6]⟩,9⟩],[⟨⟨19,[7]⟩,10⟩],[⟨⟨19,[8]⟩,11⟩],[⟨⟨19,[8]⟩,9⟩],[⟨⟨5,[4]⟩,1⟩],[⟨⟨7,[4]⟩,13⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,16⟩,⟨⟨5,[4]⟩,13⟩,⟨⟨6,[4]⟩,17⟩,⟨⟨7,[4]⟩,14⟩,⟨⟨7,[4]⟩,15⟩,⟨⟨8,[5,4]⟩,9⟩,⟨⟨8,[5,4]⟩,11⟩,⟨⟨9,[]⟩,9⟩,⟨⟨9,[]⟩,11⟩,⟨⟨9,[]⟩,16⟩,⟨⟨9,[]⟩,17⟩,⟨⟨10,[6]⟩,3⟩,⟨⟨10,[6]⟩,5⟩,⟨⟨10,[7]⟩,1⟩,⟨⟨10,[8]⟩,13⟩,⟨⟨11,[6]⟩,3⟩,⟨⟨11,[7]⟩,4⟩,⟨⟨11,[8]⟩,5⟩,⟨⟨12,[6]⟩,6⟩,⟨⟨12,[7]⟩,7⟩,⟨⟨12,[8]⟩,8⟩,⟨⟨13,[0,6]⟩,3⟩,⟨⟨13,[1,7]⟩,4⟩,⟨⟨13,[2,8]⟩,5⟩,⟨⟨14,[0,6]⟩,9⟩,⟨⟨14,[1,7]⟩,10⟩,⟨⟨14,[2,8]⟩,11⟩,⟨⟨15,[0,6]⟩,12⟩,⟨⟨15,[2,8]⟩,12⟩,⟨⟨16,[3,0,6]⟩,9⟩,⟨⟨16,[3,2,8]⟩,9⟩,⟨⟨17,[6]⟩,9⟩,⟨⟨17,[7]⟩,10⟩,⟨⟨17,[8]⟩,9⟩,⟨⟨17,[8]⟩,11⟩,⟨⟨18,[6]⟩,12⟩,⟨⟨18,[7]⟩,13⟩,⟨⟨18,[8]⟩,14⟩,⟨⟨18,[8]⟩,15⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[6],[14],[10],[9],[11],[12],[15],[16],[17],[18],[19],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[35],[36],[38],[33],[34],[35],[37],[39],[40],[42],[41],[31,32],[5],[7],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 7=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<43 := hi
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
end Certgen.R229
