import Regular
namespace Certgen.R128
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 11,.lam 3,.app 4 5,.var 0,.app 6 7,.var 0,.app 8 9,.var 0,.lam 10,.var 1,.lam 12,.app 13 18,.lam 14,.app 15 16,.var 0,.lam 17,.var 1,.app 19 20,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨16,[4,0]⟩,⟨16,[7,3]⟩],[⟨5,[9]⟩],[⟨7,[9]⟩],[⟨9,[9]⟩],[⟨18,[0]⟩],[⟨18,[1]⟩],[⟨18,[2]⟩],[⟨18,[3]⟩],[⟨20,[0]⟩],[⟨11,[]⟩],[⟨20,[3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨11,[]⟩,1⟩],[⟨⟨18,[0]⟩,13⟩],[⟨⟨18,[1]⟩,1⟩],[⟨⟨18,[2]⟩,12⟩],[⟨⟨18,[3]⟩,13⟩],[⟨⟨16,[4,0]⟩,13⟩],[⟨⟨16,[5,1]⟩,1⟩],[⟨⟨16,[6,2]⟩,12⟩],[⟨⟨16,[7,3]⟩,13⟩],[⟨⟨20,[0]⟩,7⟩],[⟨⟨20,[1]⟩,8⟩],[⟨⟨20,[2]⟩,9⟩],[⟨⟨20,[3]⟩,10⟩],[⟨⟨20,[3]⟩,7⟩],[⟨⟨5,[9]⟩,1⟩],[⟨⟨7,[9]⟩,12⟩],[⟨⟨9,[9]⟩,13⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[9]⟩,1⟩,⟨⟨4,[9]⟩,16⟩,⟨⟨5,[9]⟩,12⟩,⟨⟨6,[9]⟩,17⟩,⟨⟨7,[9]⟩,13⟩,⟨⟨8,[9]⟩,18⟩,⟨⟨9,[9]⟩,14⟩,⟨⟨9,[9]⟩,15⟩,⟨⟨10,[10,9]⟩,7⟩,⟨⟨10,[10,9]⟩,10⟩,⟨⟨11,[]⟩,7⟩,⟨⟨11,[]⟩,10⟩,⟨⟨11,[]⟩,16⟩,⟨⟨11,[]⟩,17⟩,⟨⟨11,[]⟩,18⟩,⟨⟨12,[0]⟩,13⟩,⟨⟨12,[1]⟩,1⟩,⟨⟨12,[2]⟩,12⟩,⟨⟨12,[3]⟩,13⟩,⟨⟨13,[0]⟩,3⟩,⟨⟨13,[1]⟩,4⟩,⟨⟨13,[2]⟩,5⟩,⟨⟨13,[3]⟩,6⟩,⟨⟨14,[4,0]⟩,13⟩,⟨⟨14,[5,1]⟩,1⟩,⟨⟨14,[6,2]⟩,12⟩,⟨⟨14,[7,3]⟩,13⟩,⟨⟨15,[4,0]⟩,7⟩,⟨⟨15,[5,1]⟩,8⟩,⟨⟨15,[6,2]⟩,9⟩,⟨⟨15,[7,3]⟩,10⟩,⟨⟨16,[4,0]⟩,11⟩,⟨⟨16,[7,3]⟩,11⟩,⟨⟨17,[8,4,0]⟩,7⟩,⟨⟨17,[8,7,3]⟩,7⟩,⟨⟨18,[0]⟩,7⟩,⟨⟨18,[1]⟩,8⟩,⟨⟨18,[2]⟩,9⟩,⟨⟨18,[3]⟩,7⟩,⟨⟨18,[3]⟩,10⟩,⟨⟨19,[0]⟩,11⟩,⟨⟨19,[1]⟩,12⟩,⟨⟨19,[2]⟩,13⟩,⟨⟨19,[3]⟩,14⟩,⟨⟨19,[3]⟩,15⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[15],[6],[16],[8],[17],[12],[11],[13],[14],[18],[18],[19],[20],[21],[22],[23],[24],[25],[26],[27],[28],[29],[30],[31],[32],[33],[38],[39],[40],[42],[36],[37],[38],[41],[43],[44],[45],[47],[46],[34,35],[5],[7],[9],[10]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<48 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 exact range_sound block36 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.R128
