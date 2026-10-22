import Regular
namespace Certgen.R142
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 13,.lam 10,.app 11 12,.var 0,.opaque,.app 14 18,.app 15 16,.var 0,.lam 17,.var 1,.app 19 20,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[7]⟩],[⟨20,[7]⟩],[⟨7,[]⟩],[⟨16,[8]⟩],[⟨20,[8]⟩],[⟨18,[8]⟩],[⟨18,[7]⟩],[⟨16,[5]⟩,⟨16,[6]⟩],[⟨5,[2]⟩],[⟨13,[5]⟩,⟨13,[6]⟩],[⟨13,[7]⟩],[⟨13,[8]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[9,5]⟩,6⟩],[⟨⟨12,[9,6]⟩,5⟩],[⟨⟨12,[10,7]⟩,7⟩,⟨⟨12,[10,7]⟩,8⟩],[⟨⟨12,[11,8]⟩,1⟩],[⟨⟨18,[5]⟩,3⟩,⟨⟨18,[5]⟩,4⟩],[⟨⟨18,[6]⟩,3⟩,⟨⟨18,[6]⟩,4⟩],[⟨⟨18,[7]⟩,5⟩],[⟨⟨18,[8]⟩,6⟩],[⟨⟨16,[5]⟩,7⟩],[⟨⟨16,[6]⟩,8⟩],[⟨⟨16,[7]⟩,9⟩],[⟨⟨16,[8]⟩,10⟩],[⟨⟨20,[7]⟩,9⟩],[⟨⟨20,[7]⟩,9⟩,⟨⟨20,[7]⟩,12⟩],[⟨⟨20,[7]⟩,12⟩],[⟨⟨20,[8]⟩,9⟩],[⟨⟨20,[8]⟩,9⟩,⟨⟨20,[8]⟩,12⟩],[⟨⟨20,[8]⟩,12⟩],[⟨⟨20,[8]⟩,11⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨13,[5]⟩,6⟩],[⟨⟨13,[6]⟩,5⟩],[⟨⟨13,[7]⟩,7⟩,⟨⟨13,[7]⟩,8⟩],[⟨⟨13,[8]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,22⟩,⟨⟨5,[2]⟩,14⟩,⟨⟨5,[2]⟩,18⟩,⟨⟨5,[2]⟩,19⟩,⟨⟨5,[2]⟩,20⟩,⟨⟨5,[2]⟩,21⟩,⟨⟨6,[3,2]⟩,10⟩,⟨⟨6,[4,2]⟩,9⟩,⟨⟨6,[4,2]⟩,11⟩,⟨⟨6,[4,2]⟩,12⟩,⟨⟨7,[]⟩,9⟩,⟨⟨7,[]⟩,10⟩,⟨⟨7,[]⟩,11⟩,⟨⟨7,[]⟩,12⟩,⟨⟨7,[]⟩,22⟩,⟨⟨8,[5]⟩,6⟩,⟨⟨8,[6]⟩,5⟩,⟨⟨8,[7]⟩,7⟩,⟨⟨8,[7]⟩,8⟩,⟨⟨8,[8]⟩,1⟩,⟨⟨9,[5]⟩,23⟩,⟨⟨9,[6]⟩,24⟩,⟨⟨9,[7]⟩,25⟩,⟨⟨9,[8]⟩,26⟩,⟨⟨10,[9,5]⟩,6⟩,⟨⟨10,[9,6]⟩,5⟩,⟨⟨10,[10,7]⟩,7⟩,⟨⟨10,[10,7]⟩,8⟩,⟨⟨10,[11,8]⟩,1⟩,⟨⟨11,[9,5]⟩,3⟩,⟨⟨11,[9,6]⟩,4⟩,⟨⟨11,[10,7]⟩,5⟩,⟨⟨11,[11,8]⟩,6⟩,⟨⟨13,[5]⟩,3⟩,⟨⟨13,[5]⟩,4⟩,⟨⟨13,[6]⟩,3⟩,⟨⟨13,[6]⟩,4⟩,⟨⟨13,[7]⟩,5⟩,⟨⟨13,[8]⟩,6⟩,⟨⟨14,[5]⟩,7⟩,⟨⟨14,[6]⟩,8⟩,⟨⟨14,[7]⟩,9⟩,⟨⟨14,[8]⟩,10⟩,⟨⟨15,[5]⟩,11⟩,⟨⟨15,[6]⟩,12⟩,⟨⟨15,[7]⟩,13⟩,⟨⟨15,[8]⟩,14⟩,⟨⟨16,[5]⟩,13⟩,⟨⟨16,[5]⟩,15⟩,⟨⟨16,[5]⟩,16⟩,⟨⟨16,[5]⟩,17⟩,⟨⟨16,[6]⟩,13⟩,⟨⟨16,[6]⟩,15⟩,⟨⟨16,[6]⟩,16⟩,⟨⟨16,[6]⟩,17⟩,⟨⟨17,[0,5]⟩,9⟩,⟨⟨17,[0,6]⟩,9⟩,⟨⟨17,[1,5]⟩,9⟩,⟨⟨17,[1,5]⟩,12⟩,⟨⟨17,[1,6]⟩,9⟩,⟨⟨17,[1,6]⟩,12⟩,⟨⟨18,[7]⟩,9⟩,⟨⟨18,[7]⟩,12⟩,⟨⟨18,[8]⟩,9⟩,⟨⟨18,[8]⟩,11⟩,⟨⟨18,[8]⟩,12⟩,⟨⟨19,[7]⟩,15⟩,⟨⟨19,[7]⟩,16⟩,⟨⟨19,[7]⟩,17⟩,⟨⟨19,[8]⟩,18⟩,⟨⟨19,[8]⟩,19⟩,⟨⟨19,[8]⟩,20⟩,⟨⟨19,[8]⟩,21⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[18],[10],[11],[11,13],[13],[12],[15],[14],[16],[17],[20],[19],[21],[22],[23],[24],[25],[26],[26],[27],[28],[29],[30,31],[32],[33],[34],[35],[35],[36],[37,39],[38,40],[41],[42],[43],[43],[44],[44],[45],[46],[47],[48],[49],[50],[68],[66],[51,55],[5],[59],[61],[61,62],[62],[60],[63],[63,64],[64],[67],[65],[67],[69],[65],[66],[70],[71],[73],[76],[74],[52,56],[53,57],[54,58],[6],[7],[8],[9]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 5=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<77 := hi
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
end Certgen.R142
