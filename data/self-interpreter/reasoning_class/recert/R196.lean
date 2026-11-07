import Regular
namespace Certgen.R196
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 17,.app 9 16,.lam 10,.lam 11,.app 12 13,.var 2,.app 14 15,.var 0,.opaque,.opaque,.lam 18,.var 1,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[3]⟩,⟨17,[4]⟩,⟨17,[5]⟩],[⟨15,[0,6,3]⟩,⟨15,[0,6,4]⟩,⟨15,[0,7,5]⟩],[⟨6,[]⟩],[⟨13,[0,7,5]⟩],[⟨13,[0,6,3]⟩,⟨13,[0,6,4]⟩],[⟨5,[2]⟩],[⟨16,[3]⟩,⟨16,[4]⟩],[⟨16,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨13,[0,6,3]⟩,1⟩],[⟨⟨13,[0,6,4]⟩,1⟩],[⟨⟨13,[0,7,5]⟩,1⟩],[⟨⟨15,[0,6,3]⟩,4⟩],[⟨⟨15,[0,6,3]⟩,3⟩,⟨⟨15,[0,6,3]⟩,4⟩],[⟨⟨15,[0,6,4]⟩,4⟩],[⟨⟨15,[0,6,4]⟩,3⟩,⟨⟨15,[0,6,4]⟩,4⟩],[⟨⟨15,[0,7,5]⟩,3⟩],[⟨⟨15,[0,7,5]⟩,3⟩,⟨⟨15,[0,7,5]⟩,4⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨17,[3]⟩,1⟩],[⟨⟨17,[4]⟩,1⟩],[⟨⟨17,[5]⟩,1⟩],[⟨⟨16,[3]⟩,13⟩],[⟨⟨16,[4]⟩,14⟩],[⟨⟨16,[5]⟩,15⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,12⟩,⟨⟨5,[2]⟩,3⟩,⟨⟨5,[2]⟩,4⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨6,[]⟩,3⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,12⟩,⟨⟨7,[3]⟩,1⟩,⟨⟨7,[4]⟩,1⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨8,[3]⟩,13⟩,⟨⟨8,[4]⟩,14⟩,⟨⟨8,[5]⟩,15⟩,⟨⟨9,[3]⟩,16⟩,⟨⟨9,[4]⟩,17⟩,⟨⟨9,[5]⟩,18⟩,⟨⟨10,[6,3]⟩,13⟩,⟨⟨10,[6,4]⟩,14⟩,⟨⟨10,[7,5]⟩,15⟩,⟨⟨11,[0,6,3]⟩,1⟩,⟨⟨11,[0,6,4]⟩,1⟩,⟨⟨11,[0,7,5]⟩,1⟩,⟨⟨12,[0,6,3]⟩,3⟩,⟨⟨12,[0,6,4]⟩,4⟩,⟨⟨12,[0,7,5]⟩,5⟩,⟨⟨13,[0,6,3]⟩,3⟩,⟨⟨13,[0,6,3]⟩,4⟩,⟨⟨13,[0,6,4]⟩,3⟩,⟨⟨13,[0,6,4]⟩,4⟩,⟨⟨13,[0,7,5]⟩,3⟩,⟨⟨13,[0,7,5]⟩,4⟩,⟨⟨14,[0,6,3]⟩,6⟩,⟨⟨14,[0,6,3]⟩,7⟩,⟨⟨14,[0,6,4]⟩,8⟩,⟨⟨14,[0,6,4]⟩,9⟩,⟨⟨14,[0,7,5]⟩,10⟩,⟨⟨14,[0,7,5]⟩,11⟩,⟨⟨17,[3]⟩,6⟩,⟨⟨17,[3]⟩,7⟩,⟨⟨17,[3]⟩,8⟩,⟨⟨17,[3]⟩,9⟩,⟨⟨17,[3]⟩,10⟩,⟨⟨17,[3]⟩,11⟩,⟨⟨17,[4]⟩,6⟩,⟨⟨17,[4]⟩,7⟩,⟨⟨17,[4]⟩,8⟩,⟨⟨17,[4]⟩,9⟩,⟨⟨17,[4]⟩,10⟩,⟨⟨17,[4]⟩,11⟩,⟨⟨17,[5]⟩,6⟩,⟨⟨17,[5]⟩,7⟩,⟨⟨17,[5]⟩,8⟩,⟨⟨17,[5]⟩,9⟩,⟨⟨17,[5]⟩,10⟩,⟨⟨17,[5]⟩,11⟩,⟨⟨18,[1,3]⟩,3⟩,⟨⟨18,[1,3]⟩,4⟩,⟨⟨18,[1,4]⟩,3⟩,⟨⟨18,[1,4]⟩,4⟩,⟨⟨18,[1,5]⟩,3⟩,⟨⟨18,[1,5]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[8],[9],[10],[13],[13],[12],[14],[15],[16],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[34],[31,33],[7],[37],[36],[39],[38],[40],[41],[42,48,54],[43,49,55],[44,50,56],[45,51,57],[46,52,58],[47,53,59],[61],[60,61],[61],[60,61],[60],[60,61],[63],[62,63],[63],[62,63],[62],[62,63],[65],[64,65],[65],[64,65],[64],[64,65],[34],[35],[30,32],[31,33],[5],[6]]
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
end Certgen.R196
