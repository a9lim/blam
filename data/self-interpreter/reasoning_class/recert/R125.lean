import Regular
namespace Certgen.R125
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 10,.lam 3,.app 4 5,.var 0,.lam 6,.app 7 8,.var 1,.lam 9,.var 2,.lam 11,.app 12 17,.lam 13,.app 14 15,.var 0,.lam 16,.var 1,.app 18 19,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[3,0]⟩,⟨15,[5,2]⟩],[⟨5,[7]⟩],[⟨8,[8,7]⟩],[⟨17,[0]⟩],[⟨17,[1]⟩],[⟨17,[2]⟩],[⟨19,[0]⟩],[⟨10,[]⟩],[⟨19,[1]⟩],[⟨19,[2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨10,[]⟩,1⟩],[⟨⟨17,[0]⟩,7⟩],[⟨⟨17,[1]⟩,1⟩],[⟨⟨17,[2]⟩,7⟩],[⟨⟨15,[3,0]⟩,7⟩],[⟨⟨15,[4,1]⟩,1⟩],[⟨⟨15,[5,2]⟩,7⟩],[⟨⟨19,[0]⟩,6⟩],[⟨⟨19,[1]⟩,7⟩],[⟨⟨19,[2]⟩,8⟩],[⟨⟨19,[2]⟩,6⟩],[⟨⟨5,[7]⟩,1⟩],[⟨⟨8,[8,7]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[7]⟩,1⟩,⟨⟨4,[7]⟩,13⟩,⟨⟨5,[7]⟩,10⟩,⟨⟨6,[8,7]⟩,7⟩,⟨⟨7,[8,7]⟩,14⟩,⟨⟨8,[8,7]⟩,11⟩,⟨⟨8,[8,7]⟩,12⟩,⟨⟨9,[9,8,7]⟩,6⟩,⟨⟨9,[9,8,7]⟩,8⟩,⟨⟨10,[]⟩,6⟩,⟨⟨10,[]⟩,8⟩,⟨⟨10,[]⟩,13⟩,⟨⟨10,[]⟩,14⟩,⟨⟨11,[0]⟩,7⟩,⟨⟨11,[1]⟩,1⟩,⟨⟨11,[2]⟩,7⟩,⟨⟨12,[0]⟩,3⟩,⟨⟨12,[1]⟩,4⟩,⟨⟨12,[2]⟩,5⟩,⟨⟨13,[3,0]⟩,7⟩,⟨⟨13,[4,1]⟩,1⟩,⟨⟨13,[5,2]⟩,7⟩,⟨⟨14,[3,0]⟩,6⟩,⟨⟨14,[4,1]⟩,7⟩,⟨⟨14,[5,2]⟩,8⟩,⟨⟨15,[3,0]⟩,9⟩,⟨⟨15,[5,2]⟩,9⟩,⟨⟨16,[6,3,0]⟩,6⟩,⟨⟨16,[6,5,2]⟩,6⟩,⟨⟨17,[0]⟩,6⟩,⟨⟨17,[1]⟩,7⟩,⟨⟨17,[2]⟩,6⟩,⟨⟨17,[2]⟩,8⟩,⟨⟨18,[0]⟩,9⟩,⟨⟨18,[1]⟩,10⟩,⟨⟨18,[2]⟩,11⟩,⟨⟨18,[2]⟩,12⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[14],[6],[7],[15],[11],[10],[12],[13],[16],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[32],[33],[35],[30],[31],[32],[34],[36],[37],[39],[38],[28,29],[5],[8],[9]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 4=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<40 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 exact range_sound block36 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R125
