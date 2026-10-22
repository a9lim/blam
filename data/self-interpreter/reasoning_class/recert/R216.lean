import Regular
namespace Certgen.R216
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.app 9 13,.lam 10,.app 11 12,.var 0,.var 0,.app 14 15,.var 0,.lam 16,.lam 17,.lam 18,.var 3,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[5]⟩,⟨15,[6]⟩],[⟨12,[9,5]⟩,⟨12,[9,6]⟩],[⟨19,[5]⟩,⟨19,[6]⟩],[⟨6,[]⟩],[⟨12,[8,4]⟩,⟨12,[10,7]⟩],[⟨15,[4]⟩,⟨15,[7]⟩],[⟨15,[7]⟩],[⟨5,[3]⟩],[⟨13,[4]⟩],[⟨13,[5]⟩,⟨13,[6]⟩],[⟨13,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[8,4]⟩,15⟩],[⟨⟨12,[9,5]⟩,16⟩],[⟨⟨12,[9,6]⟩,17⟩],[⟨⟨12,[10,7]⟩,18⟩],[⟨⟨15,[4]⟩,3⟩,⟨⟨15,[4]⟩,6⟩,⟨⟨15,[4]⟩,7⟩,⟨⟨15,[4]⟩,8⟩],[⟨⟨15,[4]⟩,3⟩,⟨⟨15,[4]⟩,8⟩],[⟨⟨15,[5]⟩,4⟩,⟨⟨15,[5]⟩,5⟩],[⟨⟨15,[6]⟩,4⟩,⟨⟨15,[6]⟩,5⟩],[⟨⟨15,[7]⟩,3⟩,⟨⟨15,[7]⟩,6⟩,⟨⟨15,[7]⟩,7⟩,⟨⟨15,[7]⟩,8⟩],[⟨⟨15,[7]⟩,8⟩],[⟨⟨15,[7]⟩,6⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨19,[4]⟩,15⟩,⟨⟨19,[4]⟩,18⟩],[⟨⟨19,[5]⟩,3⟩,⟨⟨19,[5]⟩,6⟩,⟨⟨19,[5]⟩,7⟩,⟨⟨19,[5]⟩,8⟩],[⟨⟨19,[6]⟩,6⟩,⟨⟨19,[6]⟩,8⟩],[⟨⟨19,[7]⟩,1⟩],[⟨⟨13,[4]⟩,15⟩],[⟨⟨13,[5]⟩,16⟩],[⟨⟨13,[6]⟩,17⟩],[⟨⟨13,[7]⟩,18⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,14⟩,⟨⟨5,[3]⟩,3⟩,⟨⟨5,[3]⟩,6⟩,⟨⟨5,[3]⟩,7⟩,⟨⟨5,[3]⟩,8⟩,⟨⟨5,[3]⟩,11⟩,⟨⟨5,[3]⟩,12⟩,⟨⟨5,[3]⟩,13⟩,⟨⟨6,[]⟩,3⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,7⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,11⟩,⟨⟨6,[]⟩,12⟩,⟨⟨6,[]⟩,13⟩,⟨⟨6,[]⟩,14⟩,⟨⟨7,[4]⟩,15⟩,⟨⟨7,[4]⟩,18⟩,⟨⟨7,[5]⟩,3⟩,⟨⟨7,[5]⟩,6⟩,⟨⟨7,[5]⟩,7⟩,⟨⟨7,[5]⟩,8⟩,⟨⟨7,[6]⟩,6⟩,⟨⟨7,[6]⟩,8⟩,⟨⟨7,[7]⟩,1⟩,⟨⟨8,[4]⟩,15⟩,⟨⟨8,[5]⟩,16⟩,⟨⟨8,[6]⟩,17⟩,⟨⟨8,[7]⟩,18⟩,⟨⟨9,[4]⟩,19⟩,⟨⟨9,[5]⟩,20⟩,⟨⟨9,[6]⟩,21⟩,⟨⟨9,[7]⟩,22⟩,⟨⟨10,[8,4]⟩,15⟩,⟨⟨10,[9,5]⟩,16⟩,⟨⟨10,[9,6]⟩,17⟩,⟨⟨10,[10,7]⟩,18⟩,⟨⟨11,[8,4]⟩,3⟩,⟨⟨11,[9,5]⟩,4⟩,⟨⟨11,[9,6]⟩,5⟩,⟨⟨11,[10,7]⟩,6⟩,⟨⟨12,[8,4]⟩,3⟩,⟨⟨12,[8,4]⟩,6⟩,⟨⟨12,[8,4]⟩,7⟩,⟨⟨12,[8,4]⟩,8⟩,⟨⟨12,[10,7]⟩,3⟩,⟨⟨12,[10,7]⟩,6⟩,⟨⟨12,[10,7]⟩,7⟩,⟨⟨12,[10,7]⟩,8⟩,⟨⟨13,[4]⟩,3⟩,⟨⟨13,[4]⟩,6⟩,⟨⟨13,[4]⟩,7⟩,⟨⟨13,[4]⟩,8⟩,⟨⟨13,[5]⟩,4⟩,⟨⟨13,[5]⟩,5⟩,⟨⟨13,[6]⟩,4⟩,⟨⟨13,[6]⟩,5⟩,⟨⟨13,[7]⟩,3⟩,⟨⟨13,[7]⟩,6⟩,⟨⟨13,[7]⟩,7⟩,⟨⟨13,[7]⟩,8⟩,⟨⟨14,[4]⟩,7⟩,⟨⟨14,[4]⟩,8⟩,⟨⟨14,[5]⟩,9⟩,⟨⟨14,[6]⟩,10⟩,⟨⟨14,[7]⟩,11⟩,⟨⟨14,[7]⟩,12⟩,⟨⟨14,[7]⟩,13⟩,⟨⟨15,[4]⟩,9⟩,⟨⟨15,[7]⟩,9⟩,⟨⟨15,[7]⟩,10⟩,⟨⟨16,[0,4]⟩,4⟩,⟨⟨16,[0,4]⟩,5⟩,⟨⟨16,[0,7]⟩,4⟩,⟨⟨16,[0,7]⟩,5⟩,⟨⟨17,[1,0,4]⟩,16⟩,⟨⟨17,[1,0,4]⟩,17⟩,⟨⟨17,[1,0,7]⟩,16⟩,⟨⟨17,[1,0,7]⟩,17⟩,⟨⟨18,[2,1,0,4]⟩,3⟩,⟨⟨18,[2,1,0,4]⟩,6⟩,⟨⟨18,[2,1,0,4]⟩,7⟩,⟨⟨18,[2,1,0,4]⟩,8⟩,⟨⟨18,[2,1,0,7]⟩,3⟩,⟨⟨18,[2,1,0,7]⟩,6⟩,⟨⟨18,[2,1,0,7]⟩,7⟩,⟨⟨18,[2,1,0,7]⟩,8⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[19],[12],[13],[14],[15],[16],[17],[18],[20],[21],[22,23,24,25],[22,25],[22,23,24,25],[25],[23],[28],[29],[29],[30],[30],[30],[30],[31],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[41],[42],[43],[44],[53],[57,59],[58,60],[62],[53],[54],[55],[56],[61],[62],[63],[64],[65],[65],[65],[65],[67],[67],[68],[68],[69],[69],[69],[69],[47,51],[48,52],[72,73],[74],[9],[10],[11],[75,76],[77,78],[77,78],[79],[80],[81],[82],[83,84,85,86],[84,86],[87,88,89,90],[88,90],[45,49],[46,50],[47,51],[48,52],[5],[6],[7],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 12=true := by decide
theorem block84 : checkRange P V K states hints 84 7=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<91 := hi
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
 by_cases h60 : i<72
 · exact range_sound block60 i (by omega) h60 hi
 by_cases h72 : i<84
 · exact range_sound block72 i (by omega) h72 hi
 exact range_sound block84 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R216
