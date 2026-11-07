import Regular
namespace Certgen.R104
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 13,.lam 9,.lam 10,.app 11 12,.var 1,.var 1,.app 14 19,.app 15 16,.var 0,.lam 17,.lam 18,.var 2,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[4]⟩,⟨16,[5]⟩],[⟨19,[4]⟩,⟨19,[5]⟩],[⟨6,[]⟩],[⟨12,[12,8,4]⟩,⟨12,[12,8,5]⟩],[⟨16,[3]⟩],[⟨16,[6]⟩],[⟨5,[2]⟩],[⟨13,[3]⟩],[⟨13,[4]⟩,⟨13,[5]⟩],[⟨13,[6]⟩],[⟨20,[]⟩],[⟨12,[10,9,6]⟩,⟨12,[11,7,3]⟩],[⟨19,[3]⟩,⟨19,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[10,9,6]⟩,0⟩],[⟨⟨12,[11,7,3]⟩,0⟩],[⟨⟨12,[12,8,4]⟩,4⟩],[⟨⟨12,[12,8,5]⟩,3⟩],[⟨⟨19,[3]⟩,4⟩],[⟨⟨19,[4]⟩,5⟩,⟨⟨19,[4]⟩,6⟩,⟨⟨19,[4]⟩,15⟩],[⟨⟨19,[4]⟩,15⟩],[⟨⟨19,[4]⟩,5⟩,⟨⟨19,[4]⟩,6⟩],[⟨⟨19,[5]⟩,5⟩,⟨⟨19,[5]⟩,6⟩,⟨⟨19,[5]⟩,15⟩],[⟨⟨19,[5]⟩,15⟩],[⟨⟨19,[5]⟩,5⟩,⟨⟨19,[5]⟩,6⟩],[⟨⟨19,[6]⟩,3⟩],[⟨⟨16,[3]⟩,7⟩],[⟨⟨16,[4]⟩,8⟩],[⟨⟨16,[4]⟩,9⟩],[⟨⟨16,[4]⟩,10⟩],[⟨⟨16,[5]⟩,11⟩],[⟨⟨16,[5]⟩,12⟩],[⟨⟨16,[5]⟩,13⟩],[⟨⟨16,[6]⟩,14⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨13,[3]⟩,3⟩,⟨⟨13,[3]⟩,4⟩],[⟨⟨13,[4]⟩,7⟩],[⟨⟨13,[5]⟩,14⟩],[⟨⟨13,[6]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,23⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨5,[2]⟩,6⟩,⟨⟨5,[2]⟩,15⟩,⟨⟨5,[2]⟩,22⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,15⟩,⟨⟨6,[]⟩,22⟩,⟨⟨6,[]⟩,23⟩,⟨⟨7,[3]⟩,3⟩,⟨⟨7,[3]⟩,4⟩,⟨⟨7,[4]⟩,7⟩,⟨⟨7,[5]⟩,14⟩,⟨⟨7,[6]⟩,1⟩,⟨⟨8,[3]⟩,24⟩,⟨⟨8,[4]⟩,25⟩,⟨⟨8,[5]⟩,26⟩,⟨⟨8,[6]⟩,27⟩,⟨⟨9,[7,3]⟩,3⟩,⟨⟨9,[7,3]⟩,4⟩,⟨⟨9,[8,4]⟩,7⟩,⟨⟨9,[8,5]⟩,14⟩,⟨⟨9,[9,6]⟩,1⟩,⟨⟨10,[10,9,6]⟩,0⟩,⟨⟨10,[11,7,3]⟩,0⟩,⟨⟨10,[12,8,4]⟩,4⟩,⟨⟨10,[12,8,5]⟩,3⟩,⟨⟨11,[10,9,6]⟩,3⟩,⟨⟨11,[11,7,3]⟩,4⟩,⟨⟨11,[12,8,4]⟩,5⟩,⟨⟨11,[12,8,5]⟩,6⟩,⟨⟨12,[12,8,4]⟩,5⟩,⟨⟨12,[12,8,4]⟩,6⟩,⟨⟨12,[12,8,4]⟩,15⟩,⟨⟨12,[12,8,5]⟩,5⟩,⟨⟨12,[12,8,5]⟩,6⟩,⟨⟨12,[12,8,5]⟩,15⟩,⟨⟨13,[3]⟩,4⟩,⟨⟨13,[4]⟩,5⟩,⟨⟨13,[4]⟩,6⟩,⟨⟨13,[4]⟩,15⟩,⟨⟨13,[5]⟩,5⟩,⟨⟨13,[5]⟩,6⟩,⟨⟨13,[5]⟩,15⟩,⟨⟨13,[6]⟩,3⟩,⟨⟨14,[3]⟩,7⟩,⟨⟨14,[4]⟩,8⟩,⟨⟨14,[4]⟩,9⟩,⟨⟨14,[4]⟩,10⟩,⟨⟨14,[5]⟩,11⟩,⟨⟨14,[5]⟩,12⟩,⟨⟨14,[5]⟩,13⟩,⟨⟨14,[6]⟩,14⟩,⟨⟨15,[3]⟩,15⟩,⟨⟨15,[4]⟩,16⟩,⟨⟨15,[4]⟩,17⟩,⟨⟨15,[4]⟩,18⟩,⟨⟨15,[5]⟩,19⟩,⟨⟨15,[5]⟩,20⟩,⟨⟨15,[5]⟩,21⟩,⟨⟨15,[6]⟩,22⟩,⟨⟨16,[3]⟩,16⟩,⟨⟨16,[3]⟩,17⟩,⟨⟨16,[3]⟩,18⟩,⟨⟨16,[6]⟩,19⟩,⟨⟨16,[6]⟩,20⟩,⟨⟨16,[6]⟩,21⟩,⟨⟨17,[0,3]⟩,8⟩,⟨⟨17,[0,3]⟩,9⟩,⟨⟨17,[0,3]⟩,10⟩,⟨⟨17,[0,6]⟩,11⟩,⟨⟨17,[0,6]⟩,12⟩,⟨⟨17,[0,6]⟩,13⟩,⟨⟨18,[1,0,3]⟩,5⟩,⟨⟨18,[1,0,3]⟩,6⟩,⟨⟨18,[1,0,3]⟩,15⟩,⟨⟨18,[1,0,6]⟩,5⟩,⟨⟨18,[1,0,6]⟩,6⟩,⟨⟨18,[1,0,6]⟩,15⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[9],[10],[11],[12],[15],[14],[16],[17],[18],[19],[19],[20],[21],[22],[23,24],[25],[26],[27],[29],[29],[30],[31],[28],[32],[33],[34],[35],[49],[42],[43,46],[44,47],[43,46],[44,47],[45,48],[43,46],[44,47],[45,48],[50],[51],[51],[51],[54],[54],[54],[57],[58],[59],[60],[61],[62],[63],[64],[65],[38,41],[66],[67],[68],[69],[70],[71],[8],[72],[73],[74],[75],[76],[77],[78,79,80],[80],[78,79],[81,82,83],[83],[81,82],[36,39],[37,40],[38,41],[5],[6],[7]]
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
end Certgen.R104
