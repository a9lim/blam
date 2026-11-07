import Regular
namespace Certgen.R208
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 20,.app 10 14,.lam 11,.app 12 13,.var 0,.var 0,.lam 15,.app 16 19,.app 17 18,.var 1,.var 0,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨14,[8]⟩],[⟨14,[9]⟩],[⟨13,[0,8]⟩,⟨13,[1,9]⟩],[⟨18,[2,8]⟩],[⟨18,[3,8]⟩,⟨18,[4,8]⟩],[⟨7,[]⟩],[⟨18,[2,9]⟩],[⟨18,[3,9]⟩,⟨18,[4,9]⟩],[⟨19,[2,9]⟩,⟨19,[3,9]⟩,⟨19,[4,9]⟩],[⟨5,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨13,[0,8]⟩,18⟩],[⟨⟨13,[1,9]⟩,19⟩],[⟨⟨19,[2,8]⟩,18⟩],[⟨⟨19,[2,9]⟩,19⟩],[⟨⟨19,[3,8]⟩,5⟩],[⟨⟨19,[3,9]⟩,5⟩],[⟨⟨19,[4,8]⟩,7⟩,⟨⟨19,[4,8]⟩,9⟩],[⟨⟨19,[4,9]⟩,7⟩,⟨⟨19,[4,9]⟩,9⟩],[⟨⟨18,[2,8]⟩,5⟩],[⟨⟨18,[2,9]⟩,6⟩],[⟨⟨18,[3,8]⟩,7⟩],[⟨⟨18,[3,9]⟩,8⟩],[⟨⟨18,[4,8]⟩,9⟩],[⟨⟨18,[4,9]⟩,10⟩],[⟨⟨5,[5]⟩,1⟩],[⟨⟨20,[8]⟩,5⟩,⟨⟨20,[8]⟩,7⟩,⟨⟨20,[8]⟩,9⟩,⟨⟨20,[8]⟩,19⟩],[⟨⟨20,[9]⟩,1⟩],[⟨⟨14,[8]⟩,18⟩],[⟨⟨14,[9]⟩,19⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,17⟩,⟨⟨5,[5]⟩,12⟩,⟨⟨5,[5]⟩,14⟩,⟨⟨5,[5]⟩,16⟩,⟨⟨6,[6,5]⟩,6⟩,⟨⟨6,[7,5]⟩,8⟩,⟨⟨6,[7,5]⟩,10⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,10⟩,⟨⟨7,[]⟩,17⟩,⟨⟨8,[8]⟩,5⟩,⟨⟨8,[8]⟩,7⟩,⟨⟨8,[8]⟩,9⟩,⟨⟨8,[8]⟩,19⟩,⟨⟨8,[9]⟩,1⟩,⟨⟨9,[8]⟩,18⟩,⟨⟨9,[9]⟩,19⟩,⟨⟨10,[8]⟩,20⟩,⟨⟨10,[9]⟩,21⟩,⟨⟨11,[0,8]⟩,18⟩,⟨⟨11,[1,9]⟩,19⟩,⟨⟨12,[0,8]⟩,3⟩,⟨⟨12,[1,9]⟩,4⟩,⟨⟨13,[0,8]⟩,11⟩,⟨⟨13,[0,8]⟩,13⟩,⟨⟨13,[0,8]⟩,15⟩,⟨⟨13,[1,9]⟩,11⟩,⟨⟨13,[1,9]⟩,13⟩,⟨⟨13,[1,9]⟩,15⟩,⟨⟨14,[8]⟩,3⟩,⟨⟨14,[8]⟩,11⟩,⟨⟨14,[8]⟩,13⟩,⟨⟨14,[8]⟩,15⟩,⟨⟨14,[9]⟩,4⟩,⟨⟨14,[9]⟩,11⟩,⟨⟨14,[9]⟩,13⟩,⟨⟨14,[9]⟩,15⟩,⟨⟨15,[2,8]⟩,18⟩,⟨⟨15,[2,9]⟩,19⟩,⟨⟨15,[3,8]⟩,5⟩,⟨⟨15,[3,9]⟩,5⟩,⟨⟨15,[4,8]⟩,7⟩,⟨⟨15,[4,8]⟩,9⟩,⟨⟨15,[4,9]⟩,7⟩,⟨⟨15,[4,9]⟩,9⟩,⟨⟨16,[2,8]⟩,5⟩,⟨⟨16,[2,9]⟩,6⟩,⟨⟨16,[3,8]⟩,7⟩,⟨⟨16,[3,9]⟩,8⟩,⟨⟨16,[4,8]⟩,9⟩,⟨⟨16,[4,9]⟩,10⟩,⟨⟨17,[2,8]⟩,11⟩,⟨⟨17,[2,9]⟩,12⟩,⟨⟨17,[3,8]⟩,13⟩,⟨⟨17,[3,9]⟩,14⟩,⟨⟨17,[4,8]⟩,15⟩,⟨⟨17,[4,9]⟩,16⟩,⟨⟨18,[2,8]⟩,11⟩,⟨⟨18,[2,8]⟩,13⟩,⟨⟨18,[2,8]⟩,15⟩,⟨⟨18,[3,8]⟩,11⟩,⟨⟨18,[3,8]⟩,13⟩,⟨⟨18,[3,8]⟩,15⟩,⟨⟨18,[4,8]⟩,11⟩,⟨⟨18,[4,8]⟩,13⟩,⟨⟨18,[4,8]⟩,15⟩,⟨⟨19,[2,9]⟩,11⟩,⟨⟨19,[2,9]⟩,13⟩,⟨⟨19,[2,9]⟩,15⟩,⟨⟨19,[3,9]⟩,11⟩,⟨⟨19,[3,9]⟩,13⟩,⟨⟨19,[3,9]⟩,15⟩,⟨⟨19,[4,9]⟩,11⟩,⟨⟨19,[4,9]⟩,13⟩,⟨⟨19,[4,9]⟩,15⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[14],[8],[9],[10],[11],[12],[13],[18],[15],[16,17],[19],[20],[20],[20],[20],[21],[22],[23],[24],[25],[26],[27],[34],[38],[35],[36],[37],[39],[40],[41],[42],[44],[46],[47],[43],[45],[48],[49],[50],[51],[52],[53],[54],[54],[55],[55],[56],[57],[58],[59],[60],[61],[71,74,77],[5],[72,75,78],[6],[73,76,79],[7],[28,31],[29,32],[30,33],[62],[63],[64],[65,68],[66,69],[67,70],[28,31],[29,32],[30,33],[62],[63],[64],[65,68],[66,69],[67,70]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 8=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<80 := hi
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
end Certgen.R208
