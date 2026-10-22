import Regular
namespace Certgen.Case28
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.app 11 12,.var 0,.app 13 18,.app 14 15,.var 0,.app 16 17,.var 1,.var 0,.var 0,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[8,5]⟩],[⟨12,[10,4]⟩],[⟨15,[8,5]⟩,⟨15,[10,4]⟩],[⟨8,[]⟩],[⟨12,[9,6]⟩],[⟨12,[11,7]⟩],[⟨15,[9,6]⟩,⟨15,[11,7]⟩],[⟨6,[3]⟩],[⟨19,[]⟩],[⟨18,[9,6]⟩,⟨18,[11,7]⟩],[⟨17,[8,5]⟩,⟨17,[10,4]⟩],[⟨7,[3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨12,[8,5]⟩,0⟩],[⟨⟨12,[9,6]⟩,15⟩,⟨⟨12,[9,6]⟩,16⟩],[⟨⟨12,[10,4]⟩,22⟩],[⟨⟨12,[11,7]⟩,1⟩],[⟨⟨18,[8,5]⟩,20⟩],[⟨⟨18,[9,6]⟩,16⟩],[⟨⟨18,[10,4]⟩,21⟩],[⟨⟨18,[11,7]⟩,15⟩],[⟨⟨15,[8,5]⟩,7⟩],[⟨⟨15,[9,6]⟩,8⟩],[⟨⟨15,[10,4]⟩,9⟩],[⟨⟨15,[11,7]⟩,10⟩],[⟨⟨17,[8,5]⟩,22⟩],[⟨⟨17,[10,4]⟩,22⟩],[⟨⟨26,[0]⟩,0⟩],[⟨⟨26,[1]⟩,22⟩],[⟨⟨26,[2]⟩,7⟩,⟨⟨26,[2]⟩,9⟩],[⟨⟨23,[0]⟩,17⟩],[⟨⟨23,[1]⟩,18⟩],[⟨⟨23,[2]⟩,19⟩],[⟨⟨7,[3]⟩,1⟩],[⟨⟨6,[3]⟩,23⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,23⟩,⟨⟨5,[3]⟩,24⟩,⟨⟨7,[3]⟩,4⟩,⟨⟨7,[3]⟩,6⟩,⟨⟨7,[3]⟩,12⟩,⟨⟨7,[3]⟩,14⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,6⟩,⟨⟨8,[]⟩,12⟩,⟨⟨8,[]⟩,14⟩,⟨⟨8,[]⟩,24⟩,⟨⟨9,[4]⟩,15⟩,⟨⟨9,[4]⟩,16⟩,⟨⟨9,[5]⟩,1⟩,⟨⟨9,[6]⟩,8⟩,⟨⟨9,[6]⟩,10⟩,⟨⟨9,[7]⟩,23⟩,⟨⟨10,[8,5]⟩,0⟩,⟨⟨10,[9,6]⟩,15⟩,⟨⟨10,[9,6]⟩,16⟩,⟨⟨10,[10,4]⟩,22⟩,⟨⟨10,[11,7]⟩,1⟩,⟨⟨11,[8,5]⟩,3⟩,⟨⟨11,[9,6]⟩,4⟩,⟨⟨11,[10,4]⟩,5⟩,⟨⟨11,[11,7]⟩,6⟩,⟨⟨12,[8,5]⟩,20⟩,⟨⟨12,[9,6]⟩,16⟩,⟨⟨12,[10,4]⟩,21⟩,⟨⟨12,[11,7]⟩,15⟩,⟨⟨13,[8,5]⟩,7⟩,⟨⟨13,[9,6]⟩,8⟩,⟨⟨13,[10,4]⟩,9⟩,⟨⟨13,[11,7]⟩,10⟩,⟨⟨14,[8,5]⟩,11⟩,⟨⟨14,[9,6]⟩,12⟩,⟨⟨14,[10,4]⟩,13⟩,⟨⟨14,[11,7]⟩,14⟩,⟨⟨15,[8,5]⟩,22⟩,⟨⟨15,[10,4]⟩,22⟩,⟨⟨16,[8,5]⟩,15⟩,⟨⟨16,[10,4]⟩,16⟩,⟨⟨17,[8,5]⟩,5⟩,⟨⟨17,[8,5]⟩,13⟩,⟨⟨17,[10,4]⟩,5⟩,⟨⟨17,[10,4]⟩,13⟩,⟨⟨18,[9,6]⟩,4⟩,⟨⟨18,[9,6]⟩,12⟩,⟨⟨18,[11,7]⟩,4⟩,⟨⟨18,[11,7]⟩,12⟩,⟨⟨19,[]⟩,3⟩,⟨⟨19,[]⟩,5⟩,⟨⟨19,[]⟩,11⟩,⟨⟨19,[]⟩,13⟩,⟨⟨20,[0]⟩,0⟩,⟨⟨20,[1]⟩,22⟩,⟨⟨20,[2]⟩,7⟩,⟨⟨20,[2]⟩,9⟩,⟨⟨21,[0]⟩,17⟩,⟨⟨21,[1]⟩,18⟩,⟨⟨21,[2]⟩,19⟩,⟨⟨22,[0]⟩,20⟩,⟨⟨22,[1]⟩,21⟩,⟨⟨22,[2]⟩,22⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[14],[10],[11],[12],[13],[15,16],[17],[18],[19],[20],[24],[24],[21],[23],[22],[25],[26],[27],[27],[28],[29],[54],[50,52],[46,48],[7],[34],[35],[36],[37],[38],[39],[40],[41],[56],[51,53],[47,49],[9],[44],[45],[33],[31],[55],[57],[46,48],[47,49],[50,52],[51,53],[6],[8],[58],[59],[60],[61],[62],[63],[64],[64],[65],[66],[67],[30],[32],[42,43]]
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
end Certgen.Case28
