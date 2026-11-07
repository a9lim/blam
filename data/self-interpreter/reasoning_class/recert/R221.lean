import Regular
namespace Certgen.R221
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 20,.app 10 14,.lam 11,.app 12 13,.var 0,.var 0,.app 15 16,.var 0,.app 17 18,.var 0,.lam 19,.var 1,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨14,[7]⟩],[⟨14,[8]⟩],[⟨14,[9]⟩],[⟨14,[10]⟩],[⟨16,[9]⟩],[⟨7,[]⟩],[⟨16,[10]⟩],[⟨13,[2,9]⟩,⟨13,[3,10]⟩],[⟨16,[7]⟩],[⟨18,[7]⟩],[⟨5,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨13,[0,7]⟩,19⟩],[⟨⟨13,[1,8]⟩,20⟩],[⟨⟨13,[2,9]⟩,21⟩],[⟨⟨13,[3,10]⟩,22⟩],[⟨⟨16,[7]⟩,3⟩],[⟨⟨16,[8]⟩,4⟩],[⟨⟨16,[9]⟩,7⟩],[⟨⟨16,[9]⟩,17⟩],[⟨⟨16,[9]⟩,5⟩],[⟨⟨16,[9]⟩,5⟩,⟨⟨16,[9]⟩,7⟩,⟨⟨16,[9]⟩,17⟩],[⟨⟨16,[10]⟩,7⟩],[⟨⟨16,[10]⟩,17⟩],[⟨⟨16,[10]⟩,6⟩],[⟨⟨16,[10]⟩,5⟩,⟨⟨16,[10]⟩,7⟩,⟨⟨16,[10]⟩,17⟩],[⟨⟨18,[7]⟩,8⟩],[⟨⟨5,[5]⟩,1⟩],[⟨⟨20,[7]⟩,21⟩,⟨⟨20,[7]⟩,22⟩],[⟨⟨20,[8]⟩,3⟩],[⟨⟨20,[9]⟩,8⟩],[⟨⟨20,[10]⟩,1⟩],[⟨⟨14,[7]⟩,19⟩],[⟨⟨14,[8]⟩,20⟩],[⟨⟨14,[9]⟩,21⟩],[⟨⟨14,[10]⟩,22⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[5]⟩,1⟩,⟨⟨4,[5]⟩,18⟩,⟨⟨5,[5]⟩,13⟩,⟨⟨5,[5]⟩,14⟩,⟨⟨5,[5]⟩,15⟩,⟨⟨5,[5]⟩,16⟩,⟨⟨6,[6,5]⟩,5⟩,⟨⟨6,[6,5]⟩,6⟩,⟨⟨6,[6,5]⟩,7⟩,⟨⟨6,[6,5]⟩,17⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,17⟩,⟨⟨7,[]⟩,18⟩,⟨⟨8,[7]⟩,21⟩,⟨⟨8,[7]⟩,22⟩,⟨⟨8,[8]⟩,3⟩,⟨⟨8,[9]⟩,8⟩,⟨⟨8,[10]⟩,1⟩,⟨⟨9,[7]⟩,19⟩,⟨⟨9,[8]⟩,20⟩,⟨⟨9,[9]⟩,21⟩,⟨⟨9,[10]⟩,22⟩,⟨⟨10,[7]⟩,23⟩,⟨⟨10,[8]⟩,24⟩,⟨⟨10,[9]⟩,25⟩,⟨⟨10,[10]⟩,26⟩,⟨⟨11,[0,7]⟩,19⟩,⟨⟨11,[1,8]⟩,20⟩,⟨⟨11,[2,9]⟩,21⟩,⟨⟨11,[3,10]⟩,22⟩,⟨⟨12,[0,7]⟩,3⟩,⟨⟨12,[1,8]⟩,4⟩,⟨⟨12,[2,9]⟩,5⟩,⟨⟨12,[3,10]⟩,6⟩,⟨⟨13,[2,9]⟩,5⟩,⟨⟨13,[2,9]⟩,7⟩,⟨⟨13,[2,9]⟩,17⟩,⟨⟨13,[3,10]⟩,5⟩,⟨⟨13,[3,10]⟩,7⟩,⟨⟨13,[3,10]⟩,17⟩,⟨⟨14,[7]⟩,3⟩,⟨⟨14,[8]⟩,4⟩,⟨⟨14,[9]⟩,5⟩,⟨⟨14,[9]⟩,7⟩,⟨⟨14,[9]⟩,17⟩,⟨⟨14,[10]⟩,5⟩,⟨⟨14,[10]⟩,6⟩,⟨⟨14,[10]⟩,7⟩,⟨⟨14,[10]⟩,17⟩,⟨⟨15,[7]⟩,7⟩,⟨⟨15,[8]⟩,8⟩,⟨⟨15,[9]⟩,9⟩,⟨⟨15,[9]⟩,10⟩,⟨⟨15,[9]⟩,11⟩,⟨⟨15,[9]⟩,12⟩,⟨⟨15,[10]⟩,13⟩,⟨⟨15,[10]⟩,14⟩,⟨⟨15,[10]⟩,15⟩,⟨⟨15,[10]⟩,16⟩,⟨⟨16,[7]⟩,8⟩,⟨⟨17,[7]⟩,17⟩,⟨⟨18,[7]⟩,9⟩,⟨⟨18,[7]⟩,10⟩,⟨⟨18,[7]⟩,11⟩,⟨⟨18,[7]⟩,12⟩,⟨⟨19,[4,7]⟩,5⟩,⟨⟨19,[4,7]⟩,7⟩,⟨⟨19,[4,7]⟩,17⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[17],[11],[12],[10],[9,11,12],[13],[14],[15],[16],[18],[19],[20],[21],[22],[23],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[45],[46],[47],[51],[47],[48],[49],[50],[52],[53],[54],[55],[58],[56],[57],[63],[62],[60],[61],[40,43],[64],[66],[67],[68],[69],[5],[6],[7],[8],[65],[41,44],[71],[72],[70],[70,71,72],[39,42],[40,43],[41,44]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<73 := hi
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
end Certgen.R221
