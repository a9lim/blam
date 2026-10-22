import Regular
namespace Certgen.R287
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.app 11 12,.var 0,.app 13 18,.app 14 15,.var 0,.lam 16,.lam 17,.var 3,.var 0,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨23,[4]⟩],[⟨26,[4]⟩],[⟨12,[10,7]⟩],[⟨12,[11,6]⟩],[⟨15,[10,7]⟩,⟨15,[11,6]⟩],[⟨8,[]⟩],[⟨12,[12,8]⟩],[⟨12,[13,9]⟩],[⟨15,[12,8]⟩,⟨15,[13,9]⟩],[⟨6,[5]⟩],[⟨19,[]⟩],[⟨18,[10,7]⟩,⟨18,[11,6]⟩],[⟨18,[12,8]⟩,⟨18,[13,9]⟩],[⟨7,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨12,[10,7]⟩,0⟩],[⟨⟨12,[11,6]⟩,18⟩,⟨⟨12,[11,6]⟩,19⟩],[⟨⟨12,[12,8]⟩,7⟩,⟨⟨12,[12,8]⟩,8⟩],[⟨⟨12,[13,9]⟩,1⟩],[⟨⟨18,[10,7]⟩,18⟩],[⟨⟨18,[11,6]⟩,19⟩],[⟨⟨18,[12,8]⟩,7⟩,⟨⟨18,[12,8]⟩,8⟩],[⟨⟨18,[13,9]⟩,7⟩,⟨⟨18,[13,9]⟩,8⟩],[⟨⟨15,[10,7]⟩,7⟩],[⟨⟨15,[11,6]⟩,8⟩],[⟨⟨15,[12,8]⟩,9⟩],[⟨⟨15,[13,9]⟩,10⟩],[⟨⟨26,[2]⟩,0⟩],[⟨⟨26,[3]⟩,18⟩,⟨⟨26,[3]⟩,19⟩],[⟨⟨26,[4]⟩,7⟩,⟨⟨26,[4]⟩,8⟩],[⟨⟨23,[2]⟩,15⟩],[⟨⟨23,[3]⟩,16⟩],[⟨⟨23,[4]⟩,17⟩],[⟨⟨7,[5]⟩,1⟩],[⟨⟨6,[5]⟩,21⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,21⟩,⟨⟨5,[5]⟩,22⟩,⟨⟨7,[5]⟩,5⟩,⟨⟨7,[5]⟩,6⟩,⟨⟨7,[5]⟩,13⟩,⟨⟨7,[5]⟩,14⟩,⟨⟨8,[]⟩,5⟩,⟨⟨8,[]⟩,6⟩,⟨⟨8,[]⟩,13⟩,⟨⟨8,[]⟩,14⟩,⟨⟨8,[]⟩,22⟩,⟨⟨9,[6]⟩,7⟩,⟨⟨9,[6]⟩,8⟩,⟨⟨9,[7]⟩,1⟩,⟨⟨9,[8]⟩,9⟩,⟨⟨9,[8]⟩,10⟩,⟨⟨9,[9]⟩,21⟩,⟨⟨10,[10,7]⟩,0⟩,⟨⟨10,[11,6]⟩,18⟩,⟨⟨10,[11,6]⟩,19⟩,⟨⟨10,[12,8]⟩,7⟩,⟨⟨10,[12,8]⟩,8⟩,⟨⟨10,[13,9]⟩,1⟩,⟨⟨11,[10,7]⟩,3⟩,⟨⟨11,[11,6]⟩,4⟩,⟨⟨11,[12,8]⟩,5⟩,⟨⟨11,[13,9]⟩,6⟩,⟨⟨12,[10,7]⟩,18⟩,⟨⟨12,[11,6]⟩,19⟩,⟨⟨12,[12,8]⟩,7⟩,⟨⟨12,[12,8]⟩,8⟩,⟨⟨12,[13,9]⟩,7⟩,⟨⟨12,[13,9]⟩,8⟩,⟨⟨13,[10,7]⟩,7⟩,⟨⟨13,[11,6]⟩,8⟩,⟨⟨13,[12,8]⟩,9⟩,⟨⟨13,[13,9]⟩,10⟩,⟨⟨14,[10,7]⟩,11⟩,⟨⟨14,[11,6]⟩,12⟩,⟨⟨14,[12,8]⟩,13⟩,⟨⟨14,[13,9]⟩,14⟩,⟨⟨15,[10,7]⟩,20⟩,⟨⟨15,[11,6]⟩,20⟩,⟨⟨16,[0,10,7]⟩,17⟩,⟨⟨16,[0,11,6]⟩,17⟩,⟨⟨17,[1,0,10,7]⟩,7⟩,⟨⟨17,[1,0,10,7]⟩,8⟩,⟨⟨17,[1,0,11,6]⟩,7⟩,⟨⟨17,[1,0,11,6]⟩,8⟩,⟨⟨18,[10,7]⟩,4⟩,⟨⟨18,[10,7]⟩,12⟩,⟨⟨18,[11,6]⟩,4⟩,⟨⟨18,[11,6]⟩,12⟩,⟨⟨18,[12,8]⟩,5⟩,⟨⟨18,[12,8]⟩,13⟩,⟨⟨18,[13,9]⟩,5⟩,⟨⟨18,[13,9]⟩,13⟩,⟨⟨19,[]⟩,3⟩,⟨⟨19,[]⟩,4⟩,⟨⟨19,[]⟩,11⟩,⟨⟨19,[]⟩,12⟩,⟨⟨20,[2]⟩,0⟩,⟨⟨20,[3]⟩,18⟩,⟨⟨20,[3]⟩,19⟩,⟨⟨20,[4]⟩,7⟩,⟨⟨20,[4]⟩,8⟩,⟨⟨21,[2]⟩,15⟩,⟨⟨21,[3]⟩,16⟩,⟨⟨21,[4]⟩,17⟩,⟨⟨22,[2]⟩,18⟩,⟨⟨22,[3]⟩,19⟩,⟨⟨22,[4]⟩,20⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[14],[10],[11],[12],[13],[15,16],[17],[18],[19],[20],[22],[23],[21],[24,25],[24,25],[26],[27],[28],[28],[29],[29],[30],[61],[53,55],[57,59],[7],[37],[38],[39],[39],[40],[40],[41],[42],[43],[44],[63],[54,56],[58,60],[9],[47],[48],[49,50],[51,52],[35],[36],[33],[34],[62],[64],[53,55],[54,56],[57,59],[58,60],[6],[8],[65],[66,67],[68],[69],[70],[71],[71],[72],[72],[73],[74],[75],[31],[32],[45,46]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 4=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<76 := hi
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
end Certgen.R287
