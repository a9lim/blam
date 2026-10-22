import Regular
namespace Certgen.R214
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.app 9 15,.lam 10,.app 11 12,.var 0,.app 13 14,.var 1,.opaque,.app 16 17,.var 0,.lam 18,.var 1,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨14,[8,4]⟩,⟨14,[8,5]⟩],[⟨17,[4]⟩,⟨17,[5]⟩],[⟨6,[]⟩],[⟨12,[8,4]⟩,⟨12,[8,5]⟩],[⟨17,[3]⟩],[⟨17,[6]⟩],[⟨5,[2]⟩],[⟨15,[3]⟩],[⟨15,[4]⟩,⟨15,[5]⟩],[⟨15,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[7,3]⟩,18⟩],[⟨⟨12,[8,4]⟩,19⟩],[⟨⟨12,[8,5]⟩,20⟩],[⟨⟨12,[9,6]⟩,21⟩],[⟨⟨14,[8,4]⟩,4⟩,⟨⟨14,[8,4]⟩,5⟩,⟨⟨14,[8,4]⟩,13⟩],[⟨⟨14,[8,4]⟩,4⟩,⟨⟨14,[8,4]⟩,5⟩],[⟨⟨14,[8,4]⟩,13⟩],[⟨⟨14,[8,5]⟩,4⟩,⟨⟨14,[8,5]⟩,5⟩,⟨⟨14,[8,5]⟩,13⟩],[⟨⟨14,[8,5]⟩,4⟩,⟨⟨14,[8,5]⟩,5⟩],[⟨⟨14,[8,5]⟩,13⟩],[⟨⟨17,[3]⟩,3⟩],[⟨⟨17,[4]⟩,4⟩,⟨⟨17,[4]⟩,5⟩],[⟨⟨17,[5]⟩,4⟩,⟨⟨17,[5]⟩,5⟩],[⟨⟨17,[6]⟩,6⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨19,[3]⟩,19⟩,⟨⟨19,[3]⟩,20⟩],[⟨⟨19,[4]⟩,3⟩],[⟨⟨19,[5]⟩,6⟩],[⟨⟨19,[6]⟩,1⟩],[⟨⟨15,[3]⟩,18⟩],[⟨⟨15,[4]⟩,19⟩],[⟨⟨15,[5]⟩,20⟩],[⟨⟨15,[6]⟩,21⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,17⟩,⟨⟨5,[2]⟩,4⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨5,[2]⟩,13⟩,⟨⟨5,[2]⟩,16⟩,⟨⟨6,[]⟩,4⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,13⟩,⟨⟨6,[]⟩,16⟩,⟨⟨6,[]⟩,17⟩,⟨⟨7,[3]⟩,19⟩,⟨⟨7,[3]⟩,20⟩,⟨⟨7,[4]⟩,3⟩,⟨⟨7,[5]⟩,6⟩,⟨⟨7,[6]⟩,1⟩,⟨⟨8,[3]⟩,18⟩,⟨⟨8,[4]⟩,19⟩,⟨⟨8,[5]⟩,20⟩,⟨⟨8,[6]⟩,21⟩,⟨⟨9,[3]⟩,22⟩,⟨⟨9,[4]⟩,23⟩,⟨⟨9,[5]⟩,24⟩,⟨⟨9,[6]⟩,25⟩,⟨⟨10,[7,3]⟩,18⟩,⟨⟨10,[8,4]⟩,19⟩,⟨⟨10,[8,5]⟩,20⟩,⟨⟨10,[9,6]⟩,21⟩,⟨⟨11,[7,3]⟩,3⟩,⟨⟨11,[8,4]⟩,4⟩,⟨⟨11,[8,5]⟩,5⟩,⟨⟨11,[9,6]⟩,6⟩,⟨⟨12,[8,4]⟩,4⟩,⟨⟨12,[8,4]⟩,5⟩,⟨⟨12,[8,4]⟩,13⟩,⟨⟨12,[8,5]⟩,4⟩,⟨⟨12,[8,5]⟩,5⟩,⟨⟨12,[8,5]⟩,13⟩,⟨⟨13,[8,4]⟩,7⟩,⟨⟨13,[8,4]⟩,8⟩,⟨⟨13,[8,4]⟩,9⟩,⟨⟨13,[8,5]⟩,10⟩,⟨⟨13,[8,5]⟩,11⟩,⟨⟨13,[8,5]⟩,12⟩,⟨⟨15,[3]⟩,3⟩,⟨⟨15,[4]⟩,4⟩,⟨⟨15,[4]⟩,5⟩,⟨⟨15,[5]⟩,4⟩,⟨⟨15,[5]⟩,5⟩,⟨⟨15,[6]⟩,6⟩,⟨⟨16,[3]⟩,13⟩,⟨⟨16,[4]⟩,14⟩,⟨⟨16,[5]⟩,15⟩,⟨⟨16,[6]⟩,16⟩,⟨⟨17,[3]⟩,7⟩,⟨⟨17,[3]⟩,8⟩,⟨⟨17,[3]⟩,9⟩,⟨⟨17,[3]⟩,14⟩,⟨⟨17,[6]⟩,10⟩,⟨⟨17,[6]⟩,11⟩,⟨⟨17,[6]⟩,12⟩,⟨⟨17,[6]⟩,15⟩,⟨⟨18,[0,3]⟩,4⟩,⟨⟨18,[0,3]⟩,5⟩,⟨⟨18,[0,3]⟩,13⟩,⟨⟨18,[0,6]⟩,4⟩,⟨⟨18,[0,6]⟩,5⟩,⟨⟨18,[0,6]⟩,13⟩,⟨⟨18,[1,3]⟩,4⟩,⟨⟨18,[1,3]⟩,5⟩,⟨⟨18,[1,6]⟩,4⟩,⟨⟨18,[1,6]⟩,5⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[9],[10],[11],[12],[14],[15],[16],[17],[18],[19],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[47],[48,50],[49,51],[52],[41],[41],[41],[44],[44],[44],[57],[58],[59],[61],[62],[63],[53],[54],[54],[55],[55],[56],[37,40],[60],[64],[8],[65,66,67],[65,66],[67],[71,72],[68,69,70],[68,69],[70],[73,74],[35,38],[36,39],[37,40],[5],[6],[7],[35,38],[36,39],[5],[6]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 3=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<75 := hi
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
 exact range_sound block72 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R214
