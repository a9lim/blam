import Regular
namespace Certgen.R286
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.app 11 12,.var 0,.lam 13,.app 14 18,.app 15 16,.var 1,.lam 17,.var 3,.var 1,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨26,[5]⟩],[⟨23,[3]⟩,⟨23,[4]⟩],[⟨23,[5]⟩],[⟨12,[11,8]⟩],[⟨12,[12,7]⟩],[⟨16,[1,11,8]⟩,⟨16,[1,12,7]⟩],[⟨8,[]⟩],[⟨12,[13,9]⟩],[⟨12,[14,10]⟩],[⟨16,[0,13,9]⟩,⟨16,[0,14,10]⟩],[⟨6,[6]⟩],[⟨19,[]⟩],[⟨18,[1,11,8]⟩,⟨18,[1,12,7]⟩],[⟨18,[0,13,9]⟩,⟨18,[0,14,10]⟩],[⟨7,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨12,[11,8]⟩,0⟩],[⟨⟨12,[12,7]⟩,15⟩,⟨⟨12,[12,7]⟩,16⟩],[⟨⟨12,[13,9]⟩,9⟩,⟨⟨12,[13,9]⟩,10⟩],[⟨⟨12,[14,10]⟩,1⟩],[⟨⟨18,[0,13,9]⟩,9⟩,⟨⟨18,[0,13,9]⟩,10⟩],[⟨⟨18,[0,14,10]⟩,9⟩,⟨⟨18,[0,14,10]⟩,10⟩],[⟨⟨18,[1,11,8]⟩,15⟩],[⟨⟨18,[1,12,7]⟩,16⟩],[⟨⟨16,[0,13,9]⟩,7⟩],[⟨⟨16,[0,14,10]⟩,8⟩],[⟨⟨16,[1,11,8]⟩,9⟩],[⟨⟨16,[1,12,7]⟩,10⟩],[⟨⟨26,[3]⟩,0⟩],[⟨⟨26,[4]⟩,15⟩,⟨⟨26,[4]⟩,16⟩],[⟨⟨26,[5]⟩,9⟩,⟨⟨26,[5]⟩,10⟩],[⟨⟨23,[3]⟩,15⟩],[⟨⟨23,[4]⟩,16⟩],[⟨⟨23,[5]⟩,17⟩],[⟨⟨7,[6]⟩,1⟩],[⟨⟨6,[6]⟩,21⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[6]⟩,1⟩,⟨⟨4,[6]⟩,21⟩,⟨⟨5,[6]⟩,22⟩,⟨⟨7,[6]⟩,5⟩,⟨⟨7,[6]⟩,6⟩,⟨⟨7,[6]⟩,11⟩,⟨⟨7,[6]⟩,12⟩,⟨⟨8,[]⟩,5⟩,⟨⟨8,[]⟩,6⟩,⟨⟨8,[]⟩,11⟩,⟨⟨8,[]⟩,12⟩,⟨⟨8,[]⟩,22⟩,⟨⟨9,[7]⟩,9⟩,⟨⟨9,[7]⟩,10⟩,⟨⟨9,[8]⟩,1⟩,⟨⟨9,[9]⟩,7⟩,⟨⟨9,[9]⟩,8⟩,⟨⟨9,[10]⟩,21⟩,⟨⟨10,[11,8]⟩,0⟩,⟨⟨10,[12,7]⟩,15⟩,⟨⟨10,[12,7]⟩,16⟩,⟨⟨10,[13,9]⟩,9⟩,⟨⟨10,[13,9]⟩,10⟩,⟨⟨10,[14,10]⟩,1⟩,⟨⟨11,[11,8]⟩,3⟩,⟨⟨11,[12,7]⟩,4⟩,⟨⟨11,[13,9]⟩,5⟩,⟨⟨11,[14,10]⟩,6⟩,⟨⟨12,[11,8]⟩,18⟩,⟨⟨12,[12,7]⟩,19⟩,⟨⟨12,[13,9]⟩,17⟩,⟨⟨12,[14,10]⟩,17⟩,⟨⟨13,[0,13,9]⟩,9⟩,⟨⟨13,[0,13,9]⟩,10⟩,⟨⟨13,[0,14,10]⟩,9⟩,⟨⟨13,[0,14,10]⟩,10⟩,⟨⟨13,[1,11,8]⟩,15⟩,⟨⟨13,[1,12,7]⟩,16⟩,⟨⟨14,[0,13,9]⟩,7⟩,⟨⟨14,[0,14,10]⟩,8⟩,⟨⟨14,[1,11,8]⟩,9⟩,⟨⟨14,[1,12,7]⟩,10⟩,⟨⟨15,[0,13,9]⟩,11⟩,⟨⟨15,[0,14,10]⟩,12⟩,⟨⟨15,[1,11,8]⟩,13⟩,⟨⟨15,[1,12,7]⟩,14⟩,⟨⟨16,[1,11,8]⟩,20⟩,⟨⟨16,[1,12,7]⟩,20⟩,⟨⟨17,[2,1,11,8]⟩,17⟩,⟨⟨17,[2,1,12,7]⟩,17⟩,⟨⟨18,[0,13,9]⟩,5⟩,⟨⟨18,[0,13,9]⟩,11⟩,⟨⟨18,[0,14,10]⟩,5⟩,⟨⟨18,[0,14,10]⟩,11⟩,⟨⟨18,[1,11,8]⟩,4⟩,⟨⟨18,[1,11,8]⟩,14⟩,⟨⟨18,[1,12,7]⟩,4⟩,⟨⟨18,[1,12,7]⟩,14⟩,⟨⟨19,[]⟩,3⟩,⟨⟨19,[]⟩,4⟩,⟨⟨19,[]⟩,13⟩,⟨⟨19,[]⟩,14⟩,⟨⟨20,[3]⟩,0⟩,⟨⟨20,[4]⟩,15⟩,⟨⟨20,[4]⟩,16⟩,⟨⟨20,[5]⟩,9⟩,⟨⟨20,[5]⟩,10⟩,⟨⟨21,[3]⟩,15⟩,⟨⟨21,[4]⟩,16⟩,⟨⟨21,[5]⟩,17⟩,⟨⟨22,[3]⟩,18⟩,⟨⟨22,[4]⟩,19⟩,⟨⟨22,[5]⟩,20⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[14],[10],[11],[12],[13],[15,16],[17],[18],[19],[20],[22],[23],[21],[24,25],[24,25],[26],[27],[28],[28],[29],[29],[30],[61],[57,59],[53,55],[7],[39],[40],[35,36],[37,38],[41],[41],[42],[42],[43],[44],[45],[46],[47],[48],[54,56],[9],[63],[58,60],[51],[52],[34],[33],[53,55],[54,56],[6],[8],[62],[64],[57,59],[58,60],[65],[66,67],[68],[69],[70],[71],[71],[72],[72],[73],[74],[75],[31],[32],[49,50]]
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
end Certgen.R286
