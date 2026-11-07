import Regular
namespace Certgen.R325
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 12,.lam 3,.app 4 9,.app 5 6,.var 0,.app 7 8,.var 0,.opaque,.app 10 11,.var 0,.var 0,.lam 13,.lam 14,.app 15 16,.var 0,.app 17 18,.var 1,.lam 19,.var 1,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[5,3]⟩],[⟨6,[10]⟩],[⟨8,[10]⟩],[⟨11,[10]⟩],[⟨16,[4,0]⟩,⟨16,[5,3]⟩],[⟨16,[4,0]⟩,⟨16,[5,3]⟩,⟨16,[7,1]⟩],[⟨18,[7,1]⟩],[⟨9,[10]⟩],[⟨16,[6,2]⟩],[⟨18,[4,0]⟩],[⟨12,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨12,[]⟩,1⟩],[⟨⟨16,[4,0]⟩,1⟩],[⟨⟨16,[5,3]⟩,1⟩],[⟨⟨16,[6,2]⟩,4⟩],[⟨⟨16,[6,2]⟩,3⟩,⟨⟨16,[6,2]⟩,4⟩],[⟨⟨16,[7,1]⟩,1⟩],[⟨⟨18,[4,0]⟩,3⟩],[⟨⟨18,[4,0]⟩,4⟩],[⟨⟨18,[4,0]⟩,3⟩,⟨⟨18,[4,0]⟩,4⟩],[⟨⟨18,[5,3]⟩,3⟩],[⟨⟨18,[5,3]⟩,4⟩],[⟨⟨18,[5,3]⟩,3⟩,⟨⟨18,[5,3]⟩,4⟩],[⟨⟨18,[7,1]⟩,4⟩],[⟨⟨18,[7,1]⟩,3⟩,⟨⟨18,[7,1]⟩,4⟩],[⟨⟨9,[10]⟩,1⟩],[⟨⟨6,[10]⟩,16⟩],[⟨⟨8,[10]⟩,14⟩],[⟨⟨8,[10]⟩,15⟩],[⟨⟨11,[10]⟩,7⟩],[⟨⟨11,[10]⟩,3⟩,⟨⟨11,[10]⟩,4⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[10]⟩,1⟩,⟨⟨4,[10]⟩,16⟩,⟨⟨5,[10]⟩,17⟩,⟨⟨6,[10]⟩,14⟩,⟨⟨6,[10]⟩,15⟩,⟨⟨7,[10]⟩,18⟩,⟨⟨7,[10]⟩,19⟩,⟨⟨9,[10]⟩,3⟩,⟨⟨9,[10]⟩,4⟩,⟨⟨9,[10]⟩,7⟩,⟨⟨10,[10]⟩,20⟩,⟨⟨10,[10]⟩,21⟩,⟨⟨11,[10]⟩,11⟩,⟨⟨11,[10]⟩,12⟩,⟨⟨11,[10]⟩,13⟩,⟨⟨12,[]⟩,11⟩,⟨⟨12,[]⟩,12⟩,⟨⟨12,[]⟩,13⟩,⟨⟨12,[]⟩,17⟩,⟨⟨12,[]⟩,18⟩,⟨⟨12,[]⟩,19⟩,⟨⟨12,[]⟩,20⟩,⟨⟨12,[]⟩,21⟩,⟨⟨13,[0]⟩,3⟩,⟨⟨13,[0]⟩,4⟩,⟨⟨13,[1]⟩,16⟩,⟨⟨13,[2]⟩,14⟩,⟨⟨13,[2]⟩,15⟩,⟨⟨13,[3]⟩,3⟩,⟨⟨13,[3]⟩,4⟩,⟨⟨13,[3]⟩,7⟩,⟨⟨14,[4,0]⟩,1⟩,⟨⟨14,[5,3]⟩,1⟩,⟨⟨14,[6,2]⟩,3⟩,⟨⟨14,[6,2]⟩,4⟩,⟨⟨14,[7,1]⟩,1⟩,⟨⟨15,[4,0]⟩,3⟩,⟨⟨15,[5,3]⟩,4⟩,⟨⟨15,[6,2]⟩,5⟩,⟨⟨15,[6,2]⟩,6⟩,⟨⟨15,[7,1]⟩,7⟩,⟨⟨16,[4,0]⟩,3⟩,⟨⟨16,[4,0]⟩,4⟩,⟨⟨16,[5,3]⟩,3⟩,⟨⟨16,[5,3]⟩,4⟩,⟨⟨16,[7,1]⟩,3⟩,⟨⟨16,[7,1]⟩,4⟩,⟨⟨17,[4,0]⟩,8⟩,⟨⟨17,[4,0]⟩,9⟩,⟨⟨17,[4,0]⟩,10⟩,⟨⟨17,[5,3]⟩,11⟩,⟨⟨17,[5,3]⟩,12⟩,⟨⟨17,[5,3]⟩,13⟩,⟨⟨17,[7,1]⟩,14⟩,⟨⟨17,[7,1]⟩,15⟩,⟨⟨18,[5,3]⟩,8⟩,⟨⟨18,[5,3]⟩,9⟩,⟨⟨18,[5,3]⟩,10⟩,⟨⟨18,[7,1]⟩,5⟩,⟨⟨18,[7,1]⟩,6⟩,⟨⟨19,[8,7,1]⟩,3⟩,⟨⟨19,[8,7,1]⟩,4⟩,⟨⟨19,[9,5,3]⟩,3⟩,⟨⟨19,[9,5,3]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[21],[8],[9],[22],[23],[14],[14],[13],[24],[25],[18],[19],[20],[26],[27],[26,27],[28],[29],[30],[33],[31,32],[34],[34],[38],[37],[36,37],[35],[35],[35],[39],[40],[42],[41],[43],[44,46],[45,47,49],[61],[62],[12],[50],[51],[53],[54],[57],[56],[58],[59],[60],[15],[16],[17],[6],[7],[65],[66],[65,66],[64],[63,64],[10],[11],[44,46,48],[45,47,49]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 7=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<67 := hi
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
end Certgen.R325
