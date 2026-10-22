import Regular
namespace Certgen.R226
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 8,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.var 0,.lam 9,.app 10 19,.app 11 15,.lam 12,.app 13 14,.var 0,.var 0,.app 16 17,.var 0,.lam 18,.var 1,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[6]⟩],[⟨15,[7]⟩,⟨15,[8]⟩],[⟨15,[9]⟩],[⟨15,[10]⟩],[⟨17,[7]⟩,⟨17,[8]⟩],[⟨8,[]⟩],[⟨14,[1,7]⟩,⟨14,[1,8]⟩],[⟨17,[10]⟩],[⟨17,[6]⟩],[⟨5,[5]⟩],[⟨7,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨8,[]⟩,1⟩],[⟨⟨15,[6]⟩,24⟩],[⟨⟨15,[7]⟩,25⟩],[⟨⟨15,[8]⟩,26⟩],[⟨⟨15,[9]⟩,27⟩],[⟨⟨15,[10]⟩,28⟩],[⟨⟨14,[0,6]⟩,24⟩],[⟨⟨14,[1,7]⟩,25⟩],[⟨⟨14,[1,8]⟩,26⟩],[⟨⟨14,[2,9]⟩,27⟩],[⟨⟨14,[3,10]⟩,28⟩],[⟨⟨17,[6]⟩,8⟩],[⟨⟨17,[7]⟩,13⟩],[⟨⟨17,[7]⟩,9⟩,⟨⟨17,[7]⟩,10⟩],[⟨⟨17,[7]⟩,9⟩,⟨⟨17,[7]⟩,10⟩,⟨⟨17,[7]⟩,13⟩],[⟨⟨17,[8]⟩,13⟩],[⟨⟨17,[8]⟩,9⟩,⟨⟨17,[8]⟩,10⟩],[⟨⟨17,[8]⟩,9⟩,⟨⟨17,[8]⟩,10⟩,⟨⟨17,[8]⟩,13⟩],[⟨⟨17,[9]⟩,11⟩],[⟨⟨17,[10]⟩,12⟩],[⟨⟨5,[5]⟩,1⟩],[⟨⟨7,[5]⟩,20⟩],[⟨⟨19,[6]⟩,25⟩,⟨⟨19,[6]⟩,26⟩],[⟨⟨19,[7]⟩,12⟩],[⟨⟨19,[8]⟩,8⟩],[⟨⟨19,[9]⟩,1⟩],[⟨⟨19,[10]⟩,20⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,22⟩,⟨⟨5,[5]⟩,20⟩,⟨⟨6,[5]⟩,23⟩,⟨⟨7,[5]⟩,9⟩,⟨⟨7,[5]⟩,10⟩,⟨⟨7,[5]⟩,13⟩,⟨⟨7,[5]⟩,21⟩,⟨⟨8,[]⟩,9⟩,⟨⟨8,[]⟩,10⟩,⟨⟨8,[]⟩,13⟩,⟨⟨8,[]⟩,21⟩,⟨⟨8,[]⟩,22⟩,⟨⟨8,[]⟩,23⟩,⟨⟨9,[6]⟩,25⟩,⟨⟨9,[6]⟩,26⟩,⟨⟨9,[7]⟩,12⟩,⟨⟨9,[8]⟩,8⟩,⟨⟨9,[9]⟩,1⟩,⟨⟨9,[10]⟩,20⟩,⟨⟨10,[6]⟩,24⟩,⟨⟨10,[7]⟩,25⟩,⟨⟨10,[8]⟩,26⟩,⟨⟨10,[9]⟩,27⟩,⟨⟨10,[10]⟩,28⟩,⟨⟨11,[6]⟩,3⟩,⟨⟨11,[7]⟩,4⟩,⟨⟨11,[8]⟩,5⟩,⟨⟨11,[9]⟩,6⟩,⟨⟨11,[10]⟩,7⟩,⟨⟨12,[0,6]⟩,24⟩,⟨⟨12,[1,7]⟩,25⟩,⟨⟨12,[1,8]⟩,26⟩,⟨⟨12,[2,9]⟩,27⟩,⟨⟨12,[3,10]⟩,28⟩,⟨⟨13,[0,6]⟩,8⟩,⟨⟨13,[1,7]⟩,9⟩,⟨⟨13,[1,8]⟩,10⟩,⟨⟨13,[2,9]⟩,11⟩,⟨⟨13,[3,10]⟩,12⟩,⟨⟨14,[1,7]⟩,9⟩,⟨⟨14,[1,7]⟩,10⟩,⟨⟨14,[1,7]⟩,13⟩,⟨⟨14,[1,8]⟩,9⟩,⟨⟨14,[1,8]⟩,10⟩,⟨⟨14,[1,8]⟩,13⟩,⟨⟨15,[6]⟩,8⟩,⟨⟨15,[7]⟩,9⟩,⟨⟨15,[7]⟩,10⟩,⟨⟨15,[7]⟩,13⟩,⟨⟨15,[8]⟩,9⟩,⟨⟨15,[8]⟩,10⟩,⟨⟨15,[8]⟩,13⟩,⟨⟨15,[9]⟩,11⟩,⟨⟨15,[10]⟩,12⟩,⟨⟨16,[6]⟩,13⟩,⟨⟨16,[7]⟩,14⟩,⟨⟨16,[7]⟩,15⟩,⟨⟨16,[7]⟩,16⟩,⟨⟨16,[8]⟩,17⟩,⟨⟨16,[8]⟩,18⟩,⟨⟨16,[8]⟩,19⟩,⟨⟨16,[9]⟩,20⟩,⟨⟨16,[10]⟩,21⟩,⟨⟨17,[6]⟩,17⟩,⟨⟨17,[6]⟩,18⟩,⟨⟨17,[6]⟩,19⟩,⟨⟨17,[10]⟩,14⟩,⟨⟨17,[10]⟩,15⟩,⟨⟨17,[10]⟩,16⟩,⟨⟨18,[4,6]⟩,9⟩,⟨⟨18,[4,6]⟩,10⟩,⟨⟨18,[4,6]⟩,13⟩,⟨⟨18,[4,10]⟩,9⟩,⟨⟨18,[4,10]⟩,10⟩,⟨⟨18,[4,10]⟩,13⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[6],[16],[11],[12],[13],[14],[17],[18],[20],[19],[21],[22],[23],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[41],[42],[49],[50,53],[51,54],[56],[57],[50,53],[51,54],[52,55],[50,53],[51,54],[52,55],[58],[60],[60],[59],[63],[63],[62],[65],[66],[45,48],[70],[71],[72],[67],[68],[69],[5],[10],[75],[73,74],[73,74,75],[78],[76,77],[76,77,78],[43,46],[44,47],[45,48],[7],[8],[9]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 7=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<79 := hi
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
end Certgen.R226
