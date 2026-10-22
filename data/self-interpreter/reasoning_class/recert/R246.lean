import Regular
namespace Certgen.R246
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 20,.app 9 19,.app 10 15,.lam 11,.app 12 13,.var 0,.lam 14,.var 1,.app 16 17,.var 0,.lam 18,.var 1,.opaque,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[6]⟩],[⟨15,[7]⟩],[⟨15,[8]⟩],[⟨17,[6]⟩],[⟨17,[7]⟩],[⟨6,[]⟩],[⟨13,[0,6]⟩,⟨13,[1,7]⟩],[⟨17,[8]⟩],[⟨5,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨13,[0,6]⟩,14⟩],[⟨⟨13,[1,7]⟩,15⟩],[⟨⟨13,[2,8]⟩,16⟩],[⟨⟨17,[6]⟩,3⟩],[⟨⟨17,[7]⟩,4⟩],[⟨⟨17,[7]⟩,3⟩],[⟨⟨17,[8]⟩,5⟩],[⟨⟨5,[5]⟩,1⟩],[⟨⟨20,[6]⟩,14⟩,⟨⟨20,[6]⟩,15⟩],[⟨⟨20,[7]⟩,5⟩],[⟨⟨20,[8]⟩,1⟩],[⟨⟨19,[6]⟩,11⟩],[⟨⟨19,[7]⟩,12⟩],[⟨⟨19,[8]⟩,13⟩],[⟨⟨15,[6]⟩,14⟩],[⟨⟨15,[7]⟩,15⟩],[⟨⟨15,[8]⟩,16⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,10⟩,⟨⟨5,[5]⟩,3⟩,⟨⟨5,[5]⟩,4⟩,⟨⟨5,[5]⟩,9⟩,⟨⟨6,[]⟩,3⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,10⟩,⟨⟨7,[6]⟩,14⟩,⟨⟨7,[6]⟩,15⟩,⟨⟨7,[7]⟩,5⟩,⟨⟨7,[8]⟩,1⟩,⟨⟨8,[6]⟩,11⟩,⟨⟨8,[7]⟩,12⟩,⟨⟨8,[8]⟩,13⟩,⟨⟨9,[6]⟩,14⟩,⟨⟨9,[7]⟩,15⟩,⟨⟨9,[8]⟩,16⟩,⟨⟨10,[6]⟩,17⟩,⟨⟨10,[7]⟩,18⟩,⟨⟨10,[8]⟩,19⟩,⟨⟨11,[0,6]⟩,14⟩,⟨⟨11,[1,7]⟩,15⟩,⟨⟨11,[2,8]⟩,16⟩,⟨⟨12,[0,6]⟩,3⟩,⟨⟨12,[1,7]⟩,4⟩,⟨⟨12,[2,8]⟩,5⟩,⟨⟨13,[0,6]⟩,6⟩,⟨⟨13,[1,7]⟩,6⟩,⟨⟨14,[3,0,6]⟩,3⟩,⟨⟨14,[3,1,7]⟩,3⟩,⟨⟨15,[6]⟩,3⟩,⟨⟨15,[7]⟩,3⟩,⟨⟨15,[7]⟩,4⟩,⟨⟨15,[8]⟩,5⟩,⟨⟨16,[6]⟩,6⟩,⟨⟨16,[7]⟩,7⟩,⟨⟨16,[7]⟩,8⟩,⟨⟨16,[8]⟩,9⟩,⟨⟨17,[8]⟩,7⟩,⟨⟨17,[8]⟩,8⟩,⟨⟨18,[4,8]⟩,3⟩,⟨⟨18,[4,8]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[8],[9],[10],[12],[13],[14],[15],[16],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[35],[37],[38],[33],[34],[35],[36],[39],[41],[40],[42],[31,32],[43],[44],[7],[46],[45],[5],[6]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<47 := hi
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
end Certgen.R246
