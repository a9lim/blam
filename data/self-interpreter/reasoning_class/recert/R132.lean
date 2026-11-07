import Regular
namespace Certgen.R132
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 11,.lam 3,.app 4 5,.var 0,.app 6 10,.app 7 8,.var 0,.lam 9,.var 1,.opaque,.lam 12,.app 13 17,.lam 14,.app 15 16,.var 0,.var 0,.app 18 19,.var 0,.lam 20,.var 1,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[5,1]⟩,⟨16,[7,3]⟩],[⟨19,[0]⟩],[⟨5,[9]⟩],[⟨8,[9]⟩],[⟨17,[0]⟩],[⟨17,[1]⟩],[⟨17,[2]⟩],[⟨17,[3]⟩],[⟨19,[1]⟩],[⟨11,[]⟩],[⟨19,[3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨11,[]⟩,1⟩],[⟨⟨17,[0]⟩,7⟩,⟨⟨17,[0]⟩,20⟩],[⟨⟨17,[1]⟩,7⟩],[⟨⟨17,[2]⟩,1⟩],[⟨⟨17,[3]⟩,20⟩],[⟨⟨16,[4,0]⟩,7⟩,⟨⟨16,[4,0]⟩,20⟩],[⟨⟨16,[5,1]⟩,7⟩],[⟨⟨16,[6,2]⟩,1⟩],[⟨⟨16,[7,3]⟩,20⟩],[⟨⟨19,[0]⟩,7⟩],[⟨⟨19,[1]⟩,11⟩],[⟨⟨19,[1]⟩,8⟩],[⟨⟨19,[1]⟩,8⟩,⟨⟨19,[1]⟩,11⟩],[⟨⟨19,[2]⟩,9⟩],[⟨⟨19,[3]⟩,11⟩],[⟨⟨19,[3]⟩,10⟩],[⟨⟨19,[3]⟩,8⟩,⟨⟨19,[3]⟩,11⟩],[⟨⟨5,[9]⟩,1⟩],[⟨⟨10,[9]⟩,15⟩],[⟨⟨8,[9]⟩,20⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[9]⟩,1⟩,⟨⟨4,[9]⟩,19⟩,⟨⟨5,[9]⟩,15⟩,⟨⟨6,[9]⟩,20⟩,⟨⟨7,[9]⟩,21⟩,⟨⟨8,[9]⟩,16⟩,⟨⟨8,[9]⟩,17⟩,⟨⟨8,[9]⟩,18⟩,⟨⟨9,[10,9]⟩,8⟩,⟨⟨9,[10,9]⟩,10⟩,⟨⟨9,[10,9]⟩,11⟩,⟨⟨11,[]⟩,8⟩,⟨⟨11,[]⟩,10⟩,⟨⟨11,[]⟩,11⟩,⟨⟨11,[]⟩,19⟩,⟨⟨11,[]⟩,21⟩,⟨⟨12,[0]⟩,7⟩,⟨⟨12,[0]⟩,20⟩,⟨⟨12,[1]⟩,7⟩,⟨⟨12,[2]⟩,1⟩,⟨⟨12,[3]⟩,20⟩,⟨⟨13,[0]⟩,3⟩,⟨⟨13,[1]⟩,4⟩,⟨⟨13,[2]⟩,5⟩,⟨⟨13,[3]⟩,6⟩,⟨⟨14,[4,0]⟩,7⟩,⟨⟨14,[4,0]⟩,20⟩,⟨⟨14,[5,1]⟩,7⟩,⟨⟨14,[6,2]⟩,1⟩,⟨⟨14,[7,3]⟩,20⟩,⟨⟨15,[4,0]⟩,7⟩,⟨⟨15,[5,1]⟩,8⟩,⟨⟨15,[6,2]⟩,9⟩,⟨⟨15,[7,3]⟩,10⟩,⟨⟨16,[5,1]⟩,8⟩,⟨⟨16,[5,1]⟩,11⟩,⟨⟨16,[7,3]⟩,8⟩,⟨⟨16,[7,3]⟩,11⟩,⟨⟨17,[0]⟩,7⟩,⟨⟨17,[1]⟩,8⟩,⟨⟨17,[1]⟩,11⟩,⟨⟨17,[2]⟩,9⟩,⟨⟨17,[3]⟩,8⟩,⟨⟨17,[3]⟩,10⟩,⟨⟨17,[3]⟩,11⟩,⟨⟨18,[0]⟩,11⟩,⟨⟨18,[1]⟩,12⟩,⟨⟨18,[1]⟩,13⟩,⟨⟨18,[1]⟩,14⟩,⟨⟨18,[2]⟩,15⟩,⟨⟨18,[3]⟩,16⟩,⟨⟨18,[3]⟩,17⟩,⟨⟨18,[3]⟩,18⟩,⟨⟨19,[0]⟩,12⟩,⟨⟨19,[0]⟩,13⟩,⟨⟨19,[0]⟩,14⟩,⟨⟨20,[8,0]⟩,8⟩,⟨⟨20,[8,0]⟩,11⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[17],[6],[7],[18],[13],[12],[11,13],[14],[15],[16],[19],[20],[21],[22],[23],[24],[24],[25],[26],[27],[28,29],[30],[31],[32],[33],[33],[34],[35],[36],[41],[42],[44],[46],[42],[43],[45],[47],[48],[50],[49],[52],[55],[54],[53],[38,40],[56],[57],[58],[5],[8],[9],[10],[60],[59],[59,60],[37,39],[38,40]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<61 := hi
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
end Certgen.R132
