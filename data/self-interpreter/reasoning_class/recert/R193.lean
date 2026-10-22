import Regular
namespace Certgen.R193
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 19,.app 10 15,.lam 11,.lam 12,.app 13 14,.var 1,.var 1,.app 16 17,.var 0,.lam 18,.var 1,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[7]⟩],[⟨15,[8]⟩],[⟨15,[9]⟩],[⟨19,[7]⟩,⟨19,[8]⟩,⟨19,[9]⟩],[⟨17,[8]⟩],[⟨7,[]⟩],[⟨17,[9]⟩],[⟨14,[3,1,8]⟩,⟨14,[3,2,9]⟩],[⟨17,[7]⟩],[⟨5,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨14,[3,0,7]⟩,1⟩,⟨⟨14,[3,0,7]⟩,3⟩],[⟨⟨14,[3,1,8]⟩,3⟩],[⟨⟨14,[3,2,9]⟩,1⟩],[⟨⟨17,[7]⟩,3⟩],[⟨⟨17,[8]⟩,4⟩,⟨⟨17,[8]⟩,6⟩],[⟨⟨17,[9]⟩,5⟩,⟨⟨17,[9]⟩,6⟩],[⟨⟨17,[9]⟩,4⟩,⟨⟨17,[9]⟩,6⟩],[⟨⟨5,[5]⟩,1⟩],[⟨⟨19,[7]⟩,1⟩,⟨⟨19,[7]⟩,3⟩],[⟨⟨19,[8]⟩,3⟩],[⟨⟨19,[9]⟩,1⟩],[⟨⟨15,[7]⟩,11⟩],[⟨⟨15,[8]⟩,12⟩],[⟨⟨15,[9]⟩,13⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,10⟩,⟨⟨5,[5]⟩,8⟩,⟨⟨5,[5]⟩,9⟩,⟨⟨6,[6,5]⟩,4⟩,⟨⟨6,[6,5]⟩,5⟩,⟨⟨6,[6,5]⟩,6⟩,⟨⟨7,[]⟩,4⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,10⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨8,[7]⟩,3⟩,⟨⟨8,[8]⟩,3⟩,⟨⟨8,[9]⟩,1⟩,⟨⟨9,[7]⟩,11⟩,⟨⟨9,[8]⟩,12⟩,⟨⟨9,[9]⟩,13⟩,⟨⟨10,[7]⟩,14⟩,⟨⟨10,[8]⟩,15⟩,⟨⟨10,[9]⟩,16⟩,⟨⟨11,[0,7]⟩,11⟩,⟨⟨11,[1,8]⟩,12⟩,⟨⟨11,[2,9]⟩,13⟩,⟨⟨12,[3,0,7]⟩,1⟩,⟨⟨12,[3,0,7]⟩,3⟩,⟨⟨12,[3,1,8]⟩,3⟩,⟨⟨12,[3,2,9]⟩,1⟩,⟨⟨13,[3,0,7]⟩,3⟩,⟨⟨13,[3,1,8]⟩,4⟩,⟨⟨13,[3,2,9]⟩,5⟩,⟨⟨14,[3,1,8]⟩,4⟩,⟨⟨14,[3,1,8]⟩,6⟩,⟨⟨14,[3,2,9]⟩,4⟩,⟨⟨14,[3,2,9]⟩,6⟩,⟨⟨15,[7]⟩,3⟩,⟨⟨15,[8]⟩,4⟩,⟨⟨15,[8]⟩,6⟩,⟨⟨15,[9]⟩,4⟩,⟨⟨15,[9]⟩,5⟩,⟨⟨15,[9]⟩,6⟩,⟨⟨16,[7]⟩,6⟩,⟨⟨16,[8]⟩,7⟩,⟨⟨16,[9]⟩,8⟩,⟨⟨16,[9]⟩,9⟩,⟨⟨17,[7]⟩,7⟩,⟨⟨18,[4,7]⟩,4⟩,⟨⟨18,[4,7]⟩,6⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[8,9],[7,9],[10],[11],[12],[15],[14],[16],[17],[18],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27,28],[29],[30],[31],[31],[32],[33],[38],[39],[42],[39],[40],[41],[43],[44],[45],[45],[47],[46],[46],[35,37],[48],[5],[6],[49,50],[34,36],[35,37]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 3=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<51 := hi
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
end Certgen.R193
