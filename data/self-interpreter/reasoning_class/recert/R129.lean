import Regular
namespace Certgen.R129
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 10,.lam 3,.app 4 5,.var 0,.app 6 9,.app 7 8,.var 0,.var 0,.opaque,.lam 11,.app 12 16,.lam 13,.app 14 15,.var 0,.var 0,.app 17 18,.var 0,.lam 19,.var 1,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[6,1]⟩,⟨15,[6,2]⟩],[⟨18,[4]⟩],[⟨18,[0]⟩],[⟨5,[10]⟩],[⟨8,[10]⟩],[⟨16,[0]⟩],[⟨16,[1]⟩,⟨16,[2]⟩],[⟨16,[3]⟩],[⟨16,[4]⟩],[⟨18,[1]⟩,⟨18,[2]⟩],[⟨10,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨10,[]⟩,1⟩],[⟨⟨16,[0]⟩,8⟩,⟨⟨16,[0]⟩,12⟩],[⟨⟨16,[1]⟩,12⟩],[⟨⟨16,[2]⟩,8⟩],[⟨⟨16,[3]⟩,1⟩],[⟨⟨16,[4]⟩,23⟩],[⟨⟨15,[5,0]⟩,8⟩,⟨⟨15,[5,0]⟩,12⟩],[⟨⟨15,[6,1]⟩,12⟩],[⟨⟨15,[6,2]⟩,8⟩],[⟨⟨15,[7,3]⟩,1⟩],[⟨⟨15,[8,4]⟩,23⟩],[⟨⟨18,[0]⟩,8⟩],[⟨⟨18,[1]⟩,13⟩],[⟨⟨18,[1]⟩,9⟩,⟨⟨18,[1]⟩,10⟩],[⟨⟨18,[1]⟩,9⟩,⟨⟨18,[1]⟩,10⟩,⟨⟨18,[1]⟩,13⟩],[⟨⟨18,[2]⟩,13⟩],[⟨⟨18,[2]⟩,9⟩,⟨⟨18,[2]⟩,10⟩],[⟨⟨18,[2]⟩,9⟩,⟨⟨18,[2]⟩,10⟩,⟨⟨18,[2]⟩,13⟩],[⟨⟨18,[3]⟩,11⟩],[⟨⟨18,[4]⟩,12⟩],[⟨⟨5,[10]⟩,1⟩],[⟨⟨9,[10]⟩,20⟩],[⟨⟨8,[10]⟩,23⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[10]⟩,1⟩,⟨⟨4,[10]⟩,22⟩,⟨⟨5,[10]⟩,20⟩,⟨⟨6,[10]⟩,23⟩,⟨⟨7,[10]⟩,24⟩,⟨⟨8,[10]⟩,9⟩,⟨⟨8,[10]⟩,10⟩,⟨⟨8,[10]⟩,13⟩,⟨⟨8,[10]⟩,21⟩,⟨⟨10,[]⟩,9⟩,⟨⟨10,[]⟩,10⟩,⟨⟨10,[]⟩,13⟩,⟨⟨10,[]⟩,21⟩,⟨⟨10,[]⟩,22⟩,⟨⟨10,[]⟩,24⟩,⟨⟨11,[0]⟩,8⟩,⟨⟨11,[0]⟩,12⟩,⟨⟨11,[1]⟩,12⟩,⟨⟨11,[2]⟩,8⟩,⟨⟨11,[3]⟩,1⟩,⟨⟨11,[4]⟩,23⟩,⟨⟨12,[0]⟩,3⟩,⟨⟨12,[1]⟩,4⟩,⟨⟨12,[2]⟩,5⟩,⟨⟨12,[3]⟩,6⟩,⟨⟨12,[4]⟩,7⟩,⟨⟨13,[5,0]⟩,8⟩,⟨⟨13,[5,0]⟩,12⟩,⟨⟨13,[6,1]⟩,12⟩,⟨⟨13,[6,2]⟩,8⟩,⟨⟨13,[7,3]⟩,1⟩,⟨⟨13,[8,4]⟩,23⟩,⟨⟨14,[5,0]⟩,8⟩,⟨⟨14,[6,1]⟩,9⟩,⟨⟨14,[6,2]⟩,10⟩,⟨⟨14,[7,3]⟩,11⟩,⟨⟨14,[8,4]⟩,12⟩,⟨⟨15,[6,1]⟩,9⟩,⟨⟨15,[6,1]⟩,10⟩,⟨⟨15,[6,1]⟩,13⟩,⟨⟨15,[6,2]⟩,9⟩,⟨⟨15,[6,2]⟩,10⟩,⟨⟨15,[6,2]⟩,13⟩,⟨⟨16,[0]⟩,8⟩,⟨⟨16,[1]⟩,9⟩,⟨⟨16,[1]⟩,10⟩,⟨⟨16,[1]⟩,13⟩,⟨⟨16,[2]⟩,9⟩,⟨⟨16,[2]⟩,10⟩,⟨⟨16,[2]⟩,13⟩,⟨⟨16,[3]⟩,11⟩,⟨⟨16,[4]⟩,12⟩,⟨⟨17,[0]⟩,13⟩,⟨⟨17,[1]⟩,14⟩,⟨⟨17,[1]⟩,15⟩,⟨⟨17,[1]⟩,16⟩,⟨⟨17,[2]⟩,17⟩,⟨⟨17,[2]⟩,18⟩,⟨⟨17,[2]⟩,19⟩,⟨⟨17,[3]⟩,20⟩,⟨⟨17,[4]⟩,21⟩,⟨⟨18,[0]⟩,17⟩,⟨⟨18,[0]⟩,18⟩,⟨⟨18,[0]⟩,19⟩,⟨⟨18,[4]⟩,14⟩,⟨⟨18,[4]⟩,15⟩,⟨⟨18,[4]⟩,16⟩,⟨⟨19,[9,0]⟩,9⟩,⟨⟨19,[9,0]⟩,10⟩,⟨⟨19,[9,0]⟩,13⟩,⟨⟨19,[9,4]⟩,9⟩,⟨⟨19,[9,4]⟩,10⟩,⟨⟨19,[9,4]⟩,13⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[16],[6],[7],[17],[12],[13],[14],[15],[19],[18],[21],[20],[22],[23],[24],[24],[25],[26],[27],[28],[29,30],[31],[32],[33],[34],[35],[35],[36],[37],[38],[39],[46],[47,50],[48,51],[53],[54],[47,50],[48,51],[49,52],[47,50],[48,51],[49,52],[55],[57],[57],[56],[60],[60],[59],[62],[63],[42,45],[67],[68],[69],[64],[65],[66],[5],[11],[72],[70,71],[70,71,72],[75],[73,74],[73,74,75],[40,43],[41,44],[42,45],[8],[9],[10]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 4=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<76 := hi
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
end Certgen.R129
