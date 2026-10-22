import Regular
namespace Certgen.R127
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 9,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.lam 8,.var 1,.lam 10,.app 11 18,.lam 12,.app 13 14,.var 0,.app 15 16,.var 0,.lam 17,.var 1,.app 19 20,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[7]⟩],[⟨18,[8]⟩],[⟨18,[9]⟩],[⟨18,[10]⟩],[⟨20,[8]⟩],[⟨9,[]⟩],[⟨20,[10]⟩],[⟨14,[1,8]⟩,⟨14,[3,10]⟩],[⟨16,[1,8]⟩,⟨16,[3,10]⟩],[⟨5,[5]⟩],[⟨7,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨9,[]⟩,1⟩],[⟨⟨18,[7]⟩,13⟩,⟨⟨18,[7]⟩,17⟩],[⟨⟨18,[8]⟩,13⟩],[⟨⟨18,[9]⟩,1⟩],[⟨⟨18,[10]⟩,17⟩],[⟨⟨14,[0,7]⟩,13⟩,⟨⟨14,[0,7]⟩,17⟩],[⟨⟨14,[1,8]⟩,13⟩],[⟨⟨14,[2,9]⟩,1⟩],[⟨⟨14,[3,10]⟩,17⟩],[⟨⟨16,[1,8]⟩,13⟩],[⟨⟨16,[3,10]⟩,13⟩],[⟨⟨20,[7]⟩,7⟩],[⟨⟨20,[8]⟩,11⟩],[⟨⟨20,[8]⟩,8⟩],[⟨⟨20,[8]⟩,8⟩,⟨⟨20,[8]⟩,11⟩],[⟨⟨20,[9]⟩,9⟩],[⟨⟨20,[10]⟩,12⟩],[⟨⟨20,[10]⟩,10⟩],[⟨⟨20,[10]⟩,8⟩,⟨⟨20,[10]⟩,11⟩],[⟨⟨5,[5]⟩,1⟩],[⟨⟨7,[5]⟩,17⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,21⟩,⟨⟨5,[5]⟩,17⟩,⟨⟨6,[5]⟩,22⟩,⟨⟨7,[5]⟩,18⟩,⟨⟨7,[5]⟩,19⟩,⟨⟨7,[5]⟩,20⟩,⟨⟨8,[6,5]⟩,8⟩,⟨⟨8,[6,5]⟩,10⟩,⟨⟨8,[6,5]⟩,11⟩,⟨⟨8,[6,5]⟩,12⟩,⟨⟨9,[]⟩,8⟩,⟨⟨9,[]⟩,10⟩,⟨⟨9,[]⟩,11⟩,⟨⟨9,[]⟩,12⟩,⟨⟨9,[]⟩,21⟩,⟨⟨9,[]⟩,22⟩,⟨⟨10,[7]⟩,13⟩,⟨⟨10,[7]⟩,17⟩,⟨⟨10,[8]⟩,13⟩,⟨⟨10,[9]⟩,1⟩,⟨⟨10,[10]⟩,17⟩,⟨⟨11,[7]⟩,3⟩,⟨⟨11,[8]⟩,4⟩,⟨⟨11,[9]⟩,5⟩,⟨⟨11,[10]⟩,6⟩,⟨⟨12,[0,7]⟩,13⟩,⟨⟨12,[0,7]⟩,17⟩,⟨⟨12,[1,8]⟩,13⟩,⟨⟨12,[2,9]⟩,1⟩,⟨⟨12,[3,10]⟩,17⟩,⟨⟨13,[0,7]⟩,7⟩,⟨⟨13,[1,8]⟩,8⟩,⟨⟨13,[2,9]⟩,9⟩,⟨⟨13,[3,10]⟩,10⟩,⟨⟨14,[1,8]⟩,13⟩,⟨⟨14,[3,10]⟩,13⟩,⟨⟨15,[1,8]⟩,11⟩,⟨⟨15,[3,10]⟩,12⟩,⟨⟨16,[1,8]⟩,14⟩,⟨⟨16,[1,8]⟩,15⟩,⟨⟨16,[1,8]⟩,16⟩,⟨⟨16,[3,10]⟩,14⟩,⟨⟨16,[3,10]⟩,15⟩,⟨⟨16,[3,10]⟩,16⟩,⟨⟨17,[4,1,8]⟩,8⟩,⟨⟨17,[4,1,8]⟩,11⟩,⟨⟨17,[4,3,10]⟩,8⟩,⟨⟨17,[4,3,10]⟩,11⟩,⟨⟨18,[7]⟩,7⟩,⟨⟨18,[8]⟩,8⟩,⟨⟨18,[8]⟩,11⟩,⟨⟨18,[9]⟩,9⟩,⟨⟨18,[10]⟩,8⟩,⟨⟨18,[10]⟩,10⟩,⟨⟨18,[10]⟩,11⟩,⟨⟨18,[10]⟩,12⟩,⟨⟨19,[7]⟩,13⟩,⟨⟨19,[8]⟩,14⟩,⟨⟨19,[8]⟩,15⟩,⟨⟨19,[8]⟩,16⟩,⟨⟨19,[9]⟩,17⟩,⟨⟨19,[10]⟩,18⟩,⟨⟨19,[10]⟩,19⟩,⟨⟨19,[10]⟩,20⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[18],[6],[19],[13],[11],[10,12],[14],[15],[16],[17],[20],[21],[22],[22],[23],[24],[25],[25],[26],[27],[28],[29,30],[31],[32],[33],[34],[34],[35],[36],[37],[52],[53],[55],[57],[40],[41],[54],[59],[49],[48],[48,49],[51],[50],[50,51],[53],[54],[56],[58],[60],[62],[61],[64],[67],[66],[67],[65],[38,39],[42,45],[43,46],[44,47],[5],[7],[8],[9]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 8=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<68 := hi
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
end Certgen.R127
