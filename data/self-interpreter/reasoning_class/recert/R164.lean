import Regular
namespace Certgen.R164
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 17,.lam 10,.app 11 16,.app 12 13,.var 0,.lam 14,.lam 15,.var 2,.var 0,.app 18 19,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨19,[6]⟩],[⟨13,[9,6]⟩],[⟨19,[5]⟩],[⟨7,[]⟩],[⟨19,[7]⟩],[⟨16,[9,6]⟩],[⟨13,[8,5]⟩,⟨13,[10,7]⟩],[⟨5,[3]⟩],[⟨17,[5]⟩],[⟨17,[6]⟩],[⟨17,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨16,[8,5]⟩,3⟩,⟨⟨16,[8,5]⟩,5⟩],[⟨⟨16,[9,6]⟩,3⟩,⟨⟨16,[9,6]⟩,5⟩],[⟨⟨16,[10,7]⟩,1⟩],[⟨⟨13,[8,5]⟩,3⟩],[⟨⟨13,[9,6]⟩,4⟩],[⟨⟨13,[10,7]⟩,5⟩],[⟨⟨19,[5]⟩,4⟩],[⟨⟨19,[5]⟩,4⟩,⟨⟨19,[5]⟩,6⟩],[⟨⟨19,[5]⟩,6⟩],[⟨⟨19,[6]⟩,9⟩],[⟨⟨19,[6]⟩,10⟩],[⟨⟨19,[6]⟩,11⟩],[⟨⟨19,[6]⟩,7⟩],[⟨⟨19,[7]⟩,4⟩],[⟨⟨19,[7]⟩,4⟩,⟨⟨19,[7]⟩,6⟩],[⟨⟨19,[7]⟩,8⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨17,[5]⟩,3⟩,⟨⟨17,[5]⟩,5⟩],[⟨⟨17,[6]⟩,3⟩,⟨⟨17,[6]⟩,5⟩],[⟨⟨17,[7]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,19⟩,⟨⟨5,[3]⟩,16⟩,⟨⟨5,[3]⟩,17⟩,⟨⟨5,[3]⟩,18⟩,⟨⟨6,[4,3]⟩,4⟩,⟨⟨6,[4,3]⟩,6⟩,⟨⟨6,[4,3]⟩,8⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,19⟩,⟨⟨8,[5]⟩,3⟩,⟨⟨8,[5]⟩,5⟩,⟨⟨8,[6]⟩,3⟩,⟨⟨8,[6]⟩,5⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨9,[5]⟩,20⟩,⟨⟨9,[6]⟩,21⟩,⟨⟨9,[7]⟩,22⟩,⟨⟨10,[8,5]⟩,3⟩,⟨⟨10,[8,5]⟩,5⟩,⟨⟨10,[9,6]⟩,3⟩,⟨⟨10,[9,6]⟩,5⟩,⟨⟨10,[10,7]⟩,1⟩,⟨⟨11,[8,5]⟩,3⟩,⟨⟨11,[9,6]⟩,4⟩,⟨⟨11,[10,7]⟩,5⟩,⟨⟨12,[8,5]⟩,6⟩,⟨⟨12,[9,6]⟩,7⟩,⟨⟨12,[10,7]⟩,8⟩,⟨⟨13,[8,5]⟩,12⟩,⟨⟨13,[8,5]⟩,13⟩,⟨⟨13,[8,5]⟩,14⟩,⟨⟨13,[8,5]⟩,15⟩,⟨⟨13,[10,7]⟩,12⟩,⟨⟨13,[10,7]⟩,13⟩,⟨⟨13,[10,7]⟩,14⟩,⟨⟨13,[10,7]⟩,15⟩,⟨⟨14,[0,8,5]⟩,7⟩,⟨⟨14,[0,8,5]⟩,9⟩,⟨⟨14,[0,8,5]⟩,10⟩,⟨⟨14,[0,8,5]⟩,11⟩,⟨⟨14,[0,10,7]⟩,7⟩,⟨⟨14,[0,10,7]⟩,9⟩,⟨⟨14,[0,10,7]⟩,10⟩,⟨⟨14,[0,10,7]⟩,11⟩,⟨⟨15,[1,0,8,5]⟩,4⟩,⟨⟨15,[1,0,10,7]⟩,4⟩,⟨⟨15,[2,0,8,5]⟩,4⟩,⟨⟨15,[2,0,8,5]⟩,6⟩,⟨⟨15,[2,0,10,7]⟩,4⟩,⟨⟨15,[2,0,10,7]⟩,6⟩,⟨⟨16,[9,6]⟩,9⟩,⟨⟨16,[9,6]⟩,10⟩,⟨⟨16,[9,6]⟩,11⟩,⟨⟨17,[5]⟩,4⟩,⟨⟨17,[5]⟩,6⟩,⟨⟨17,[6]⟩,7⟩,⟨⟨17,[6]⟩,9⟩,⟨⟨17,[6]⟩,10⟩,⟨⟨17,[6]⟩,11⟩,⟨⟨17,[7]⟩,4⟩,⟨⟨17,[7]⟩,6⟩,⟨⟨17,[7]⟩,8⟩,⟨⟨18,[5]⟩,9⟩,⟨⟨18,[5]⟩,10⟩,⟨⟨18,[5]⟩,11⟩,⟨⟨18,[6]⟩,12⟩,⟨⟨18,[6]⟩,13⟩,⟨⟨18,[6]⟩,14⟩,⟨⟨18,[6]⟩,15⟩,⟨⟨18,[7]⟩,16⟩,⟨⟨18,[7]⟩,17⟩,⟨⟨18,[7]⟩,18⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[14],[8],[8,9],[10],[11],[12],[13],[15,16],[17],[18],[19],[20],[20],[21],[21],[22],[23,24],[25,26],[27],[28],[28],[29],[29],[30],[31],[32],[33],[60],[61],[67],[43],[44],[45],[42],[47],[48],[49],[46],[50],[52],[52,53],[53],[51],[54],[54,55],[55],[59],[65],[59],[60],[65],[66],[62],[63],[64],[68],[69],[74],[71],[72],[73],[75],[76],[77],[56],[57],[58],[34,38],[35,39],[36,40],[37,41],[5],[6],[7]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 6=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<78 := hi
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
end Certgen.R164
