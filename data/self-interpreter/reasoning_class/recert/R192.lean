import Regular
namespace Certgen.R192
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.app 9 14,.lam 10,.lam 11,.app 12 13,.var 1,.var 1,.app 15 16,.var 0,.lam 17,.lam 18,.var 2,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨19,[4]⟩,⟨19,[5]⟩,⟨19,[6]⟩,⟨19,[7]⟩],[⟨16,[5]⟩,⟨16,[6]⟩],[⟨13,[0,9,5]⟩,⟨13,[0,9,6]⟩],[⟨6,[]⟩],[⟨13,[0,8,4]⟩,⟨13,[0,10,7]⟩],[⟨16,[7]⟩],[⟨16,[4]⟩,⟨16,[7]⟩],[⟨5,[3]⟩],[⟨14,[4]⟩],[⟨14,[5]⟩,⟨14,[6]⟩],[⟨14,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨13,[0,8,4]⟩,1⟩],[⟨⟨13,[0,9,5]⟩,6⟩,⟨⟨13,[0,9,5]⟩,7⟩],[⟨⟨13,[0,9,6]⟩,3⟩,⟨⟨13,[0,9,6]⟩,6⟩,⟨⟨13,[0,9,6]⟩,7⟩,⟨⟨13,[0,9,6]⟩,8⟩],[⟨⟨13,[0,10,7]⟩,1⟩],[⟨⟨16,[4]⟩,3⟩,⟨⟨16,[4]⟩,7⟩],[⟨⟨16,[4]⟩,3⟩,⟨⟨16,[4]⟩,6⟩,⟨⟨16,[4]⟩,7⟩,⟨⟨16,[4]⟩,8⟩],[⟨⟨16,[5]⟩,4⟩,⟨⟨16,[5]⟩,5⟩],[⟨⟨16,[6]⟩,4⟩,⟨⟨16,[6]⟩,5⟩],[⟨⟨16,[7]⟩,6⟩,⟨⟨16,[7]⟩,7⟩],[⟨⟨16,[7]⟩,3⟩,⟨⟨16,[7]⟩,6⟩,⟨⟨16,[7]⟩,7⟩,⟨⟨16,[7]⟩,8⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨19,[4]⟩,1⟩],[⟨⟨19,[5]⟩,6⟩,⟨⟨19,[5]⟩,7⟩],[⟨⟨19,[6]⟩,3⟩,⟨⟨19,[6]⟩,6⟩,⟨⟨19,[6]⟩,7⟩,⟨⟨19,[6]⟩,8⟩],[⟨⟨19,[7]⟩,1⟩],[⟨⟨14,[4]⟩,14⟩],[⟨⟨14,[5]⟩,15⟩],[⟨⟨14,[6]⟩,16⟩],[⟨⟨14,[7]⟩,17⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,13⟩,⟨⟨5,[3]⟩,3⟩,⟨⟨5,[3]⟩,6⟩,⟨⟨5,[3]⟩,7⟩,⟨⟨5,[3]⟩,8⟩,⟨⟨5,[3]⟩,11⟩,⟨⟨5,[3]⟩,12⟩,⟨⟨6,[]⟩,3⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,7⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,11⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,13⟩,⟨⟨7,[4]⟩,1⟩,⟨⟨7,[5]⟩,6⟩,⟨⟨7,[5]⟩,7⟩,⟨⟨7,[6]⟩,3⟩,⟨⟨7,[6]⟩,6⟩,⟨⟨7,[6]⟩,7⟩,⟨⟨7,[6]⟩,8⟩,⟨⟨7,[7]⟩,1⟩,⟨⟨8,[4]⟩,14⟩,⟨⟨8,[5]⟩,15⟩,⟨⟨8,[6]⟩,16⟩,⟨⟨8,[7]⟩,17⟩,⟨⟨9,[4]⟩,18⟩,⟨⟨9,[5]⟩,19⟩,⟨⟨9,[6]⟩,20⟩,⟨⟨9,[7]⟩,21⟩,⟨⟨10,[8,4]⟩,14⟩,⟨⟨10,[9,5]⟩,15⟩,⟨⟨10,[9,6]⟩,16⟩,⟨⟨10,[10,7]⟩,17⟩,⟨⟨11,[0,8,4]⟩,1⟩,⟨⟨11,[0,9,5]⟩,6⟩,⟨⟨11,[0,9,5]⟩,7⟩,⟨⟨11,[0,9,6]⟩,3⟩,⟨⟨11,[0,9,6]⟩,6⟩,⟨⟨11,[0,9,6]⟩,7⟩,⟨⟨11,[0,9,6]⟩,8⟩,⟨⟨11,[0,10,7]⟩,1⟩,⟨⟨12,[0,8,4]⟩,3⟩,⟨⟨12,[0,9,5]⟩,4⟩,⟨⟨12,[0,9,6]⟩,5⟩,⟨⟨12,[0,10,7]⟩,6⟩,⟨⟨13,[0,8,4]⟩,3⟩,⟨⟨13,[0,8,4]⟩,6⟩,⟨⟨13,[0,8,4]⟩,7⟩,⟨⟨13,[0,8,4]⟩,8⟩,⟨⟨13,[0,10,7]⟩,3⟩,⟨⟨13,[0,10,7]⟩,6⟩,⟨⟨13,[0,10,7]⟩,7⟩,⟨⟨13,[0,10,7]⟩,8⟩,⟨⟨14,[4]⟩,3⟩,⟨⟨14,[4]⟩,6⟩,⟨⟨14,[4]⟩,7⟩,⟨⟨14,[4]⟩,8⟩,⟨⟨14,[5]⟩,4⟩,⟨⟨14,[5]⟩,5⟩,⟨⟨14,[6]⟩,4⟩,⟨⟨14,[6]⟩,5⟩,⟨⟨14,[7]⟩,3⟩,⟨⟨14,[7]⟩,6⟩,⟨⟨14,[7]⟩,7⟩,⟨⟨14,[7]⟩,8⟩,⟨⟨15,[4]⟩,7⟩,⟨⟨15,[4]⟩,8⟩,⟨⟨15,[5]⟩,9⟩,⟨⟨15,[6]⟩,10⟩,⟨⟨15,[7]⟩,11⟩,⟨⟨15,[7]⟩,12⟩,⟨⟨16,[4]⟩,10⟩,⟨⟨16,[7]⟩,9⟩,⟨⟨16,[7]⟩,10⟩,⟨⟨17,[1,4]⟩,4⟩,⟨⟨17,[1,4]⟩,5⟩,⟨⟨17,[1,7]⟩,4⟩,⟨⟨17,[1,7]⟩,5⟩,⟨⟨18,[2,1,4]⟩,3⟩,⟨⟨18,[2,1,4]⟩,6⟩,⟨⟨18,[2,1,4]⟩,7⟩,⟨⟨18,[2,1,4]⟩,8⟩,⟨⟨18,[2,1,7]⟩,3⟩,⟨⟨18,[2,1,7]⟩,6⟩,⟨⟨18,[2,1,7]⟩,7⟩,⟨⟨18,[2,1,7]⟩,8⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[17],[11],[12],[13],[14],[15],[16],[18],[18],[21,23],[21,22,23,24],[19,20],[21,19,20,24],[25],[26],[27],[27],[28],[28],[28],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39,40],[41,42,43,44],[45],[46],[47],[47],[48],[48],[48],[48],[49],[58],[62,64],[63,65],[67],[58],[59],[60],[61],[66],[67],[68],[69],[70],[71],[70],[71],[72],[72],[73],[73],[75],[74],[74],[75],[52,56],[53,57],[77],[76,78],[9],[10],[79,80],[81,82],[81,82],[84,85],[83,84,85,86],[88,89],[87,88,89,90],[50,54],[51,55],[52,56],[53,57],[5],[6],[7],[8]]
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
theorem block84 : checkRange P V K states hints 84 7=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<91 := hi
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
end Certgen.R192
