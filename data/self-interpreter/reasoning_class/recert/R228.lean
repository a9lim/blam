import Regular
namespace Certgen.R228
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 9,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.lam 8,.var 1,.lam 10,.app 11 20,.app 12 16,.lam 13,.app 14 15,.var 0,.var 0,.app 17 18,.var 0,.lam 19,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[7]⟩],[⟨16,[8]⟩],[⟨16,[9]⟩],[⟨16,[10]⟩],[⟨18,[8]⟩],[⟨9,[]⟩],[⟨18,[10]⟩],[⟨15,[1,8]⟩,⟨15,[3,10]⟩],[⟨18,[7]⟩],[⟨5,[5]⟩],[⟨7,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨9,[]⟩,1⟩],[⟨⟨20,[7]⟩,4⟩,⟨⟨20,[7]⟩,6⟩],[⟨⟨20,[8]⟩,11⟩],[⟨⟨20,[9]⟩,1⟩],[⟨⟨20,[10]⟩,19⟩],[⟨⟨16,[7]⟩,3⟩],[⟨⟨16,[8]⟩,4⟩],[⟨⟨16,[9]⟩,5⟩],[⟨⟨16,[10]⟩,6⟩],[⟨⟨15,[0,7]⟩,3⟩],[⟨⟨15,[1,8]⟩,4⟩],[⟨⟨15,[2,9]⟩,5⟩],[⟨⟨15,[3,10]⟩,6⟩],[⟨⟨18,[7]⟩,11⟩],[⟨⟨18,[8]⟩,15⟩],[⟨⟨18,[8]⟩,12⟩],[⟨⟨18,[8]⟩,12⟩,⟨⟨18,[8]⟩,15⟩],[⟨⟨18,[9]⟩,13⟩],[⟨⟨18,[10]⟩,15⟩],[⟨⟨18,[10]⟩,14⟩],[⟨⟨18,[10]⟩,12⟩,⟨⟨18,[10]⟩,15⟩],[⟨⟨5,[5]⟩,1⟩],[⟨⟨7,[5]⟩,19⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,23⟩,⟨⟨5,[5]⟩,19⟩,⟨⟨6,[5]⟩,24⟩,⟨⟨7,[5]⟩,20⟩,⟨⟨7,[5]⟩,21⟩,⟨⟨7,[5]⟩,22⟩,⟨⟨8,[6,5]⟩,12⟩,⟨⟨8,[6,5]⟩,14⟩,⟨⟨8,[6,5]⟩,15⟩,⟨⟨9,[]⟩,12⟩,⟨⟨9,[]⟩,14⟩,⟨⟨9,[]⟩,15⟩,⟨⟨9,[]⟩,23⟩,⟨⟨9,[]⟩,24⟩,⟨⟨10,[7]⟩,4⟩,⟨⟨10,[7]⟩,6⟩,⟨⟨10,[8]⟩,11⟩,⟨⟨10,[9]⟩,1⟩,⟨⟨10,[10]⟩,19⟩,⟨⟨11,[7]⟩,3⟩,⟨⟨11,[8]⟩,4⟩,⟨⟨11,[9]⟩,5⟩,⟨⟨11,[10]⟩,6⟩,⟨⟨12,[7]⟩,7⟩,⟨⟨12,[8]⟩,8⟩,⟨⟨12,[9]⟩,9⟩,⟨⟨12,[10]⟩,10⟩,⟨⟨13,[0,7]⟩,3⟩,⟨⟨13,[1,8]⟩,4⟩,⟨⟨13,[2,9]⟩,5⟩,⟨⟨13,[3,10]⟩,6⟩,⟨⟨14,[0,7]⟩,11⟩,⟨⟨14,[1,8]⟩,12⟩,⟨⟨14,[2,9]⟩,13⟩,⟨⟨14,[3,10]⟩,14⟩,⟨⟨15,[1,8]⟩,12⟩,⟨⟨15,[1,8]⟩,15⟩,⟨⟨15,[3,10]⟩,12⟩,⟨⟨15,[3,10]⟩,15⟩,⟨⟨16,[7]⟩,11⟩,⟨⟨16,[8]⟩,12⟩,⟨⟨16,[8]⟩,15⟩,⟨⟨16,[9]⟩,13⟩,⟨⟨16,[10]⟩,12⟩,⟨⟨16,[10]⟩,14⟩,⟨⟨16,[10]⟩,15⟩,⟨⟨17,[7]⟩,15⟩,⟨⟨17,[8]⟩,16⟩,⟨⟨17,[8]⟩,17⟩,⟨⟨17,[8]⟩,18⟩,⟨⟨17,[9]⟩,19⟩,⟨⟨17,[10]⟩,20⟩,⟨⟨17,[10]⟩,21⟩,⟨⟨17,[10]⟩,22⟩,⟨⟨18,[7]⟩,16⟩,⟨⟨18,[7]⟩,17⟩,⟨⟨18,[7]⟩,18⟩,⟨⟨19,[4,7]⟩,12⟩,⟨⟨19,[4,7]⟩,15⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[16],[6],[17],[12],[11],[10,12],[13],[14],[15],[18],[19],[20],[21],[22],[23],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[43],[44],[46],[48],[44],[45],[47],[49],[50],[52],[51],[54],[57],[56],[55],[40,42],[58],[59],[60],[5],[7],[8],[9],[62],[61],[61,62],[39,41],[40,42]]
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
end Certgen.R228
