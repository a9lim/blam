import Regular
namespace Certgen.R190
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 18,.app 9 14,.lam 10,.lam 11,.app 12 13,.var 1,.var 1,.app 15 16,.var 0,.lam 17,.var 1,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨18,[3]⟩,⟨18,[4]⟩,⟨18,[5]⟩,⟨18,[6]⟩],[⟨16,[4]⟩,⟨16,[5]⟩],[⟨6,[]⟩],[⟨13,[0,8,4]⟩,⟨13,[0,8,5]⟩],[⟨16,[6]⟩],[⟨16,[3]⟩],[⟨5,[2]⟩],[⟨14,[3]⟩],[⟨14,[4]⟩,⟨14,[5]⟩],[⟨14,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨13,[0,7,3]⟩,3⟩,⟨⟨13,[0,7,3]⟩,6⟩],[⟨⟨13,[0,8,4]⟩,6⟩],[⟨⟨13,[0,8,5]⟩,3⟩],[⟨⟨13,[0,9,6]⟩,1⟩],[⟨⟨16,[3]⟩,3⟩],[⟨⟨16,[4]⟩,4⟩,⟨⟨16,[4]⟩,5⟩,⟨⟨16,[4]⟩,7⟩],[⟨⟨16,[5]⟩,4⟩,⟨⟨16,[5]⟩,5⟩,⟨⟨16,[5]⟩,7⟩],[⟨⟨16,[6]⟩,6⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨18,[3]⟩,3⟩,⟨⟨18,[3]⟩,6⟩],[⟨⟨18,[4]⟩,6⟩],[⟨⟨18,[5]⟩,3⟩],[⟨⟨18,[6]⟩,1⟩],[⟨⟨14,[3]⟩,12⟩],[⟨⟨14,[4]⟩,13⟩],[⟨⟨14,[5]⟩,14⟩],[⟨⟨14,[6]⟩,15⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,11⟩,⟨⟨5,[2]⟩,4⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨5,[2]⟩,7⟩,⟨⟨5,[2]⟩,10⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,7⟩,⟨⟨6,[]⟩,10⟩,⟨⟨6,[]⟩,11⟩,⟨⟨7,[3]⟩,3⟩,⟨⟨7,[3]⟩,6⟩,⟨⟨7,[4]⟩,6⟩,⟨⟨7,[5]⟩,3⟩,⟨⟨7,[6]⟩,1⟩,⟨⟨8,[3]⟩,12⟩,⟨⟨8,[4]⟩,13⟩,⟨⟨8,[5]⟩,14⟩,⟨⟨8,[6]⟩,15⟩,⟨⟨9,[3]⟩,16⟩,⟨⟨9,[4]⟩,17⟩,⟨⟨9,[5]⟩,18⟩,⟨⟨9,[6]⟩,19⟩,⟨⟨10,[7,3]⟩,12⟩,⟨⟨10,[8,4]⟩,13⟩,⟨⟨10,[8,5]⟩,14⟩,⟨⟨10,[9,6]⟩,15⟩,⟨⟨11,[0,7,3]⟩,3⟩,⟨⟨11,[0,7,3]⟩,6⟩,⟨⟨11,[0,8,4]⟩,6⟩,⟨⟨11,[0,8,5]⟩,3⟩,⟨⟨11,[0,9,6]⟩,1⟩,⟨⟨12,[0,7,3]⟩,3⟩,⟨⟨12,[0,8,4]⟩,4⟩,⟨⟨12,[0,8,5]⟩,5⟩,⟨⟨12,[0,9,6]⟩,6⟩,⟨⟨13,[0,8,4]⟩,4⟩,⟨⟨13,[0,8,4]⟩,5⟩,⟨⟨13,[0,8,4]⟩,7⟩,⟨⟨13,[0,8,5]⟩,4⟩,⟨⟨13,[0,8,5]⟩,5⟩,⟨⟨13,[0,8,5]⟩,7⟩,⟨⟨14,[3]⟩,3⟩,⟨⟨14,[4]⟩,4⟩,⟨⟨14,[4]⟩,5⟩,⟨⟨14,[4]⟩,7⟩,⟨⟨14,[5]⟩,4⟩,⟨⟨14,[5]⟩,5⟩,⟨⟨14,[5]⟩,7⟩,⟨⟨14,[6]⟩,6⟩,⟨⟨15,[3]⟩,7⟩,⟨⟨15,[4]⟩,8⟩,⟨⟨15,[5]⟩,9⟩,⟨⟨15,[6]⟩,10⟩,⟨⟨16,[3]⟩,9⟩,⟨⟨16,[6]⟩,8⟩,⟨⟨17,[1,3]⟩,4⟩,⟨⟨17,[1,3]⟩,5⟩,⟨⟨17,[1,3]⟩,7⟩,⟨⟨17,[1,6]⟩,4⟩,⟨⟨17,[1,6]⟩,5⟩,⟨⟨17,[1,6]⟩,7⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[9],[10],[11],[12],[15],[14],[17],[16],[18],[19],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31,32],[33],[34],[35],[36],[36],[37],[38],[39],[46],[47,50],[48,51],[53],[47,50],[48,51],[49,52],[47,50],[48,51],[49,52],[54],[55],[55],[55],[56],[56],[56],[57],[42,45],[59],[58],[8],[60,61,62],[63,64,65],[40,43],[41,44],[42,45],[5],[6],[7]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 6=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<66 := hi
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
end Certgen.R190
