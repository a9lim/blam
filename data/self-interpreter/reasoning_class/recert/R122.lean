import Regular
namespace Certgen.R122
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 7,.lam 3,.app 4 5,.var 0,.lam 6,.var 1,.lam 8,.app 9 18,.lam 10,.app 11 12,.var 0,.app 13 14,.var 0,.app 15 16,.var 0,.lam 17,.var 1,.app 19 20,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨20,[5]⟩],[⟨7,[]⟩],[⟨20,[6]⟩],[⟨12,[9,5]⟩,⟨12,[10,6]⟩],[⟨14,[9,5]⟩,⟨14,[10,6]⟩],[⟨16,[9,5]⟩,⟨16,[10,6]⟩],[⟨5,[1]⟩],[⟨18,[3]⟩],[⟨18,[4]⟩],[⟨18,[5]⟩],[⟨18,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨7,[]⟩,1⟩],[⟨⟨12,[7,3]⟩,1⟩,⟨⟨12,[7,3]⟩,12⟩],[⟨⟨12,[8,4]⟩,11⟩],[⟨⟨12,[9,5]⟩,12⟩],[⟨⟨12,[10,6]⟩,1⟩],[⟨⟨14,[9,5]⟩,11⟩],[⟨⟨14,[10,6]⟩,11⟩],[⟨⟨16,[9,5]⟩,12⟩],[⟨⟨16,[10,6]⟩,12⟩],[⟨⟨20,[3]⟩,3⟩],[⟨⟨20,[4]⟩,4⟩],[⟨⟨20,[5]⟩,5⟩,⟨⟨20,[5]⟩,7⟩,⟨⟨20,[5]⟩,9⟩],[⟨⟨20,[5]⟩,7⟩],[⟨⟨20,[5]⟩,9⟩],[⟨⟨20,[5]⟩,5⟩],[⟨⟨20,[6]⟩,5⟩,⟨⟨20,[6]⟩,7⟩,⟨⟨20,[6]⟩,9⟩],[⟨⟨20,[6]⟩,8⟩],[⟨⟨20,[6]⟩,10⟩],[⟨⟨20,[6]⟩,6⟩],[⟨⟨5,[1]⟩,1⟩],[⟨⟨18,[3]⟩,1⟩,⟨⟨18,[3]⟩,12⟩],[⟨⟨18,[4]⟩,11⟩],[⟨⟨18,[5]⟩,12⟩],[⟨⟨18,[6]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[1]⟩,1⟩,⟨⟨4,[1]⟩,21⟩,⟨⟨5,[1]⟩,17⟩,⟨⟨5,[1]⟩,18⟩,⟨⟨5,[1]⟩,19⟩,⟨⟨5,[1]⟩,20⟩,⟨⟨6,[2,1]⟩,5⟩,⟨⟨6,[2,1]⟩,6⟩,⟨⟨6,[2,1]⟩,7⟩,⟨⟨6,[2,1]⟩,8⟩,⟨⟨6,[2,1]⟩,9⟩,⟨⟨6,[2,1]⟩,10⟩,⟨⟨7,[]⟩,5⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,7⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,9⟩,⟨⟨7,[]⟩,10⟩,⟨⟨7,[]⟩,21⟩,⟨⟨8,[3]⟩,1⟩,⟨⟨8,[3]⟩,12⟩,⟨⟨8,[4]⟩,11⟩,⟨⟨8,[5]⟩,12⟩,⟨⟨8,[6]⟩,1⟩,⟨⟨9,[3]⟩,22⟩,⟨⟨9,[4]⟩,23⟩,⟨⟨9,[5]⟩,24⟩,⟨⟨9,[6]⟩,25⟩,⟨⟨10,[7,3]⟩,1⟩,⟨⟨10,[7,3]⟩,12⟩,⟨⟨10,[8,4]⟩,11⟩,⟨⟨10,[9,5]⟩,12⟩,⟨⟨10,[10,6]⟩,1⟩,⟨⟨11,[7,3]⟩,3⟩,⟨⟨11,[8,4]⟩,4⟩,⟨⟨11,[9,5]⟩,5⟩,⟨⟨11,[10,6]⟩,6⟩,⟨⟨12,[9,5]⟩,11⟩,⟨⟨12,[10,6]⟩,11⟩,⟨⟨13,[9,5]⟩,7⟩,⟨⟨13,[10,6]⟩,8⟩,⟨⟨14,[9,5]⟩,12⟩,⟨⟨14,[10,6]⟩,12⟩,⟨⟨15,[9,5]⟩,9⟩,⟨⟨15,[10,6]⟩,10⟩,⟨⟨16,[9,5]⟩,13⟩,⟨⟨16,[9,5]⟩,14⟩,⟨⟨16,[9,5]⟩,15⟩,⟨⟨16,[9,5]⟩,16⟩,⟨⟨16,[10,6]⟩,13⟩,⟨⟨16,[10,6]⟩,14⟩,⟨⟨16,[10,6]⟩,15⟩,⟨⟨16,[10,6]⟩,16⟩,⟨⟨17,[0,9,5]⟩,5⟩,⟨⟨17,[0,9,5]⟩,7⟩,⟨⟨17,[0,9,5]⟩,9⟩,⟨⟨17,[0,10,6]⟩,5⟩,⟨⟨17,[0,10,6]⟩,7⟩,⟨⟨17,[0,10,6]⟩,9⟩,⟨⟨18,[3]⟩,3⟩,⟨⟨18,[4]⟩,4⟩,⟨⟨18,[5]⟩,5⟩,⟨⟨18,[5]⟩,7⟩,⟨⟨18,[5]⟩,9⟩,⟨⟨18,[6]⟩,5⟩,⟨⟨18,[6]⟩,6⟩,⟨⟨18,[6]⟩,7⟩,⟨⟨18,[6]⟩,8⟩,⟨⟨18,[6]⟩,9⟩,⟨⟨18,[6]⟩,10⟩,⟨⟨19,[3]⟩,11⟩,⟨⟨19,[4]⟩,12⟩,⟨⟨19,[5]⟩,13⟩,⟨⟨19,[5]⟩,14⟩,⟨⟨19,[5]⟩,15⟩,⟨⟨19,[5]⟩,16⟩,⟨⟨19,[6]⟩,17⟩,⟨⟨19,[6]⟩,18⟩,⟨⟨19,[6]⟩,19⟩,⟨⟨19,[6]⟩,20⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[21],[9,11,13],[12],[14],[10],[15],[16],[17],[18],[19],[20],[23],[22],[24],[24],[25],[25],[26],[27],[27],[28],[29],[30],[31,32],[33],[34],[35],[36],[36],[37],[38],[39],[62],[63],[64],[68],[42],[43],[65],[70],[46],[47],[66],[72],[56,57,58],[57],[58],[56],[59,60,61],[60],[61],[59],[64],[65],[66],[67],[69],[71],[73],[74],[75],[75],[75],[79],[82],[79],[80],[79],[81],[40,41],[44,45],[48,52],[49,53],[50,54],[51,55],[5],[6],[7],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<83 := hi
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
end Certgen.R122
