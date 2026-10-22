import Regular
namespace Certgen.R097
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 14,.app 3 13,.lam 4,.lam 5,.lam 6,.app 7 12,.app 8 11,.app 9 10,.var 1,.var 1,.opaque,.opaque,.opaque,.lam 15,.app 16 17,.var 0,.app 18 19,.var 0,.lam 20,.var 1,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[4]⟩],[⟨17,[0]⟩,⟨17,[1]⟩],[⟨19,[4]⟩],[⟨19,[0]⟩,⟨19,[1]⟩,⟨19,[4]⟩],[⟨10,[8,7,6]⟩],[⟨17,[2]⟩,⟨17,[3]⟩],[⟨13,[]⟩],[⟨14,[]⟩],[⟨21,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨14,[]⟩,1⟩],[⟨⟨17,[0]⟩,17⟩],[⟨⟨17,[1]⟩,17⟩],[⟨⟨17,[2]⟩,3⟩,⟨⟨17,[2]⟩,8⟩],[⟨⟨17,[3]⟩,4⟩,⟨⟨17,[3]⟩,9⟩,⟨⟨17,[3]⟩,10⟩,⟨⟨17,[3]⟩,11⟩],[⟨⟨17,[4]⟩,17⟩],[⟨⟨19,[0]⟩,4⟩,⟨⟨19,[0]⟩,10⟩],[⟨⟨19,[0]⟩,4⟩,⟨⟨19,[0]⟩,9⟩,⟨⟨19,[0]⟩,10⟩,⟨⟨19,[0]⟩,11⟩],[⟨⟨19,[1]⟩,4⟩,⟨⟨19,[1]⟩,10⟩],[⟨⟨19,[1]⟩,4⟩,⟨⟨19,[1]⟩,9⟩,⟨⟨19,[1]⟩,10⟩,⟨⟨19,[1]⟩,11⟩],[⟨⟨19,[4]⟩,3⟩],[⟨⟨19,[4]⟩,8⟩],[⟨⟨19,[4]⟩,4⟩,⟨⟨19,[4]⟩,9⟩,⟨⟨19,[4]⟩,10⟩,⟨⟨19,[4]⟩,11⟩],[⟨⟨13,[]⟩,2⟩],[⟨⟨12,[8,7,6]⟩,0⟩],[⟨⟨11,[8,7,6]⟩,16⟩],[⟨⟨10,[8,7,6]⟩,17⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,15⟩,⟨⟨4,[6]⟩,2⟩,⟨⟨5,[7,6]⟩,1⟩,⟨⟨6,[8,7,6]⟩,0⟩,⟨⟨7,[8,7,6]⟩,16⟩,⟨⟨8,[8,7,6]⟩,17⟩,⟨⟨9,[8,7,6]⟩,18⟩,⟨⟨10,[8,7,6]⟩,3⟩,⟨⟨10,[8,7,6]⟩,4⟩,⟨⟨10,[8,7,6]⟩,7⟩,⟨⟨10,[8,7,6]⟩,8⟩,⟨⟨10,[8,7,6]⟩,9⟩,⟨⟨10,[8,7,6]⟩,10⟩,⟨⟨10,[8,7,6]⟩,11⟩,⟨⟨10,[8,7,6]⟩,12⟩,⟨⟨10,[8,7,6]⟩,13⟩,⟨⟨10,[8,7,6]⟩,14⟩,⟨⟨14,[]⟩,3⟩,⟨⟨14,[]⟩,4⟩,⟨⟨14,[]⟩,7⟩,⟨⟨14,[]⟩,8⟩,⟨⟨14,[]⟩,9⟩,⟨⟨14,[]⟩,10⟩,⟨⟨14,[]⟩,11⟩,⟨⟨14,[]⟩,12⟩,⟨⟨14,[]⟩,13⟩,⟨⟨14,[]⟩,14⟩,⟨⟨14,[]⟩,18⟩,⟨⟨15,[0]⟩,17⟩,⟨⟨15,[1]⟩,17⟩,⟨⟨15,[2]⟩,3⟩,⟨⟨15,[2]⟩,8⟩,⟨⟨15,[3]⟩,4⟩,⟨⟨15,[3]⟩,9⟩,⟨⟨15,[3]⟩,10⟩,⟨⟨15,[3]⟩,11⟩,⟨⟨15,[4]⟩,17⟩,⟨⟨16,[0]⟩,3⟩,⟨⟨16,[1]⟩,4⟩,⟨⟨16,[2]⟩,5⟩,⟨⟨16,[3]⟩,6⟩,⟨⟨16,[4]⟩,7⟩,⟨⟨17,[0]⟩,4⟩,⟨⟨17,[0]⟩,9⟩,⟨⟨17,[0]⟩,10⟩,⟨⟨17,[0]⟩,11⟩,⟨⟨17,[1]⟩,4⟩,⟨⟨17,[1]⟩,9⟩,⟨⟨17,[1]⟩,10⟩,⟨⟨17,[1]⟩,11⟩,⟨⟨17,[4]⟩,3⟩,⟨⟨17,[4]⟩,4⟩,⟨⟨17,[4]⟩,8⟩,⟨⟨17,[4]⟩,9⟩,⟨⟨17,[4]⟩,10⟩,⟨⟨17,[4]⟩,11⟩,⟨⟨18,[0]⟩,8⟩,⟨⟨18,[0]⟩,9⟩,⟨⟨18,[1]⟩,10⟩,⟨⟨18,[1]⟩,11⟩,⟨⟨18,[4]⟩,12⟩,⟨⟨18,[4]⟩,13⟩,⟨⟨18,[4]⟩,14⟩,⟨⟨19,[0]⟩,6⟩,⟨⟨19,[1]⟩,6⟩,⟨⟨19,[4]⟩,5⟩,⟨⟨19,[4]⟩,6⟩,⟨⟨20,[5,0]⟩,4⟩,⟨⟨20,[5,0]⟩,9⟩,⟨⟨20,[5,0]⟩,10⟩,⟨⟨20,[5,0]⟩,11⟩,⟨⟨20,[5,1]⟩,4⟩,⟨⟨20,[5,1]⟩,9⟩,⟨⟨20,[5,1]⟩,10⟩,⟨⟨20,[5,1]⟩,11⟩,⟨⟨20,[5,4]⟩,3⟩,⟨⟨20,[5,4]⟩,4⟩,⟨⟨20,[5,4]⟩,8⟩,⟨⟨20,[5,4]⟩,9⟩,⟨⟨20,[5,4]⟩,10⟩,⟨⟨20,[5,4]⟩,11⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[8],[9],[30],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[32],[32],[31],[35,37],[35,36,37,38],[35,37],[35,36,37,38],[33],[34],[35,36,37,38],[39],[40],[41],[42],[42],[43],[43],[43],[43],[44],[53],[45,49],[68],[66,67,69],[12],[59],[60],[59],[60],[61],[62],[61],[62],[63],[65],[64],[65],[65],[65],[55],[56],[47,51],[48,52],[17],[18],[19],[70,71,72,73],[74,75,76,77],[78,80],[79,81,82,83],[54],[56],[57],[58],[45,49],[46,50],[47,51],[48,52],[10],[11],[13],[14],[15],[16]]
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
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<84 := hi
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
end Certgen.R097
