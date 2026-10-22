import Regular
namespace Certgen.R212
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 19,.app 9 15,.lam 10,.app 11 12,.var 0,.app 13 14,.var 0,.var 0,.app 16 17,.var 0,.lam 18,.var 1,.opaque,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨17,[4]⟩,⟨17,[5]⟩],[⟨6,[]⟩],[⟨12,[9,4]⟩,⟨12,[9,5]⟩],[⟨14,[9,4]⟩,⟨14,[9,5]⟩],[⟨17,[3]⟩],[⟨17,[6]⟩],[⟨5,[1]⟩],[⟨15,[2]⟩],[⟨15,[3]⟩],[⟨15,[4]⟩,⟨15,[5]⟩],[⟨15,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨12,[7,2]⟩,22⟩],[⟨⟨12,[8,3]⟩,23⟩],[⟨⟨12,[9,4]⟩,24⟩],[⟨⟨12,[9,5]⟩,25⟩],[⟨⟨12,[10,6]⟩,26⟩],[⟨⟨14,[9,4]⟩,10⟩],[⟨⟨14,[9,5]⟩,10⟩],[⟨⟨17,[2]⟩,3⟩],[⟨⟨17,[3]⟩,4⟩],[⟨⟨17,[4]⟩,5⟩,⟨⟨17,[4]⟩,6⟩,⟨⟨17,[4]⟩,8⟩,⟨⟨17,[4]⟩,9⟩,⟨⟨17,[4]⟩,11⟩],[⟨⟨17,[4]⟩,8⟩,⟨⟨17,[4]⟩,9⟩],[⟨⟨17,[4]⟩,11⟩],[⟨⟨17,[4]⟩,5⟩,⟨⟨17,[4]⟩,6⟩],[⟨⟨17,[5]⟩,5⟩,⟨⟨17,[5]⟩,6⟩,⟨⟨17,[5]⟩,8⟩,⟨⟨17,[5]⟩,9⟩,⟨⟨17,[5]⟩,11⟩],[⟨⟨17,[5]⟩,8⟩,⟨⟨17,[5]⟩,9⟩],[⟨⟨17,[5]⟩,11⟩],[⟨⟨17,[5]⟩,5⟩,⟨⟨17,[5]⟩,6⟩],[⟨⟨17,[6]⟩,7⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨19,[2]⟩,24⟩,⟨⟨19,[2]⟩,25⟩],[⟨⟨19,[3]⟩,10⟩],[⟨⟨19,[4]⟩,4⟩],[⟨⟨19,[5]⟩,7⟩],[⟨⟨19,[6]⟩,1⟩],[⟨⟨15,[2]⟩,22⟩],[⟨⟨15,[3]⟩,23⟩],[⟨⟨15,[4]⟩,24⟩],[⟨⟨15,[5]⟩,25⟩],[⟨⟨15,[6]⟩,26⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,21⟩,⟨⟨5,[1]⟩,5⟩,⟨⟨5,[1]⟩,6⟩,⟨⟨5,[1]⟩,8⟩,⟨⟨5,[1]⟩,9⟩,⟨⟨5,[1]⟩,11⟩,⟨⟨5,[1]⟩,20⟩,⟨⟨6,[]⟩,5⟩,⟨⟨6,[]⟩,6⟩,⟨⟨6,[]⟩,8⟩,⟨⟨6,[]⟩,9⟩,⟨⟨6,[]⟩,11⟩,⟨⟨6,[]⟩,20⟩,⟨⟨6,[]⟩,21⟩,⟨⟨7,[2]⟩,24⟩,⟨⟨7,[2]⟩,25⟩,⟨⟨7,[3]⟩,10⟩,⟨⟨7,[4]⟩,4⟩,⟨⟨7,[5]⟩,7⟩,⟨⟨7,[6]⟩,1⟩,⟨⟨8,[2]⟩,22⟩,⟨⟨8,[3]⟩,23⟩,⟨⟨8,[4]⟩,24⟩,⟨⟨8,[5]⟩,25⟩,⟨⟨8,[6]⟩,26⟩,⟨⟨9,[2]⟩,27⟩,⟨⟨9,[3]⟩,28⟩,⟨⟨9,[4]⟩,29⟩,⟨⟨9,[5]⟩,30⟩,⟨⟨9,[6]⟩,31⟩,⟨⟨10,[7,2]⟩,22⟩,⟨⟨10,[8,3]⟩,23⟩,⟨⟨10,[9,4]⟩,24⟩,⟨⟨10,[9,5]⟩,25⟩,⟨⟨10,[10,6]⟩,26⟩,⟨⟨11,[7,2]⟩,3⟩,⟨⟨11,[8,3]⟩,4⟩,⟨⟨11,[9,4]⟩,5⟩,⟨⟨11,[9,5]⟩,6⟩,⟨⟨11,[10,6]⟩,7⟩,⟨⟨12,[9,4]⟩,10⟩,⟨⟨12,[9,5]⟩,10⟩,⟨⟨13,[9,4]⟩,8⟩,⟨⟨13,[9,5]⟩,9⟩,⟨⟨14,[9,4]⟩,5⟩,⟨⟨14,[9,4]⟩,6⟩,⟨⟨14,[9,4]⟩,8⟩,⟨⟨14,[9,4]⟩,9⟩,⟨⟨14,[9,4]⟩,11⟩,⟨⟨14,[9,5]⟩,5⟩,⟨⟨14,[9,5]⟩,6⟩,⟨⟨14,[9,5]⟩,8⟩,⟨⟨14,[9,5]⟩,9⟩,⟨⟨14,[9,5]⟩,11⟩,⟨⟨15,[2]⟩,3⟩,⟨⟨15,[3]⟩,4⟩,⟨⟨15,[4]⟩,5⟩,⟨⟨15,[4]⟩,6⟩,⟨⟨15,[4]⟩,8⟩,⟨⟨15,[4]⟩,9⟩,⟨⟨15,[4]⟩,11⟩,⟨⟨15,[5]⟩,5⟩,⟨⟨15,[5]⟩,6⟩,⟨⟨15,[5]⟩,8⟩,⟨⟨15,[5]⟩,9⟩,⟨⟨15,[5]⟩,11⟩,⟨⟨15,[6]⟩,7⟩,⟨⟨16,[2]⟩,10⟩,⟨⟨16,[3]⟩,11⟩,⟨⟨16,[4]⟩,12⟩,⟨⟨16,[4]⟩,13⟩,⟨⟨16,[4]⟩,14⟩,⟨⟨16,[4]⟩,15⟩,⟨⟨16,[5]⟩,16⟩,⟨⟨16,[5]⟩,17⟩,⟨⟨16,[5]⟩,18⟩,⟨⟨16,[5]⟩,19⟩,⟨⟨16,[6]⟩,20⟩,⟨⟨17,[3]⟩,12⟩,⟨⟨17,[3]⟩,13⟩,⟨⟨17,[3]⟩,14⟩,⟨⟨17,[3]⟩,15⟩,⟨⟨17,[6]⟩,16⟩,⟨⟨17,[6]⟩,17⟩,⟨⟨17,[6]⟩,18⟩,⟨⟨17,[6]⟩,19⟩,⟨⟨18,[0,3]⟩,5⟩,⟨⟨18,[0,3]⟩,6⟩,⟨⟨18,[0,3]⟩,8⟩,⟨⟨18,[0,3]⟩,9⟩,⟨⟨18,[0,3]⟩,11⟩,⟨⟨18,[0,6]⟩,5⟩,⟨⟨18,[0,6]⟩,6⟩,⟨⟨18,[0,6]⟩,8⟩,⟨⟨18,[0,6]⟩,9⟩,⟨⟨18,[0,6]⟩,11⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[17],[11],[12],[13],[14],[15],[16],[18],[19],[20],[20],[21],[22],[23],[24],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[41],[42],[43],[58],[59],[60,65],[61,66],[70],[46],[47],[62,67],[63,68],[60,65],[61,66],[62,67],[63,68],[64,69],[60,65],[61,66],[62,67],[63,68],[64,69],[71],[72],[73],[73],[73],[73],[73],[77],[77],[77],[77],[77],[81],[44,45],[52,57],[82],[83],[84],[85],[86],[87],[88],[89],[10],[90,91,92,93,94],[92,93],[94],[90,91],[95,96,97,98,99],[97,98],[99],[95,96],[48,53],[49,54],[50,55],[51,56],[52,57],[5],[6],[7],[8],[9]]
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
theorem block84 : checkRange P V K states hints 84 12=true := by decide
theorem block96 : checkRange P V K states hints 96 4=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<100 := hi
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
 by_cases h84 : i<96
 · exact range_sound block84 i (by omega) h84 hi
 exact range_sound block96 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R212
