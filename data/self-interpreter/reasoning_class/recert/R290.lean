import Regular
namespace Certgen.R290
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.app 11 12,.var 0,.app 13 20,.app 14 15,.var 0,.lam 16,.app 17 18,.var 2,.lam 19,.var 0,.var 0,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨20,[14,7]⟩],[⟨25,[6]⟩],[⟨12,[14,7]⟩],[⟨15,[14,7]⟩],[⟨8,[]⟩],[⟨12,[12,8]⟩],[⟨15,[12,8]⟩],[⟨12,[13,9]⟩,⟨12,[13,10]⟩],[⟨12,[15,11]⟩],[⟨15,[13,9]⟩,⟨15,[13,10]⟩],[⟨15,[15,11]⟩],[⟨6,[4]⟩],[⟨21,[]⟩],[⟨20,[13,9]⟩,⟨20,[13,10]⟩,⟨20,[15,11]⟩],[⟨18,[0,14,7]⟩,⟨18,[1,12,8]⟩],[⟨7,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨12,[12,8]⟩,0⟩],[⟨⟨12,[13,9]⟩,18⟩],[⟨⟨12,[13,10]⟩,19⟩],[⟨⟨12,[14,7]⟩,21⟩],[⟨⟨12,[15,11]⟩,1⟩],[⟨⟨20,[12,8]⟩,22⟩],[⟨⟨20,[13,9]⟩,18⟩],[⟨⟨20,[13,10]⟩,18⟩],[⟨⟨20,[14,7]⟩,21⟩],[⟨⟨20,[15,11]⟩,19⟩],[⟨⟨15,[12,8]⟩,8⟩],[⟨⟨15,[13,9]⟩,9⟩],[⟨⟨15,[13,10]⟩,10⟩],[⟨⟨15,[14,7]⟩,11⟩],[⟨⟨15,[15,11]⟩,12⟩],[⟨⟨18,[0,14,7]⟩,21⟩],[⟨⟨18,[1,12,8]⟩,21⟩],[⟨⟨28,[5]⟩,0⟩],[⟨⟨28,[6]⟩,8⟩],[⟨⟨25,[5]⟩,20⟩],[⟨⟨25,[6]⟩,21⟩],[⟨⟨7,[4]⟩,1⟩],[⟨⟨6,[4]⟩,24⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,24⟩,⟨⟨5,[4]⟩,25⟩,⟨⟨7,[4]⟩,4⟩,⟨⟨7,[4]⟩,5⟩,⟨⟨7,[4]⟩,7⟩,⟨⟨7,[4]⟩,14⟩,⟨⟨7,[4]⟩,15⟩,⟨⟨7,[4]⟩,17⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,5⟩,⟨⟨8,[]⟩,7⟩,⟨⟨8,[]⟩,14⟩,⟨⟨8,[]⟩,15⟩,⟨⟨8,[]⟩,17⟩,⟨⟨8,[]⟩,25⟩,⟨⟨9,[7]⟩,18⟩,⟨⟨9,[7]⟩,19⟩,⟨⟨9,[8]⟩,1⟩,⟨⟨9,[9]⟩,9⟩,⟨⟨9,[9]⟩,10⟩,⟨⟨9,[10]⟩,12⟩,⟨⟨9,[11]⟩,24⟩,⟨⟨10,[12,8]⟩,0⟩,⟨⟨10,[13,9]⟩,18⟩,⟨⟨10,[13,10]⟩,19⟩,⟨⟨10,[14,7]⟩,21⟩,⟨⟨10,[15,11]⟩,1⟩,⟨⟨11,[12,8]⟩,3⟩,⟨⟨11,[13,9]⟩,4⟩,⟨⟨11,[13,10]⟩,5⟩,⟨⟨11,[14,7]⟩,6⟩,⟨⟨11,[15,11]⟩,7⟩,⟨⟨12,[12,8]⟩,22⟩,⟨⟨12,[13,9]⟩,18⟩,⟨⟨12,[13,10]⟩,18⟩,⟨⟨12,[14,7]⟩,21⟩,⟨⟨12,[15,11]⟩,19⟩,⟨⟨13,[12,8]⟩,8⟩,⟨⟨13,[13,9]⟩,9⟩,⟨⟨13,[13,10]⟩,10⟩,⟨⟨13,[14,7]⟩,11⟩,⟨⟨13,[15,11]⟩,12⟩,⟨⟨14,[12,8]⟩,13⟩,⟨⟨14,[13,9]⟩,14⟩,⟨⟨14,[13,10]⟩,15⟩,⟨⟨14,[14,7]⟩,16⟩,⟨⟨14,[15,11]⟩,17⟩,⟨⟨15,[12,8]⟩,23⟩,⟨⟨15,[14,7]⟩,11⟩,⟨⟨16,[0,14,7]⟩,21⟩,⟨⟨16,[1,12,8]⟩,21⟩,⟨⟨17,[0,14,7]⟩,18⟩,⟨⟨17,[1,12,8]⟩,19⟩,⟨⟨18,[0,14,7]⟩,6⟩,⟨⟨18,[0,14,7]⟩,16⟩,⟨⟨18,[1,12,8]⟩,6⟩,⟨⟨18,[1,12,8]⟩,16⟩,⟨⟨19,[2,0,14,7]⟩,21⟩,⟨⟨19,[2,1,12,8]⟩,21⟩,⟨⟨19,[3,0,14,7]⟩,11⟩,⟨⟨19,[3,1,12,8]⟩,11⟩,⟨⟨20,[13,9]⟩,4⟩,⟨⟨20,[13,9]⟩,5⟩,⟨⟨20,[13,9]⟩,14⟩,⟨⟨20,[13,9]⟩,15⟩,⟨⟨20,[13,10]⟩,4⟩,⟨⟨20,[13,10]⟩,5⟩,⟨⟨20,[13,10]⟩,14⟩,⟨⟨20,[13,10]⟩,15⟩,⟨⟨20,[15,11]⟩,4⟩,⟨⟨20,[15,11]⟩,5⟩,⟨⟨20,[15,11]⟩,14⟩,⟨⟨20,[15,11]⟩,15⟩,⟨⟨21,[]⟩,3⟩,⟨⟨21,[]⟩,13⟩,⟨⟨22,[5]⟩,0⟩,⟨⟨22,[6]⟩,8⟩,⟨⟨23,[5]⟩,20⟩,⟨⟨23,[6]⟩,21⟩,⟨⟨24,[5]⟩,22⟩,⟨⟨24,[6]⟩,23⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[18],[12],[13],[14],[15],[16],[17],[19],[20],[21],[22],[23],[24],[25],[29],[29],[26],[27],[27],[28],[30],[31],[32],[33],[34],[35],[77],[65,69,73],[66,70,74],[57,59],[8],[41],[42],[43],[44],[45],[46],[47],[48],[49],[50],[78],[67,71,75],[68,72,76],[58,60],[11],[54],[53],[55],[56],[37,38],[40],[61],[63],[62],[64],[39],[39],[52],[52],[65,69,73],[66,70,74],[67,71,75],[68,72,76],[65,69,73],[66,70,74],[67,71,75],[68,72,76],[6],[7],[9],[10],[79],[80],[81],[82],[83],[84],[36],[51]]
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
theorem block84 : checkRange P V K states hints 84 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<85 := hi
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
end Certgen.R290
