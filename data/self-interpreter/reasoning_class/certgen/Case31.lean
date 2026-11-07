import Regular
namespace Certgen.Case31
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.app 11 12,.var 0,.app 13 20,.app 14 15,.var 0,.app 16 19,.app 17 18,.var 1,.var 0,.opaque,.var 0,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨8,[]⟩],[⟨12,[8,5]⟩],[⟨12,[10,4]⟩],[⟨15,[8,5]⟩,⟨15,[10,4]⟩],[⟨12,[9,6]⟩],[⟨12,[11,7]⟩],[⟨15,[9,6]⟩,⟨15,[11,7]⟩],[⟨6,[0]⟩],[⟨21,[]⟩],[⟨20,[9,6]⟩,⟨20,[11,7]⟩],[⟨18,[8,5]⟩,⟨18,[10,4]⟩],[⟨7,[0]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨12,[8,5]⟩,0⟩],[⟨⟨12,[9,6]⟩,17⟩,⟨⟨12,[9,6]⟩,18⟩],[⟨⟨12,[10,4]⟩,15⟩,⟨⟨12,[10,4]⟩,16⟩],[⟨⟨12,[11,7]⟩,1⟩],[⟨⟨20,[8,5]⟩,22⟩],[⟨⟨20,[9,6]⟩,18⟩],[⟨⟨20,[10,4]⟩,23⟩],[⟨⟨20,[11,7]⟩,17⟩],[⟨⟨15,[8,5]⟩,7⟩],[⟨⟨15,[9,6]⟩,8⟩],[⟨⟨15,[10,4]⟩,9⟩],[⟨⟨15,[11,7]⟩,10⟩],[⟨⟨19,[8,5]⟩,24⟩],[⟨⟨19,[10,4]⟩,24⟩],[⟨⟨18,[8,5]⟩,15⟩],[⟨⟨18,[10,4]⟩,16⟩],[⟨⟨28,[1]⟩,0⟩],[⟨⟨28,[2]⟩,15⟩,⟨⟨28,[2]⟩,16⟩],[⟨⟨28,[3]⟩,7⟩,⟨⟨28,[3]⟩,9⟩],[⟨⟨25,[1]⟩,19⟩],[⟨⟨25,[2]⟩,20⟩],[⟨⟨25,[3]⟩,21⟩],[⟨⟨7,[0]⟩,1⟩],[⟨⟨6,[0]⟩,25⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[0]⟩,1⟩,⟨⟨4,[0]⟩,25⟩,⟨⟨5,[0]⟩,26⟩,⟨⟨7,[0]⟩,4⟩,⟨⟨7,[0]⟩,6⟩,⟨⟨7,[0]⟩,12⟩,⟨⟨7,[0]⟩,14⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,6⟩,⟨⟨8,[]⟩,12⟩,⟨⟨8,[]⟩,14⟩,⟨⟨8,[]⟩,26⟩,⟨⟨9,[4]⟩,17⟩,⟨⟨9,[4]⟩,18⟩,⟨⟨9,[5]⟩,1⟩,⟨⟨9,[6]⟩,8⟩,⟨⟨9,[6]⟩,10⟩,⟨⟨9,[7]⟩,25⟩,⟨⟨10,[8,5]⟩,0⟩,⟨⟨10,[9,6]⟩,17⟩,⟨⟨10,[9,6]⟩,18⟩,⟨⟨10,[10,4]⟩,15⟩,⟨⟨10,[10,4]⟩,16⟩,⟨⟨10,[11,7]⟩,1⟩,⟨⟨11,[8,5]⟩,3⟩,⟨⟨11,[9,6]⟩,4⟩,⟨⟨11,[10,4]⟩,5⟩,⟨⟨11,[11,7]⟩,6⟩,⟨⟨12,[8,5]⟩,22⟩,⟨⟨12,[9,6]⟩,18⟩,⟨⟨12,[10,4]⟩,23⟩,⟨⟨12,[11,7]⟩,17⟩,⟨⟨13,[8,5]⟩,7⟩,⟨⟨13,[9,6]⟩,8⟩,⟨⟨13,[10,4]⟩,9⟩,⟨⟨13,[11,7]⟩,10⟩,⟨⟨14,[8,5]⟩,11⟩,⟨⟨14,[9,6]⟩,12⟩,⟨⟨14,[10,4]⟩,13⟩,⟨⟨14,[11,7]⟩,14⟩,⟨⟨15,[8,5]⟩,24⟩,⟨⟨15,[10,4]⟩,24⟩,⟨⟨16,[8,5]⟩,15⟩,⟨⟨16,[10,4]⟩,16⟩,⟨⟨17,[8,5]⟩,17⟩,⟨⟨17,[10,4]⟩,18⟩,⟨⟨18,[8,5]⟩,5⟩,⟨⟨18,[8,5]⟩,13⟩,⟨⟨18,[10,4]⟩,5⟩,⟨⟨18,[10,4]⟩,13⟩,⟨⟨20,[9,6]⟩,4⟩,⟨⟨20,[9,6]⟩,12⟩,⟨⟨20,[11,7]⟩,4⟩,⟨⟨20,[11,7]⟩,12⟩,⟨⟨21,[]⟩,3⟩,⟨⟨21,[]⟩,5⟩,⟨⟨21,[]⟩,11⟩,⟨⟨21,[]⟩,13⟩,⟨⟨22,[1]⟩,0⟩,⟨⟨22,[2]⟩,15⟩,⟨⟨22,[2]⟩,16⟩,⟨⟨22,[3]⟩,7⟩,⟨⟨22,[3]⟩,9⟩,⟨⟨23,[1]⟩,19⟩,⟨⟨23,[2]⟩,20⟩,⟨⟨23,[3]⟩,21⟩,⟨⟨24,[1]⟩,22⟩,⟨⟨24,[2]⟩,23⟩,⟨⟨24,[3]⟩,24⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[14],[10],[11],[12],[13],[15,16],[17],[18],[19],[20],[24],[25],[21],[23],[22],[26],[27],[28],[28],[29],[29],[30],[57],[53,55],[49,51],[7],[35],[36],[37],[38],[39],[40],[41],[42],[59],[54,56],[50,52],[9],[45],[46],[47],[48],[34],[32],[58],[60],[49,51],[50,52],[53,55],[54,56],[6],[8],[61],[62,63],[64],[65],[66],[67],[67],[68],[68],[69],[70],[71],[31],[33],[43,44]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<72 := hi
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
end Certgen.Case31
