import Regular
namespace Certgen.R339
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.lam 11,.app 12 18,.app 13 16,.app 14 15,.var 1,.var 0,.lam 17,.var 0,.app 19 20,.var 1,.var 0,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨21,[]⟩],[⟨18,[0,10,7]⟩,⟨18,[1,8,5]⟩,⟨18,[1,9,6]⟩],[⟨15,[1,8,5]⟩,⟨15,[1,9,6]⟩],[⟨20,[1,8,5]⟩,⟨20,[1,9,6]⟩],[⟨8,[]⟩],[⟨15,[0,10,7]⟩],[⟨20,[0,10,7]⟩],[⟨6,[4]⟩],[⟨16,[0,10,7]⟩],[⟨16,[1,8,5]⟩,⟨16,[1,9,6]⟩],[⟨7,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨18,[0,10,7]⟩,0⟩],[⟨⟨18,[1,8,5]⟩,0⟩],[⟨⟨18,[1,9,6]⟩,0⟩],[⟨⟨16,[0,10,7]⟩,3⟩],[⟨⟨16,[1,8,5]⟩,4⟩],[⟨⟨16,[1,9,6]⟩,5⟩],[⟨⟨15,[0,10,7]⟩,6⟩],[⟨⟨15,[1,8,5]⟩,7⟩],[⟨⟨15,[1,9,6]⟩,8⟩],[⟨⟨20,[0,10,7]⟩,7⟩,⟨⟨20,[0,10,7]⟩,8⟩],[⟨⟨20,[1,8,5]⟩,7⟩,⟨⟨20,[1,8,5]⟩,8⟩],[⟨⟨20,[1,9,6]⟩,7⟩,⟨⟨20,[1,9,6]⟩,8⟩],[⟨⟨7,[4]⟩,1⟩],[⟨⟨6,[4]⟩,15⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,15⟩,⟨⟨5,[4]⟩,16⟩,⟨⟨7,[4]⟩,9⟩,⟨⟨7,[4]⟩,12⟩,⟨⟨8,[]⟩,9⟩,⟨⟨8,[]⟩,12⟩,⟨⟨8,[]⟩,16⟩,⟨⟨9,[5]⟩,6⟩,⟨⟨9,[6]⟩,7⟩,⟨⟨9,[6]⟩,8⟩,⟨⟨9,[7]⟩,15⟩,⟨⟨10,[8,5]⟩,3⟩,⟨⟨10,[9,6]⟩,4⟩,⟨⟨10,[9,6]⟩,5⟩,⟨⟨10,[10,7]⟩,1⟩,⟨⟨11,[0,10,7]⟩,0⟩,⟨⟨11,[1,8,5]⟩,0⟩,⟨⟨11,[1,9,6]⟩,0⟩,⟨⟨12,[0,10,7]⟩,3⟩,⟨⟨12,[1,8,5]⟩,4⟩,⟨⟨12,[1,9,6]⟩,5⟩,⟨⟨13,[0,10,7]⟩,6⟩,⟨⟨13,[1,8,5]⟩,7⟩,⟨⟨13,[1,9,6]⟩,8⟩,⟨⟨14,[0,10,7]⟩,9⟩,⟨⟨14,[1,8,5]⟩,10⟩,⟨⟨14,[1,9,6]⟩,11⟩,⟨⟨15,[1,8,5]⟩,7⟩,⟨⟨15,[1,8,5]⟩,8⟩,⟨⟨15,[1,9,6]⟩,7⟩,⟨⟨15,[1,9,6]⟩,8⟩,⟨⟨16,[0,10,7]⟩,10⟩,⟨⟨16,[0,10,7]⟩,13⟩,⟨⟨16,[1,8,5]⟩,11⟩,⟨⟨16,[1,8,5]⟩,14⟩,⟨⟨16,[1,9,6]⟩,11⟩,⟨⟨16,[1,9,6]⟩,14⟩,⟨⟨17,[2,0,10,7]⟩,7⟩,⟨⟨17,[2,1,8,5]⟩,8⟩,⟨⟨17,[2,1,9,6]⟩,8⟩,⟨⟨17,[3,0,10,7]⟩,7⟩,⟨⟨17,[3,0,10,7]⟩,8⟩,⟨⟨17,[3,1,8,5]⟩,7⟩,⟨⟨17,[3,1,8,5]⟩,8⟩,⟨⟨17,[3,1,9,6]⟩,7⟩,⟨⟨17,[3,1,9,6]⟩,8⟩,⟨⟨18,[0,10,7]⟩,7⟩,⟨⟨18,[0,10,7]⟩,8⟩,⟨⟨18,[1,8,5]⟩,7⟩,⟨⟨18,[1,8,5]⟩,8⟩,⟨⟨18,[1,9,6]⟩,7⟩,⟨⟨18,[1,9,6]⟩,8⟩,⟨⟨19,[0,10,7]⟩,12⟩,⟨⟨19,[1,8,5]⟩,13⟩,⟨⟨19,[1,9,6]⟩,14⟩,⟨⟨20,[1,8,5]⟩,7⟩,⟨⟨20,[1,8,5]⟩,8⟩,⟨⟨20,[1,9,6]⟩,7⟩,⟨⟨20,[1,9,6]⟩,8⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[10],[8],[9],[11],[12,13],[14],[15],[16],[17],[18],[20],[21],[21],[19],[22],[23],[24],[25],[26],[27],[28],[29],[30],[6],[35],[37,39],[50,52,54],[51,53,55],[50,52,54],[51,53,55],[41],[44,45],[42],[46,47],[43],[48,49],[31,33],[32,34],[32,34],[59,61],[60,62],[59,61],[60,62],[59,61],[60,62],[56],[56],[57],[57],[58],[58],[7],[36],[38,40],[50,52,54],[51,53,55],[50,52,54],[51,53,55]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 3=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<63 := hi
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
end Certgen.R339
