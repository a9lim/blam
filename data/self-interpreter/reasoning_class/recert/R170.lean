import Regular
namespace Certgen.R170
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 14,.lam 9,.app 10 13,.app 11 12,.var 0,.var 0,.opaque,.app 15 20,.app 16 17,.var 0,.lam 18,.lam 19,.var 2,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[4]⟩,⟨17,[5]⟩],[⟨20,[4]⟩,⟨20,[5]⟩],[⟨6,[]⟩],[⟨12,[8,4]⟩,⟨12,[8,5]⟩],[⟨17,[3]⟩],[⟨17,[6]⟩],[⟨5,[2]⟩],[⟨14,[3]⟩],[⟨14,[4]⟩,⟨14,[5]⟩],[⟨14,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[7,3]⟩,28⟩],[⟨⟨12,[8,4]⟩,29⟩],[⟨⟨12,[8,5]⟩,30⟩],[⟨⟨12,[9,6]⟩,31⟩],[⟨⟨20,[3]⟩,3⟩],[⟨⟨20,[4]⟩,4⟩,⟨⟨20,[4]⟩,5⟩,⟨⟨20,[4]⟩,15⟩],[⟨⟨20,[4]⟩,15⟩],[⟨⟨20,[4]⟩,4⟩,⟨⟨20,[4]⟩,5⟩],[⟨⟨20,[5]⟩,4⟩,⟨⟨20,[5]⟩,5⟩,⟨⟨20,[5]⟩,15⟩],[⟨⟨20,[5]⟩,15⟩],[⟨⟨20,[5]⟩,4⟩,⟨⟨20,[5]⟩,5⟩],[⟨⟨20,[6]⟩,6⟩],[⟨⟨17,[3]⟩,7⟩],[⟨⟨17,[4]⟩,8⟩],[⟨⟨17,[4]⟩,9⟩],[⟨⟨17,[4]⟩,10⟩],[⟨⟨17,[5]⟩,11⟩],[⟨⟨17,[5]⟩,12⟩],[⟨⟨17,[5]⟩,13⟩],[⟨⟨17,[6]⟩,14⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨14,[3]⟩,29⟩,⟨⟨14,[3]⟩,30⟩],[⟨⟨14,[4]⟩,7⟩],[⟨⟨14,[5]⟩,14⟩],[⟨⟨14,[6]⟩,1⟩],[⟨⟨13,[7,3]⟩,29⟩,⟨⟨13,[7,3]⟩,30⟩],[⟨⟨13,[8,4]⟩,7⟩],[⟨⟨13,[8,5]⟩,14⟩],[⟨⟨13,[9,6]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,23⟩,⟨⟨5,[2]⟩,4⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨5,[2]⟩,15⟩,⟨⟨5,[2]⟩,22⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,15⟩,⟨⟨6,[]⟩,22⟩,⟨⟨6,[]⟩,23⟩,⟨⟨7,[3]⟩,29⟩,⟨⟨7,[3]⟩,30⟩,⟨⟨7,[4]⟩,7⟩,⟨⟨7,[5]⟩,14⟩,⟨⟨7,[6]⟩,1⟩,⟨⟨8,[3]⟩,24⟩,⟨⟨8,[4]⟩,25⟩,⟨⟨8,[5]⟩,26⟩,⟨⟨8,[6]⟩,27⟩,⟨⟨9,[7,3]⟩,29⟩,⟨⟨9,[7,3]⟩,30⟩,⟨⟨9,[8,4]⟩,7⟩,⟨⟨9,[8,5]⟩,14⟩,⟨⟨9,[9,6]⟩,1⟩,⟨⟨10,[7,3]⟩,28⟩,⟨⟨10,[8,4]⟩,29⟩,⟨⟨10,[8,5]⟩,30⟩,⟨⟨10,[9,6]⟩,31⟩,⟨⟨11,[7,3]⟩,3⟩,⟨⟨11,[8,4]⟩,4⟩,⟨⟨11,[8,5]⟩,5⟩,⟨⟨11,[9,6]⟩,6⟩,⟨⟨12,[8,4]⟩,4⟩,⟨⟨12,[8,4]⟩,5⟩,⟨⟨12,[8,4]⟩,15⟩,⟨⟨12,[8,5]⟩,4⟩,⟨⟨12,[8,5]⟩,5⟩,⟨⟨12,[8,5]⟩,15⟩,⟨⟨14,[3]⟩,3⟩,⟨⟨14,[4]⟩,4⟩,⟨⟨14,[4]⟩,5⟩,⟨⟨14,[4]⟩,15⟩,⟨⟨14,[5]⟩,4⟩,⟨⟨14,[5]⟩,5⟩,⟨⟨14,[5]⟩,15⟩,⟨⟨14,[6]⟩,6⟩,⟨⟨15,[3]⟩,7⟩,⟨⟨15,[4]⟩,8⟩,⟨⟨15,[4]⟩,9⟩,⟨⟨15,[4]⟩,10⟩,⟨⟨15,[5]⟩,11⟩,⟨⟨15,[5]⟩,12⟩,⟨⟨15,[5]⟩,13⟩,⟨⟨15,[6]⟩,14⟩,⟨⟨16,[3]⟩,15⟩,⟨⟨16,[4]⟩,16⟩,⟨⟨16,[4]⟩,17⟩,⟨⟨16,[4]⟩,18⟩,⟨⟨16,[5]⟩,19⟩,⟨⟨16,[5]⟩,20⟩,⟨⟨16,[5]⟩,21⟩,⟨⟨16,[6]⟩,22⟩,⟨⟨17,[3]⟩,16⟩,⟨⟨17,[3]⟩,17⟩,⟨⟨17,[3]⟩,18⟩,⟨⟨17,[6]⟩,19⟩,⟨⟨17,[6]⟩,20⟩,⟨⟨17,[6]⟩,21⟩,⟨⟨18,[0,3]⟩,8⟩,⟨⟨18,[0,3]⟩,9⟩,⟨⟨18,[0,3]⟩,10⟩,⟨⟨18,[0,6]⟩,11⟩,⟨⟨18,[0,6]⟩,12⟩,⟨⟨18,[0,6]⟩,13⟩,⟨⟨19,[1,0,3]⟩,4⟩,⟨⟨19,[1,0,3]⟩,5⟩,⟨⟨19,[1,0,3]⟩,15⟩,⟨⟨19,[1,0,6]⟩,4⟩,⟨⟨19,[1,0,6]⟩,5⟩,⟨⟨19,[1,0,6]⟩,15⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[9],[10],[11],[12],[14],[15],[16],[17],[18],[19],[19],[20],[21],[22],[23,24],[25],[26],[27],[28],[28],[29],[30],[31],[32],[33],[34],[35],[42],[43,46],[44,47],[49],[43,46],[44,47],[45,48],[43,46],[44,47],[45,48],[50],[51],[51],[51],[54],[54],[54],[57],[58],[59],[60],[61],[62],[63],[64],[65],[38,41],[66],[67],[68],[69],[70],[71],[8],[72],[73],[74],[75],[76],[77],[78,79,80],[80],[78,79],[81,82,83],[83],[81,82],[36,39],[37,40],[38,41],[5],[6],[7]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<84 := hi
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
end Certgen.R170
