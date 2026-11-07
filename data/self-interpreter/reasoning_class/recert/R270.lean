import Regular
namespace Certgen.R270
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.var 0,.opaque,.lam 9,.lam 10,.app 11 12,.var 1,.lam 13,.app 14 18,.app 15 16,.var 0,.lam 17,.var 1,.app 19 20,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[10,8]⟩],[⟨18,[3,10,8]⟩],[⟨18,[4,10,8]⟩],[⟨16,[0,11,9]⟩],[⟨16,[1,10,8]⟩,⟨16,[2,10,8]⟩],[⟨16,[3,10,8]⟩,⟨16,[4,10,8]⟩],[⟨20,[3,10,8]⟩,⟨20,[4,10,8]⟩],[⟨8,[]⟩],[⟨12,[11,9]⟩],[⟨6,[7]⟩],[⟨21,[]⟩],[⟨7,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨12,[10,8]⟩,0⟩],[⟨⟨12,[11,9]⟩,1⟩],[⟨⟨18,[0,11,9]⟩,0⟩],[⟨⟨18,[1,10,8]⟩,5⟩],[⟨⟨18,[2,10,8]⟩,6⟩,⟨⟨18,[2,10,8]⟩,7⟩],[⟨⟨18,[3,10,8]⟩,5⟩],[⟨⟨18,[4,10,8]⟩,6⟩,⟨⟨18,[4,10,8]⟩,7⟩],[⟨⟨16,[0,11,9]⟩,5⟩],[⟨⟨16,[1,10,8]⟩,6⟩],[⟨⟨16,[2,10,8]⟩,7⟩],[⟨⟨16,[3,10,8]⟩,8⟩],[⟨⟨16,[4,10,8]⟩,9⟩],[⟨⟨20,[3,10,8]⟩,11⟩],[⟨⟨20,[3,10,8]⟩,9⟩],[⟨⟨20,[3,10,8]⟩,12⟩],[⟨⟨20,[3,10,8]⟩,9⟩,⟨⟨20,[3,10,8]⟩,12⟩],[⟨⟨20,[4,10,8]⟩,12⟩],[⟨⟨20,[4,10,8]⟩,9⟩],[⟨⟨20,[4,10,8]⟩,9⟩,⟨⟨20,[4,10,8]⟩,12⟩],[⟨⟨7,[7]⟩,1⟩],[⟨⟨6,[7]⟩,22⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[7]⟩,1⟩,⟨⟨4,[7]⟩,22⟩,⟨⟨5,[7]⟩,23⟩,⟨⟨6,[7]⟩,4⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,23⟩,⟨⟨9,[8]⟩,1⟩,⟨⟨9,[9]⟩,22⟩,⟨⟨10,[10,8]⟩,0⟩,⟨⟨10,[11,9]⟩,1⟩,⟨⟨11,[10,8]⟩,3⟩,⟨⟨11,[11,9]⟩,4⟩,⟨⟨12,[10,8]⟩,8⟩,⟨⟨12,[10,8]⟩,9⟩,⟨⟨12,[10,8]⟩,10⟩,⟨⟨12,[10,8]⟩,11⟩,⟨⟨12,[10,8]⟩,12⟩,⟨⟨12,[11,9]⟩,3⟩,⟨⟨13,[0,11,9]⟩,0⟩,⟨⟨13,[1,10,8]⟩,5⟩,⟨⟨13,[2,10,8]⟩,6⟩,⟨⟨13,[2,10,8]⟩,7⟩,⟨⟨13,[3,10,8]⟩,5⟩,⟨⟨13,[4,10,8]⟩,6⟩,⟨⟨13,[4,10,8]⟩,7⟩,⟨⟨14,[0,11,9]⟩,5⟩,⟨⟨14,[1,10,8]⟩,6⟩,⟨⟨14,[2,10,8]⟩,7⟩,⟨⟨14,[3,10,8]⟩,8⟩,⟨⟨14,[4,10,8]⟩,9⟩,⟨⟨15,[0,11,9]⟩,10⟩,⟨⟨15,[1,10,8]⟩,11⟩,⟨⟨15,[2,10,8]⟩,12⟩,⟨⟨15,[3,10,8]⟩,13⟩,⟨⟨15,[4,10,8]⟩,14⟩,⟨⟨16,[0,11,9]⟩,13⟩,⟨⟨16,[0,11,9]⟩,15⟩,⟨⟨16,[0,11,9]⟩,16⟩,⟨⟨16,[0,11,9]⟩,17⟩,⟨⟨16,[0,11,9]⟩,18⟩,⟨⟨16,[1,10,8]⟩,14⟩,⟨⟨16,[1,10,8]⟩,19⟩,⟨⟨16,[1,10,8]⟩,20⟩,⟨⟨16,[1,10,8]⟩,21⟩,⟨⟨16,[2,10,8]⟩,14⟩,⟨⟨16,[2,10,8]⟩,19⟩,⟨⟨16,[2,10,8]⟩,20⟩,⟨⟨16,[2,10,8]⟩,21⟩,⟨⟨17,[5,0,11,9]⟩,8⟩,⟨⟨17,[5,1,10,8]⟩,9⟩,⟨⟨17,[5,2,10,8]⟩,9⟩,⟨⟨17,[6,0,11,9]⟩,9⟩,⟨⟨17,[6,0,11,9]⟩,11⟩,⟨⟨17,[6,0,11,9]⟩,12⟩,⟨⟨17,[6,1,10,8]⟩,9⟩,⟨⟨17,[6,1,10,8]⟩,12⟩,⟨⟨17,[6,2,10,8]⟩,9⟩,⟨⟨17,[6,2,10,8]⟩,12⟩,⟨⟨18,[3,10,8]⟩,9⟩,⟨⟨18,[3,10,8]⟩,11⟩,⟨⟨18,[3,10,8]⟩,12⟩,⟨⟨18,[4,10,8]⟩,9⟩,⟨⟨18,[4,10,8]⟩,12⟩,⟨⟨19,[3,10,8]⟩,15⟩,⟨⟨19,[3,10,8]⟩,16⟩,⟨⟨19,[3,10,8]⟩,17⟩,⟨⟨19,[3,10,8]⟩,18⟩,⟨⟨19,[4,10,8]⟩,19⟩,⟨⟨19,[4,10,8]⟩,20⟩,⟨⟨19,[4,10,8]⟩,21⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[8],[7],[9],[10],[11],[12],[13],[14],[20],[6],[22],[23,24],[25],[26],[27],[21],[28],[29],[30],[30],[31],[32],[32],[33],[34],[35],[36],[37],[17],[62],[65],[38],[43,47],[51],[55],[54],[56],[54,56],[52],[58],[57],[57,58],[53],[60],[59],[59,60],[15],[61],[64],[16],[18],[19],[61],[63],[64],[65],[67],[66],[68],[71],[70],[39],[40],[41],[42],[44,48],[45,49],[46,50]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<73 := hi
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
 by_cases h60 : i<72
 · exact range_sound block60 i (by omega) h60 hi
 exact range_sound block72 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R270
