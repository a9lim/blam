import Regular
namespace Certgen.R115
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 13,.lam 9,.app 10 11,.var 0,.lam 12,.var 1,.app 14 15,.var 0,.app 16 20,.app 17 18,.var 0,.lam 19,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[6]⟩],[⟨15,[4]⟩],[⟨6,[]⟩],[⟨15,[5]⟩],[⟨18,[5]⟩],[⟨5,[2]⟩],[⟨11,[8,4]⟩,⟨11,[10,6]⟩],[⟨13,[3]⟩],[⟨13,[4]⟩],[⟨13,[5]⟩],[⟨13,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨15,[3]⟩,15⟩],[⟨⟨15,[4]⟩,18⟩],[⟨⟨15,[4]⟩,16⟩],[⟨⟨15,[5]⟩,17⟩],[⟨⟨15,[6]⟩,18⟩],[⟨⟨20,[5]⟩,3⟩],[⟨⟨18,[5]⟩,8⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨13,[3]⟩,17⟩],[⟨⟨13,[4]⟩,8⟩],[⟨⟨13,[5]⟩,1⟩],[⟨⟨13,[6]⟩,8⟩],[⟨⟨11,[7,3]⟩,17⟩],[⟨⟨11,[8,4]⟩,8⟩],[⟨⟨11,[9,5]⟩,1⟩],[⟨⟨11,[10,6]⟩,8⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,10⟩,⟨⟨5,[2]⟩,6⟩,⟨⟨5,[2]⟩,9⟩,⟨⟨5,[2]⟩,16⟩,⟨⟨5,[2]⟩,18⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,10⟩,⟨⟨6,[]⟩,16⟩,⟨⟨6,[]⟩,18⟩,⟨⟨7,[3]⟩,17⟩,⟨⟨7,[4]⟩,8⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨7,[6]⟩,8⟩,⟨⟨8,[3]⟩,11⟩,⟨⟨8,[4]⟩,12⟩,⟨⟨8,[5]⟩,13⟩,⟨⟨8,[6]⟩,14⟩,⟨⟨9,[7,3]⟩,17⟩,⟨⟨9,[8,4]⟩,8⟩,⟨⟨9,[9,5]⟩,1⟩,⟨⟨9,[10,6]⟩,8⟩,⟨⟨10,[7,3]⟩,15⟩,⟨⟨10,[8,4]⟩,16⟩,⟨⟨10,[9,5]⟩,17⟩,⟨⟨10,[10,6]⟩,18⟩,⟨⟨11,[8,4]⟩,7⟩,⟨⟨11,[10,6]⟩,7⟩,⟨⟨12,[0,8,4]⟩,18⟩,⟨⟨12,[0,10,6]⟩,18⟩,⟨⟨13,[3]⟩,15⟩,⟨⟨13,[4]⟩,16⟩,⟨⟨13,[4]⟩,18⟩,⟨⟨13,[5]⟩,17⟩,⟨⟨13,[6]⟩,18⟩,⟨⟨14,[3]⟩,3⟩,⟨⟨14,[4]⟩,4⟩,⟨⟨14,[4]⟩,5⟩,⟨⟨14,[5]⟩,6⟩,⟨⟨14,[6]⟩,7⟩,⟨⟨15,[5]⟩,3⟩,⟨⟨16,[5]⟩,8⟩,⟨⟨17,[5]⟩,9⟩,⟨⟨18,[5]⟩,4⟩,⟨⟨18,[5]⟩,5⟩,⟨⟨19,[1,5]⟩,16⟩,⟨⟨19,[1,5]⟩,18⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[9],[10],[12],[13],[14],[15],[16],[17],[17],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[34],[35],[37],[38],[32],[33],[36],[38],[39],[41],[40],[42],[43],[44],[47],[48],[5],[30,31],[45],[46],[6],[50],[49],[7],[8]]
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
end Certgen.R115
