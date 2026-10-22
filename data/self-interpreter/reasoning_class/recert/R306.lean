import Regular
namespace Certgen.R306
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 16,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.lam 8,.app 9 13,.app 10 11,.var 0,.lam 12,.var 1,.app 14 15,.var 0,.opaque,.lam 17,.lam 18,.app 19 20,.var 0,.var 0,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[8,4]⟩,⟨15,[9,4]⟩],[⟨11,[8,4]⟩,⟨11,[9,4]⟩],[⟨6,[4]⟩],[⟨7,[4]⟩],[⟨16,[]⟩],[⟨20,[3,2]⟩],[⟨13,[8,4]⟩],[⟨13,[9,4]⟩],[⟨11,[6,4]⟩,⟨11,[7,4]⟩],[⟨11,[5,4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨16,[]⟩,1⟩],[⟨⟨15,[8,4]⟩,16⟩,⟨⟨15,[8,4]⟩,19⟩],[⟨⟨15,[8,4]⟩,16⟩],[⟨⟨15,[8,4]⟩,19⟩],[⟨⟨15,[9,4]⟩,16⟩,⟨⟨15,[9,4]⟩,19⟩],[⟨⟨15,[9,4]⟩,16⟩],[⟨⟨15,[9,4]⟩,19⟩],[⟨⟨15,[9,4]⟩,20⟩],[⟨⟨20,[3,2]⟩,1⟩],[⟨⟨7,[4]⟩,1⟩],[⟨⟨6,[4]⟩,11⟩],[⟨⟨13,[5,4]⟩,1⟩],[⟨⟨13,[6,4]⟩,14⟩,⟨⟨13,[6,4]⟩,15⟩],[⟨⟨13,[7,4]⟩,13⟩],[⟨⟨13,[8,4]⟩,14⟩,⟨⟨13,[8,4]⟩,15⟩],[⟨⟨13,[9,4]⟩,13⟩],[⟨⟨11,[5,4]⟩,13⟩],[⟨⟨11,[6,4]⟩,14⟩],[⟨⟨11,[7,4]⟩,15⟩],[⟨⟨11,[8,4]⟩,16⟩],[⟨⟨11,[9,4]⟩,17⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,11⟩,⟨⟨5,[4]⟩,12⟩,⟨⟨7,[4]⟩,10⟩,⟨⟨7,[4]⟩,16⟩,⟨⟨7,[4]⟩,17⟩,⟨⟨7,[4]⟩,18⟩,⟨⟨7,[4]⟩,19⟩,⟨⟨7,[4]⟩,20⟩,⟨⟨8,[5,4]⟩,1⟩,⟨⟨8,[6,4]⟩,14⟩,⟨⟨8,[6,4]⟩,15⟩,⟨⟨8,[7,4]⟩,13⟩,⟨⟨8,[8,4]⟩,14⟩,⟨⟨8,[8,4]⟩,15⟩,⟨⟨8,[9,4]⟩,13⟩,⟨⟨9,[5,4]⟩,13⟩,⟨⟨9,[6,4]⟩,14⟩,⟨⟨9,[7,4]⟩,15⟩,⟨⟨9,[8,4]⟩,16⟩,⟨⟨9,[9,4]⟩,17⟩,⟨⟨10,[5,4]⟩,18⟩,⟨⟨10,[6,4]⟩,19⟩,⟨⟨10,[7,4]⟩,20⟩,⟨⟨10,[8,4]⟩,21⟩,⟨⟨10,[9,4]⟩,22⟩,⟨⟨11,[5,4]⟩,6⟩,⟨⟨11,[5,4]⟩,7⟩,⟨⟨11,[5,4]⟩,8⟩,⟨⟨11,[5,4]⟩,9⟩,⟨⟨11,[5,4]⟩,22⟩,⟨⟨11,[6,4]⟩,3⟩,⟨⟨11,[6,4]⟩,4⟩,⟨⟨11,[6,4]⟩,5⟩,⟨⟨11,[6,4]⟩,21⟩,⟨⟨11,[7,4]⟩,3⟩,⟨⟨11,[7,4]⟩,4⟩,⟨⟨11,[7,4]⟩,5⟩,⟨⟨11,[7,4]⟩,21⟩,⟨⟨12,[0,5,4]⟩,16⟩,⟨⟨12,[0,5,4]⟩,19⟩,⟨⟨12,[0,5,4]⟩,20⟩,⟨⟨12,[0,6,4]⟩,16⟩,⟨⟨12,[0,6,4]⟩,19⟩,⟨⟨12,[0,7,4]⟩,16⟩,⟨⟨12,[0,7,4]⟩,19⟩,⟨⟨12,[1,5,4]⟩,17⟩,⟨⟨12,[1,6,4]⟩,16⟩,⟨⟨12,[1,7,4]⟩,16⟩,⟨⟨13,[8,4]⟩,16⟩,⟨⟨13,[8,4]⟩,19⟩,⟨⟨13,[9,4]⟩,16⟩,⟨⟨13,[9,4]⟩,19⟩,⟨⟨13,[9,4]⟩,20⟩,⟨⟨14,[8,4]⟩,3⟩,⟨⟨14,[8,4]⟩,4⟩,⟨⟨14,[8,4]⟩,5⟩,⟨⟨14,[9,4]⟩,6⟩,⟨⟨14,[9,4]⟩,7⟩,⟨⟨14,[9,4]⟩,8⟩,⟨⟨14,[9,4]⟩,9⟩,⟨⟨16,[]⟩,12⟩,⟨⟨17,[2]⟩,11⟩,⟨⟨18,[3,2]⟩,1⟩,⟨⟨19,[3,2]⟩,10⟩,⟨⟨20,[3,2]⟩,16⟩,⟨⟨20,[3,2]⟩,17⟩,⟨⟨20,[3,2]⟩,18⟩,⟨⟨20,[3,2]⟩,19⟩,⟨⟨20,[3,2]⟩,20⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[64],[12],[13,14],[15],[18],[16],[17],[19],[20],[20],[21],[22],[22],[23],[24],[25],[26],[27],[28],[70],[53],[56],[37,41],[33],[42,43],[42],[43],[44],[49],[45,46],[45],[46],[50],[47,48],[47],[48],[51],[68],[71],[72],[52],[53],[54],[55],[69],[52],[54],[57],[57],[60],[60],[63],[34,38],[35,39],[36,40],[29],[30],[31],[32],[65],[66],[67],[6],[7],[8],[9],[10],[11]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<73 := hi
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
end Certgen.R306
