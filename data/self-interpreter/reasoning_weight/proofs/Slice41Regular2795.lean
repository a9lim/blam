import Blc.SelfintRegularSoundness
import Blc.SelfintRootLetEmbedding
namespace Certgen.Slice41Regular2795
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 12,.lam 2,.app 3 4,.var 0,.lam 5,.app 6 11,.app 7 8,.var 0,.lam 9,.lam 10,.var 3,.var 0,.lam 13,.app 14 15,.var 0,.lam 16,.app 17 22,.app 18 19,.var 0,.lam 20,.lam 21,.var 3,.var 0]
def values : Array (List AClo) := #[[⟨12,[]⟩],[⟨4,[0]⟩],[⟨11,[4,0]⟩,⟨11,[9,0]⟩],[⟨15,[2]⟩],[⟨22,[3,1]⟩,⟨22,[3,2]⟩,⟨22,[4,1]⟩,⟨22,[4,2]⟩],[⟨19,[3,1]⟩,⟨19,[3,2]⟩,⟨19,[4,1]⟩,⟨19,[4,2]⟩],[⟨8,[4,0]⟩,⟨8,[9,0]⟩],[⟨19,[5,2]⟩],[⟨22,[5,2]⟩],[⟨15,[1]⟩],[⟨19,[6,1]⟩,⟨19,[6,2]⟩],[⟨22,[6,1]⟩,⟨22,[6,2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨12,[]⟩,0⟩],[⟨⟨15,[1]⟩,0⟩],[⟨⟨15,[2]⟩,0⟩],[⟨⟨22,[3,1]⟩,0⟩],[⟨⟨22,[3,2]⟩,0⟩],[⟨⟨22,[4,1]⟩,0⟩],[⟨⟨22,[4,2]⟩,0⟩],[⟨⟨22,[5,2]⟩,4⟩,⟨⟨22,[5,2]⟩,5⟩,⟨⟨22,[5,2]⟩,6⟩,⟨⟨22,[5,2]⟩,7⟩],[⟨⟨22,[6,1]⟩,19⟩],[⟨⟨22,[6,2]⟩,20⟩],[⟨⟨19,[3,1]⟩,4⟩],[⟨⟨19,[3,2]⟩,5⟩],[⟨⟨19,[4,1]⟩,6⟩],[⟨⟨19,[4,2]⟩,7⟩],[⟨⟨19,[5,2]⟩,8⟩],[⟨⟨19,[6,1]⟩,9⟩],[⟨⟨19,[6,2]⟩,10⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨11,[9,0]⟩,0⟩],[⟨⟨11,[4,0]⟩,0⟩],[⟨⟨8,[9,0]⟩,19⟩],[⟨⟨8,[4,0]⟩,20⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,18⟩,⟨⟨4,[0]⟩,2⟩,⟨⟨4,[0]⟩,4⟩,⟨⟨4,[0]⟩,5⟩,⟨⟨4,[0]⟩,6⟩,⟨⟨4,[0]⟩,7⟩,⟨⟨5,[4,0]⟩,0⟩,⟨⟨5,[9,0]⟩,0⟩,⟨⟨6,[4,0]⟩,20⟩,⟨⟨6,[9,0]⟩,19⟩,⟨⟨7,[4,0]⟩,22⟩,⟨⟨7,[9,0]⟩,21⟩,⟨⟨8,[4,0]⟩,16⟩,⟨⟨8,[4,0]⟩,17⟩,⟨⟨8,[9,0]⟩,16⟩,⟨⟨8,[9,0]⟩,17⟩,⟨⟨9,[10,4,0]⟩,9⟩,⟨⟨9,[10,4,0]⟩,10⟩,⟨⟨9,[10,9,0]⟩,9⟩,⟨⟨9,[10,9,0]⟩,10⟩,⟨⟨10,[11,10,4,0]⟩,19⟩,⟨⟨10,[11,10,4,0]⟩,20⟩,⟨⟨10,[11,10,9,0]⟩,19⟩,⟨⟨10,[11,10,9,0]⟩,20⟩,⟨⟨11,[4,0]⟩,3⟩,⟨⟨11,[4,0]⟩,4⟩,⟨⟨11,[4,0]⟩,5⟩,⟨⟨11,[4,0]⟩,6⟩,⟨⟨11,[4,0]⟩,7⟩,⟨⟨11,[9,0]⟩,3⟩,⟨⟨11,[9,0]⟩,4⟩,⟨⟨11,[9,0]⟩,5⟩,⟨⟨11,[9,0]⟩,6⟩,⟨⟨11,[9,0]⟩,7⟩,⟨⟨12,[]⟩,18⟩,⟨⟨12,[]⟩,19⟩,⟨⟨12,[]⟩,20⟩,⟨⟨13,[1]⟩,0⟩,⟨⟨13,[2]⟩,0⟩,⟨⟨14,[1]⟩,2⟩,⟨⟨14,[2]⟩,3⟩,⟨⟨15,[1]⟩,3⟩,⟨⟨15,[1]⟩,4⟩,⟨⟨15,[1]⟩,5⟩,⟨⟨15,[1]⟩,6⟩,⟨⟨15,[1]⟩,7⟩,⟨⟨15,[1]⟩,21⟩,⟨⟨15,[2]⟩,3⟩,⟨⟨15,[2]⟩,4⟩,⟨⟨15,[2]⟩,5⟩,⟨⟨15,[2]⟩,6⟩,⟨⟨15,[2]⟩,7⟩,⟨⟨15,[2]⟩,11⟩,⟨⟨15,[2]⟩,12⟩,⟨⟨15,[2]⟩,13⟩,⟨⟨15,[2]⟩,14⟩,⟨⟨15,[2]⟩,22⟩,⟨⟨16,[3,1]⟩,0⟩,⟨⟨16,[3,2]⟩,0⟩,⟨⟨16,[4,1]⟩,0⟩,⟨⟨16,[4,2]⟩,0⟩,⟨⟨16,[5,2]⟩,4⟩,⟨⟨16,[5,2]⟩,5⟩,⟨⟨16,[5,2]⟩,6⟩,⟨⟨16,[5,2]⟩,7⟩,⟨⟨16,[6,1]⟩,19⟩,⟨⟨16,[6,2]⟩,20⟩,⟨⟨17,[3,1]⟩,4⟩,⟨⟨17,[3,2]⟩,5⟩,⟨⟨17,[4,1]⟩,6⟩,⟨⟨17,[4,2]⟩,7⟩,⟨⟨17,[5,2]⟩,8⟩,⟨⟨17,[6,1]⟩,9⟩,⟨⟨17,[6,2]⟩,10⟩,⟨⟨18,[3,1]⟩,11⟩,⟨⟨18,[3,2]⟩,12⟩,⟨⟨18,[4,1]⟩,13⟩,⟨⟨18,[4,2]⟩,14⟩,⟨⟨18,[5,2]⟩,15⟩,⟨⟨18,[6,1]⟩,16⟩,⟨⟨18,[6,2]⟩,17⟩,⟨⟨19,[3,1]⟩,15⟩,⟨⟨19,[3,2]⟩,15⟩,⟨⟨19,[4,1]⟩,15⟩,⟨⟨19,[4,2]⟩,15⟩,⟨⟨20,[7,3,1]⟩,8⟩,⟨⟨20,[7,3,2]⟩,8⟩,⟨⟨20,[7,4,1]⟩,8⟩,⟨⟨20,[7,4,2]⟩,8⟩,⟨⟨21,[8,7,3,1]⟩,4⟩,⟨⟨21,[8,7,3,1]⟩,5⟩,⟨⟨21,[8,7,3,1]⟩,6⟩,⟨⟨21,[8,7,3,1]⟩,7⟩,⟨⟨21,[8,7,3,2]⟩,4⟩,⟨⟨21,[8,7,3,2]⟩,5⟩,⟨⟨21,[8,7,3,2]⟩,6⟩,⟨⟨21,[8,7,3,2]⟩,7⟩,⟨⟨21,[8,7,4,1]⟩,4⟩,⟨⟨21,[8,7,4,1]⟩,5⟩,⟨⟨21,[8,7,4,1]⟩,6⟩,⟨⟨21,[8,7,4,1]⟩,7⟩,⟨⟨21,[8,7,4,2]⟩,4⟩,⟨⟨21,[8,7,4,2]⟩,5⟩,⟨⟨21,[8,7,4,2]⟩,6⟩,⟨⟨21,[8,7,4,2]⟩,7⟩,⟨⟨22,[3,1]⟩,3⟩,⟨⟨22,[3,1]⟩,4⟩,⟨⟨22,[3,1]⟩,5⟩,⟨⟨22,[3,1]⟩,6⟩,⟨⟨22,[3,1]⟩,7⟩,⟨⟨22,[3,1]⟩,13⟩,⟨⟨22,[3,1]⟩,14⟩,⟨⟨22,[3,1]⟩,22⟩,⟨⟨22,[3,2]⟩,3⟩,⟨⟨22,[3,2]⟩,4⟩,⟨⟨22,[3,2]⟩,5⟩,⟨⟨22,[3,2]⟩,6⟩,⟨⟨22,[3,2]⟩,7⟩,⟨⟨22,[3,2]⟩,13⟩,⟨⟨22,[3,2]⟩,14⟩,⟨⟨22,[3,2]⟩,22⟩,⟨⟨22,[4,1]⟩,3⟩,⟨⟨22,[4,1]⟩,4⟩,⟨⟨22,[4,1]⟩,5⟩,⟨⟨22,[4,1]⟩,6⟩,⟨⟨22,[4,1]⟩,7⟩,⟨⟨22,[4,1]⟩,13⟩,⟨⟨22,[4,1]⟩,14⟩,⟨⟨22,[4,1]⟩,22⟩,⟨⟨22,[4,2]⟩,3⟩,⟨⟨22,[4,2]⟩,4⟩,⟨⟨22,[4,2]⟩,5⟩,⟨⟨22,[4,2]⟩,6⟩,⟨⟨22,[4,2]⟩,7⟩,⟨⟨22,[4,2]⟩,13⟩,⟨⟨22,[4,2]⟩,14⟩,⟨⟨22,[4,2]⟩,22⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[37],[10],[9],[9],[9],[9],[11],[12],[13],[14],[115,123,131,139],[49],[19],[20],[21],[22],[23],[24],[25],[26],[38],[39],[38],[39],[108,116,124,132],[109,117,125,133],[110,118,126,134],[111,119,127,135],[112,120,128,136],[44],[45],[46],[47],[48],[40],[41],[41],[42],[43],[4],[27,32],[60],[62],[62],[62],[62],[68],[61],[63],[63],[63],[63],[64],[65],[66],[67],[69],[70],[71],[72],[73],[74],[74],[74],[74],[75],[76],[77],[78],[79],[80],[81],[82],[83],[55],[56],[113,121,129,137],[114,122,130,138],[84,85,86,87],[15,17],[16,18],[88],[89],[90],[91],[92,93,94,95],[96,97,98,99],[100,101,102,103],[104,105,106,107],[5],[6],[7],[8],[28,33],[29,34],[30,35],[31,36],[5],[6],[7],[8],[28,33],[29,34],[30,35],[31,36],[50],[51],[52],[53],[54],[57],[58],[59],[50],[51],[52],[53],[54],[57],[58],[59],[108,116,124,132],[109,117,125,133],[110,118,126,134],[111,119,127,135],[112,120,128,136],[113,121,129,137],[114,122,130,138],[115,123,131,139],[108,116,124,132],[109,117,125,133],[110,118,126,134],[111,119,127,135],[112,120,128,136],[113,121,129,137],[114,122,130,138],[115,123,131,139]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 12=true := by decide
theorem block60 : checkRange P V K states hints 60 12=true := by decide
theorem block72 : checkRange P V K states hints 72 12=true := by decide
theorem block84 : checkRange P V K states hints 84 12=true := by decide
theorem block96 : checkRange P V K states hints 96 12=true := by decide
theorem block108 : checkRange P V K states hints 108 12=true := by decide
theorem block120 : checkRange P V K states hints 120 12=true := by decide
theorem block132 : checkRange P V K states hints 132 8=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<140 := hi
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
 by_cases h72 : i<84
 · exact range_sound block72 i (by omega) h72 hi
 by_cases h84 : i<96
 · exact range_sound block84 i (by omega) h84 hi
 by_cases h96 : i<108
 · exact range_sound block96 i (by omega) h96 hi
 by_cases h108 : i<120
 · exact range_sound block108 i (by omega) h108 hi
 by_cases h120 : i<132
 · exact range_sound block120 i (by omega) h120 hi
 exact range_sound block132 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)
