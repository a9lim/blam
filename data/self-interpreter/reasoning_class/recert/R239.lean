import Regular
namespace Certgen.R239
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 20,.app 9 16,.lam 10,.app 11 15,.app 12 13,.var 0,.lam 14,.var 1,.opaque,.app 17 18,.var 0,.lam 19,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[3]⟩],[⟨18,[4]⟩],[⟨6,[]⟩],[⟨13,[6,3]⟩,⟨13,[7,4]⟩],[⟨18,[5]⟩],[⟨5,[2]⟩],[⟨16,[3]⟩],[⟨16,[4]⟩],[⟨16,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨15,[6,3]⟩,14⟩],[⟨⟨15,[7,4]⟩,15⟩],[⟨⟨15,[8,5]⟩,16⟩],[⟨⟨13,[6,3]⟩,3⟩],[⟨⟨13,[7,4]⟩,4⟩],[⟨⟨13,[8,5]⟩,5⟩],[⟨⟨18,[3]⟩,6⟩],[⟨⟨18,[4]⟩,6⟩],[⟨⟨18,[4]⟩,7⟩],[⟨⟨18,[5]⟩,8⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨20,[3]⟩,3⟩,⟨⟨20,[3]⟩,4⟩],[⟨⟨20,[4]⟩,8⟩],[⟨⟨20,[5]⟩,1⟩],[⟨⟨16,[3]⟩,14⟩],[⟨⟨16,[4]⟩,15⟩],[⟨⟨16,[5]⟩,16⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,13⟩,⟨⟨5,[2]⟩,6⟩,⟨⟨5,[2]⟩,7⟩,⟨⟨5,[2]⟩,12⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,7⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,13⟩,⟨⟨7,[3]⟩,3⟩,⟨⟨7,[3]⟩,4⟩,⟨⟨7,[4]⟩,8⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨8,[3]⟩,14⟩,⟨⟨8,[4]⟩,15⟩,⟨⟨8,[5]⟩,16⟩,⟨⟨9,[3]⟩,17⟩,⟨⟨9,[4]⟩,18⟩,⟨⟨9,[5]⟩,19⟩,⟨⟨10,[6,3]⟩,14⟩,⟨⟨10,[7,4]⟩,15⟩,⟨⟨10,[8,5]⟩,16⟩,⟨⟨11,[6,3]⟩,3⟩,⟨⟨11,[7,4]⟩,4⟩,⟨⟨11,[8,5]⟩,5⟩,⟨⟨12,[6,3]⟩,6⟩,⟨⟨12,[7,4]⟩,7⟩,⟨⟨12,[8,5]⟩,8⟩,⟨⟨13,[6,3]⟩,9⟩,⟨⟨13,[7,4]⟩,9⟩,⟨⟨14,[0,6,3]⟩,6⟩,⟨⟨14,[0,7,4]⟩,6⟩,⟨⟨16,[3]⟩,6⟩,⟨⟨16,[4]⟩,6⟩,⟨⟨16,[4]⟩,7⟩,⟨⟨16,[5]⟩,8⟩,⟨⟨17,[3]⟩,9⟩,⟨⟨17,[4]⟩,10⟩,⟨⟨17,[4]⟩,11⟩,⟨⟨17,[5]⟩,12⟩,⟨⟨18,[5]⟩,10⟩,⟨⟨18,[5]⟩,11⟩,⟨⟨19,[1,5]⟩,6⟩,⟨⟨19,[1,5]⟩,7⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[8],[9],[10],[12],[13],[14],[15],[16],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[35],[37],[38],[33],[34],[35],[36],[39],[40],[41],[42],[31,32],[43],[44],[7],[45],[46],[5],[6]]
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
end Certgen.R239
