import Regular
namespace Certgen.R141
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 13,.lam 10,.app 11 12,.var 0,.opaque,.app 14 17,.app 15 16,.var 0,.opaque,.lam 18,.app 19 20,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[7]⟩,⟨16,[8]⟩],[⟨20,[0,7]⟩,⟨20,[0,8]⟩],[⟨20,[1,7]⟩,⟨20,[1,8]⟩,⟨20,[2,7]⟩,⟨20,[2,8]⟩],[⟨7,[]⟩],[⟨16,[9]⟩],[⟨20,[0,9]⟩],[⟨20,[1,9]⟩,⟨20,[2,9]⟩],[⟨17,[9]⟩],[⟨17,[7]⟩,⟨17,[8]⟩],[⟨5,[3]⟩],[⟨13,[7]⟩,⟨13,[8]⟩],[⟨13,[9]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[10,7]⟩,5⟩],[⟨⟨12,[10,8]⟩,3⟩,⟨⟨12,[10,8]⟩,4⟩],[⟨⟨12,[11,9]⟩,1⟩],[⟨⟨17,[7]⟩,3⟩,⟨⟨17,[7]⟩,4⟩],[⟨⟨17,[8]⟩,3⟩,⟨⟨17,[8]⟩,4⟩],[⟨⟨17,[9]⟩,5⟩],[⟨⟨16,[7]⟩,6⟩],[⟨⟨16,[8]⟩,7⟩],[⟨⟨16,[9]⟩,8⟩],[⟨⟨20,[0,7]⟩,7⟩],[⟨⟨20,[0,8]⟩,7⟩],[⟨⟨20,[0,9]⟩,6⟩],[⟨⟨20,[1,7]⟩,7⟩],[⟨⟨20,[1,8]⟩,7⟩],[⟨⟨20,[1,9]⟩,7⟩],[⟨⟨20,[2,7]⟩,7⟩],[⟨⟨20,[2,8]⟩,7⟩],[⟨⟨20,[2,9]⟩,7⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨13,[7]⟩,5⟩],[⟨⟨13,[8]⟩,3⟩,⟨⟨13,[8]⟩,4⟩],[⟨⟨13,[9]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,21⟩,⟨⟨5,[3]⟩,11⟩,⟨⟨5,[3]⟩,14⟩,⟨⟨5,[3]⟩,17⟩,⟨⟨5,[3]⟩,20⟩,⟨⟨6,[4,3]⟩,8⟩,⟨⟨6,[5,3]⟩,6⟩,⟨⟨6,[6,3]⟩,7⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,21⟩,⟨⟨8,[7]⟩,5⟩,⟨⟨8,[8]⟩,3⟩,⟨⟨8,[8]⟩,4⟩,⟨⟨8,[9]⟩,1⟩,⟨⟨9,[7]⟩,22⟩,⟨⟨9,[8]⟩,23⟩,⟨⟨9,[9]⟩,24⟩,⟨⟨10,[10,7]⟩,5⟩,⟨⟨10,[10,8]⟩,3⟩,⟨⟨10,[10,8]⟩,4⟩,⟨⟨10,[11,9]⟩,1⟩,⟨⟨11,[10,7]⟩,3⟩,⟨⟨11,[10,8]⟩,4⟩,⟨⟨11,[11,9]⟩,5⟩,⟨⟨13,[7]⟩,3⟩,⟨⟨13,[7]⟩,4⟩,⟨⟨13,[8]⟩,3⟩,⟨⟨13,[8]⟩,4⟩,⟨⟨13,[9]⟩,5⟩,⟨⟨14,[7]⟩,6⟩,⟨⟨14,[8]⟩,7⟩,⟨⟨14,[9]⟩,8⟩,⟨⟨15,[7]⟩,9⟩,⟨⟨15,[8]⟩,10⟩,⟨⟨15,[9]⟩,11⟩,⟨⟨17,[7]⟩,10⟩,⟨⟨17,[7]⟩,13⟩,⟨⟨17,[7]⟩,16⟩,⟨⟨17,[7]⟩,19⟩,⟨⟨17,[8]⟩,10⟩,⟨⟨17,[8]⟩,13⟩,⟨⟨17,[8]⟩,16⟩,⟨⟨17,[8]⟩,19⟩,⟨⟨17,[9]⟩,9⟩,⟨⟨17,[9]⟩,12⟩,⟨⟨17,[9]⟩,15⟩,⟨⟨17,[9]⟩,18⟩,⟨⟨18,[0,7]⟩,7⟩,⟨⟨18,[0,8]⟩,7⟩,⟨⟨18,[0,9]⟩,6⟩,⟨⟨18,[1,7]⟩,7⟩,⟨⟨18,[1,8]⟩,7⟩,⟨⟨18,[1,9]⟩,7⟩,⟨⟨18,[2,7]⟩,7⟩,⟨⟨18,[2,8]⟩,7⟩,⟨⟨18,[2,9]⟩,7⟩,⟨⟨19,[0,7]⟩,12⟩,⟨⟨19,[0,8]⟩,13⟩,⟨⟨19,[0,9]⟩,14⟩,⟨⟨19,[1,7]⟩,15⟩,⟨⟨19,[1,8]⟩,16⟩,⟨⟨19,[1,9]⟩,17⟩,⟨⟨19,[2,7]⟩,18⟩,⟨⟨19,[2,8]⟩,19⟩,⟨⟨19,[2,9]⟩,20⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[9],[10],[11],[11],[14],[12],[13],[17,18],[17,18],[16],[19],[20],[21],[21],[22],[23],[24,25],[26],[27],[28],[28],[29],[30,32],[31,33],[34],[35],[35],[36],[36],[37],[38],[39],[40],[49],[41,45],[5],[53],[56],[59],[59],[54],[57],[60],[60],[55],[58],[61],[61],[62],[63],[64],[65],[66],[67],[68],[69],[70],[50],[42,46],[6],[51],[43,47],[7],[52],[44,48],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<71 := hi
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
 exact range_sound block60 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R141