open Blc Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintClass Blc.SelfintSourceCost
def helper : Term := (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))))
def core : Term := .app helper helper
theorem forward : ordered code = true := by decide
def model : Model P := codeModel (rankedCode code forward) (fun _ => .var 0)
theorem literal : model.term 0 = core := by decide +kernel
theorem diverges (n : Nat) : ¬ Count core n := by rw [←literal]; exact regular_no_clock model closed root n
def r2795 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))))) (.var 1)) (.var 0))
theorem reject2795 : ¬ Reader r2795 := by
 intro hr
 have hr2 := SelfintRootLetPowers.reader_betas hr (SelfintFlatMinimum.betas_spine (Betas.head (Beta.beta (.app (.var 0) (.var 0)) helper) (Betas.refl _)) [(.var 1), (.var 0)])
 exact SelfintRootLetEmbedding.no_reader_of_no_count core diverges [(.var 1), (.var 0)] hr2
#print axioms reject2795
def r2796 : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.lam (.var 3)))) (.var 0)))))) (.var 0)) (.var 1))
theorem reject2796 : ¬ Reader r2796 := by
 intro hr
 have hr2 := SelfintRootLetPowers.reader_betas hr (SelfintFlatMinimum.betas_spine (Betas.head (Beta.beta (.app (.var 0) (.var 0)) helper) (Betas.refl _)) [(.var 0), (.var 1)])
 exact SelfintRootLetEmbedding.no_reader_of_no_count core diverges [(.var 0), (.var 1)] hr2
#print axioms reject2796
end Certgen.Slice41Regular2795
