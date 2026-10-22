import Regular
namespace Certgen.R305
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 13,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.lam 8,.app 9 10,.var 0,.app 11 12,.var 1,.opaque,.lam 14,.lam 15,.app 16 17,.var 0,.app 18 19,.var 0,.lam 20,.var 1,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[12,9]⟩],[⟨12,[10,9]⟩],[⟨6,[9]⟩],[⟨17,[3,0]⟩,⟨17,[6,1]⟩],[⟨19,[3,0]⟩,⟨19,[6,1]⟩],[⟨7,[9]⟩],[⟨10,[12,9]⟩],[⟨17,[4,0]⟩],[⟨10,[11,9]⟩],[⟨13,[]⟩],[⟨17,[5,2]⟩],[⟨19,[5,2]⟩],[⟨10,[10,9]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨13,[]⟩,1⟩],[⟨⟨12,[10,9]⟩,18⟩],[⟨⟨12,[12,9]⟩,13⟩],[⟨⟨12,[12,9]⟩,10⟩],[⟨⟨12,[12,9]⟩,7⟩,⟨⟨12,[12,9]⟩,11⟩,⟨⟨12,[12,9]⟩,13⟩],[⟨⟨17,[3,0]⟩,1⟩],[⟨⟨17,[4,0]⟩,7⟩,⟨⟨17,[4,0]⟩,11⟩],[⟨⟨17,[5,2]⟩,1⟩],[⟨⟨17,[6,1]⟩,1⟩],[⟨⟨19,[3,0]⟩,7⟩,⟨⟨19,[3,0]⟩,11⟩],[⟨⟨19,[5,2]⟩,16⟩],[⟨⟨19,[6,1]⟩,7⟩,⟨⟨19,[6,1]⟩,11⟩],[⟨⟨7,[9]⟩,1⟩],[⟨⟨6,[9]⟩,14⟩],[⟨⟨10,[10,9]⟩,1⟩],[⟨⟨10,[11,9]⟩,16⟩],[⟨⟨10,[12,9]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[9]⟩,1⟩,⟨⟨4,[9]⟩,14⟩,⟨⟨5,[9]⟩,15⟩,⟨⟨7,[9]⟩,9⟩,⟨⟨7,[9]⟩,12⟩,⟨⟨7,[9]⟩,16⟩,⟨⟨8,[10,9]⟩,1⟩,⟨⟨8,[11,9]⟩,16⟩,⟨⟨8,[12,9]⟩,1⟩,⟨⟨9,[10,9]⟩,16⟩,⟨⟨9,[11,9]⟩,17⟩,⟨⟨9,[12,9]⟩,18⟩,⟨⟨10,[10,9]⟩,18⟩,⟨⟨10,[12,9]⟩,7⟩,⟨⟨10,[12,9]⟩,10⟩,⟨⟨10,[12,9]⟩,11⟩,⟨⟨10,[12,9]⟩,13⟩,⟨⟨11,[10,9]⟩,3⟩,⟨⟨11,[12,9]⟩,4⟩,⟨⟨11,[12,9]⟩,5⟩,⟨⟨11,[12,9]⟩,6⟩,⟨⟨13,[]⟩,3⟩,⟨⟨13,[]⟩,4⟩,⟨⟨13,[]⟩,5⟩,⟨⟨13,[]⟩,6⟩,⟨⟨13,[]⟩,15⟩,⟨⟨14,[0]⟩,7⟩,⟨⟨14,[0]⟩,10⟩,⟨⟨14,[0]⟩,11⟩,⟨⟨14,[0]⟩,13⟩,⟨⟨14,[1]⟩,18⟩,⟨⟨14,[2]⟩,14⟩,⟨⟨15,[3,0]⟩,1⟩,⟨⟨15,[4,0]⟩,7⟩,⟨⟨15,[4,0]⟩,11⟩,⟨⟨15,[5,2]⟩,1⟩,⟨⟨15,[6,1]⟩,1⟩,⟨⟨16,[3,0]⟩,7⟩,⟨⟨16,[4,0]⟩,8⟩,⟨⟨16,[5,2]⟩,9⟩,⟨⟨16,[6,1]⟩,10⟩,⟨⟨17,[3,0]⟩,7⟩,⟨⟨17,[3,0]⟩,11⟩,⟨⟨17,[5,2]⟩,16⟩,⟨⟨17,[6,1]⟩,7⟩,⟨⟨17,[6,1]⟩,11⟩,⟨⟨18,[3,0]⟩,11⟩,⟨⟨18,[5,2]⟩,12⟩,⟨⟨18,[6,1]⟩,13⟩,⟨⟨19,[3,0]⟩,8⟩,⟨⟨19,[5,2]⟩,17⟩,⟨⟨19,[6,1]⟩,8⟩,⟨⟨20,[7,3,0]⟩,7⟩,⟨⟨20,[7,3,0]⟩,11⟩,⟨⟨20,[7,6,1]⟩,7⟩,⟨⟨20,[7,6,1]⟩,11⟩,⟨⟨20,[8,5,2]⟩,16⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[28],[9],[10],[11],[12],[13],[14],[46],[53],[15],[20],[23],[22],[23],[21],[24],[25],[26],[27],[33],[32],[30],[29,31,32],[34],[35],[35],[36,37],[36,37],[39],[38],[40],[41],[41],[42],[43],[44,47],[52,54],[6],[17],[49],[49],[50],[51],[51],[45,48],[7],[19],[55,56],[59],[57,58],[44,47],[45,48],[16],[18],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<60 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 exact range_sound block48 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R305
