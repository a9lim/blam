import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4846201052442
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 41,.app 2 17,.lam 3,.app 4 16,.app 5 6,.var 0,.lam 7,.lam 8,.app 9 14,.app 10 11,.var 2,.app 12 13,.var 1,.var 0,.lam 15,.var 1,.var 0,.lam 18,.lam 19,.app 20 39,.app 21 36,.lam 22,.app 23 35,.app 24 25,.var 0,.lam 26,.lam 27,.app 28 33,.app 29 30,.var 2,.app 31 32,.var 1,.var 0,.opaque,.opaque,.opaque,.app 37 38,.var 1,.var 0,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
def values : Array (List AClo) := #[[⟨13,[6,5,3]⟩,⟨32,[6,5,4,2,1]⟩],[⟨6,[3]⟩,⟨11,[6,5,3]⟩,⟨13,[6,5,3]⟩,⟨32,[6,5,4,2,1]⟩],[⟨14,[6,5,3]⟩,⟨16,[3]⟩,⟨38,[2,1]⟩],[⟨17,[]⟩],[⟨36,[2,1]⟩],[⟨38,[2,1]⟩],[⟨25,[4,2,1]⟩,⟨30,[6,5,4,2,1]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨41,[]⟩,0⟩],[⟨⟨17,[]⟩,1⟩],[⟨⟨13,[6,5,3]⟩,12⟩],[⟨⟨39,[2,1]⟩,1⟩,⟨⟨39,[2,1]⟩,6⟩,⟨⟨39,[2,1]⟩,7⟩,⟨⟨39,[2,1]⟩,8⟩,⟨⟨39,[2,1]⟩,9⟩],[⟨⟨36,[2,1]⟩,4⟩],[⟨⟨35,[4,2,1]⟩,4⟩],[⟨⟨25,[4,2,1]⟩,6⟩],[⟨⟨33,[6,5,4,2,1]⟩,6⟩,⟨⟨33,[6,5,4,2,1]⟩,8⟩],[⟨⟨30,[6,5,4,2,1]⟩,8⟩],[⟨⟨16,[3]⟩,1⟩],[⟨⟨32,[6,5,4,2,1]⟩,12⟩],[⟨⟨38,[2,1]⟩,7⟩,⟨⟨38,[2,1]⟩,9⟩],[⟨⟨6,[3]⟩,10⟩],[⟨⟨14,[6,5,3]⟩,6⟩,⟨⟨14,[6,5,3]⟩,8⟩],[⟨⟨11,[6,5,3]⟩,14⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[3]⟩,1⟩,⟨⟨4,[3]⟩,10⟩,⟨⟨5,[3]⟩,13⟩,⟨⟨6,[3]⟩,12⟩,⟨⟨7,[5,3]⟩,7⟩,⟨⟨7,[5,3]⟩,9⟩,⟨⟨8,[6,5,3]⟩,6⟩,⟨⟨8,[6,5,3]⟩,8⟩,⟨⟨9,[6,5,3]⟩,14⟩,⟨⟨10,[6,5,3]⟩,15⟩,⟨⟨11,[6,5,3]⟩,12⟩,⟨⟨12,[6,5,3]⟩,3⟩,⟨⟨13,[6,5,3]⟩,12⟩,⟨⟨14,[6,5,3]⟩,3⟩,⟨⟨14,[6,5,3]⟩,11⟩,⟨⟨15,[0,6,5,3]⟩,12⟩,⟨⟨16,[3]⟩,3⟩,⟨⟨16,[3]⟩,11⟩,⟨⟨17,[]⟩,3⟩,⟨⟨17,[]⟩,11⟩,⟨⟨17,[]⟩,13⟩,⟨⟨17,[]⟩,15⟩,⟨⟨18,[1]⟩,10⟩,⟨⟨18,[1]⟩,12⟩,⟨⟨18,[1]⟩,14⟩,⟨⟨19,[2,1]⟩,1⟩,⟨⟨19,[2,1]⟩,6⟩,⟨⟨19,[2,1]⟩,7⟩,⟨⟨19,[2,1]⟩,8⟩,⟨⟨19,[2,1]⟩,9⟩,⟨⟨20,[2,1]⟩,4⟩,⟨⟨21,[2,1]⟩,5⟩,⟨⟨22,[4,2,1]⟩,4⟩,⟨⟨23,[4,2,1]⟩,6⟩,⟨⟨24,[4,2,1]⟩,7⟩,⟨⟨25,[4,2,1]⟩,12⟩,⟨⟨26,[5,4,2,1]⟩,7⟩,⟨⟨26,[5,4,2,1]⟩,9⟩,⟨⟨27,[6,5,4,2,1]⟩,6⟩,⟨⟨27,[6,5,4,2,1]⟩,8⟩,⟨⟨28,[6,5,4,2,1]⟩,8⟩,⟨⟨29,[6,5,4,2,1]⟩,9⟩,⟨⟨30,[6,5,4,2,1]⟩,12⟩,⟨⟨31,[6,5,4,2,1]⟩,11⟩,⟨⟨32,[6,5,4,2,1]⟩,12⟩,⟨⟨36,[2,1]⟩,7⟩,⟨⟨36,[2,1]⟩,9⟩,⟨⟨37,[2,1]⟩,12⟩,⟨⟨38,[2,1]⟩,3⟩,⟨⟨38,[2,1]⟩,11⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[23],[7,8],[9],[10],[11],[11],[12],[24],[14],[51],[38,45],[18],[18],[38,45],[21],[22],[26],[26],[25],[27],[28],[30,32],[29,31],[33],[33],[33],[33],[33],[34],[35],[36],[37],[48],[39,40],[41],[42],[43],[43],[44],[49],[46],[52],[38,45],[50],[50],[6,13,15,47],[16,19,51],[17,20,52]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 12=true := by decide +kernel
theorem block48 : checkRange P V K states hints 48 5=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<53 := hi
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

open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 1) (.var 0))) (.lam (.var 1)))))) (.var 0))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438387096858 := by decide
def t55 : Term := .var 0
def t54 : Term := .var 1
def t49 : Term := .var 2
def t53 : Term := .lam t54
def t50 : Term := .app t54 t55
def t48 : Term := .app t49 t50
def t47 : Term := .app t48 t53
def t46 : Term := .lam t47
def t45 : Term := .lam t46
def t43 : Term := .app t55 t45
def t42 : Term := .app t43 t55
def t41 : Term := .lam t42
def t20 : Term := .app t41 t50
def t19 : Term := .app t20 t53
def t18 : Term := .lam t19
def t17 : Term := .lam t18
def t1 : Term := .app t41 t17
def t0 : Term := .app t1 t41
def terms : Array Term := #[t0,t1,t41,t42,t43,t55,t45,t46,t47,t48,t49,t50,t54,t55,t53,t54,t55,t17,t18,t19,t20,t41,t42,t43,t55,t45,t46,t47,t48,t49,t50,t54,t55,t53,t54,t55,t50,t54,t55,t53,t54,t41,t42,t43,t55,t45,t46,t47,t48,t49,t50,t54,t55,t53,t54,t55]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [[],[]] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4846201052442
