import Regular
namespace Certgen.R291
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.app 11 12,.var 0,.app 13 19,.app 14 15,.var 0,.app 16 17,.var 1,.lam 18,.var 0,.var 0,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[12,5]⟩],[⟨15,[12,5]⟩],[⟨8,[]⟩],[⟨12,[10,6]⟩],[⟨15,[10,6]⟩],[⟨12,[11,7]⟩,⟨12,[11,8]⟩],[⟨12,[13,9]⟩],[⟨15,[11,7]⟩,⟨15,[11,8]⟩],[⟨15,[13,9]⟩],[⟨6,[2]⟩],[⟨20,[]⟩],[⟨19,[11,7]⟩,⟨19,[11,8]⟩,⟨19,[13,9]⟩],[⟨17,[10,6]⟩,⟨17,[12,5]⟩],[⟨7,[2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨12,[10,6]⟩,0⟩],[⟨⟨12,[11,7]⟩,19⟩],[⟨⟨12,[11,8]⟩,18⟩],[⟨⟨12,[12,5]⟩,11⟩,⟨⟨12,[12,5]⟩,23⟩],[⟨⟨12,[13,9]⟩,1⟩],[⟨⟨19,[10,6]⟩,22⟩],[⟨⟨19,[11,7]⟩,19⟩],[⟨⟨19,[11,8]⟩,19⟩],[⟨⟨19,[12,5]⟩,11⟩,⟨⟨19,[12,5]⟩,23⟩],[⟨⟨19,[13,9]⟩,18⟩],[⟨⟨15,[10,6]⟩,8⟩],[⟨⟨15,[11,7]⟩,9⟩],[⟨⟨15,[11,8]⟩,10⟩],[⟨⟨15,[12,5]⟩,11⟩],[⟨⟨15,[13,9]⟩,12⟩],[⟨⟨17,[10,6]⟩,23⟩],[⟨⟨17,[12,5]⟩,11⟩],[⟨⟨27,[3]⟩,0⟩],[⟨⟨27,[4]⟩,8⟩],[⟨⟨24,[3]⟩,20⟩],[⟨⟨24,[4]⟩,21⟩],[⟨⟨7,[2]⟩,1⟩],[⟨⟨6,[2]⟩,24⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,24⟩,⟨⟨5,[2]⟩,25⟩,⟨⟨7,[2]⟩,4⟩,⟨⟨7,[2]⟩,5⟩,⟨⟨7,[2]⟩,7⟩,⟨⟨7,[2]⟩,14⟩,⟨⟨7,[2]⟩,15⟩,⟨⟨7,[2]⟩,17⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,5⟩,⟨⟨8,[]⟩,7⟩,⟨⟨8,[]⟩,14⟩,⟨⟨8,[]⟩,15⟩,⟨⟨8,[]⟩,17⟩,⟨⟨8,[]⟩,25⟩,⟨⟨9,[5]⟩,18⟩,⟨⟨9,[5]⟩,19⟩,⟨⟨9,[6]⟩,1⟩,⟨⟨9,[7]⟩,9⟩,⟨⟨9,[7]⟩,10⟩,⟨⟨9,[8]⟩,12⟩,⟨⟨9,[9]⟩,24⟩,⟨⟨10,[10,6]⟩,0⟩,⟨⟨10,[11,7]⟩,19⟩,⟨⟨10,[11,8]⟩,18⟩,⟨⟨10,[12,5]⟩,11⟩,⟨⟨10,[12,5]⟩,23⟩,⟨⟨10,[13,9]⟩,1⟩,⟨⟨11,[10,6]⟩,3⟩,⟨⟨11,[11,7]⟩,4⟩,⟨⟨11,[11,8]⟩,5⟩,⟨⟨11,[12,5]⟩,6⟩,⟨⟨11,[13,9]⟩,7⟩,⟨⟨12,[10,6]⟩,22⟩,⟨⟨12,[11,7]⟩,19⟩,⟨⟨12,[11,8]⟩,19⟩,⟨⟨12,[12,5]⟩,11⟩,⟨⟨12,[12,5]⟩,23⟩,⟨⟨12,[13,9]⟩,18⟩,⟨⟨13,[10,6]⟩,8⟩,⟨⟨13,[11,7]⟩,9⟩,⟨⟨13,[11,8]⟩,10⟩,⟨⟨13,[12,5]⟩,11⟩,⟨⟨13,[13,9]⟩,12⟩,⟨⟨14,[10,6]⟩,13⟩,⟨⟨14,[11,7]⟩,14⟩,⟨⟨14,[11,8]⟩,15⟩,⟨⟨14,[12,5]⟩,16⟩,⟨⟨14,[13,9]⟩,17⟩,⟨⟨15,[10,6]⟩,23⟩,⟨⟨15,[12,5]⟩,11⟩,⟨⟨16,[10,6]⟩,18⟩,⟨⟨16,[12,5]⟩,19⟩,⟨⟨17,[10,6]⟩,6⟩,⟨⟨17,[10,6]⟩,16⟩,⟨⟨17,[12,5]⟩,6⟩,⟨⟨17,[12,5]⟩,16⟩,⟨⟨18,[0,10,6]⟩,11⟩,⟨⟨18,[0,10,6]⟩,23⟩,⟨⟨18,[0,12,5]⟩,11⟩,⟨⟨18,[0,12,5]⟩,23⟩,⟨⟨18,[1,10,6]⟩,11⟩,⟨⟨18,[1,12,5]⟩,11⟩,⟨⟨19,[11,7]⟩,4⟩,⟨⟨19,[11,7]⟩,5⟩,⟨⟨19,[11,7]⟩,14⟩,⟨⟨19,[11,7]⟩,15⟩,⟨⟨19,[11,8]⟩,4⟩,⟨⟨19,[11,8]⟩,5⟩,⟨⟨19,[11,8]⟩,14⟩,⟨⟨19,[11,8]⟩,15⟩,⟨⟨19,[13,9]⟩,4⟩,⟨⟨19,[13,9]⟩,5⟩,⟨⟨19,[13,9]⟩,14⟩,⟨⟨19,[13,9]⟩,15⟩,⟨⟨20,[]⟩,3⟩,⟨⟨20,[]⟩,13⟩,⟨⟨21,[3]⟩,0⟩,⟨⟨21,[4]⟩,8⟩,⟨⟨22,[3]⟩,20⟩,⟨⟨22,[4]⟩,21⟩,⟨⟨23,[3]⟩,22⟩,⟨⟨23,[4]⟩,23⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[18],[12],[13],[14],[15],[16],[17],[20],[19],[21],[22],[23],[24],[25],[30],[29],[26],[27],[27],[28],[31],[32],[33],[34],[35],[35],[36],[79],[67,71,75],[68,72,76],[57,59],[8],[43],[44],[45],[46],[46],[47],[48],[49],[50],[51],[52],[80],[69,73,77],[70,74,78],[58,60],[11],[55],[56],[42],[38,39],[61,62],[65],[63,64],[66],[40],[41],[40],[41],[54],[54],[67,71,75],[68,72,76],[69,73,77],[70,74,78],[67,71,75],[68,72,76],[69,73,77],[70,74,78],[6],[7],[9],[10],[81],[82],[83],[84],[85],[86],[37],[53]]
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
theorem block84 : checkRange P V K states hints 84 3=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<87 := hi
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
 by_cases h72 : i<84
 · exact range_sound block72 i (by omega) h72 hi
 exact range_sound block84 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R291
