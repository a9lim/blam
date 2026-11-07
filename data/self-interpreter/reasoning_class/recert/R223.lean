import Regular
namespace Certgen.R223
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 20,.app 10 16,.lam 11,.app 12 13,.var 0,.app 14 15,.var 0,.var 0,.app 17 18,.var 0,.lam 19,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[7]⟩],[⟨16,[8]⟩],[⟨16,[9]⟩],[⟨16,[10]⟩],[⟨18,[9]⟩],[⟨7,[]⟩],[⟨18,[10]⟩],[⟨13,[2,9]⟩,⟨13,[3,10]⟩],[⟨15,[2,9]⟩,⟨15,[3,10]⟩],[⟨18,[8]⟩],[⟨5,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨13,[0,7]⟩,20⟩],[⟨⟨13,[1,8]⟩,21⟩],[⟨⟨13,[2,9]⟩,22⟩],[⟨⟨13,[3,10]⟩,23⟩],[⟨⟨15,[2,9]⟩,9⟩],[⟨⟨15,[3,10]⟩,9⟩],[⟨⟨18,[7]⟩,3⟩],[⟨⟨18,[8]⟩,4⟩],[⟨⟨18,[9]⟩,7⟩],[⟨⟨18,[9]⟩,10⟩],[⟨⟨18,[9]⟩,5⟩],[⟨⟨18,[9]⟩,5⟩,⟨⟨18,[9]⟩,7⟩,⟨⟨18,[9]⟩,10⟩],[⟨⟨18,[10]⟩,8⟩],[⟨⟨18,[10]⟩,10⟩],[⟨⟨18,[10]⟩,6⟩],[⟨⟨18,[10]⟩,5⟩,⟨⟨18,[10]⟩,7⟩,⟨⟨18,[10]⟩,10⟩],[⟨⟨5,[5]⟩,1⟩],[⟨⟨20,[7]⟩,22⟩,⟨⟨20,[7]⟩,23⟩],[⟨⟨20,[8]⟩,9⟩],[⟨⟨20,[9]⟩,4⟩],[⟨⟨20,[10]⟩,1⟩],[⟨⟨16,[7]⟩,20⟩],[⟨⟨16,[8]⟩,21⟩],[⟨⟨16,[9]⟩,22⟩],[⟨⟨16,[10]⟩,23⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,19⟩,⟨⟨5,[5]⟩,15⟩,⟨⟨5,[5]⟩,16⟩,⟨⟨5,[5]⟩,17⟩,⟨⟨5,[5]⟩,18⟩,⟨⟨6,[6,5]⟩,5⟩,⟨⟨6,[6,5]⟩,6⟩,⟨⟨6,[6,5]⟩,7⟩,⟨⟨6,[6,5]⟩,8⟩,⟨⟨6,[6,5]⟩,10⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,10⟩,⟨⟨7,[]⟩,19⟩,⟨⟨8,[7]⟩,22⟩,⟨⟨8,[7]⟩,23⟩,⟨⟨8,[8]⟩,9⟩,⟨⟨8,[9]⟩,4⟩,⟨⟨8,[10]⟩,1⟩,⟨⟨9,[7]⟩,20⟩,⟨⟨9,[8]⟩,21⟩,⟨⟨9,[9]⟩,22⟩,⟨⟨9,[10]⟩,23⟩,⟨⟨10,[7]⟩,24⟩,⟨⟨10,[8]⟩,25⟩,⟨⟨10,[9]⟩,26⟩,⟨⟨10,[10]⟩,27⟩,⟨⟨11,[0,7]⟩,20⟩,⟨⟨11,[1,8]⟩,21⟩,⟨⟨11,[2,9]⟩,22⟩,⟨⟨11,[3,10]⟩,23⟩,⟨⟨12,[0,7]⟩,3⟩,⟨⟨12,[1,8]⟩,4⟩,⟨⟨12,[2,9]⟩,5⟩,⟨⟨12,[3,10]⟩,6⟩,⟨⟨13,[2,9]⟩,9⟩,⟨⟨13,[3,10]⟩,9⟩,⟨⟨14,[2,9]⟩,7⟩,⟨⟨14,[3,10]⟩,8⟩,⟨⟨15,[2,9]⟩,5⟩,⟨⟨15,[2,9]⟩,7⟩,⟨⟨15,[2,9]⟩,10⟩,⟨⟨15,[3,10]⟩,5⟩,⟨⟨15,[3,10]⟩,7⟩,⟨⟨15,[3,10]⟩,10⟩,⟨⟨16,[7]⟩,3⟩,⟨⟨16,[8]⟩,4⟩,⟨⟨16,[9]⟩,5⟩,⟨⟨16,[9]⟩,7⟩,⟨⟨16,[9]⟩,10⟩,⟨⟨16,[10]⟩,5⟩,⟨⟨16,[10]⟩,6⟩,⟨⟨16,[10]⟩,7⟩,⟨⟨16,[10]⟩,8⟩,⟨⟨16,[10]⟩,10⟩,⟨⟨17,[7]⟩,9⟩,⟨⟨17,[8]⟩,10⟩,⟨⟨17,[9]⟩,11⟩,⟨⟨17,[9]⟩,12⟩,⟨⟨17,[9]⟩,13⟩,⟨⟨17,[9]⟩,14⟩,⟨⟨17,[10]⟩,15⟩,⟨⟨17,[10]⟩,16⟩,⟨⟨17,[10]⟩,17⟩,⟨⟨17,[10]⟩,18⟩,⟨⟨18,[8]⟩,11⟩,⟨⟨18,[8]⟩,12⟩,⟨⟨18,[8]⟩,13⟩,⟨⟨18,[8]⟩,14⟩,⟨⟨19,[4,8]⟩,5⟩,⟨⟨19,[4,8]⟩,7⟩,⟨⟨19,[4,8]⟩,10⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[19],[12],[13],[10],[9,11,13],[14],[15],[16],[17],[18],[20],[21],[22],[22],[23],[24],[25],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[39],[40],[51],[52],[53],[57],[43],[44],[54],[59],[53],[54],[55],[56],[58],[60],[61],[62],[65],[63],[64],[70],[69],[70],[67],[68],[41,42],[47,50],[71],[72],[73],[74],[5],[6],[7],[8],[76],[77],[75],[75,76,77],[45,48],[46,49],[47,50]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 6=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<78 := hi
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
end Certgen.R223
