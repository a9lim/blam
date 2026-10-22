import Regular
namespace Certgen.R121
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 17,.lam 10,.app 11 12,.var 0,.app 13 14,.var 0,.lam 15,.lam 16,.var 3,.app 18 19,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨19,[6]⟩],[⟨12,[9,6]⟩],[⟨7,[]⟩],[⟨19,[5]⟩,⟨19,[7]⟩],[⟨19,[7]⟩],[⟨12,[8,5]⟩,⟨12,[10,7]⟩],[⟨14,[8,5]⟩,⟨14,[10,7]⟩],[⟨5,[2]⟩],[⟨17,[5]⟩],[⟨17,[6]⟩],[⟨17,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[8,5]⟩,1⟩],[⟨⟨12,[9,6]⟩,10⟩,⟨⟨12,[9,6]⟩,11⟩],[⟨⟨12,[10,7]⟩,1⟩],[⟨⟨14,[8,5]⟩,10⟩,⟨⟨14,[8,5]⟩,11⟩],[⟨⟨14,[8,5]⟩,11⟩],[⟨⟨14,[10,7]⟩,10⟩,⟨⟨14,[10,7]⟩,11⟩],[⟨⟨14,[10,7]⟩,11⟩],[⟨⟨19,[5]⟩,6⟩],[⟨⟨19,[5]⟩,3⟩,⟨⟨19,[5]⟩,7⟩],[⟨⟨19,[6]⟩,4⟩],[⟨⟨19,[7]⟩,8⟩],[⟨⟨19,[7]⟩,9⟩],[⟨⟨19,[7]⟩,5⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨17,[5]⟩,1⟩],[⟨⟨17,[6]⟩,10⟩,⟨⟨17,[6]⟩,11⟩],[⟨⟨17,[7]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,16⟩,⟨⟨5,[2]⟩,10⟩,⟨⟨5,[2]⟩,11⟩,⟨⟨5,[2]⟩,13⟩,⟨⟨5,[2]⟩,14⟩,⟨⟨5,[2]⟩,15⟩,⟨⟨6,[3,2]⟩,3⟩,⟨⟨6,[3,2]⟩,6⟩,⟨⟨6,[3,2]⟩,7⟩,⟨⟨6,[3,2]⟩,8⟩,⟨⟨6,[4,2]⟩,5⟩,⟨⟨6,[4,2]⟩,9⟩,⟨⟨7,[]⟩,3⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,9⟩,⟨⟨7,[]⟩,16⟩,⟨⟨8,[5]⟩,1⟩,⟨⟨8,[6]⟩,10⟩,⟨⟨8,[6]⟩,11⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨9,[5]⟩,17⟩,⟨⟨9,[6]⟩,18⟩,⟨⟨9,[7]⟩,19⟩,⟨⟨10,[8,5]⟩,1⟩,⟨⟨10,[9,6]⟩,10⟩,⟨⟨10,[9,6]⟩,11⟩,⟨⟨10,[10,7]⟩,1⟩,⟨⟨11,[8,5]⟩,3⟩,⟨⟨11,[9,6]⟩,4⟩,⟨⟨11,[10,7]⟩,5⟩,⟨⟨12,[8,5]⟩,10⟩,⟨⟨12,[8,5]⟩,11⟩,⟨⟨12,[10,7]⟩,10⟩,⟨⟨12,[10,7]⟩,11⟩,⟨⟨13,[8,5]⟩,6⟩,⟨⟨13,[8,5]⟩,7⟩,⟨⟨13,[10,7]⟩,8⟩,⟨⟨13,[10,7]⟩,9⟩,⟨⟨14,[8,5]⟩,12⟩,⟨⟨14,[10,7]⟩,12⟩,⟨⟨15,[0,8,5]⟩,4⟩,⟨⟨15,[0,10,7]⟩,4⟩,⟨⟨16,[1,0,8,5]⟩,10⟩,⟨⟨16,[1,0,8,5]⟩,11⟩,⟨⟨16,[1,0,10,7]⟩,10⟩,⟨⟨16,[1,0,10,7]⟩,11⟩,⟨⟨17,[5]⟩,3⟩,⟨⟨17,[5]⟩,6⟩,⟨⟨17,[5]⟩,7⟩,⟨⟨17,[6]⟩,4⟩,⟨⟨17,[7]⟩,5⟩,⟨⟨17,[7]⟩,8⟩,⟨⟨17,[7]⟩,9⟩,⟨⟨18,[5]⟩,10⟩,⟨⟨18,[5]⟩,11⟩,⟨⟨18,[6]⟩,12⟩,⟨⟨18,[7]⟩,13⟩,⟨⟨18,[7]⟩,14⟩,⟨⟨18,[7]⟩,15⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[22],[11],[10,12],[13],[15],[14],[16],[18],[19],[20],[17],[21],[23],[23],[24,25],[25],[24,25],[25],[26],[27],[28],[28],[29],[30],[31,32],[33],[34],[35],[35],[36],[53],[56],[57],[41],[41],[43],[43],[54],[55],[58],[59],[47],[48],[49,50],[51,52],[37,39],[38,40],[5],[6],[61],[60],[61],[62],[65],[63],[64],[37,39],[38,40],[45,46],[7],[8],[9]]
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
end Certgen.R121
