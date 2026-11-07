import Regular
namespace Certgen.R089
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 19,.app 2 12,.app 3 11,.lam 4,.lam 5,.lam 6,.app 7 10,.app 8 9,.var 1,.var 1,.opaque,.opaque,.lam 13,.app 14 15,.var 0,.app 16 17,.var 0,.lam 18,.var 1,.lam 20,.app 21 26,.app 22 23,.var 0,.lam 24,.lam 25,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨15,[4]⟩],[⟨15,[0]⟩,⟨15,[1]⟩],[⟨17,[4]⟩],[⟨17,[0]⟩,⟨17,[1]⟩,⟨17,[4]⟩],[⟨9,[8,7,6]⟩],[⟨15,[2]⟩,⟨15,[3]⟩],[⟨11,[]⟩],[⟨12,[]⟩],[⟨19,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨19,[]⟩,0⟩],[⟨⟨12,[]⟩,1⟩],[⟨⟨15,[0]⟩,16⟩],[⟨⟨15,[1]⟩,16⟩],[⟨⟨15,[2]⟩,3⟩,⟨⟨15,[2]⟩,8⟩],[⟨⟨15,[3]⟩,4⟩,⟨⟨15,[3]⟩,9⟩,⟨⟨15,[3]⟩,10⟩,⟨⟨15,[3]⟩,11⟩],[⟨⟨15,[4]⟩,16⟩],[⟨⟨17,[0]⟩,4⟩,⟨⟨17,[0]⟩,10⟩],[⟨⟨17,[0]⟩,4⟩,⟨⟨17,[0]⟩,9⟩,⟨⟨17,[0]⟩,10⟩,⟨⟨17,[0]⟩,11⟩],[⟨⟨17,[1]⟩,4⟩,⟨⟨17,[1]⟩,10⟩],[⟨⟨17,[1]⟩,4⟩,⟨⟨17,[1]⟩,9⟩,⟨⟨17,[1]⟩,10⟩,⟨⟨17,[1]⟩,11⟩],[⟨⟨17,[4]⟩,3⟩],[⟨⟨17,[4]⟩,8⟩],[⟨⟨17,[4]⟩,4⟩,⟨⟨17,[4]⟩,9⟩,⟨⟨17,[4]⟩,10⟩,⟨⟨17,[4]⟩,11⟩],[⟨⟨11,[]⟩,2⟩],[⟨⟨10,[8,7,6]⟩,0⟩],[⟨⟨9,[8,7,6]⟩,16⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,15⟩,⟨⟨4,[6]⟩,2⟩,⟨⟨5,[7,6]⟩,1⟩,⟨⟨6,[8,7,6]⟩,0⟩,⟨⟨7,[8,7,6]⟩,16⟩,⟨⟨8,[8,7,6]⟩,17⟩,⟨⟨9,[8,7,6]⟩,3⟩,⟨⟨9,[8,7,6]⟩,4⟩,⟨⟨9,[8,7,6]⟩,7⟩,⟨⟨9,[8,7,6]⟩,8⟩,⟨⟨9,[8,7,6]⟩,9⟩,⟨⟨9,[8,7,6]⟩,10⟩,⟨⟨9,[8,7,6]⟩,11⟩,⟨⟨9,[8,7,6]⟩,12⟩,⟨⟨9,[8,7,6]⟩,13⟩,⟨⟨9,[8,7,6]⟩,14⟩,⟨⟨12,[]⟩,3⟩,⟨⟨12,[]⟩,4⟩,⟨⟨12,[]⟩,7⟩,⟨⟨12,[]⟩,8⟩,⟨⟨12,[]⟩,9⟩,⟨⟨12,[]⟩,10⟩,⟨⟨12,[]⟩,11⟩,⟨⟨12,[]⟩,12⟩,⟨⟨12,[]⟩,13⟩,⟨⟨12,[]⟩,14⟩,⟨⟨12,[]⟩,17⟩,⟨⟨13,[0]⟩,16⟩,⟨⟨13,[1]⟩,16⟩,⟨⟨13,[2]⟩,3⟩,⟨⟨13,[2]⟩,8⟩,⟨⟨13,[3]⟩,4⟩,⟨⟨13,[3]⟩,9⟩,⟨⟨13,[3]⟩,10⟩,⟨⟨13,[3]⟩,11⟩,⟨⟨13,[4]⟩,16⟩,⟨⟨14,[0]⟩,3⟩,⟨⟨14,[1]⟩,4⟩,⟨⟨14,[2]⟩,5⟩,⟨⟨14,[3]⟩,6⟩,⟨⟨14,[4]⟩,7⟩,⟨⟨15,[0]⟩,4⟩,⟨⟨15,[0]⟩,9⟩,⟨⟨15,[0]⟩,10⟩,⟨⟨15,[0]⟩,11⟩,⟨⟨15,[1]⟩,4⟩,⟨⟨15,[1]⟩,9⟩,⟨⟨15,[1]⟩,10⟩,⟨⟨15,[1]⟩,11⟩,⟨⟨15,[4]⟩,3⟩,⟨⟨15,[4]⟩,4⟩,⟨⟨15,[4]⟩,8⟩,⟨⟨15,[4]⟩,9⟩,⟨⟨15,[4]⟩,10⟩,⟨⟨15,[4]⟩,11⟩,⟨⟨16,[0]⟩,8⟩,⟨⟨16,[0]⟩,9⟩,⟨⟨16,[1]⟩,10⟩,⟨⟨16,[1]⟩,11⟩,⟨⟨16,[4]⟩,12⟩,⟨⟨16,[4]⟩,13⟩,⟨⟨16,[4]⟩,14⟩,⟨⟨17,[0]⟩,6⟩,⟨⟨17,[1]⟩,6⟩,⟨⟨17,[4]⟩,5⟩,⟨⟨17,[4]⟩,6⟩,⟨⟨18,[5,0]⟩,4⟩,⟨⟨18,[5,0]⟩,9⟩,⟨⟨18,[5,0]⟩,10⟩,⟨⟨18,[5,0]⟩,11⟩,⟨⟨18,[5,1]⟩,4⟩,⟨⟨18,[5,1]⟩,9⟩,⟨⟨18,[5,1]⟩,10⟩,⟨⟨18,[5,1]⟩,11⟩,⟨⟨18,[5,4]⟩,3⟩,⟨⟨18,[5,4]⟩,4⟩,⟨⟨18,[5,4]⟩,8⟩,⟨⟨18,[5,4]⟩,9⟩,⟨⟨18,[5,4]⟩,10⟩,⟨⟨18,[5,4]⟩,11⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[7],[8],[29],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[31],[31],[30],[34,36],[34,35,36,37],[34,36],[34,35,36,37],[32],[33],[34,35,36,37],[38],[39],[40],[41],[41],[42],[42],[42],[42],[43],[52],[44,48],[67],[65,66,68],[11],[58],[59],[58],[59],[60],[61],[60],[61],[62],[64],[63],[64],[64],[64],[54],[55],[46,50],[47,51],[16],[17],[18],[69,70,71,72],[73,74,75,76],[77,79],[78,80,81,82],[53],[55],[56],[57],[44,48],[45,49],[46,50],[47,51],[9],[10],[12],[13],[14],[15]]
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
end Certgen.R089
