import Regular
namespace Certgen.R303
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 14,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.lam 8,.app 9 10,.var 0,.app 11 12,.var 0,.lam 13,.var 1,.lam 15,.lam 16,.app 17 18,.var 0,.app 19 20,.var 0,.var 0,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨10,[4,3]⟩,⟨10,[5,3]⟩],[⟨6,[3]⟩],[⟨7,[3]⟩],[⟨14,[]⟩],[⟨12,[7,3]⟩,⟨12,[8,3]⟩,⟨12,[9,3]⟩],[⟨12,[7,3]⟩],[⟨18,[2,1]⟩],[⟨20,[2,1]⟩],[⟨10,[8,3]⟩,⟨10,[9,3]⟩],[⟨10,[7,3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨14,[]⟩,1⟩],[⟨⟨12,[7,3]⟩,6⟩,⟨⟨12,[7,3]⟩,7⟩,⟨⟨12,[7,3]⟩,8⟩,⟨⟨12,[7,3]⟩,18⟩],[⟨⟨12,[7,3]⟩,9⟩],[⟨⟨12,[7,3]⟩,19⟩],[⟨⟨12,[8,3]⟩,6⟩,⟨⟨12,[8,3]⟩,7⟩,⟨⟨12,[8,3]⟩,8⟩,⟨⟨12,[8,3]⟩,18⟩],[⟨⟨12,[8,3]⟩,7⟩,⟨⟨12,[8,3]⟩,18⟩],[⟨⟨12,[9,3]⟩,6⟩,⟨⟨12,[9,3]⟩,7⟩,⟨⟨12,[9,3]⟩,8⟩,⟨⟨12,[9,3]⟩,18⟩],[⟨⟨12,[9,3]⟩,7⟩,⟨⟨12,[9,3]⟩,18⟩],[⟨⟨18,[2,1]⟩,1⟩],[⟨⟨20,[2,1]⟩,16⟩],[⟨⟨7,[3]⟩,1⟩],[⟨⟨6,[3]⟩,12⟩],[⟨⟨10,[4,3]⟩,6⟩,⟨⟨10,[4,3]⟩,7⟩,⟨⟨10,[4,3]⟩,8⟩,⟨⟨10,[4,3]⟩,18⟩],[⟨⟨10,[5,3]⟩,9⟩,⟨⟨10,[5,3]⟩,19⟩],[⟨⟨10,[6,3]⟩,1⟩],[⟨⟨10,[7,3]⟩,16⟩],[⟨⟨10,[8,3]⟩,16⟩],[⟨⟨10,[9,3]⟩,16⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,12⟩,⟨⟨5,[3]⟩,13⟩,⟨⟨7,[3]⟩,3⟩,⟨⟨7,[3]⟩,4⟩,⟨⟨7,[3]⟩,5⟩,⟨⟨7,[3]⟩,6⟩,⟨⟨7,[3]⟩,7⟩,⟨⟨7,[3]⟩,8⟩,⟨⟨7,[3]⟩,9⟩,⟨⟨7,[3]⟩,10⟩,⟨⟨7,[3]⟩,11⟩,⟨⟨7,[3]⟩,17⟩,⟨⟨7,[3]⟩,18⟩,⟨⟨7,[3]⟩,19⟩,⟨⟨8,[4,3]⟩,6⟩,⟨⟨8,[4,3]⟩,7⟩,⟨⟨8,[4,3]⟩,8⟩,⟨⟨8,[4,3]⟩,18⟩,⟨⟨8,[5,3]⟩,9⟩,⟨⟨8,[5,3]⟩,19⟩,⟨⟨8,[6,3]⟩,1⟩,⟨⟨8,[7,3]⟩,16⟩,⟨⟨8,[8,3]⟩,16⟩,⟨⟨8,[9,3]⟩,16⟩,⟨⟨9,[4,3]⟩,14⟩,⟨⟨9,[5,3]⟩,15⟩,⟨⟨9,[6,3]⟩,16⟩,⟨⟨9,[7,3]⟩,17⟩,⟨⟨9,[8,3]⟩,18⟩,⟨⟨9,[9,3]⟩,19⟩,⟨⟨10,[7,3]⟩,6⟩,⟨⟨10,[7,3]⟩,7⟩,⟨⟨10,[7,3]⟩,8⟩,⟨⟨10,[7,3]⟩,9⟩,⟨⟨10,[7,3]⟩,18⟩,⟨⟨10,[7,3]⟩,19⟩,⟨⟨10,[8,3]⟩,6⟩,⟨⟨10,[8,3]⟩,7⟩,⟨⟨10,[8,3]⟩,8⟩,⟨⟨10,[8,3]⟩,18⟩,⟨⟨10,[9,3]⟩,6⟩,⟨⟨10,[9,3]⟩,7⟩,⟨⟨10,[9,3]⟩,8⟩,⟨⟨10,[9,3]⟩,18⟩,⟨⟨11,[7,3]⟩,3⟩,⟨⟨11,[7,3]⟩,4⟩,⟨⟨11,[7,3]⟩,5⟩,⟨⟨11,[8,3]⟩,6⟩,⟨⟨11,[8,3]⟩,7⟩,⟨⟨11,[9,3]⟩,8⟩,⟨⟨11,[9,3]⟩,9⟩,⟨⟨12,[7,3]⟩,14⟩,⟨⟨12,[7,3]⟩,15⟩,⟨⟨12,[8,3]⟩,14⟩,⟨⟨12,[9,3]⟩,14⟩,⟨⟨13,[0,7,3]⟩,6⟩,⟨⟨13,[0,7,3]⟩,7⟩,⟨⟨13,[0,7,3]⟩,8⟩,⟨⟨13,[0,7,3]⟩,9⟩,⟨⟨13,[0,7,3]⟩,18⟩,⟨⟨13,[0,7,3]⟩,19⟩,⟨⟨13,[0,8,3]⟩,6⟩,⟨⟨13,[0,8,3]⟩,7⟩,⟨⟨13,[0,8,3]⟩,8⟩,⟨⟨13,[0,8,3]⟩,18⟩,⟨⟨13,[0,9,3]⟩,6⟩,⟨⟨13,[0,9,3]⟩,7⟩,⟨⟨13,[0,9,3]⟩,8⟩,⟨⟨13,[0,9,3]⟩,18⟩,⟨⟨14,[]⟩,13⟩,⟨⟨15,[1]⟩,12⟩,⟨⟨16,[2,1]⟩,1⟩,⟨⟨17,[2,1]⟩,10⟩,⟨⟨18,[2,1]⟩,16⟩,⟨⟨19,[2,1]⟩,11⟩,⟨⟨20,[2,1]⟩,3⟩,⟨⟨20,[2,1]⟩,4⟩,⟨⟨20,[2,1]⟩,5⟩,⟨⟨20,[2,1]⟩,6⟩,⟨⟨20,[2,1]⟩,7⟩,⟨⟨20,[2,1]⟩,8⟩,⟨⟨20,[2,1]⟩,9⟩,⟨⟨20,[2,1]⟩,17⟩,⟨⟨20,[2,1]⟩,18⟩,⟨⟨20,[2,1]⟩,19⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[73],[18,19,20,21],[22],[23],[18,19,20,21],[19,21],[18,19,20,21],[19,21],[24],[25],[27],[26],[26],[28],[28],[28],[28],[29],[29],[30],[31],[32],[33],[55,57,58],[56],[77],[86],[43,47],[39],[48],[48],[48],[49],[48],[50],[51],[51],[51],[51],[53],[53],[53],[53],[79],[80],[81],[40,44],[41,45],[36],[37],[59,60,61,63],[62,64],[65,66,67,68],[69,70,71,72],[82],[83],[84],[85],[87],[88],[40,44],[41,45],[42,46],[43,47],[34],[35],[36],[38],[74],[75],[76],[13],[78],[14],[6],[7],[8],[9],[10],[11],[12],[15],[16],[17]]
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
theorem block84 : checkRange P V K states hints 84 5=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<89 := hi
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
end Certgen.R303
