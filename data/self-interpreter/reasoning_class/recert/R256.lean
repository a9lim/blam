import Regular
namespace Certgen.R256
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.app 11 12,.var 0,.app 13 20,.app 14 15,.var 0,.app 16 17,.var 0,.app 18 19,.var 1,.var 0,.var 0,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨8,[]⟩],[⟨12,[9,6]⟩],[⟨12,[11,5]⟩],[⟨15,[9,6]⟩,⟨15,[11,5]⟩],[⟨17,[9,6]⟩,⟨17,[11,5]⟩],[⟨12,[10,7]⟩],[⟨12,[12,8]⟩],[⟨15,[10,7]⟩,⟨15,[12,8]⟩],[⟨6,[0]⟩],[⟨21,[]⟩],[⟨20,[10,7]⟩,⟨20,[12,8]⟩],[⟨19,[9,6]⟩,⟨19,[11,5]⟩],[⟨7,[0]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨12,[9,6]⟩,0⟩],[⟨⟨12,[10,7]⟩,17⟩,⟨⟨12,[10,7]⟩,18⟩],[⟨⟨12,[11,5]⟩,26⟩],[⟨⟨12,[12,8]⟩,1⟩],[⟨⟨20,[9,6]⟩,23⟩],[⟨⟨20,[10,7]⟩,18⟩],[⟨⟨20,[11,5]⟩,24⟩],[⟨⟨20,[12,8]⟩,17⟩],[⟨⟨15,[9,6]⟩,7⟩],[⟨⟨15,[10,7]⟩,8⟩],[⟨⟨15,[11,5]⟩,9⟩],[⟨⟨15,[12,8]⟩,10⟩],[⟨⟨17,[9,6]⟩,25⟩],[⟨⟨17,[11,5]⟩,25⟩],[⟨⟨19,[9,6]⟩,26⟩],[⟨⟨19,[11,5]⟩,26⟩],[⟨⟨28,[1]⟩,0⟩],[⟨⟨28,[2]⟩,26⟩],[⟨⟨28,[3]⟩,7⟩,⟨⟨28,[3]⟩,9⟩],[⟨⟨28,[4]⟩,25⟩],[⟨⟨25,[1]⟩,19⟩],[⟨⟨25,[2]⟩,20⟩],[⟨⟨25,[3]⟩,21⟩],[⟨⟨25,[4]⟩,22⟩],[⟨⟨7,[0]⟩,1⟩],[⟨⟨6,[0]⟩,27⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[0]⟩,1⟩,⟨⟨4,[0]⟩,27⟩,⟨⟨5,[0]⟩,28⟩,⟨⟨7,[0]⟩,4⟩,⟨⟨7,[0]⟩,6⟩,⟨⟨7,[0]⟩,12⟩,⟨⟨7,[0]⟩,14⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,6⟩,⟨⟨8,[]⟩,12⟩,⟨⟨8,[]⟩,14⟩,⟨⟨8,[]⟩,28⟩,⟨⟨9,[5]⟩,17⟩,⟨⟨9,[5]⟩,18⟩,⟨⟨9,[6]⟩,1⟩,⟨⟨9,[7]⟩,8⟩,⟨⟨9,[7]⟩,10⟩,⟨⟨9,[8]⟩,27⟩,⟨⟨10,[9,6]⟩,0⟩,⟨⟨10,[10,7]⟩,17⟩,⟨⟨10,[10,7]⟩,18⟩,⟨⟨10,[11,5]⟩,26⟩,⟨⟨10,[12,8]⟩,1⟩,⟨⟨11,[9,6]⟩,3⟩,⟨⟨11,[10,7]⟩,4⟩,⟨⟨11,[11,5]⟩,5⟩,⟨⟨11,[12,8]⟩,6⟩,⟨⟨12,[9,6]⟩,23⟩,⟨⟨12,[10,7]⟩,18⟩,⟨⟨12,[11,5]⟩,24⟩,⟨⟨12,[12,8]⟩,17⟩,⟨⟨13,[9,6]⟩,7⟩,⟨⟨13,[10,7]⟩,8⟩,⟨⟨13,[11,5]⟩,9⟩,⟨⟨13,[12,8]⟩,10⟩,⟨⟨14,[9,6]⟩,11⟩,⟨⟨14,[10,7]⟩,12⟩,⟨⟨14,[11,5]⟩,13⟩,⟨⟨14,[12,8]⟩,14⟩,⟨⟨15,[9,6]⟩,25⟩,⟨⟨15,[11,5]⟩,25⟩,⟨⟨16,[9,6]⟩,15⟩,⟨⟨16,[11,5]⟩,16⟩,⟨⟨17,[9,6]⟩,26⟩,⟨⟨17,[11,5]⟩,26⟩,⟨⟨18,[9,6]⟩,17⟩,⟨⟨18,[11,5]⟩,18⟩,⟨⟨19,[9,6]⟩,5⟩,⟨⟨19,[9,6]⟩,13⟩,⟨⟨19,[9,6]⟩,16⟩,⟨⟨19,[11,5]⟩,5⟩,⟨⟨19,[11,5]⟩,13⟩,⟨⟨19,[11,5]⟩,16⟩,⟨⟨20,[10,7]⟩,4⟩,⟨⟨20,[10,7]⟩,12⟩,⟨⟨20,[12,8]⟩,4⟩,⟨⟨20,[12,8]⟩,12⟩,⟨⟨21,[]⟩,3⟩,⟨⟨21,[]⟩,5⟩,⟨⟨21,[]⟩,11⟩,⟨⟨21,[]⟩,13⟩,⟨⟨21,[]⟩,15⟩,⟨⟨21,[]⟩,16⟩,⟨⟨22,[1]⟩,0⟩,⟨⟨22,[2]⟩,26⟩,⟨⟨22,[3]⟩,7⟩,⟨⟨22,[3]⟩,9⟩,⟨⟨22,[4]⟩,25⟩,⟨⟨23,[1]⟩,19⟩,⟨⟨23,[2]⟩,20⟩,⟨⟨23,[3]⟩,21⟩,⟨⟨23,[4]⟩,22⟩,⟨⟨24,[1]⟩,23⟩,⟨⟨24,[2]⟩,24⟩,⟨⟨24,[3]⟩,25⟩,⟨⟨24,[4]⟩,26⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[14],[10],[11],[12],[13],[15,16],[17],[18],[19],[20],[24],[24],[21],[23],[22],[25],[26],[27],[27],[28],[29],[60],[56,58],[50,53],[7],[34],[35],[36],[37],[38],[39],[40],[41],[62],[57,59],[51,54],[9],[44],[45],[64],[52,55],[48],[49],[33],[31],[61],[63],[65],[50,53],[51,54],[52,55],[56,58],[57,59],[6],[8],[66],[67],[68],[69],[70],[70],[71],[72],[73],[73],[74],[75],[76],[77],[78],[30],[32],[42,43],[46,47]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 7=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<79 := hi
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
end Certgen.R256
