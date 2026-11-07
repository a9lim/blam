import Regular
namespace Certgen.R082
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 14,.app 3 13,.lam 4,.lam 5,.lam 6,.app 7 8,.var 0,.app 9 12,.app 10 11,.var 1,.var 1,.opaque,.opaque,.lam 15,.app 16 17,.var 0,.app 18 19,.var 0,.lam 20,.var 1,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[4]⟩],[⟨17,[0]⟩,⟨17,[1]⟩],[⟨19,[4]⟩],[⟨19,[0]⟩,⟨19,[1]⟩,⟨19,[4]⟩],[⟨11,[9,8,7]⟩],[⟨17,[2]⟩,⟨17,[3]⟩],[⟨8,[9,8,7]⟩],[⟨13,[]⟩],[⟨14,[]⟩],[⟨21,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨14,[]⟩,1⟩],[⟨⟨17,[0]⟩,19⟩],[⟨⟨17,[1]⟩,19⟩],[⟨⟨17,[2]⟩,3⟩,⟨⟨17,[2]⟩,8⟩],[⟨⟨17,[3]⟩,4⟩,⟨⟨17,[3]⟩,9⟩,⟨⟨17,[3]⟩,10⟩,⟨⟨17,[3]⟩,11⟩],[⟨⟨17,[4]⟩,19⟩],[⟨⟨19,[0]⟩,4⟩,⟨⟨19,[0]⟩,10⟩],[⟨⟨19,[0]⟩,4⟩,⟨⟨19,[0]⟩,9⟩,⟨⟨19,[0]⟩,10⟩,⟨⟨19,[0]⟩,11⟩],[⟨⟨19,[1]⟩,4⟩,⟨⟨19,[1]⟩,10⟩],[⟨⟨19,[1]⟩,4⟩,⟨⟨19,[1]⟩,9⟩,⟨⟨19,[1]⟩,10⟩,⟨⟨19,[1]⟩,11⟩],[⟨⟨19,[4]⟩,3⟩],[⟨⟨19,[4]⟩,8⟩],[⟨⟨19,[4]⟩,4⟩,⟨⟨19,[4]⟩,9⟩,⟨⟨19,[4]⟩,10⟩,⟨⟨19,[4]⟩,11⟩],[⟨⟨13,[]⟩,2⟩],[⟨⟨28,[6]⟩,0⟩],[⟨⟨25,[6]⟩,16⟩],[⟨⟨8,[9,8,7]⟩,0⟩],[⟨⟨12,[9,8,7]⟩,17⟩],[⟨⟨11,[9,8,7]⟩,19⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,15⟩,⟨⟨4,[7]⟩,2⟩,⟨⟨5,[8,7]⟩,1⟩,⟨⟨6,[9,8,7]⟩,0⟩,⟨⟨7,[9,8,7]⟩,18⟩,⟨⟨8,[9,8,7]⟩,17⟩,⟨⟨9,[9,8,7]⟩,19⟩,⟨⟨10,[9,8,7]⟩,20⟩,⟨⟨11,[9,8,7]⟩,3⟩,⟨⟨11,[9,8,7]⟩,4⟩,⟨⟨11,[9,8,7]⟩,7⟩,⟨⟨11,[9,8,7]⟩,8⟩,⟨⟨11,[9,8,7]⟩,9⟩,⟨⟨11,[9,8,7]⟩,10⟩,⟨⟨11,[9,8,7]⟩,11⟩,⟨⟨11,[9,8,7]⟩,12⟩,⟨⟨11,[9,8,7]⟩,13⟩,⟨⟨11,[9,8,7]⟩,14⟩,⟨⟨14,[]⟩,3⟩,⟨⟨14,[]⟩,4⟩,⟨⟨14,[]⟩,7⟩,⟨⟨14,[]⟩,8⟩,⟨⟨14,[]⟩,9⟩,⟨⟨14,[]⟩,10⟩,⟨⟨14,[]⟩,11⟩,⟨⟨14,[]⟩,12⟩,⟨⟨14,[]⟩,13⟩,⟨⟨14,[]⟩,14⟩,⟨⟨14,[]⟩,20⟩,⟨⟨15,[0]⟩,19⟩,⟨⟨15,[1]⟩,19⟩,⟨⟨15,[2]⟩,3⟩,⟨⟨15,[2]⟩,8⟩,⟨⟨15,[3]⟩,4⟩,⟨⟨15,[3]⟩,9⟩,⟨⟨15,[3]⟩,10⟩,⟨⟨15,[3]⟩,11⟩,⟨⟨15,[4]⟩,19⟩,⟨⟨16,[0]⟩,3⟩,⟨⟨16,[1]⟩,4⟩,⟨⟨16,[2]⟩,5⟩,⟨⟨16,[3]⟩,6⟩,⟨⟨16,[4]⟩,7⟩,⟨⟨17,[0]⟩,4⟩,⟨⟨17,[0]⟩,9⟩,⟨⟨17,[0]⟩,10⟩,⟨⟨17,[0]⟩,11⟩,⟨⟨17,[1]⟩,4⟩,⟨⟨17,[1]⟩,9⟩,⟨⟨17,[1]⟩,10⟩,⟨⟨17,[1]⟩,11⟩,⟨⟨17,[4]⟩,3⟩,⟨⟨17,[4]⟩,4⟩,⟨⟨17,[4]⟩,8⟩,⟨⟨17,[4]⟩,9⟩,⟨⟨17,[4]⟩,10⟩,⟨⟨17,[4]⟩,11⟩,⟨⟨18,[0]⟩,8⟩,⟨⟨18,[0]⟩,9⟩,⟨⟨18,[1]⟩,10⟩,⟨⟨18,[1]⟩,11⟩,⟨⟨18,[4]⟩,12⟩,⟨⟨18,[4]⟩,13⟩,⟨⟨18,[4]⟩,14⟩,⟨⟨19,[0]⟩,6⟩,⟨⟨19,[1]⟩,6⟩,⟨⟨19,[4]⟩,5⟩,⟨⟨19,[4]⟩,6⟩,⟨⟨20,[5,0]⟩,4⟩,⟨⟨20,[5,0]⟩,9⟩,⟨⟨20,[5,0]⟩,10⟩,⟨⟨20,[5,0]⟩,11⟩,⟨⟨20,[5,1]⟩,4⟩,⟨⟨20,[5,1]⟩,9⟩,⟨⟨20,[5,1]⟩,10⟩,⟨⟨20,[5,1]⟩,11⟩,⟨⟨20,[5,4]⟩,3⟩,⟨⟨20,[5,4]⟩,4⟩,⟨⟨20,[5,4]⟩,8⟩,⟨⟨20,[5,4]⟩,9⟩,⟨⟨20,[5,4]⟩,10⟩,⟨⟨20,[5,4]⟩,11⟩,⟨⟨21,[]⟩,18⟩,⟨⟨22,[6]⟩,0⟩,⟨⟨23,[6]⟩,16⟩,⟨⟨24,[6]⟩,17⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[85],[9],[10],[31],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[33],[33],[32],[36,38],[36,37,38,39],[36,38],[36,37,38,39],[34],[35],[36,37,38,39],[40],[41],[42],[43],[43],[44],[44],[44],[44],[45],[54],[46,50],[69],[67,68,70],[13],[60],[61],[60],[61],[62],[63],[62],[63],[64],[66],[65],[66],[66],[66],[56],[57],[48,52],[49,53],[18],[19],[20],[71,72,73,74],[75,76,77,78],[79,81],[80,82,83,84],[55],[57],[58],[59],[46,50],[47,51],[48,52],[49,53],[11],[12],[14],[15],[16],[17],[86],[87],[88],[8]]
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
end Certgen.R082
