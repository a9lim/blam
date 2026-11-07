import Regular
namespace Certgen.R174
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 18,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 17,.lam 9,.app 10 14,.app 11 12,.var 1,.lam 13,.var 2,.app 15 16,.var 1,.opaque,.opaque,.lam 19,.app 20 25,.app 21 22,.var 0,.lam 23,.lam 24,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[8,3]⟩,⟨12,[8,4]⟩],[⟨16,[8,3]⟩,⟨16,[8,4]⟩],[⟨6,[]⟩],[⟨12,[10,6]⟩,⟨12,[10,7]⟩],[⟨12,[9,5]⟩],[⟨5,[2]⟩],[⟨14,[8,4]⟩],[⟨14,[8,3]⟩],[⟨17,[3]⟩,⟨17,[4]⟩],[⟨17,[5]⟩],[⟨17,[6]⟩,⟨17,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨18,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[8,3]⟩,21⟩],[⟨⟨12,[8,4]⟩,22⟩],[⟨⟨12,[9,5]⟩,23⟩],[⟨⟨12,[10,6]⟩,24⟩],[⟨⟨12,[10,7]⟩,25⟩],[⟨⟨16,[8,3]⟩,21⟩],[⟨⟨16,[8,3]⟩,7⟩,⟨⟨16,[8,3]⟩,21⟩],[⟨⟨16,[8,3]⟩,7⟩],[⟨⟨16,[8,4]⟩,21⟩],[⟨⟨16,[8,4]⟩,7⟩,⟨⟨16,[8,4]⟩,21⟩],[⟨⟨16,[8,4]⟩,7⟩],[⟨⟨16,[8,4]⟩,6⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨17,[3]⟩,24⟩,⟨⟨17,[3]⟩,25⟩],[⟨⟨17,[4]⟩,23⟩],[⟨⟨17,[5]⟩,1⟩],[⟨⟨17,[6]⟩,23⟩],[⟨⟨17,[7]⟩,24⟩,⟨⟨17,[7]⟩,25⟩],[⟨⟨14,[8,3]⟩,24⟩,⟨⟨14,[8,3]⟩,25⟩],[⟨⟨14,[8,4]⟩,23⟩],[⟨⟨14,[9,5]⟩,1⟩],[⟨⟨14,[10,6]⟩,23⟩],[⟨⟨14,[10,7]⟩,24⟩,⟨⟨14,[10,7]⟩,25⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,15⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨5,[2]⟩,6⟩,⟨⟨5,[2]⟩,7⟩,⟨⟨5,[2]⟩,21⟩,⟨⟨5,[2]⟩,22⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,7⟩,⟨⟨6,[]⟩,15⟩,⟨⟨6,[]⟩,21⟩,⟨⟨6,[]⟩,22⟩,⟨⟨7,[3]⟩,24⟩,⟨⟨7,[3]⟩,25⟩,⟨⟨7,[4]⟩,23⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨7,[6]⟩,23⟩,⟨⟨7,[7]⟩,24⟩,⟨⟨7,[7]⟩,25⟩,⟨⟨8,[3]⟩,16⟩,⟨⟨8,[4]⟩,17⟩,⟨⟨8,[5]⟩,18⟩,⟨⟨8,[6]⟩,19⟩,⟨⟨8,[7]⟩,20⟩,⟨⟨9,[8,3]⟩,24⟩,⟨⟨9,[8,3]⟩,25⟩,⟨⟨9,[8,4]⟩,23⟩,⟨⟨9,[9,5]⟩,1⟩,⟨⟨9,[10,6]⟩,23⟩,⟨⟨9,[10,7]⟩,24⟩,⟨⟨9,[10,7]⟩,25⟩,⟨⟨10,[8,3]⟩,21⟩,⟨⟨10,[8,4]⟩,22⟩,⟨⟨10,[9,5]⟩,23⟩,⟨⟨10,[10,6]⟩,24⟩,⟨⟨10,[10,7]⟩,25⟩,⟨⟨11,[8,3]⟩,3⟩,⟨⟨11,[8,4]⟩,4⟩,⟨⟨11,[9,5]⟩,5⟩,⟨⟨11,[10,6]⟩,6⟩,⟨⟨11,[10,7]⟩,7⟩,⟨⟨12,[9,5]⟩,4⟩,⟨⟨12,[9,5]⟩,11⟩,⟨⟨12,[9,5]⟩,12⟩,⟨⟨12,[9,5]⟩,13⟩,⟨⟨12,[9,5]⟩,14⟩,⟨⟨12,[10,6]⟩,3⟩,⟨⟨12,[10,6]⟩,8⟩,⟨⟨12,[10,6]⟩,9⟩,⟨⟨12,[10,6]⟩,10⟩,⟨⟨12,[10,7]⟩,3⟩,⟨⟨12,[10,7]⟩,8⟩,⟨⟨12,[10,7]⟩,9⟩,⟨⟨12,[10,7]⟩,10⟩,⟨⟨13,[0,9,5]⟩,22⟩,⟨⟨13,[0,10,6]⟩,21⟩,⟨⟨13,[0,10,7]⟩,21⟩,⟨⟨13,[1,9,5]⟩,6⟩,⟨⟨13,[1,9,5]⟩,7⟩,⟨⟨13,[1,9,5]⟩,21⟩,⟨⟨13,[1,10,6]⟩,7⟩,⟨⟨13,[1,10,6]⟩,21⟩,⟨⟨13,[1,10,7]⟩,7⟩,⟨⟨13,[1,10,7]⟩,21⟩,⟨⟨14,[8,3]⟩,7⟩,⟨⟨14,[8,3]⟩,21⟩,⟨⟨14,[8,4]⟩,6⟩,⟨⟨14,[8,4]⟩,7⟩,⟨⟨14,[8,4]⟩,21⟩,⟨⟨15,[8,3]⟩,8⟩,⟨⟨15,[8,3]⟩,9⟩,⟨⟨15,[8,3]⟩,10⟩,⟨⟨15,[8,4]⟩,11⟩,⟨⟨15,[8,4]⟩,12⟩,⟨⟨15,[8,4]⟩,13⟩,⟨⟨15,[8,4]⟩,14⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[10],[11],[12],[14],[15],[18],[16],[17],[19],[21,22],[20],[23],[23],[24],[25],[26],[27],[27],[28,29],[30],[31],[32],[33,34],[35],[35],[36],[37],[38],[39],[39],[40],[41],[42],[43],[44],[50,54],[45],[5],[70],[68],[58],[63],[62,63],[62],[61],[59],[65],[64,65],[64],[60],[67],[66,67],[66],[9],[72],[69],[6],[7],[8],[71],[72],[68],[69],[74],[73],[79],[77],[76],[51,55],[52,56],[53,57],[46],[47],[48],[49]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 8=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<80 := hi
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
end Certgen.R174
