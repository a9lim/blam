import Regular
namespace Certgen.R288
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 8,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.var 0,.lam 9,.lam 10,.app 11 12,.var 0,.app 13 19,.app 14 15,.var 0,.lam 16,.app 17 18,.var 2,.var 1,.var 0,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨24,[4]⟩],[⟨8,[]⟩],[⟨12,[9,6]⟩],[⟨12,[11,5]⟩],[⟨15,[9,6]⟩,⟨15,[11,5]⟩],[⟨12,[10,7]⟩],[⟨12,[12,8]⟩],[⟨15,[10,7]⟩,⟨15,[12,8]⟩],[⟨6,[1]⟩],[⟨20,[]⟩],[⟨19,[10,7]⟩,⟨19,[12,8]⟩],[⟨18,[0,9,6]⟩,⟨18,[0,11,5]⟩],[⟨7,[1]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨12,[9,6]⟩,0⟩],[⟨⟨12,[10,7]⟩,15⟩,⟨⟨12,[10,7]⟩,16⟩],[⟨⟨12,[11,5]⟩,19⟩],[⟨⟨12,[12,8]⟩,1⟩],[⟨⟨19,[9,6]⟩,20⟩],[⟨⟨19,[10,7]⟩,16⟩],[⟨⟨19,[11,5]⟩,21⟩],[⟨⟨19,[12,8]⟩,15⟩],[⟨⟨15,[9,6]⟩,7⟩],[⟨⟨15,[10,7]⟩,8⟩],[⟨⟨15,[11,5]⟩,9⟩],[⟨⟨15,[12,8]⟩,10⟩],[⟨⟨18,[0,9,6]⟩,19⟩],[⟨⟨18,[0,11,5]⟩,19⟩],[⟨⟨27,[2]⟩,0⟩],[⟨⟨27,[3]⟩,19⟩],[⟨⟨27,[4]⟩,7⟩,⟨⟨27,[4]⟩,9⟩],[⟨⟨24,[2]⟩,17⟩],[⟨⟨24,[3]⟩,18⟩],[⟨⟨24,[4]⟩,19⟩],[⟨⟨7,[1]⟩,1⟩],[⟨⟨6,[1]⟩,23⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,23⟩,⟨⟨5,[1]⟩,24⟩,⟨⟨7,[1]⟩,4⟩,⟨⟨7,[1]⟩,6⟩,⟨⟨7,[1]⟩,12⟩,⟨⟨7,[1]⟩,14⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,6⟩,⟨⟨8,[]⟩,12⟩,⟨⟨8,[]⟩,14⟩,⟨⟨8,[]⟩,24⟩,⟨⟨9,[5]⟩,15⟩,⟨⟨9,[5]⟩,16⟩,⟨⟨9,[6]⟩,1⟩,⟨⟨9,[7]⟩,8⟩,⟨⟨9,[7]⟩,10⟩,⟨⟨9,[8]⟩,23⟩,⟨⟨10,[9,6]⟩,0⟩,⟨⟨10,[10,7]⟩,15⟩,⟨⟨10,[10,7]⟩,16⟩,⟨⟨10,[11,5]⟩,19⟩,⟨⟨10,[12,8]⟩,1⟩,⟨⟨11,[9,6]⟩,3⟩,⟨⟨11,[10,7]⟩,4⟩,⟨⟨11,[11,5]⟩,5⟩,⟨⟨11,[12,8]⟩,6⟩,⟨⟨12,[9,6]⟩,20⟩,⟨⟨12,[10,7]⟩,16⟩,⟨⟨12,[11,5]⟩,21⟩,⟨⟨12,[12,8]⟩,15⟩,⟨⟨13,[9,6]⟩,7⟩,⟨⟨13,[10,7]⟩,8⟩,⟨⟨13,[11,5]⟩,9⟩,⟨⟨13,[12,8]⟩,10⟩,⟨⟨14,[9,6]⟩,11⟩,⟨⟨14,[10,7]⟩,12⟩,⟨⟨14,[11,5]⟩,13⟩,⟨⟨14,[12,8]⟩,14⟩,⟨⟨15,[9,6]⟩,22⟩,⟨⟨15,[11,5]⟩,22⟩,⟨⟨16,[0,9,6]⟩,19⟩,⟨⟨16,[0,11,5]⟩,19⟩,⟨⟨17,[0,9,6]⟩,15⟩,⟨⟨17,[0,11,5]⟩,16⟩,⟨⟨18,[0,9,6]⟩,5⟩,⟨⟨18,[0,9,6]⟩,13⟩,⟨⟨18,[0,11,5]⟩,5⟩,⟨⟨18,[0,11,5]⟩,13⟩,⟨⟨19,[10,7]⟩,4⟩,⟨⟨19,[10,7]⟩,12⟩,⟨⟨19,[12,8]⟩,4⟩,⟨⟨19,[12,8]⟩,12⟩,⟨⟨20,[]⟩,3⟩,⟨⟨20,[]⟩,5⟩,⟨⟨20,[]⟩,11⟩,⟨⟨20,[]⟩,13⟩,⟨⟨21,[2]⟩,0⟩,⟨⟨21,[3]⟩,19⟩,⟨⟨21,[4]⟩,7⟩,⟨⟨21,[4]⟩,9⟩,⟨⟨22,[2]⟩,17⟩,⟨⟨22,[3]⟩,18⟩,⟨⟨22,[4]⟩,19⟩,⟨⟨23,[2]⟩,20⟩,⟨⟨23,[3]⟩,21⟩,⟨⟨23,[4]⟩,22⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[14],[10],[11],[12],[13],[15,16],[17],[18],[19],[20],[24],[24],[21],[23],[22],[25],[26],[27],[27],[28],[29],[56],[52,54],[48,50],[7],[34],[35],[36],[37],[38],[39],[40],[41],[58],[53,55],[49,51],[9],[44],[45],[46],[47],[33],[31],[57],[59],[48,50],[49,51],[52,54],[53,55],[6],[8],[60],[61],[62],[63],[64],[65],[66],[66],[67],[68],[69],[30],[32],[42,43]]
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
end Certgen.R288
