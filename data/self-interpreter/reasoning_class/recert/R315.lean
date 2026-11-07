import Regular
namespace Certgen.R315
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 10,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.app 8 9,.var 0,.opaque,.lam 11,.lam 12,.app 13 14,.var 0,.lam 15,.app 16 17,.var 1,.app 18 19,.var 0,.lam 20,.var 1,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨6,[10]⟩],[⟨9,[10]⟩],[⟨14,[4,0]⟩],[⟨17,[5,4,0]⟩,⟨17,[6,4,0]⟩],[⟨7,[10]⟩],[⟨14,[2,1]⟩],[⟨17,[7,2,1]⟩,⟨17,[8,2,1]⟩],[⟨19,[5,4,0]⟩],[⟨19,[6,4,0]⟩],[⟨19,[7,2,1]⟩,⟨19,[8,2,1]⟩],[⟨10,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨10,[]⟩,1⟩],[⟨⟨14,[2,1]⟩,1⟩],[⟨⟨14,[3,1]⟩,1⟩],[⟨⟨14,[3,1]⟩,4⟩,⟨⟨14,[3,1]⟩,5⟩],[⟨⟨14,[4,0]⟩,1⟩],[⟨⟨17,[5,4,0]⟩,1⟩],[⟨⟨17,[6,4,0]⟩,4⟩,⟨⟨17,[6,4,0]⟩,5⟩],[⟨⟨17,[7,2,1]⟩,4⟩,⟨⟨17,[7,2,1]⟩,5⟩],[⟨⟨17,[8,2,1]⟩,4⟩,⟨⟨17,[8,2,1]⟩,5⟩],[⟨⟨19,[5,4,0]⟩,4⟩,⟨⟨19,[5,4,0]⟩,5⟩],[⟨⟨19,[6,4,0]⟩,4⟩,⟨⟨19,[6,4,0]⟩,5⟩],[⟨⟨19,[7,2,1]⟩,12⟩],[⟨⟨19,[8,2,1]⟩,12⟩],[⟨⟨7,[10]⟩,1⟩],[⟨⟨6,[10]⟩,15⟩],[⟨⟨9,[10]⟩,6⟩],[⟨⟨9,[10]⟩,7⟩],[⟨⟨9,[10]⟩,8⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[10]⟩,1⟩,⟨⟨4,[10]⟩,15⟩,⟨⟨5,[10]⟩,16⟩,⟨⟨7,[10]⟩,6⟩,⟨⟨7,[10]⟩,7⟩,⟨⟨7,[10]⟩,8⟩,⟨⟨8,[10]⟩,17⟩,⟨⟨8,[10]⟩,18⟩,⟨⟨8,[10]⟩,19⟩,⟨⟨10,[]⟩,16⟩,⟨⟨10,[]⟩,17⟩,⟨⟨10,[]⟩,18⟩,⟨⟨10,[]⟩,19⟩,⟨⟨11,[0]⟩,15⟩,⟨⟨11,[1]⟩,6⟩,⟨⟨11,[1]⟩,7⟩,⟨⟨11,[1]⟩,8⟩,⟨⟨12,[2,1]⟩,1⟩,⟨⟨12,[3,1]⟩,1⟩,⟨⟨12,[3,1]⟩,4⟩,⟨⟨12,[3,1]⟩,5⟩,⟨⟨12,[4,0]⟩,1⟩,⟨⟨13,[2,1]⟩,3⟩,⟨⟨13,[3,1]⟩,4⟩,⟨⟨13,[3,1]⟩,5⟩,⟨⟨13,[4,0]⟩,6⟩,⟨⟨14,[2,1]⟩,11⟩,⟨⟨14,[2,1]⟩,12⟩,⟨⟨14,[4,0]⟩,3⟩,⟨⟨14,[4,0]⟩,9⟩,⟨⟨14,[4,0]⟩,10⟩,⟨⟨15,[5,4,0]⟩,1⟩,⟨⟨15,[6,4,0]⟩,4⟩,⟨⟨15,[6,4,0]⟩,5⟩,⟨⟨15,[7,2,1]⟩,4⟩,⟨⟨15,[7,2,1]⟩,5⟩,⟨⟨15,[8,2,1]⟩,4⟩,⟨⟨15,[8,2,1]⟩,5⟩,⟨⟨16,[5,4,0]⟩,7⟩,⟨⟨16,[6,4,0]⟩,8⟩,⟨⟨16,[7,2,1]⟩,9⟩,⟨⟨16,[8,2,1]⟩,10⟩,⟨⟨17,[5,4,0]⟩,4⟩,⟨⟨17,[5,4,0]⟩,5⟩,⟨⟨17,[6,4,0]⟩,4⟩,⟨⟨17,[6,4,0]⟩,5⟩,⟨⟨17,[7,2,1]⟩,12⟩,⟨⟨17,[8,2,1]⟩,12⟩,⟨⟨18,[5,4,0]⟩,11⟩,⟨⟨18,[6,4,0]⟩,12⟩,⟨⟨18,[7,2,1]⟩,13⟩,⟨⟨18,[8,2,1]⟩,14⟩,⟨⟨19,[5,4,0]⟩,13⟩,⟨⟨19,[6,4,0]⟩,14⟩,⟨⟨20,[9,5,4,0]⟩,12⟩,⟨⟨20,[9,6,4,0]⟩,12⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[12],[9],[10],[11],[13],[14],[15],[16],[17],[18],[19],[24],[20],[21],[22,23],[25],[26],[27],[27],[28],[31],[45,47],[46,48],[6],[37,38],[39,40],[34],[35,36],[35,36],[41],[42],[42],[43],[43],[44],[44],[7],[8],[32],[33],[51],[51],[52],[52],[53],[54],[29],[49,50],[55],[56],[57],[58],[30],[49,50]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<59 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 exact range_sound block48 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R315
