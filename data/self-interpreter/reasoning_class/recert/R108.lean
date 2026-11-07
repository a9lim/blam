import Regular
namespace Certgen.R108
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.lam 9,.lam 10,.app 11 18,.app 12 13,.var 0,.app 14 17,.app 15 16,.var 2,.opaque,.var 2,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨6,[]⟩],[⟨13,[9,8,5]⟩],[⟨13,[10,6,2]⟩,⟨13,[10,6,3]⟩],[⟨13,[11,7,4]⟩],[⟨16,[9,8,5]⟩],[⟨5,[0]⟩],[⟨19,[2]⟩,⟨19,[3]⟩],[⟨19,[4]⟩],[⟨19,[5]⟩],[⟨20,[]⟩],[⟨18,[10,6,2]⟩,⟨18,[10,6,3]⟩,⟨18,[11,7,4]⟩],[⟨17,[9,8,5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨18,[9,8,5]⟩,0⟩],[⟨⟨18,[10,6,2]⟩,14⟩],[⟨⟨18,[10,6,3]⟩,14⟩],[⟨⟨18,[11,7,4]⟩,14⟩],[⟨⟨13,[9,8,5]⟩,3⟩],[⟨⟨13,[10,6,2]⟩,4⟩],[⟨⟨13,[10,6,3]⟩,5⟩],[⟨⟨13,[11,7,4]⟩,6⟩],[⟨⟨17,[9,8,5]⟩,14⟩],[⟨⟨16,[9,8,5]⟩,11⟩],[⟨⟨27,[1]⟩,3⟩],[⟨⟨24,[1]⟩,13⟩],[⟨⟨5,[0]⟩,1⟩],[⟨⟨19,[2]⟩,4⟩,⟨⟨19,[2]⟩,5⟩],[⟨⟨19,[3]⟩,6⟩],[⟨⟨19,[4]⟩,11⟩],[⟨⟨19,[5]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[0]⟩,1⟩,⟨⟨4,[0]⟩,15⟩,⟨⟨5,[0]⟩,8⟩,⟨⟨5,[0]⟩,9⟩,⟨⟨5,[0]⟩,10⟩,⟨⟨5,[0]⟩,12⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,10⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,15⟩,⟨⟨7,[2]⟩,4⟩,⟨⟨7,[2]⟩,5⟩,⟨⟨7,[3]⟩,6⟩,⟨⟨7,[4]⟩,11⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨8,[2]⟩,16⟩,⟨⟨8,[3]⟩,17⟩,⟨⟨8,[4]⟩,18⟩,⟨⟨8,[5]⟩,19⟩,⟨⟨9,[6,2]⟩,4⟩,⟨⟨9,[6,2]⟩,5⟩,⟨⟨9,[6,3]⟩,6⟩,⟨⟨9,[7,4]⟩,11⟩,⟨⟨9,[8,5]⟩,1⟩,⟨⟨10,[9,8,5]⟩,0⟩,⟨⟨10,[10,6,2]⟩,14⟩,⟨⟨10,[10,6,3]⟩,14⟩,⟨⟨10,[11,7,4]⟩,14⟩,⟨⟨11,[9,8,5]⟩,3⟩,⟨⟨11,[10,6,2]⟩,4⟩,⟨⟨11,[10,6,3]⟩,5⟩,⟨⟨11,[11,7,4]⟩,6⟩,⟨⟨12,[9,8,5]⟩,7⟩,⟨⟨12,[10,6,2]⟩,8⟩,⟨⟨12,[10,6,3]⟩,9⟩,⟨⟨12,[11,7,4]⟩,10⟩,⟨⟨13,[9,8,5]⟩,14⟩,⟨⟨14,[9,8,5]⟩,11⟩,⟨⟨15,[9,8,5]⟩,12⟩,⟨⟨17,[9,8,5]⟩,8⟩,⟨⟨17,[9,8,5]⟩,9⟩,⟨⟨17,[9,8,5]⟩,10⟩,⟨⟨18,[10,6,2]⟩,8⟩,⟨⟨18,[10,6,2]⟩,9⟩,⟨⟨18,[10,6,3]⟩,8⟩,⟨⟨18,[10,6,3]⟩,9⟩,⟨⟨18,[11,7,4]⟩,8⟩,⟨⟨18,[11,7,4]⟩,9⟩,⟨⟨20,[]⟩,7⟩,⟨⟨21,[1]⟩,3⟩,⟨⟨22,[1]⟩,13⟩,⟨⟨23,[1]⟩,14⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[9],[10],[11],[12],[14],[15],[16],[17],[18],[19],[19],[20],[21],[22],[23,24],[25],[26],[27],[29],[29],[30],[31],[28],[32],[33],[34],[35],[36],[37],[38],[39],[52],[46,48,50],[47,49,51],[45],[41],[42],[8],[5],[6],[7],[46,48,50],[47,49,51],[46,48,50],[47,49,51],[43],[44],[53],[54],[55],[40]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 8=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<56 := hi
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
end Certgen.R108
