import Regular
namespace Certgen.R133
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 11,.lam 3,.app 4 5,.var 0,.app 6 10,.app 7 8,.var 0,.lam 9,.var 1,.opaque,.lam 12,.app 13 18,.lam 14,.app 15 16,.var 0,.lam 17,.var 1,.app 19 20,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[3,0]⟩,⟨16,[5,2]⟩],[⟨5,[7]⟩],[⟨8,[7]⟩],[⟨18,[0]⟩],[⟨18,[1]⟩],[⟨18,[2]⟩],[⟨20,[0]⟩],[⟨11,[]⟩],[⟨20,[2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨11,[]⟩,1⟩],[⟨⟨18,[0]⟩,14⟩],[⟨⟨18,[1]⟩,1⟩],[⟨⟨18,[2]⟩,14⟩],[⟨⟨16,[3,0]⟩,14⟩],[⟨⟨16,[4,1]⟩,1⟩],[⟨⟨16,[5,2]⟩,14⟩],[⟨⟨20,[0]⟩,6⟩],[⟨⟨20,[1]⟩,7⟩],[⟨⟨20,[2]⟩,8⟩],[⟨⟨20,[2]⟩,6⟩],[⟨⟨5,[7]⟩,1⟩],[⟨⟨10,[7]⟩,10⟩],[⟨⟨8,[7]⟩,14⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[7]⟩,1⟩,⟨⟨4,[7]⟩,13⟩,⟨⟨5,[7]⟩,10⟩,⟨⟨6,[7]⟩,14⟩,⟨⟨7,[7]⟩,15⟩,⟨⟨8,[7]⟩,11⟩,⟨⟨8,[7]⟩,12⟩,⟨⟨9,[8,7]⟩,6⟩,⟨⟨9,[8,7]⟩,8⟩,⟨⟨11,[]⟩,6⟩,⟨⟨11,[]⟩,8⟩,⟨⟨11,[]⟩,13⟩,⟨⟨11,[]⟩,15⟩,⟨⟨12,[0]⟩,14⟩,⟨⟨12,[1]⟩,1⟩,⟨⟨12,[2]⟩,14⟩,⟨⟨13,[0]⟩,3⟩,⟨⟨13,[1]⟩,4⟩,⟨⟨13,[2]⟩,5⟩,⟨⟨14,[3,0]⟩,14⟩,⟨⟨14,[4,1]⟩,1⟩,⟨⟨14,[5,2]⟩,14⟩,⟨⟨15,[3,0]⟩,6⟩,⟨⟨15,[4,1]⟩,7⟩,⟨⟨15,[5,2]⟩,8⟩,⟨⟨16,[3,0]⟩,9⟩,⟨⟨16,[5,2]⟩,9⟩,⟨⟨17,[6,3,0]⟩,6⟩,⟨⟨17,[6,5,2]⟩,6⟩,⟨⟨18,[0]⟩,6⟩,⟨⟨18,[1]⟩,7⟩,⟨⟨18,[2]⟩,6⟩,⟨⟨18,[2]⟩,8⟩,⟨⟨19,[0]⟩,9⟩,⟨⟨19,[1]⟩,10⟩,⟨⟨19,[2]⟩,11⟩,⟨⟨19,[2]⟩,12⟩]
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
end Certgen.R133
