import Regular
namespace Certgen.R252
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.app 11 12,.var 0,.app 13 20,.app 14 19,.app 15 16,.var 0,.app 17 18,.var 1,.var 0,.var 0,.var 0,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨8,[]⟩],[⟨12,[9,6]⟩],[⟨12,[12,4]⟩],[⟨16,[9,6]⟩,⟨16,[12,4]⟩],[⟨12,[10,5]⟩],[⟨12,[11,7]⟩],[⟨12,[13,8]⟩],[⟨16,[10,5]⟩,⟨16,[13,8]⟩],[⟨6,[0]⟩],[⟨21,[]⟩],[⟨20,[10,5]⟩,⟨20,[13,8]⟩],[⟨19,[10,5]⟩,⟨19,[13,8]⟩],[⟨18,[9,6]⟩,⟨18,[12,4]⟩],[⟨7,[0]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨12,[9,6]⟩,0⟩],[⟨⟨12,[10,5]⟩,20⟩,⟨⟨12,[10,5]⟩,21⟩],[⟨⟨12,[11,7]⟩,9⟩,⟨⟨12,[11,7]⟩,11⟩],[⟨⟨12,[12,4]⟩,27⟩],[⟨⟨12,[13,8]⟩,1⟩],[⟨⟨20,[9,6]⟩,25⟩],[⟨⟨20,[10,5]⟩,21⟩],[⟨⟨20,[12,4]⟩,26⟩],[⟨⟨20,[13,8]⟩,20⟩],[⟨⟨19,[9,6]⟩,8⟩],[⟨⟨19,[10,5]⟩,9⟩],[⟨⟨19,[12,4]⟩,10⟩],[⟨⟨19,[13,8]⟩,11⟩],[⟨⟨16,[9,6]⟩,12⟩],[⟨⟨16,[10,5]⟩,13⟩],[⟨⟨16,[12,4]⟩,14⟩],[⟨⟨16,[13,8]⟩,15⟩],[⟨⟨18,[9,6]⟩,27⟩],[⟨⟨18,[12,4]⟩,27⟩],[⟨⟨28,[1]⟩,0⟩],[⟨⟨28,[2]⟩,27⟩],[⟨⟨28,[3]⟩,12⟩,⟨⟨28,[3]⟩,14⟩],[⟨⟨25,[1]⟩,22⟩],[⟨⟨25,[2]⟩,23⟩],[⟨⟨25,[3]⟩,24⟩],[⟨⟨7,[0]⟩,1⟩],[⟨⟨6,[0]⟩,28⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[0]⟩,1⟩,⟨⟨4,[0]⟩,28⟩,⟨⟨5,[0]⟩,29⟩,⟨⟨7,[0]⟩,4⟩,⟨⟨7,[0]⟩,5⟩,⟨⟨7,[0]⟩,7⟩,⟨⟨7,[0]⟩,17⟩,⟨⟨7,[0]⟩,19⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,5⟩,⟨⟨8,[]⟩,7⟩,⟨⟨8,[]⟩,17⟩,⟨⟨8,[]⟩,19⟩,⟨⟨8,[]⟩,29⟩,⟨⟨9,[4]⟩,20⟩,⟨⟨9,[4]⟩,21⟩,⟨⟨9,[5]⟩,9⟩,⟨⟨9,[5]⟩,11⟩,⟨⟨9,[6]⟩,1⟩,⟨⟨9,[7]⟩,13⟩,⟨⟨9,[7]⟩,15⟩,⟨⟨9,[8]⟩,28⟩,⟨⟨10,[9,6]⟩,0⟩,⟨⟨10,[10,5]⟩,20⟩,⟨⟨10,[10,5]⟩,21⟩,⟨⟨10,[11,7]⟩,9⟩,⟨⟨10,[11,7]⟩,11⟩,⟨⟨10,[12,4]⟩,27⟩,⟨⟨10,[13,8]⟩,1⟩,⟨⟨11,[9,6]⟩,3⟩,⟨⟨11,[10,5]⟩,4⟩,⟨⟨11,[11,7]⟩,5⟩,⟨⟨11,[12,4]⟩,6⟩,⟨⟨11,[13,8]⟩,7⟩,⟨⟨12,[9,6]⟩,25⟩,⟨⟨12,[10,5]⟩,21⟩,⟨⟨12,[12,4]⟩,26⟩,⟨⟨12,[13,8]⟩,20⟩,⟨⟨13,[9,6]⟩,8⟩,⟨⟨13,[10,5]⟩,9⟩,⟨⟨13,[12,4]⟩,10⟩,⟨⟨13,[13,8]⟩,11⟩,⟨⟨14,[9,6]⟩,12⟩,⟨⟨14,[10,5]⟩,13⟩,⟨⟨14,[12,4]⟩,14⟩,⟨⟨14,[13,8]⟩,15⟩,⟨⟨15,[9,6]⟩,16⟩,⟨⟨15,[10,5]⟩,17⟩,⟨⟨15,[12,4]⟩,18⟩,⟨⟨15,[13,8]⟩,19⟩,⟨⟨16,[9,6]⟩,27⟩,⟨⟨16,[12,4]⟩,27⟩,⟨⟨17,[9,6]⟩,20⟩,⟨⟨17,[12,4]⟩,21⟩,⟨⟨18,[9,6]⟩,6⟩,⟨⟨18,[9,6]⟩,18⟩,⟨⟨18,[12,4]⟩,6⟩,⟨⟨18,[12,4]⟩,18⟩,⟨⟨19,[10,5]⟩,5⟩,⟨⟨19,[13,8]⟩,5⟩,⟨⟨20,[10,5]⟩,4⟩,⟨⟨20,[10,5]⟩,5⟩,⟨⟨20,[10,5]⟩,17⟩,⟨⟨20,[13,8]⟩,4⟩,⟨⟨20,[13,8]⟩,5⟩,⟨⟨20,[13,8]⟩,17⟩,⟨⟨21,[]⟩,3⟩,⟨⟨21,[]⟩,6⟩,⟨⟨21,[]⟩,16⟩,⟨⟨21,[]⟩,18⟩,⟨⟨22,[1]⟩,0⟩,⟨⟨22,[2]⟩,27⟩,⟨⟨22,[3]⟩,12⟩,⟨⟨22,[3]⟩,14⟩,⟨⟨23,[1]⟩,22⟩,⟨⟨23,[2]⟩,23⟩,⟨⟨23,[3]⟩,24⟩,⟨⟨24,[1]⟩,25⟩,⟨⟨24,[2]⟩,26⟩,⟨⟨24,[3]⟩,27⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[16],[11],[12],[13],[14],[15],[17,18],[19,20],[21],[22],[23],[24],[30],[30],[27],[26],[25],[28],[29],[31],[32],[33],[33],[34],[34],[35],[36],[69],[63,66],[61,62],[57,59],[8],[41],[42],[43],[44],[45],[46],[47],[48],[49],[50],[51],[52],[71],[65,68],[58,60],[10],[55],[56],[40],[38],[70],[72],[57,59],[58,60],[64,67],[7],[63,66],[64,67],[65,68],[6],[7],[9],[73],[74],[75],[76],[77],[78],[79],[79],[80],[81],[82],[37],[39],[53,54]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<83 := hi
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
end Certgen.R252
