import Regular
namespace Certgen.R209
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 18,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 17,.app 9 13,.lam 10,.app 11 12,.var 0,.var 0,.app 14 15,.var 0,.lam 16,.var 1,.opaque,.lam 19,.app 20 25,.app 21 22,.var 0,.lam 23,.lam 24,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[3]⟩,⟨15,[4]⟩],[⟨6,[]⟩],[⟨12,[7,3]⟩,⟨12,[7,4]⟩],[⟨15,[2]⟩],[⟨15,[5]⟩],[⟨5,[1]⟩],[⟨13,[2]⟩],[⟨13,[3]⟩,⟨13,[4]⟩],[⟨13,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨18,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[6,2]⟩,16⟩],[⟨⟨12,[7,3]⟩,17⟩],[⟨⟨12,[7,4]⟩,18⟩],[⟨⟨12,[8,5]⟩,19⟩],[⟨⟨15,[2]⟩,3⟩],[⟨⟨15,[3]⟩,4⟩,⟨⟨15,[3]⟩,5⟩,⟨⟨15,[3]⟩,7⟩],[⟨⟨15,[3]⟩,7⟩],[⟨⟨15,[3]⟩,4⟩,⟨⟨15,[3]⟩,5⟩],[⟨⟨15,[4]⟩,4⟩,⟨⟨15,[4]⟩,5⟩,⟨⟨15,[4]⟩,7⟩],[⟨⟨15,[4]⟩,7⟩],[⟨⟨15,[4]⟩,4⟩,⟨⟨15,[4]⟩,5⟩],[⟨⟨15,[5]⟩,6⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨17,[2]⟩,17⟩,⟨⟨17,[2]⟩,18⟩],[⟨⟨17,[3]⟩,3⟩],[⟨⟨17,[4]⟩,6⟩],[⟨⟨17,[5]⟩,1⟩],[⟨⟨13,[2]⟩,16⟩],[⟨⟨13,[3]⟩,17⟩],[⟨⟨13,[4]⟩,18⟩],[⟨⟨13,[5]⟩,19⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,15⟩,⟨⟨5,[1]⟩,4⟩,⟨⟨5,[1]⟩,5⟩,⟨⟨5,[1]⟩,7⟩,⟨⟨5,[1]⟩,14⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,7⟩,⟨⟨6,[]⟩,14⟩,⟨⟨6,[]⟩,15⟩,⟨⟨7,[2]⟩,17⟩,⟨⟨7,[2]⟩,18⟩,⟨⟨7,[3]⟩,3⟩,⟨⟨7,[4]⟩,6⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨8,[2]⟩,16⟩,⟨⟨8,[3]⟩,17⟩,⟨⟨8,[4]⟩,18⟩,⟨⟨8,[5]⟩,19⟩,⟨⟨9,[2]⟩,20⟩,⟨⟨9,[3]⟩,21⟩,⟨⟨9,[4]⟩,22⟩,⟨⟨9,[5]⟩,23⟩,⟨⟨10,[6,2]⟩,16⟩,⟨⟨10,[7,3]⟩,17⟩,⟨⟨10,[7,4]⟩,18⟩,⟨⟨10,[8,5]⟩,19⟩,⟨⟨11,[6,2]⟩,3⟩,⟨⟨11,[7,3]⟩,4⟩,⟨⟨11,[7,4]⟩,5⟩,⟨⟨11,[8,5]⟩,6⟩,⟨⟨12,[7,3]⟩,4⟩,⟨⟨12,[7,3]⟩,5⟩,⟨⟨12,[7,3]⟩,7⟩,⟨⟨12,[7,4]⟩,4⟩,⟨⟨12,[7,4]⟩,5⟩,⟨⟨12,[7,4]⟩,7⟩,⟨⟨13,[2]⟩,3⟩,⟨⟨13,[3]⟩,4⟩,⟨⟨13,[3]⟩,5⟩,⟨⟨13,[3]⟩,7⟩,⟨⟨13,[4]⟩,4⟩,⟨⟨13,[4]⟩,5⟩,⟨⟨13,[4]⟩,7⟩,⟨⟨13,[5]⟩,6⟩,⟨⟨14,[2]⟩,7⟩,⟨⟨14,[3]⟩,8⟩,⟨⟨14,[3]⟩,9⟩,⟨⟨14,[3]⟩,10⟩,⟨⟨14,[4]⟩,11⟩,⟨⟨14,[4]⟩,12⟩,⟨⟨14,[4]⟩,13⟩,⟨⟨14,[5]⟩,14⟩,⟨⟨15,[2]⟩,8⟩,⟨⟨15,[2]⟩,9⟩,⟨⟨15,[2]⟩,10⟩,⟨⟨15,[5]⟩,11⟩,⟨⟨15,[5]⟩,12⟩,⟨⟨15,[5]⟩,13⟩,⟨⟨16,[0,2]⟩,4⟩,⟨⟨16,[0,2]⟩,5⟩,⟨⟨16,[0,2]⟩,7⟩,⟨⟨16,[0,5]⟩,4⟩,⟨⟨16,[0,5]⟩,5⟩,⟨⟨16,[0,5]⟩,7⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[9],[10],[11],[12],[14],[15],[16],[17],[18],[19],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[41],[42,45],[43,46],[48],[42,45],[43,46],[44,47],[42,45],[43,46],[44,47],[49],[50],[50],[50],[53],[53],[53],[56],[37,40],[57],[58],[59],[60],[61],[62],[8],[63,64,65],[65],[63,64],[66,67,68],[68],[66,67],[35,38],[36,39],[37,40],[5],[6],[7]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 9=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<69 := hi
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
end Certgen.R209
