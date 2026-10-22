import Regular
namespace Certgen.R184
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 17,.lam 9,.app 10 16,.app 11 15,.app 12 13,.var 1,.lam 14,.var 2,.var 0,.opaque,.app 18 19,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨13,[9,5]⟩,⟨13,[9,6]⟩],[⟨19,[5]⟩,⟨19,[6]⟩],[⟨6,[]⟩],[⟨15,[9,6]⟩],[⟨15,[9,5]⟩],[⟨13,[8,3]⟩,⟨13,[8,4]⟩],[⟨13,[10,7]⟩],[⟨5,[2]⟩],[⟨17,[3]⟩,⟨17,[4]⟩],[⟨17,[5]⟩,⟨17,[6]⟩],[⟨17,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨15,[8,3]⟩,25⟩],[⟨⟨15,[8,4]⟩,26⟩],[⟨⟨15,[9,5]⟩,27⟩],[⟨⟨15,[9,6]⟩,28⟩],[⟨⟨15,[10,7]⟩,29⟩],[⟨⟨13,[8,3]⟩,3⟩],[⟨⟨13,[8,4]⟩,4⟩],[⟨⟨13,[9,5]⟩,5⟩],[⟨⟨13,[9,6]⟩,6⟩],[⟨⟨13,[10,7]⟩,7⟩],[⟨⟨19,[5]⟩,5⟩],[⟨⟨19,[5]⟩,5⟩,⟨⟨19,[5]⟩,8⟩,⟨⟨19,[5]⟩,9⟩],[⟨⟨19,[5]⟩,8⟩,⟨⟨19,[5]⟩,9⟩],[⟨⟨19,[6]⟩,5⟩],[⟨⟨19,[6]⟩,5⟩,⟨⟨19,[6]⟩,8⟩,⟨⟨19,[6]⟩,9⟩],[⟨⟨19,[6]⟩,8⟩,⟨⟨19,[6]⟩,9⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨17,[3]⟩,28⟩],[⟨⟨17,[4]⟩,27⟩],[⟨⟨17,[5]⟩,3⟩,⟨⟨17,[5]⟩,4⟩],[⟨⟨17,[6]⟩,7⟩],[⟨⟨17,[7]⟩,1⟩],[⟨⟨16,[8,3]⟩,28⟩],[⟨⟨16,[8,4]⟩,27⟩],[⟨⟨16,[9,5]⟩,3⟩,⟨⟨16,[9,5]⟩,4⟩],[⟨⟨16,[9,6]⟩,7⟩],[⟨⟨16,[10,7]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,19⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨5,[2]⟩,6⟩,⟨⟨5,[2]⟩,8⟩,⟨⟨5,[2]⟩,9⟩,⟨⟨5,[2]⟩,12⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,19⟩,⟨⟨7,[3]⟩,28⟩,⟨⟨7,[4]⟩,27⟩,⟨⟨7,[5]⟩,3⟩,⟨⟨7,[5]⟩,4⟩,⟨⟨7,[6]⟩,7⟩,⟨⟨7,[7]⟩,1⟩,⟨⟨8,[3]⟩,20⟩,⟨⟨8,[4]⟩,21⟩,⟨⟨8,[5]⟩,22⟩,⟨⟨8,[6]⟩,23⟩,⟨⟨8,[7]⟩,24⟩,⟨⟨9,[8,3]⟩,28⟩,⟨⟨9,[8,4]⟩,27⟩,⟨⟨9,[9,5]⟩,3⟩,⟨⟨9,[9,5]⟩,4⟩,⟨⟨9,[9,6]⟩,7⟩,⟨⟨9,[10,7]⟩,1⟩,⟨⟨10,[8,3]⟩,25⟩,⟨⟨10,[8,4]⟩,26⟩,⟨⟨10,[9,5]⟩,27⟩,⟨⟨10,[9,6]⟩,28⟩,⟨⟨10,[10,7]⟩,29⟩,⟨⟨11,[8,3]⟩,3⟩,⟨⟨11,[8,4]⟩,4⟩,⟨⟨11,[9,5]⟩,5⟩,⟨⟨11,[9,6]⟩,6⟩,⟨⟨11,[10,7]⟩,7⟩,⟨⟨12,[8,3]⟩,8⟩,⟨⟨12,[8,4]⟩,9⟩,⟨⟨12,[9,5]⟩,10⟩,⟨⟨12,[9,6]⟩,11⟩,⟨⟨12,[10,7]⟩,12⟩,⟨⟨13,[8,3]⟩,10⟩,⟨⟨13,[8,3]⟩,13⟩,⟨⟨13,[8,3]⟩,14⟩,⟨⟨13,[8,3]⟩,15⟩,⟨⟨13,[8,4]⟩,10⟩,⟨⟨13,[8,4]⟩,13⟩,⟨⟨13,[8,4]⟩,14⟩,⟨⟨13,[8,4]⟩,15⟩,⟨⟨13,[10,7]⟩,11⟩,⟨⟨13,[10,7]⟩,16⟩,⟨⟨13,[10,7]⟩,17⟩,⟨⟨13,[10,7]⟩,18⟩,⟨⟨14,[0,8,3]⟩,5⟩,⟨⟨14,[0,8,4]⟩,5⟩,⟨⟨14,[0,10,7]⟩,6⟩,⟨⟨14,[1,8,3]⟩,5⟩,⟨⟨14,[1,8,3]⟩,8⟩,⟨⟨14,[1,8,3]⟩,9⟩,⟨⟨14,[1,8,4]⟩,5⟩,⟨⟨14,[1,8,4]⟩,8⟩,⟨⟨14,[1,8,4]⟩,9⟩,⟨⟨14,[1,10,7]⟩,5⟩,⟨⟨14,[1,10,7]⟩,8⟩,⟨⟨14,[1,10,7]⟩,9⟩,⟨⟨15,[9,5]⟩,5⟩,⟨⟨15,[9,5]⟩,8⟩,⟨⟨15,[9,5]⟩,9⟩,⟨⟨15,[9,6]⟩,5⟩,⟨⟨15,[9,6]⟩,8⟩,⟨⟨15,[9,6]⟩,9⟩,⟨⟨17,[5]⟩,5⟩,⟨⟨17,[5]⟩,8⟩,⟨⟨17,[5]⟩,9⟩,⟨⟨17,[6]⟩,5⟩,⟨⟨17,[6]⟩,8⟩,⟨⟨17,[6]⟩,9⟩,⟨⟨18,[5]⟩,13⟩,⟨⟨18,[5]⟩,14⟩,⟨⟨18,[5]⟩,15⟩,⟨⟨18,[6]⟩,16⟩,⟨⟨18,[6]⟩,17⟩,⟨⟨18,[6]⟩,18⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[10],[11],[12],[13],[14],[17],[16],[18],[19],[20],[21],[22],[23],[24],[24],[25],[26],[27],[28],[29,30],[31],[32],[33],[34],[35],[35],[36],[37],[38],[39],[40],[41],[42],[43],[44],[45],[46],[47],[76],[74],[48,52],[56],[9],[60],[63],[63,64,65],[64,65],[61],[66],[66,67,68],[67,68],[62],[69],[69,70,71],[70,71],[75],[72],[6],[75],[76],[77],[72],[73],[74],[5],[7],[8],[78,81],[79,82],[80,83],[78,81],[79,82],[80,83],[84],[85],[85],[87],[88],[88],[49,53],[50,54],[51,55],[57],[58],[59]]
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
theorem block84 : checkRange P V K states hints 84 6=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<90 := hi
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
end Certgen.R184
