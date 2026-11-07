import Regular
namespace Certgen.R130
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 10,.lam 3,.app 4 5,.var 0,.app 6 9,.app 7 8,.var 0,.var 0,.opaque,.lam 11,.app 12 17,.lam 13,.app 14 15,.var 0,.lam 16,.var 1,.app 18 19,.var 0,.lam 20,.var 1,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[4,0]⟩,⟨15,[5,1]⟩],[⟨19,[3]⟩],[⟨5,[10]⟩],[⟨8,[10]⟩],[⟨17,[0]⟩],[⟨17,[1]⟩],[⟨17,[2]⟩],[⟨17,[3]⟩],[⟨19,[0]⟩],[⟨19,[1]⟩],[⟨10,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨10,[]⟩,1⟩],[⟨⟨17,[0]⟩,10⟩],[⟨⟨17,[1]⟩,10⟩],[⟨⟨17,[2]⟩,1⟩],[⟨⟨17,[3]⟩,17⟩],[⟨⟨15,[4,0]⟩,10⟩],[⟨⟨15,[5,1]⟩,10⟩],[⟨⟨15,[6,2]⟩,1⟩],[⟨⟨15,[7,3]⟩,17⟩],[⟨⟨19,[0]⟩,7⟩],[⟨⟨19,[1]⟩,8⟩],[⟨⟨19,[1]⟩,7⟩],[⟨⟨19,[2]⟩,9⟩],[⟨⟨19,[3]⟩,10⟩],[⟨⟨5,[10]⟩,1⟩],[⟨⟨9,[10]⟩,14⟩],[⟨⟨8,[10]⟩,17⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[10]⟩,1⟩,⟨⟨4,[10]⟩,16⟩,⟨⟨5,[10]⟩,14⟩,⟨⟨6,[10]⟩,17⟩,⟨⟨7,[10]⟩,18⟩,⟨⟨8,[10]⟩,7⟩,⟨⟨8,[10]⟩,8⟩,⟨⟨8,[10]⟩,15⟩,⟨⟨10,[]⟩,7⟩,⟨⟨10,[]⟩,8⟩,⟨⟨10,[]⟩,15⟩,⟨⟨10,[]⟩,16⟩,⟨⟨10,[]⟩,18⟩,⟨⟨11,[0]⟩,10⟩,⟨⟨11,[1]⟩,10⟩,⟨⟨11,[2]⟩,1⟩,⟨⟨11,[3]⟩,17⟩,⟨⟨12,[0]⟩,3⟩,⟨⟨12,[1]⟩,4⟩,⟨⟨12,[2]⟩,5⟩,⟨⟨12,[3]⟩,6⟩,⟨⟨13,[4,0]⟩,10⟩,⟨⟨13,[5,1]⟩,10⟩,⟨⟨13,[6,2]⟩,1⟩,⟨⟨13,[7,3]⟩,17⟩,⟨⟨14,[4,0]⟩,7⟩,⟨⟨14,[5,1]⟩,8⟩,⟨⟨14,[6,2]⟩,9⟩,⟨⟨14,[7,3]⟩,10⟩,⟨⟨15,[4,0]⟩,11⟩,⟨⟨15,[5,1]⟩,11⟩,⟨⟨16,[8,4,0]⟩,7⟩,⟨⟨16,[8,5,1]⟩,7⟩,⟨⟨17,[0]⟩,7⟩,⟨⟨17,[1]⟩,7⟩,⟨⟨17,[1]⟩,8⟩,⟨⟨17,[2]⟩,9⟩,⟨⟨17,[3]⟩,10⟩,⟨⟨18,[0]⟩,11⟩,⟨⟨18,[1]⟩,12⟩,⟨⟨18,[1]⟩,13⟩,⟨⟨18,[2]⟩,14⟩,⟨⟨18,[3]⟩,15⟩,⟨⟨19,[3]⟩,12⟩,⟨⟨19,[3]⟩,13⟩,⟨⟨20,[9,3]⟩,7⟩,⟨⟨20,[9,3]⟩,8⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[14],[6],[7],[15],[11],[12],[13],[16],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[36],[38],[39],[40],[34],[35],[36],[37],[41],[43],[42],[44],[45],[32,33],[46],[47],[5],[10],[49],[48],[8],[9]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 2=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<50 := hi
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
end Certgen.R130
