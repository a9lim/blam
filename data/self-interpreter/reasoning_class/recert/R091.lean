import Regular
namespace Certgen.R091
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 22,.app 2 12,.app 3 11,.lam 4,.lam 5,.lam 6,.app 7 10,.app 8 9,.var 1,.var 1,.opaque,.opaque,.lam 13,.app 14 15,.var 0,.app 16 20,.lam 17,.app 18 19,.var 0,.opaque,.lam 21,.var 1,.lam 23,.app 24 29,.app 25 26,.var 0,.lam 27,.lam 28,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[2]⟩],[⟨15,[0]⟩,⟨15,[1]⟩],[⟨9,[7,6,5]⟩],[⟨20,[0]⟩,⟨20,[1]⟩,⟨20,[2]⟩],[⟨19,[3,0]⟩,⟨19,[3,1]⟩,⟨19,[3,2]⟩],[⟨11,[]⟩],[⟨12,[]⟩],[⟨22,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨22,[]⟩,0⟩],[⟨⟨12,[]⟩,1⟩],[⟨⟨15,[0]⟩,19⟩],[⟨⟨15,[1]⟩,19⟩],[⟨⟨15,[2]⟩,19⟩],[⟨⟨20,[0]⟩,4⟩],[⟨⟨20,[0]⟩,3⟩,⟨⟨20,[0]⟩,4⟩],[⟨⟨20,[1]⟩,4⟩],[⟨⟨20,[1]⟩,3⟩,⟨⟨20,[1]⟩,4⟩],[⟨⟨20,[2]⟩,3⟩],[⟨⟨20,[2]⟩,3⟩,⟨⟨20,[2]⟩,4⟩],[⟨⟨19,[3,0]⟩,4⟩],[⟨⟨19,[3,1]⟩,4⟩],[⟨⟨19,[3,2]⟩,3⟩],[⟨⟨19,[3,0]⟩,3⟩,⟨⟨19,[3,0]⟩,4⟩],[⟨⟨19,[3,1]⟩,3⟩,⟨⟨19,[3,1]⟩,4⟩],[⟨⟨19,[3,2]⟩,3⟩,⟨⟨19,[3,2]⟩,4⟩],[⟨⟨11,[]⟩,2⟩],[⟨⟨10,[7,6,5]⟩,0⟩],[⟨⟨9,[7,6,5]⟩,19⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,18⟩,⟨⟨4,[5]⟩,2⟩,⟨⟨5,[6,5]⟩,1⟩,⟨⟨6,[7,6,5]⟩,0⟩,⟨⟨7,[7,6,5]⟩,19⟩,⟨⟨8,[7,6,5]⟩,20⟩,⟨⟨9,[7,6,5]⟩,3⟩,⟨⟨9,[7,6,5]⟩,4⟩,⟨⟨9,[7,6,5]⟩,5⟩,⟨⟨12,[]⟩,3⟩,⟨⟨12,[]⟩,4⟩,⟨⟨12,[]⟩,5⟩,⟨⟨12,[]⟩,20⟩,⟨⟨13,[0]⟩,19⟩,⟨⟨13,[1]⟩,19⟩,⟨⟨13,[2]⟩,19⟩,⟨⟨14,[0]⟩,3⟩,⟨⟨14,[1]⟩,4⟩,⟨⟨14,[2]⟩,5⟩,⟨⟨15,[0]⟩,3⟩,⟨⟨15,[0]⟩,4⟩,⟨⟨15,[1]⟩,3⟩,⟨⟨15,[1]⟩,4⟩,⟨⟨15,[2]⟩,3⟩,⟨⟨15,[2]⟩,4⟩,⟨⟨16,[0]⟩,6⟩,⟨⟨16,[0]⟩,7⟩,⟨⟨16,[1]⟩,8⟩,⟨⟨16,[1]⟩,9⟩,⟨⟨16,[2]⟩,10⟩,⟨⟨16,[2]⟩,11⟩,⟨⟨17,[3,0]⟩,3⟩,⟨⟨17,[3,0]⟩,4⟩,⟨⟨17,[3,1]⟩,3⟩,⟨⟨17,[3,1]⟩,4⟩,⟨⟨17,[3,2]⟩,3⟩,⟨⟨17,[3,2]⟩,4⟩,⟨⟨18,[3,0]⟩,12⟩,⟨⟨18,[3,0]⟩,15⟩,⟨⟨18,[3,1]⟩,13⟩,⟨⟨18,[3,1]⟩,16⟩,⟨⟨18,[3,2]⟩,14⟩,⟨⟨18,[3,2]⟩,17⟩,⟨⟨20,[0]⟩,12⟩,⟨⟨20,[0]⟩,13⟩,⟨⟨20,[0]⟩,14⟩,⟨⟨20,[0]⟩,15⟩,⟨⟨20,[0]⟩,16⟩,⟨⟨20,[0]⟩,17⟩,⟨⟨20,[1]⟩,12⟩,⟨⟨20,[1]⟩,13⟩,⟨⟨20,[1]⟩,14⟩,⟨⟨20,[1]⟩,15⟩,⟨⟨20,[1]⟩,16⟩,⟨⟨20,[1]⟩,17⟩,⟨⟨20,[2]⟩,12⟩,⟨⟨20,[2]⟩,13⟩,⟨⟨20,[2]⟩,14⟩,⟨⟨20,[2]⟩,15⟩,⟨⟨20,[2]⟩,16⟩,⟨⟨20,[2]⟩,17⟩,⟨⟨21,[4,0]⟩,3⟩,⟨⟨21,[4,0]⟩,4⟩,⟨⟨21,[4,1]⟩,3⟩,⟨⟨21,[4,1]⟩,4⟩,⟨⟨21,[4,2]⟩,3⟩,⟨⟨21,[4,2]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[8],[15],[12],[13],[14],[17],[17],[16],[18],[19],[20],[21],[26],[23,25],[11],[29],[28],[31],[30],[32],[33],[35],[34,35],[37],[36,37],[38],[38,39],[41],[40],[43],[42],[44],[45],[46,52,58],[49,55,61],[47,53,59],[50,56,62],[48,54,60],[51,57,63],[65],[65],[64],[64,65],[64,65],[64,65],[67],[67],[66],[66,67],[66,67],[66,67],[69],[69],[68],[68,69],[68,69],[68,69],[26],[27],[22,24],[23,25],[9],[10]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 10=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<70 := hi
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
end Certgen.R091
