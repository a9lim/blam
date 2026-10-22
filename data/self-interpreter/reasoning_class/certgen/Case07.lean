import Regular
namespace Certgen.Case07
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 20,.app 2 11,.lam 3,.app 4 5,.var 0,.app 6 10,.app 7 8,.var 0,.lam 9,.var 1,.opaque,.lam 12,.app 13 16,.app 14 15,.var 0,.var 0,.lam 17,.app 18 19,.var 0,.var 1,.lam 21,.app 22 27,.app 23 24,.var 0,.lam 25,.lam 26,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨5,[2]⟩,⟨8,[2]⟩,⟨16,[0]⟩],[⟨15,[0]⟩,⟨19,[1,0]⟩],[⟨11,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨20,[]⟩,0⟩],[⟨⟨11,[]⟩,1⟩],[⟨⟨16,[0]⟩,1⟩,⟨⟨16,[0]⟩,7⟩],[⟨⟨15,[0]⟩,3⟩],[⟨⟨19,[1,0]⟩,3⟩],[⟨⟨5,[2]⟩,1⟩],[⟨⟨10,[2]⟩,4⟩,⟨⟨10,[2]⟩,5⟩],[⟨⟨8,[2]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[2]⟩,1⟩,⟨⟨4,[2]⟩,6⟩,⟨⟨5,[2]⟩,4⟩,⟨⟨5,[2]⟩,5⟩,⟨⟨6,[2]⟩,7⟩,⟨⟨7,[2]⟩,8⟩,⟨⟨8,[2]⟩,4⟩,⟨⟨8,[2]⟩,5⟩,⟨⟨9,[1,2]⟩,3⟩,⟨⟨11,[]⟩,3⟩,⟨⟨11,[]⟩,6⟩,⟨⟨11,[]⟩,8⟩,⟨⟨12,[0]⟩,1⟩,⟨⟨12,[0]⟩,7⟩,⟨⟨13,[0]⟩,3⟩,⟨⟨14,[0]⟩,4⟩,⟨⟨15,[0]⟩,5⟩,⟨⟨16,[0]⟩,4⟩,⟨⟨16,[0]⟩,5⟩,⟨⟨17,[1,0]⟩,3⟩,⟨⟨18,[1,0]⟩,5⟩,⟨⟨19,[1,0]⟩,5⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[13],[7],[7],[8],[14],[11],[11],[12],[15,16],[15],[16],[17],[17],[18],[5,9,20],[6,10,21],[22],[22],[23],[19,24],[6,10,21]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<25 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 exact range_sound block24 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
theorem no_stop : ∀ u, Runs P initial u → ∃ v, Step P u v :=
 invariant_no_stop closed root ⟨.mk .nil,.nil⟩
#print axioms no_stop
end Certgen.Case07
