import Regular
namespace Certgen.R116
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 13,.lam 10,.app 11 12,.var 0,.var 0,.app 14 15,.var 0,.app 16 20,.app 17 18,.var 0,.lam 19,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[5]⟩],[⟨7,[]⟩],[⟨15,[6]⟩],[⟨12,[9,5]⟩,⟨12,[10,6]⟩],[⟨15,[3]⟩],[⟨18,[3]⟩],[⟨5,[1]⟩],[⟨13,[3]⟩],[⟨13,[4]⟩],[⟨13,[5]⟩],[⟨13,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[7,3]⟩,1⟩,⟨⟨12,[7,3]⟩,17⟩],[⟨⟨12,[8,4]⟩,3⟩],[⟨⟨12,[9,5]⟩,17⟩],[⟨⟨12,[10,6]⟩,1⟩],[⟨⟨15,[3]⟩,3⟩],[⟨⟨15,[4]⟩,4⟩],[⟨⟨15,[5]⟩,5⟩,⟨⟨15,[5]⟩,7⟩,⟨⟨15,[5]⟩,18⟩],[⟨⟨15,[5]⟩,7⟩],[⟨⟨15,[5]⟩,18⟩],[⟨⟨15,[5]⟩,5⟩],[⟨⟨15,[6]⟩,5⟩,⟨⟨15,[6]⟩,7⟩,⟨⟨15,[6]⟩,18⟩],[⟨⟨15,[6]⟩,7⟩],[⟨⟨15,[6]⟩,18⟩],[⟨⟨15,[6]⟩,6⟩],[⟨⟨20,[3]⟩,8⟩],[⟨⟨18,[3]⟩,17⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨13,[3]⟩,1⟩,⟨⟨13,[3]⟩,17⟩],[⟨⟨13,[4]⟩,3⟩],[⟨⟨13,[5]⟩,17⟩],[⟨⟨13,[6]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,19⟩,⟨⟨5,[1]⟩,13⟩,⟨⟨5,[1]⟩,14⟩,⟨⟨5,[1]⟩,15⟩,⟨⟨5,[1]⟩,16⟩,⟨⟨6,[2,1]⟩,5⟩,⟨⟨6,[2,1]⟩,6⟩,⟨⟨6,[2,1]⟩,7⟩,⟨⟨6,[2,1]⟩,18⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,18⟩,⟨⟨7,[]⟩,19⟩,⟨⟨8,[3]⟩,1⟩,⟨⟨8,[3]⟩,17⟩,⟨⟨8,[4]⟩,3⟩,⟨⟨8,[5]⟩,17⟩,⟨⟨8,[6]⟩,1⟩,⟨⟨9,[3]⟩,20⟩,⟨⟨9,[4]⟩,21⟩,⟨⟨9,[5]⟩,22⟩,⟨⟨9,[6]⟩,23⟩,⟨⟨10,[7,3]⟩,1⟩,⟨⟨10,[7,3]⟩,17⟩,⟨⟨10,[8,4]⟩,3⟩,⟨⟨10,[9,5]⟩,17⟩,⟨⟨10,[10,6]⟩,1⟩,⟨⟨11,[7,3]⟩,3⟩,⟨⟨11,[8,4]⟩,4⟩,⟨⟨11,[9,5]⟩,5⟩,⟨⟨11,[10,6]⟩,6⟩,⟨⟨12,[9,5]⟩,5⟩,⟨⟨12,[9,5]⟩,7⟩,⟨⟨12,[9,5]⟩,18⟩,⟨⟨12,[10,6]⟩,5⟩,⟨⟨12,[10,6]⟩,7⟩,⟨⟨12,[10,6]⟩,18⟩,⟨⟨13,[3]⟩,3⟩,⟨⟨13,[4]⟩,4⟩,⟨⟨13,[5]⟩,5⟩,⟨⟨13,[5]⟩,7⟩,⟨⟨13,[5]⟩,18⟩,⟨⟨13,[6]⟩,5⟩,⟨⟨13,[6]⟩,6⟩,⟨⟨13,[6]⟩,7⟩,⟨⟨13,[6]⟩,18⟩,⟨⟨14,[3]⟩,7⟩,⟨⟨14,[4]⟩,8⟩,⟨⟨14,[5]⟩,9⟩,⟨⟨14,[5]⟩,10⟩,⟨⟨14,[5]⟩,11⟩,⟨⟨14,[5]⟩,12⟩,⟨⟨14,[6]⟩,13⟩,⟨⟨14,[6]⟩,14⟩,⟨⟨14,[6]⟩,15⟩,⟨⟨14,[6]⟩,16⟩,⟨⟨15,[3]⟩,8⟩,⟨⟨16,[3]⟩,17⟩,⟨⟨17,[3]⟩,18⟩,⟨⟨18,[3]⟩,9⟩,⟨⟨18,[3]⟩,10⟩,⟨⟨18,[3]⟩,11⟩,⟨⟨18,[3]⟩,12⟩,⟨⟨19,[0,3]⟩,5⟩,⟨⟨19,[0,3]⟩,7⟩,⟨⟨19,[0,3]⟩,18⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[17],[9,11,12],[11],[12],[10],[13],[14],[15],[16],[19],[18],[20],[21],[22],[23],[23],[24],[25],[26],[27,28],[29],[30],[31],[32],[32],[33],[34],[35],[42],[43],[44],[48],[44],[45],[46],[47],[49],[50],[51],[52],[53],[53],[53],[57],[60],[57],[57],[37,40],[61],[64],[65],[66],[67],[5],[6],[7],[8],[62],[63],[38,41],[68,69,70],[69],[70],[68],[36,39],[37,40],[38,41]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<71 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 by_cases h48 : i<60
 · exact range_sound block48 i (by omega) h48 hi
 exact range_sound block60 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R116
