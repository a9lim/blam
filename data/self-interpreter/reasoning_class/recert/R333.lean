import Regular
namespace Certgen.R333
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 22,.app 2 12,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.app 8 11,.app 9 10,.var 0,.opaque,.var 0,.lam 13,.lam 14,.app 15 16,.var 0,.app 17 21,.app 18 19,.var 0,.lam 20,.var 0,.var 0,.lam 23,.app 24 29,.app 25 26,.var 0,.lam 27,.lam 28,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[6,2]⟩],[⟨6,[11]⟩],[⟨10,[11]⟩],[⟨16,[3,0]⟩,⟨16,[5,1]⟩],[⟨19,[3,0]⟩,⟨19,[5,1]⟩],[⟨7,[11]⟩],[⟨11,[11]⟩],[⟨16,[4,0]⟩],[⟨21,[3,0]⟩,⟨21,[5,1]⟩],[⟨21,[4,0]⟩],[⟨19,[4,0]⟩],[⟨12,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨22,[]⟩,0⟩],[⟨⟨12,[]⟩,1⟩],[⟨⟨16,[3,0]⟩,1⟩],[⟨⟨16,[4,0]⟩,9⟩,⟨⟨16,[4,0]⟩,11⟩],[⟨⟨16,[5,1]⟩,1⟩],[⟨⟨16,[6,2]⟩,14⟩],[⟨⟨16,[6,2]⟩,5⟩],[⟨⟨16,[6,2]⟩,3⟩,⟨⟨16,[6,2]⟩,12⟩,⟨⟨16,[6,2]⟩,14⟩],[⟨⟨21,[3,0]⟩,3⟩,⟨⟨21,[3,0]⟩,12⟩],[⟨⟨21,[4,0]⟩,9⟩,⟨⟨21,[4,0]⟩,11⟩],[⟨⟨21,[5,1]⟩,3⟩,⟨⟨21,[5,1]⟩,12⟩],[⟨⟨19,[3,0]⟩,9⟩],[⟨⟨19,[4,0]⟩,10⟩],[⟨⟨19,[5,1]⟩,11⟩],[⟨⟨7,[11]⟩,1⟩],[⟨⟨6,[11]⟩,15⟩],[⟨⟨11,[11]⟩,14⟩],[⟨⟨11,[11]⟩,5⟩],[⟨⟨11,[11]⟩,3⟩,⟨⟨11,[11]⟩,12⟩,⟨⟨11,[11]⟩,14⟩],[⟨⟨10,[11]⟩,17⟩],[⟨⟨10,[11]⟩,18⟩],[⟨⟨10,[11]⟩,19⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[11]⟩,1⟩,⟨⟨4,[11]⟩,15⟩,⟨⟨5,[11]⟩,16⟩,⟨⟨7,[11]⟩,3⟩,⟨⟨7,[11]⟩,5⟩,⟨⟨7,[11]⟩,12⟩,⟨⟨7,[11]⟩,14⟩,⟨⟨8,[11]⟩,17⟩,⟨⟨8,[11]⟩,18⟩,⟨⟨8,[11]⟩,19⟩,⟨⟨9,[11]⟩,20⟩,⟨⟨9,[11]⟩,21⟩,⟨⟨9,[11]⟩,22⟩,⟨⟨11,[11]⟩,6⟩,⟨⟨11,[11]⟩,7⟩,⟨⟨11,[11]⟩,8⟩,⟨⟨12,[]⟩,6⟩,⟨⟨12,[]⟩,7⟩,⟨⟨12,[]⟩,8⟩,⟨⟨12,[]⟩,16⟩,⟨⟨12,[]⟩,20⟩,⟨⟨12,[]⟩,21⟩,⟨⟨12,[]⟩,22⟩,⟨⟨13,[0]⟩,3⟩,⟨⟨13,[0]⟩,5⟩,⟨⟨13,[0]⟩,12⟩,⟨⟨13,[0]⟩,14⟩,⟨⟨13,[1]⟩,15⟩,⟨⟨13,[2]⟩,17⟩,⟨⟨13,[2]⟩,18⟩,⟨⟨13,[2]⟩,19⟩,⟨⟨14,[3,0]⟩,1⟩,⟨⟨14,[4,0]⟩,9⟩,⟨⟨14,[4,0]⟩,11⟩,⟨⟨14,[5,1]⟩,1⟩,⟨⟨14,[6,2]⟩,3⟩,⟨⟨14,[6,2]⟩,5⟩,⟨⟨14,[6,2]⟩,12⟩,⟨⟨14,[6,2]⟩,14⟩,⟨⟨15,[3,0]⟩,3⟩,⟨⟨15,[4,0]⟩,4⟩,⟨⟨15,[5,1]⟩,5⟩,⟨⟨15,[6,2]⟩,6⟩,⟨⟨15,[6,2]⟩,7⟩,⟨⟨15,[6,2]⟩,8⟩,⟨⟨16,[3,0]⟩,3⟩,⟨⟨16,[3,0]⟩,12⟩,⟨⟨16,[4,0]⟩,9⟩,⟨⟨16,[4,0]⟩,11⟩,⟨⟨16,[5,1]⟩,3⟩,⟨⟨16,[5,1]⟩,12⟩,⟨⟨17,[3,0]⟩,9⟩,⟨⟨17,[4,0]⟩,10⟩,⟨⟨17,[5,1]⟩,11⟩,⟨⟨18,[3,0]⟩,12⟩,⟨⟨18,[4,0]⟩,13⟩,⟨⟨18,[5,1]⟩,14⟩,⟨⟨19,[3,0]⟩,4⟩,⟨⟨19,[3,0]⟩,9⟩,⟨⟨19,[3,0]⟩,11⟩,⟨⟨19,[3,0]⟩,13⟩,⟨⟨19,[4,0]⟩,10⟩,⟨⟨19,[5,1]⟩,4⟩,⟨⟨19,[5,1]⟩,9⟩,⟨⟨19,[5,1]⟩,11⟩,⟨⟨19,[5,1]⟩,13⟩,⟨⟨20,[7,3,0]⟩,9⟩,⟨⟨20,[7,3,0]⟩,11⟩,⟨⟨20,[7,5,1]⟩,9⟩,⟨⟨20,[7,5,1]⟩,11⟩,⟨⟨20,[8,3,0]⟩,3⟩,⟨⟨20,[8,3,0]⟩,12⟩,⟨⟨20,[8,5,1]⟩,3⟩,⟨⟨20,[8,5,1]⟩,12⟩,⟨⟨20,[9,4,0]⟩,9⟩,⟨⟨20,[9,4,0]⟩,11⟩,⟨⟨20,[10,3,0]⟩,10⟩,⟨⟨20,[10,5,1]⟩,10⟩,⟨⟨21,[3,0]⟩,3⟩,⟨⟨21,[3,0]⟩,12⟩,⟨⟨21,[4,0]⟩,9⟩,⟨⟨21,[4,0]⟩,11⟩,⟨⟨21,[5,1]⟩,3⟩,⟨⟨21,[5,1]⟩,12⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[22],[12],[11],[12],[10],[13],[14],[15],[23],[24],[25],[19],[20],[21],[29],[27],[26,28,29],[30],[31],[32],[33],[34],[34],[35],[36],[37],[41],[39],[38,40,41],[42],[43],[43],[44],[47],[46],[47],[45],[48,52],[60,65],[7],[16],[17],[18],[54],[54],[55],[55],[56],[56],[57],[58],[59],[49,53],[63,68],[9],[69,70],[73,74],[73,74],[79],[77,78],[71,72],[75,76],[75,76],[80],[50],[51],[50],[51],[81,85],[82,86],[81,85],[82,86],[83],[84],[64],[64],[48,52],[49,53],[61,66],[62,67],[6],[8]]
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
end Certgen.R333
