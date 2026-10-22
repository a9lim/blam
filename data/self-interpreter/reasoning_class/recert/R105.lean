import Regular
namespace Certgen.R105
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 15,.lam 9,.lam 10,.app 11 14,.app 12 13,.var 0,.var 1,.var 0,.app 16 19,.app 17 18,.var 0,.opaque,.var 0,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨6,[]⟩],[⟨13,[9,8,5]⟩],[⟨13,[10,6,2]⟩,⟨13,[10,6,3]⟩],[⟨13,[11,7,4]⟩],[⟨18,[5]⟩],[⟨5,[0]⟩],[⟨15,[2]⟩,⟨15,[3]⟩],[⟨15,[4]⟩],[⟨15,[5]⟩],[⟨20,[]⟩],[⟨14,[10,6,2]⟩,⟨14,[10,6,3]⟩,⟨14,[11,7,4]⟩],[⟨19,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨14,[9,8,5]⟩,0⟩],[⟨⟨14,[10,6,2]⟩,14⟩],[⟨⟨14,[10,6,3]⟩,14⟩],[⟨⟨14,[11,7,4]⟩,14⟩],[⟨⟨13,[9,8,5]⟩,3⟩],[⟨⟨13,[10,6,2]⟩,4⟩],[⟨⟨13,[10,6,3]⟩,5⟩],[⟨⟨13,[11,7,4]⟩,6⟩],[⟨⟨19,[5]⟩,14⟩],[⟨⟨18,[5]⟩,11⟩],[⟨⟨27,[1]⟩,3⟩],[⟨⟨24,[1]⟩,13⟩],[⟨⟨5,[0]⟩,1⟩],[⟨⟨15,[2]⟩,4⟩,⟨⟨15,[2]⟩,5⟩],[⟨⟨15,[3]⟩,6⟩],[⟨⟨15,[4]⟩,11⟩],[⟨⟨15,[5]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[0]⟩,1⟩,⟨⟨4,[0]⟩,15⟩,⟨⟨5,[0]⟩,8⟩,⟨⟨5,[0]⟩,9⟩,⟨⟨5,[0]⟩,10⟩,⟨⟨5,[0]⟩,12⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,10⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,15⟩,⟨⟨7,[2]⟩,4⟩,⟨⟨7,[2]⟩,5⟩,⟨⟨7,[3]⟩,6⟩,⟨⟨7,[4]⟩,11⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨8,[2]⟩,16⟩,⟨⟨8,[3]⟩,17⟩,⟨⟨8,[4]⟩,18⟩,⟨⟨8,[5]⟩,19⟩,⟨⟨9,[6,2]⟩,4⟩,⟨⟨9,[6,2]⟩,5⟩,⟨⟨9,[6,3]⟩,6⟩,⟨⟨9,[7,4]⟩,11⟩,⟨⟨9,[8,5]⟩,1⟩,⟨⟨10,[9,8,5]⟩,0⟩,⟨⟨10,[10,6,2]⟩,14⟩,⟨⟨10,[10,6,3]⟩,14⟩,⟨⟨10,[11,7,4]⟩,14⟩,⟨⟨11,[9,8,5]⟩,3⟩,⟨⟨11,[10,6,2]⟩,4⟩,⟨⟨11,[10,6,3]⟩,5⟩,⟨⟨11,[11,7,4]⟩,6⟩,⟨⟨12,[9,8,5]⟩,7⟩,⟨⟨12,[10,6,2]⟩,8⟩,⟨⟨12,[10,6,3]⟩,9⟩,⟨⟨12,[11,7,4]⟩,10⟩,⟨⟨13,[9,8,5]⟩,14⟩,⟨⟨14,[10,6,2]⟩,8⟩,⟨⟨14,[10,6,2]⟩,9⟩,⟨⟨14,[10,6,3]⟩,8⟩,⟨⟨14,[10,6,3]⟩,9⟩,⟨⟨14,[11,7,4]⟩,8⟩,⟨⟨14,[11,7,4]⟩,9⟩,⟨⟨15,[5]⟩,14⟩,⟨⟨16,[5]⟩,11⟩,⟨⟨17,[5]⟩,12⟩,⟨⟨19,[5]⟩,8⟩,⟨⟨19,[5]⟩,9⟩,⟨⟨19,[5]⟩,10⟩,⟨⟨20,[]⟩,7⟩,⟨⟨21,[1]⟩,3⟩,⟨⟨22,[1]⟩,13⟩,⟨⟨23,[1]⟩,14⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[9],[10],[11],[12],[14],[15],[16],[17],[18],[19],[19],[20],[21],[22],[23,24],[25],[26],[27],[29],[29],[30],[31],[28],[32],[33],[34],[35],[36],[37],[38],[39],[53],[41,43,45],[42,44,46],[52],[47],[41,43,45],[42,44,46],[41,43,45],[42,44,46],[50],[51],[48],[49],[8],[5],[6],[7],[54],[55],[56],[40]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 9=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<57 := hi
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
end Certgen.R105
