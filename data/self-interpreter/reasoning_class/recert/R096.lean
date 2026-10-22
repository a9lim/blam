import Regular
namespace Certgen.R096
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 14,.app 3 13,.lam 4,.lam 5,.lam 6,.app 7 12,.app 8 9,.var 1,.app 10 11,.var 1,.var 1,.opaque,.opaque,.lam 15,.app 16 17,.var 0,.app 18 19,.var 0,.lam 20,.var 1,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[5]⟩],[⟨17,[0]⟩,⟨17,[1]⟩],[⟨19,[5]⟩],[⟨19,[0]⟩,⟨19,[1]⟩,⟨19,[5]⟩],[⟨9,[9,8,7]⟩],[⟨11,[9,8,7]⟩],[⟨17,[2]⟩,⟨17,[3]⟩],[⟨13,[]⟩],[⟨14,[]⟩],[⟨21,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨14,[]⟩,1⟩],[⟨⟨17,[0]⟩,7⟩],[⟨⟨17,[1]⟩,7⟩],[⟨⟨17,[2]⟩,3⟩,⟨⟨17,[2]⟩,9⟩],[⟨⟨17,[3]⟩,4⟩,⟨⟨17,[3]⟩,10⟩,⟨⟨17,[3]⟩,11⟩,⟨⟨17,[3]⟩,12⟩],[⟨⟨17,[4]⟩,17⟩],[⟨⟨17,[5]⟩,7⟩],[⟨⟨19,[0]⟩,4⟩,⟨⟨19,[0]⟩,11⟩],[⟨⟨19,[0]⟩,4⟩,⟨⟨19,[0]⟩,10⟩,⟨⟨19,[0]⟩,11⟩,⟨⟨19,[0]⟩,12⟩],[⟨⟨19,[1]⟩,4⟩,⟨⟨19,[1]⟩,11⟩],[⟨⟨19,[1]⟩,4⟩,⟨⟨19,[1]⟩,10⟩,⟨⟨19,[1]⟩,11⟩,⟨⟨19,[1]⟩,12⟩],[⟨⟨19,[5]⟩,3⟩],[⟨⟨19,[5]⟩,9⟩],[⟨⟨19,[5]⟩,4⟩,⟨⟨19,[5]⟩,10⟩,⟨⟨19,[5]⟩,11⟩,⟨⟨19,[5]⟩,12⟩],[⟨⟨13,[]⟩,2⟩],[⟨⟨12,[9,8,7]⟩,0⟩],[⟨⟨9,[9,8,7]⟩,17⟩],[⟨⟨11,[9,8,7]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,16⟩,⟨⟨4,[7]⟩,2⟩,⟨⟨5,[8,7]⟩,1⟩,⟨⟨6,[9,8,7]⟩,0⟩,⟨⟨7,[9,8,7]⟩,17⟩,⟨⟨8,[9,8,7]⟩,18⟩,⟨⟨9,[9,8,7]⟩,7⟩,⟨⟨10,[9,8,7]⟩,19⟩,⟨⟨11,[9,8,7]⟩,3⟩,⟨⟨11,[9,8,7]⟩,4⟩,⟨⟨11,[9,8,7]⟩,8⟩,⟨⟨11,[9,8,7]⟩,9⟩,⟨⟨11,[9,8,7]⟩,10⟩,⟨⟨11,[9,8,7]⟩,11⟩,⟨⟨11,[9,8,7]⟩,12⟩,⟨⟨11,[9,8,7]⟩,13⟩,⟨⟨11,[9,8,7]⟩,14⟩,⟨⟨11,[9,8,7]⟩,15⟩,⟨⟨14,[]⟩,3⟩,⟨⟨14,[]⟩,4⟩,⟨⟨14,[]⟩,8⟩,⟨⟨14,[]⟩,9⟩,⟨⟨14,[]⟩,10⟩,⟨⟨14,[]⟩,11⟩,⟨⟨14,[]⟩,12⟩,⟨⟨14,[]⟩,13⟩,⟨⟨14,[]⟩,14⟩,⟨⟨14,[]⟩,15⟩,⟨⟨14,[]⟩,18⟩,⟨⟨14,[]⟩,19⟩,⟨⟨15,[0]⟩,7⟩,⟨⟨15,[1]⟩,7⟩,⟨⟨15,[2]⟩,3⟩,⟨⟨15,[2]⟩,9⟩,⟨⟨15,[3]⟩,4⟩,⟨⟨15,[3]⟩,10⟩,⟨⟨15,[3]⟩,11⟩,⟨⟨15,[3]⟩,12⟩,⟨⟨15,[4]⟩,17⟩,⟨⟨15,[5]⟩,7⟩,⟨⟨16,[0]⟩,3⟩,⟨⟨16,[1]⟩,4⟩,⟨⟨16,[2]⟩,5⟩,⟨⟨16,[3]⟩,6⟩,⟨⟨16,[4]⟩,7⟩,⟨⟨16,[5]⟩,8⟩,⟨⟨17,[0]⟩,4⟩,⟨⟨17,[0]⟩,10⟩,⟨⟨17,[0]⟩,11⟩,⟨⟨17,[0]⟩,12⟩,⟨⟨17,[1]⟩,4⟩,⟨⟨17,[1]⟩,10⟩,⟨⟨17,[1]⟩,11⟩,⟨⟨17,[1]⟩,12⟩,⟨⟨17,[5]⟩,3⟩,⟨⟨17,[5]⟩,4⟩,⟨⟨17,[5]⟩,9⟩,⟨⟨17,[5]⟩,10⟩,⟨⟨17,[5]⟩,11⟩,⟨⟨17,[5]⟩,12⟩,⟨⟨18,[0]⟩,9⟩,⟨⟨18,[0]⟩,10⟩,⟨⟨18,[1]⟩,11⟩,⟨⟨18,[1]⟩,12⟩,⟨⟨18,[5]⟩,13⟩,⟨⟨18,[5]⟩,14⟩,⟨⟨18,[5]⟩,15⟩,⟨⟨19,[0]⟩,6⟩,⟨⟨19,[1]⟩,6⟩,⟨⟨19,[5]⟩,5⟩,⟨⟨19,[5]⟩,6⟩,⟨⟨20,[6,0]⟩,4⟩,⟨⟨20,[6,0]⟩,10⟩,⟨⟨20,[6,0]⟩,11⟩,⟨⟨20,[6,0]⟩,12⟩,⟨⟨20,[6,1]⟩,4⟩,⟨⟨20,[6,1]⟩,10⟩,⟨⟨20,[6,1]⟩,11⟩,⟨⟨20,[6,1]⟩,12⟩,⟨⟨20,[6,5]⟩,3⟩,⟨⟨20,[6,5]⟩,4⟩,⟨⟨20,[6,5]⟩,9⟩,⟨⟨20,[6,5]⟩,10⟩,⟨⟨20,[6,5]⟩,11⟩,⟨⟨20,[6,5]⟩,12⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[8],[31],[10],[32],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[34],[34],[33],[37,39],[37,38,39,40],[37,39],[37,38,39,40],[35],[36],[37,38,39,40],[41],[42],[43],[44],[45],[45],[46],[46],[46],[46],[47],[48],[57],[49,53],[72],[70,71,73],[9],[13],[63],[64],[63],[64],[65],[66],[65],[66],[67],[69],[68],[69],[69],[69],[59],[60],[51,55],[52,56],[18],[19],[20],[74,75,76,77],[78,79,80,81],[82,84],[83,85,86,87],[58],[60],[61],[62],[49,53],[50,54],[51,55],[52,56],[11],[12],[14],[15],[16],[17]]
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
theorem block84 : checkRange P V K states hints 84 4=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<88 := hi
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
end Certgen.R096
