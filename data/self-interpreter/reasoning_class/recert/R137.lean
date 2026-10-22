import Regular
namespace Certgen.R137
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 6,.lam 3,.app 4 5,.var 0,.var 0,.lam 7,.app 8 12,.lam 9,.app 10 11,.var 0,.var 0,.app 13 18,.app 14 15,.var 0,.lam 16,.lam 17,.var 2,.opaque,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[3]⟩,⟨15,[4]⟩],[⟨18,[3]⟩,⟨18,[4]⟩],[⟨6,[]⟩],[⟨15,[6]⟩],[⟨15,[5]⟩],[⟨5,[2]⟩],[⟨11,[7,3]⟩,⟨11,[7,4]⟩],[⟨12,[3]⟩,⟨12,[4]⟩],[⟨12,[5]⟩],[⟨12,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨6,[]⟩,1⟩],[⟨⟨18,[3]⟩,18⟩,⟨⟨18,[3]⟩,24⟩,⟨⟨18,[3]⟩,25⟩],[⟨⟨18,[3]⟩,24⟩,⟨⟨18,[3]⟩,25⟩],[⟨⟨18,[3]⟩,18⟩],[⟨⟨18,[4]⟩,18⟩,⟨⟨18,[4]⟩,24⟩,⟨⟨18,[4]⟩,25⟩],[⟨⟨18,[4]⟩,24⟩,⟨⟨18,[4]⟩,25⟩],[⟨⟨18,[4]⟩,18⟩],[⟨⟨18,[5]⟩,26⟩],[⟨⟨18,[6]⟩,27⟩],[⟨⟨15,[3]⟩,3⟩],[⟨⟨15,[3]⟩,4⟩],[⟨⟨15,[3]⟩,5⟩],[⟨⟨15,[4]⟩,6⟩],[⟨⟨15,[4]⟩,7⟩],[⟨⟨15,[4]⟩,8⟩],[⟨⟨15,[5]⟩,9⟩],[⟨⟨15,[6]⟩,10⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨12,[3]⟩,10⟩],[⟨⟨12,[4]⟩,9⟩],[⟨⟨12,[5]⟩,1⟩],[⟨⟨12,[6]⟩,9⟩,⟨⟨12,[6]⟩,10⟩],[⟨⟨11,[7,3]⟩,10⟩],[⟨⟨11,[7,4]⟩,9⟩],[⟨⟨11,[8,5]⟩,1⟩],[⟨⟨11,[9,6]⟩,9⟩,⟨⟨11,[9,6]⟩,10⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,19⟩,⟨⟨5,[2]⟩,17⟩,⟨⟨5,[2]⟩,18⟩,⟨⟨5,[2]⟩,24⟩,⟨⟨5,[2]⟩,25⟩,⟨⟨6,[]⟩,17⟩,⟨⟨6,[]⟩,18⟩,⟨⟨6,[]⟩,19⟩,⟨⟨6,[]⟩,24⟩,⟨⟨6,[]⟩,25⟩,⟨⟨7,[3]⟩,10⟩,⟨⟨7,[4]⟩,9⟩,⟨⟨7,[5]⟩,1⟩,⟨⟨7,[6]⟩,9⟩,⟨⟨7,[6]⟩,10⟩,⟨⟨8,[3]⟩,20⟩,⟨⟨8,[4]⟩,21⟩,⟨⟨8,[5]⟩,22⟩,⟨⟨8,[6]⟩,23⟩,⟨⟨9,[7,3]⟩,10⟩,⟨⟨9,[7,4]⟩,9⟩,⟨⟨9,[8,5]⟩,1⟩,⟨⟨9,[9,6]⟩,9⟩,⟨⟨9,[9,6]⟩,10⟩,⟨⟨10,[7,3]⟩,24⟩,⟨⟨10,[7,4]⟩,25⟩,⟨⟨10,[8,5]⟩,26⟩,⟨⟨10,[9,6]⟩,27⟩,⟨⟨11,[7,3]⟩,18⟩,⟨⟨11,[7,3]⟩,24⟩,⟨⟨11,[7,3]⟩,25⟩,⟨⟨11,[7,4]⟩,18⟩,⟨⟨11,[7,4]⟩,24⟩,⟨⟨11,[7,4]⟩,25⟩,⟨⟨12,[3]⟩,18⟩,⟨⟨12,[3]⟩,24⟩,⟨⟨12,[3]⟩,25⟩,⟨⟨12,[4]⟩,18⟩,⟨⟨12,[4]⟩,24⟩,⟨⟨12,[4]⟩,25⟩,⟨⟨12,[5]⟩,26⟩,⟨⟨12,[6]⟩,27⟩,⟨⟨13,[3]⟩,3⟩,⟨⟨13,[3]⟩,4⟩,⟨⟨13,[3]⟩,5⟩,⟨⟨13,[4]⟩,6⟩,⟨⟨13,[4]⟩,7⟩,⟨⟨13,[4]⟩,8⟩,⟨⟨13,[5]⟩,9⟩,⟨⟨13,[6]⟩,10⟩,⟨⟨14,[3]⟩,11⟩,⟨⟨14,[3]⟩,12⟩,⟨⟨14,[3]⟩,13⟩,⟨⟨14,[4]⟩,14⟩,⟨⟨14,[4]⟩,15⟩,⟨⟨14,[4]⟩,16⟩,⟨⟨14,[5]⟩,17⟩,⟨⟨14,[6]⟩,18⟩,⟨⟨15,[5]⟩,14⟩,⟨⟨15,[5]⟩,15⟩,⟨⟨15,[5]⟩,16⟩,⟨⟨15,[6]⟩,11⟩,⟨⟨15,[6]⟩,12⟩,⟨⟨15,[6]⟩,13⟩,⟨⟨16,[0,5]⟩,6⟩,⟨⟨16,[0,5]⟩,7⟩,⟨⟨16,[0,5]⟩,8⟩,⟨⟨16,[0,6]⟩,3⟩,⟨⟨16,[0,6]⟩,4⟩,⟨⟨16,[0,6]⟩,5⟩,⟨⟨17,[1,0,5]⟩,18⟩,⟨⟨17,[1,0,5]⟩,24⟩,⟨⟨17,[1,0,5]⟩,25⟩,⟨⟨17,[1,0,6]⟩,18⟩,⟨⟨17,[1,0,6]⟩,24⟩,⟨⟨17,[1,0,6]⟩,25⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[9],[10],[12],[13],[15],[14],[16],[18],[17],[19],[20],[21],[22],[22],[23],[24],[25],[26,27],[28],[29],[30],[31],[31],[39,42],[40,43],[44],[45],[38,41],[39,42],[40,43],[38,41],[39,42],[40,43],[46],[46],[46],[49],[49],[49],[52],[53],[54],[55],[56],[57],[58],[59],[60],[61],[65],[66],[67],[62],[63],[64],[5],[32,35],[68],[69],[70],[71],[72],[73],[74,75,76],[75,76],[74],[77,78,79],[78,79],[77],[6],[7],[8],[32,35],[33,36],[34,37]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 8=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<80 := hi
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
end Certgen.R137
