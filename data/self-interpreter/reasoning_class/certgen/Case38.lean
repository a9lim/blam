import Regular
namespace Certgen.Case38
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.app 9 16,.app 10 14,.app 11 12,.var 0,.lam 13,.var 1,.lam 15,.var 1,.app 17 18,.var 0,.opaque,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[8]⟩],[⟨12,[6]⟩],[⟨14,[9]⟩],[⟨12,[9]⟩],[⟨18,[9]⟩],[⟨6,[]⟩],[⟨12,[7]⟩],[⟨5,[5]⟩],[⟨16,[9]⟩],[⟨14,[6]⟩,⟨14,[8]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[6]⟩,19⟩],[⟨⟨12,[7]⟩,20⟩],[⟨⟨12,[8]⟩,21⟩],[⟨⟨12,[9]⟩,22⟩],[⟨⟨18,[9]⟩,22⟩],[⟨⟨18,[9]⟩,5⟩,⟨⟨18,[9]⟩,22⟩],[⟨⟨18,[9]⟩,5⟩],[⟨⟨5,[5]⟩,1⟩],[⟨⟨19,[6]⟩,20⟩],[⟨⟨19,[7]⟩,1⟩],[⟨⟨19,[8]⟩,14⟩],[⟨⟨19,[9]⟩,15⟩,⟨⟨19,[9]⟩,17⟩],[⟨⟨16,[6]⟩,11⟩],[⟨⟨16,[7]⟩,12⟩],[⟨⟨16,[8]⟩,13⟩],[⟨⟨16,[9]⟩,14⟩],[⟨⟨14,[6]⟩,15⟩],[⟨⟨14,[7]⟩,16⟩],[⟨⟨14,[8]⟩,17⟩],[⟨⟨14,[9]⟩,18⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,10⟩,⟨⟨5,[5]⟩,4⟩,⟨⟨5,[5]⟩,18⟩,⟨⟨5,[5]⟩,19⟩,⟨⟨5,[5]⟩,21⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,10⟩,⟨⟨6,[]⟩,18⟩,⟨⟨6,[]⟩,19⟩,⟨⟨6,[]⟩,21⟩,⟨⟨7,[6]⟩,20⟩,⟨⟨7,[7]⟩,1⟩,⟨⟨7,[8]⟩,14⟩,⟨⟨7,[9]⟩,15⟩,⟨⟨7,[9]⟩,17⟩,⟨⟨8,[6]⟩,11⟩,⟨⟨8,[7]⟩,12⟩,⟨⟨8,[8]⟩,13⟩,⟨⟨8,[9]⟩,14⟩,⟨⟨9,[6]⟩,15⟩,⟨⟨9,[7]⟩,16⟩,⟨⟨9,[8]⟩,17⟩,⟨⟨9,[9]⟩,18⟩,⟨⟨10,[6]⟩,19⟩,⟨⟨10,[7]⟩,20⟩,⟨⟨10,[8]⟩,21⟩,⟨⟨10,[9]⟩,22⟩,⟨⟨11,[6]⟩,3⟩,⟨⟨11,[7]⟩,4⟩,⟨⟨11,[8]⟩,5⟩,⟨⟨11,[9]⟩,6⟩,⟨⟨12,[7]⟩,3⟩,⟨⟨12,[7]⟩,5⟩,⟨⟨12,[7]⟩,22⟩,⟨⟨13,[0,7]⟩,21⟩,⟨⟨13,[1,7]⟩,19⟩,⟨⟨13,[2,7]⟩,18⟩,⟨⟨14,[6]⟩,6⟩,⟨⟨14,[6]⟩,7⟩,⟨⟨14,[6]⟩,8⟩,⟨⟨14,[6]⟩,9⟩,⟨⟨14,[8]⟩,6⟩,⟨⟨14,[8]⟩,7⟩,⟨⟨14,[8]⟩,8⟩,⟨⟨14,[8]⟩,9⟩,⟨⟨15,[3,6]⟩,22⟩,⟨⟨15,[3,8]⟩,22⟩,⟨⟨15,[4,6]⟩,5⟩,⟨⟨15,[4,6]⟩,22⟩,⟨⟨15,[4,8]⟩,5⟩,⟨⟨15,[4,8]⟩,22⟩,⟨⟨16,[9]⟩,5⟩,⟨⟨16,[9]⟩,22⟩,⟨⟨17,[9]⟩,7⟩,⟨⟨17,[9]⟩,8⟩,⟨⟨17,[9]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[10],[9],[11],[12],[13],[14],[15],[16],[17],[18],[19],[20],[21],[22],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[5],[55],[41,45],[39],[38],[40],[8],[7],[6],[49],[52],[51,52],[51],[50],[54],[53,54],[53],[37],[56],[36],[37],[55],[56],[58],[57],[42,46],[43,47],[44,48]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<60 := hi
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
end Certgen.Case38
