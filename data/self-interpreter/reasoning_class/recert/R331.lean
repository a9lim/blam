import Regular
namespace Certgen.R331
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 13,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.app 8 12,.lam 9,.app 10 11,.var 1,.opaque,.opaque,.lam 14,.lam 15,.app 16 17,.var 0,.app 18 19,.var 0,.lam 20,.var 1,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨6,[6]⟩],[⟨11,[7,6]⟩],[⟨17,[2,1]⟩,⟨17,[4,0]⟩],[⟨19,[2,1]⟩,⟨19,[4,0]⟩],[⟨7,[6]⟩],[⟨17,[3,1]⟩],[⟨13,[]⟩],[⟨12,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨13,[]⟩,1⟩],[⟨⟨17,[2,1]⟩,1⟩],[⟨⟨17,[3,1]⟩,3⟩,⟨⟨17,[3,1]⟩,6⟩],[⟨⟨17,[4,0]⟩,1⟩],[⟨⟨19,[2,1]⟩,3⟩,⟨⟨19,[2,1]⟩,6⟩],[⟨⟨19,[4,0]⟩,3⟩,⟨⟨19,[4,0]⟩,6⟩],[⟨⟨7,[6]⟩,1⟩],[⟨⟨6,[6]⟩,8⟩],[⟨⟨12,[6]⟩,7⟩],[⟨⟨12,[6]⟩,5⟩],[⟨⟨12,[6]⟩,3⟩,⟨⟨12,[6]⟩,6⟩,⟨⟨12,[6]⟩,7⟩],[⟨⟨11,[7,6]⟩,7⟩],[⟨⟨11,[7,6]⟩,5⟩],[⟨⟨11,[7,6]⟩,3⟩,⟨⟨11,[7,6]⟩,6⟩,⟨⟨11,[7,6]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,8⟩,⟨⟨5,[6]⟩,9⟩,⟨⟨7,[6]⟩,3⟩,⟨⟨7,[6]⟩,5⟩,⟨⟨7,[6]⟩,6⟩,⟨⟨7,[6]⟩,7⟩,⟨⟨8,[6]⟩,10⟩,⟨⟨8,[6]⟩,11⟩,⟨⟨8,[6]⟩,12⟩,⟨⟨9,[7,6]⟩,3⟩,⟨⟨9,[7,6]⟩,5⟩,⟨⟨9,[7,6]⟩,6⟩,⟨⟨9,[7,6]⟩,7⟩,⟨⟨10,[7,6]⟩,13⟩,⟨⟨10,[7,6]⟩,14⟩,⟨⟨10,[7,6]⟩,15⟩,⟨⟨13,[]⟩,9⟩,⟨⟨13,[]⟩,13⟩,⟨⟨13,[]⟩,14⟩,⟨⟨13,[]⟩,15⟩,⟨⟨14,[0]⟩,8⟩,⟨⟨14,[1]⟩,3⟩,⟨⟨14,[1]⟩,5⟩,⟨⟨14,[1]⟩,6⟩,⟨⟨14,[1]⟩,7⟩,⟨⟨15,[2,1]⟩,1⟩,⟨⟨15,[3,1]⟩,3⟩,⟨⟨15,[3,1]⟩,6⟩,⟨⟨15,[4,0]⟩,1⟩,⟨⟨16,[2,1]⟩,3⟩,⟨⟨16,[3,1]⟩,4⟩,⟨⟨16,[4,0]⟩,5⟩,⟨⟨17,[2,1]⟩,3⟩,⟨⟨17,[2,1]⟩,6⟩,⟨⟨17,[4,0]⟩,3⟩,⟨⟨17,[4,0]⟩,6⟩,⟨⟨18,[2,1]⟩,6⟩,⟨⟨18,[4,0]⟩,7⟩,⟨⟨19,[2,1]⟩,4⟩,⟨⟨19,[4,0]⟩,4⟩,⟨⟨20,[5,2,1]⟩,3⟩,⟨⟨20,[5,2,1]⟩,6⟩,⟨⟨20,[5,4,0]⟩,3⟩,⟨⟨20,[5,4,0]⟩,6⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[20],[12],[11],[12],[10],[16],[14],[13,15,16],[19],[18],[19],[17],[21],[22],[23],[24],[28],[26],[25,27,28],[32],[29],[29],[30,31],[30,31],[33],[34],[34],[35],[36,38],[42,43],[7],[40],[40],[41],[41],[37,39],[9],[44,45],[46,47],[36,38],[37,39],[6],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<48 := hi
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
end Certgen.R331
