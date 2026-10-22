import Regular
namespace Certgen.R234
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 17,.app 9 15,.lam 10,.app 11 14,.app 12 13,.var 0,.opaque,.var 0,.lam 16,.var 1,.app 18 19,.var 0,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨14,[8,4]⟩,⟨14,[8,5]⟩],[⟨13,[8,4]⟩,⟨13,[8,5]⟩,⟨13,[9,6]⟩,⟨13,[10,7]⟩],[⟨19,[4]⟩,⟨19,[5]⟩],[⟨6,[]⟩],[⟨14,[9,6]⟩],[⟨14,[10,7]⟩],[⟨5,[3]⟩],[⟨17,[4]⟩,⟨17,[5]⟩],[⟨15,[4]⟩,⟨15,[5]⟩],[⟨15,[6]⟩],[⟨15,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨14,[8,4]⟩,18⟩],[⟨⟨14,[8,5]⟩,19⟩],[⟨⟨14,[9,6]⟩,20⟩],[⟨⟨14,[10,7]⟩,21⟩],[⟨⟨13,[8,4]⟩,3⟩],[⟨⟨13,[8,5]⟩,4⟩],[⟨⟨13,[9,6]⟩,5⟩],[⟨⟨13,[10,7]⟩,6⟩],[⟨⟨19,[4]⟩,18⟩,⟨⟨19,[4]⟩,19⟩],[⟨⟨19,[4]⟩,6⟩],[⟨⟨19,[4]⟩,6⟩,⟨⟨19,[4]⟩,18⟩,⟨⟨19,[4]⟩,19⟩],[⟨⟨19,[5]⟩,18⟩,⟨⟨19,[5]⟩,19⟩],[⟨⟨19,[5]⟩,6⟩],[⟨⟨19,[5]⟩,6⟩,⟨⟨19,[5]⟩,18⟩,⟨⟨19,[5]⟩,19⟩],[⟨⟨5,[3]⟩,1⟩],[⟨⟨17,[4]⟩,20⟩],[⟨⟨17,[5]⟩,21⟩],[⟨⟨17,[6]⟩,1⟩],[⟨⟨17,[7]⟩,20⟩,⟨⟨17,[7]⟩,21⟩],[⟨⟨15,[4]⟩,18⟩],[⟨⟨15,[5]⟩,19⟩],[⟨⟨15,[6]⟩,20⟩],[⟨⟨15,[7]⟩,21⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,17⟩,⟨⟨5,[3]⟩,5⟩,⟨⟨5,[3]⟩,6⟩,⟨⟨5,[3]⟩,18⟩,⟨⟨5,[3]⟩,19⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,17⟩,⟨⟨6,[]⟩,18⟩,⟨⟨6,[]⟩,19⟩,⟨⟨7,[4]⟩,20⟩,⟨⟨7,[5]⟩,21⟩,⟨⟨7,[6]⟩,1⟩,⟨⟨7,[7]⟩,20⟩,⟨⟨7,[7]⟩,21⟩,⟨⟨8,[4]⟩,18⟩,⟨⟨8,[5]⟩,19⟩,⟨⟨8,[6]⟩,20⟩,⟨⟨8,[7]⟩,21⟩,⟨⟨9,[4]⟩,22⟩,⟨⟨9,[5]⟩,23⟩,⟨⟨9,[6]⟩,24⟩,⟨⟨9,[7]⟩,25⟩,⟨⟨10,[8,4]⟩,18⟩,⟨⟨10,[8,5]⟩,19⟩,⟨⟨10,[9,6]⟩,20⟩,⟨⟨10,[10,7]⟩,21⟩,⟨⟨11,[8,4]⟩,3⟩,⟨⟨11,[8,5]⟩,4⟩,⟨⟨11,[9,6]⟩,5⟩,⟨⟨11,[10,7]⟩,6⟩,⟨⟨12,[8,4]⟩,7⟩,⟨⟨12,[8,5]⟩,8⟩,⟨⟨12,[9,6]⟩,9⟩,⟨⟨12,[10,7]⟩,10⟩,⟨⟨14,[9,6]⟩,3⟩,⟨⟨14,[9,6]⟩,4⟩,⟨⟨14,[9,6]⟩,11⟩,⟨⟨14,[9,6]⟩,12⟩,⟨⟨14,[9,6]⟩,13⟩,⟨⟨14,[10,7]⟩,3⟩,⟨⟨14,[10,7]⟩,4⟩,⟨⟨14,[10,7]⟩,14⟩,⟨⟨14,[10,7]⟩,15⟩,⟨⟨14,[10,7]⟩,16⟩,⟨⟨15,[4]⟩,7⟩,⟨⟨15,[4]⟩,8⟩,⟨⟨15,[5]⟩,7⟩,⟨⟨15,[5]⟩,8⟩,⟨⟨15,[6]⟩,3⟩,⟨⟨15,[6]⟩,4⟩,⟨⟨15,[6]⟩,9⟩,⟨⟨15,[6]⟩,11⟩,⟨⟨15,[6]⟩,12⟩,⟨⟨15,[6]⟩,13⟩,⟨⟨15,[7]⟩,3⟩,⟨⟨15,[7]⟩,4⟩,⟨⟨15,[7]⟩,10⟩,⟨⟨15,[7]⟩,14⟩,⟨⟨15,[7]⟩,15⟩,⟨⟨15,[7]⟩,16⟩,⟨⟨16,[0,6]⟩,18⟩,⟨⟨16,[0,6]⟩,19⟩,⟨⟨16,[0,7]⟩,18⟩,⟨⟨16,[0,7]⟩,19⟩,⟨⟨16,[1,4]⟩,3⟩,⟨⟨16,[1,4]⟩,4⟩,⟨⟨16,[1,5]⟩,3⟩,⟨⟨16,[1,5]⟩,4⟩,⟨⟨16,[1,6]⟩,5⟩,⟨⟨16,[1,7]⟩,6⟩,⟨⟨16,[2,6]⟩,6⟩,⟨⟨16,[2,6]⟩,18⟩,⟨⟨16,[2,6]⟩,19⟩,⟨⟨16,[2,7]⟩,6⟩,⟨⟨16,[2,7]⟩,18⟩,⟨⟨16,[2,7]⟩,19⟩,⟨⟨17,[4]⟩,6⟩,⟨⟨17,[4]⟩,18⟩,⟨⟨17,[4]⟩,19⟩,⟨⟨17,[5]⟩,6⟩,⟨⟨17,[5]⟩,18⟩,⟨⟨17,[5]⟩,19⟩,⟨⟨18,[4]⟩,11⟩,⟨⟨18,[4]⟩,12⟩,⟨⟨18,[4]⟩,13⟩,⟨⟨18,[5]⟩,14⟩,⟨⟨18,[5]⟩,15⟩,⟨⟨18,[5]⟩,16⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[9],[10],[12],[13],[14],[15],[16],[17],[18],[19],[20],[21],[22],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[49,51],[50,52],[55],[61],[53],[54],[56],[57],[58],[59],[60],[62],[63],[64],[69],[70],[71],[72],[65],[66],[73],[76,77],[75],[75,76,77],[67],[68],[74],[79,80],[78],[78,79,80],[7],[8],[82,85],[83,86],[39],[40],[44],[45],[5],[81,84],[6],[7],[8],[81,84],[82,85],[83,86],[88],[87],[87],[91],[90],[90],[41],[42],[43],[46],[47],[48]]
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
theorem block84 : checkRange P V K states hints 84 9=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<93 := hi
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
end Certgen.R234
