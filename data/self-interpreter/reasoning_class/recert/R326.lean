import Regular
namespace Certgen.R326
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 10,.lam 3,.app 4 7,.app 5 6,.var 0,.opaque,.app 8 9,.var 0,.opaque,.lam 11,.lam 12,.app 13 14,.var 0,.app 15 19,.app 16 17,.var 0,.lam 18,.var 0,.var 0,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨6,[9]⟩],[⟨9,[9]⟩],[⟨14,[2,1]⟩,⟨14,[4,0]⟩],[⟨17,[2,1]⟩,⟨17,[4,0]⟩],[⟨7,[9]⟩],[⟨14,[3,1]⟩],[⟨19,[2,1]⟩,⟨19,[4,0]⟩],[⟨19,[3,1]⟩],[⟨17,[3,1]⟩],[⟨10,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨10,[]⟩,1⟩],[⟨⟨14,[2,1]⟩,1⟩],[⟨⟨14,[3,1]⟩,9⟩],[⟨⟨14,[3,1]⟩,7⟩,⟨⟨14,[3,1]⟩,9⟩],[⟨⟨14,[4,0]⟩,1⟩],[⟨⟨19,[2,1]⟩,3⟩,⟨⟨19,[2,1]⟩,10⟩],[⟨⟨19,[3,1]⟩,7⟩,⟨⟨19,[3,1]⟩,9⟩],[⟨⟨19,[4,0]⟩,3⟩,⟨⟨19,[4,0]⟩,10⟩],[⟨⟨17,[2,1]⟩,7⟩],[⟨⟨17,[3,1]⟩,8⟩],[⟨⟨17,[4,0]⟩,9⟩],[⟨⟨7,[9]⟩,1⟩],[⟨⟨6,[9]⟩,13⟩],[⟨⟨9,[9]⟩,12⟩],[⟨⟨9,[9]⟩,6⟩],[⟨⟨9,[9]⟩,3⟩,⟨⟨9,[9]⟩,10⟩,⟨⟨9,[9]⟩,12⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[9]⟩,1⟩,⟨⟨4,[9]⟩,13⟩,⟨⟨5,[9]⟩,14⟩,⟨⟨7,[9]⟩,3⟩,⟨⟨7,[9]⟩,6⟩,⟨⟨7,[9]⟩,10⟩,⟨⟨7,[9]⟩,12⟩,⟨⟨8,[9]⟩,15⟩,⟨⟨8,[9]⟩,16⟩,⟨⟨8,[9]⟩,17⟩,⟨⟨10,[]⟩,14⟩,⟨⟨10,[]⟩,15⟩,⟨⟨10,[]⟩,16⟩,⟨⟨10,[]⟩,17⟩,⟨⟨11,[0]⟩,13⟩,⟨⟨11,[1]⟩,3⟩,⟨⟨11,[1]⟩,6⟩,⟨⟨11,[1]⟩,10⟩,⟨⟨11,[1]⟩,12⟩,⟨⟨12,[2,1]⟩,1⟩,⟨⟨12,[3,1]⟩,7⟩,⟨⟨12,[3,1]⟩,9⟩,⟨⟨12,[4,0]⟩,1⟩,⟨⟨13,[2,1]⟩,3⟩,⟨⟨13,[3,1]⟩,4⟩,⟨⟨13,[3,1]⟩,5⟩,⟨⟨13,[4,0]⟩,6⟩,⟨⟨14,[2,1]⟩,3⟩,⟨⟨14,[2,1]⟩,10⟩,⟨⟨14,[3,1]⟩,7⟩,⟨⟨14,[3,1]⟩,9⟩,⟨⟨14,[4,0]⟩,3⟩,⟨⟨14,[4,0]⟩,10⟩,⟨⟨15,[2,1]⟩,7⟩,⟨⟨15,[3,1]⟩,8⟩,⟨⟨15,[4,0]⟩,9⟩,⟨⟨16,[2,1]⟩,10⟩,⟨⟨16,[3,1]⟩,11⟩,⟨⟨16,[4,0]⟩,12⟩,⟨⟨17,[2,1]⟩,4⟩,⟨⟨17,[2,1]⟩,5⟩,⟨⟨17,[2,1]⟩,7⟩,⟨⟨17,[2,1]⟩,9⟩,⟨⟨17,[2,1]⟩,11⟩,⟨⟨17,[3,1]⟩,8⟩,⟨⟨17,[4,0]⟩,4⟩,⟨⟨17,[4,0]⟩,5⟩,⟨⟨17,[4,0]⟩,7⟩,⟨⟨17,[4,0]⟩,9⟩,⟨⟨17,[4,0]⟩,11⟩,⟨⟨18,[5,2,1]⟩,7⟩,⟨⟨18,[5,2,1]⟩,9⟩,⟨⟨18,[5,4,0]⟩,7⟩,⟨⟨18,[5,4,0]⟩,9⟩,⟨⟨18,[6,2,1]⟩,3⟩,⟨⟨18,[6,2,1]⟩,10⟩,⟨⟨18,[6,4,0]⟩,3⟩,⟨⟨18,[6,4,0]⟩,10⟩,⟨⟨18,[7,3,1]⟩,7⟩,⟨⟨18,[7,3,1]⟩,9⟩,⟨⟨18,[8,2,1]⟩,8⟩,⟨⟨18,[8,4,0]⟩,8⟩,⟨⟨19,[2,1]⟩,3⟩,⟨⟨19,[2,1]⟩,10⟩,⟨⟨19,[3,1]⟩,7⟩,⟨⟨19,[3,1]⟩,9⟩,⟨⟨19,[4,0]⟩,3⟩,⟨⟨19,[4,0]⟩,10⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[13],[12],[11],[12],[10],[14],[15],[16],[17],[21],[19],[18,20,21],[25],[22],[22],[23],[24],[26],[28],[27],[29],[30,34],[42,48],[43,49],[7],[36],[36],[37],[37],[38],[38],[39],[40],[41],[31,35],[46,52],[9],[54],[53,54],[57,58],[57,58],[63],[61,62],[56],[55,56],[59,60],[59,60],[64],[32],[33],[32],[33],[65,69],[66,70],[65,69],[66,70],[67],[68],[47],[47],[30,34],[31,35],[44,50],[45,51],[6],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 11=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<71 := hi
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
 exact range_sound block60 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R326
