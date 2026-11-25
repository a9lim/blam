import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4785410423274
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 8,.lam 2,.app 3 6,.app 4 5,.var 0,.var 0,.opaque,.opaque,.lam 9,.app 10 19,.app 11 12,.var 0,.lam 13,.lam 14,.app 15 16,.var 1,.app 17 18,.var 2,.var 0,.var 0]
def values : Array (List AClo) := #[[⟨8,[]⟩],[⟨12,[9]⟩],[⟨12,[10]⟩],[⟨16,[6,1,11]⟩,⟨16,[7,2,11]⟩],[⟨16,[4,3,10]⟩,⟨16,[5,3,10]⟩],[⟨16,[8,3,9]⟩],[⟨19,[9]⟩],[⟨19,[10]⟩],[⟨19,[11]⟩],[⟨12,[11]⟩],[⟨18,[6,1,11]⟩,⟨18,[7,2,11]⟩],[⟨5,[0]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨8,[]⟩,0⟩],[⟨⟨12,[9]⟩,18⟩],[⟨⟨12,[10]⟩,19⟩],[⟨⟨12,[11]⟩,20⟩],[⟨⟨16,[4,3,10]⟩,16⟩],[⟨⟨16,[5,3,10]⟩,16⟩],[⟨⟨16,[6,1,11]⟩,20⟩],[⟨⟨16,[7,2,11]⟩,5⟩,⟨⟨16,[7,2,11]⟩,6⟩,⟨⟨16,[7,2,11]⟩,9⟩],[⟨⟨16,[8,3,9]⟩,16⟩],[⟨⟨18,[6,1,11]⟩,5⟩],[⟨⟨18,[6,1,11]⟩,6⟩],[⟨⟨18,[6,1,11]⟩,9⟩],[⟨⟨18,[7,2,11]⟩,5⟩],[⟨⟨18,[7,2,11]⟩,6⟩],[⟨⟨18,[7,2,11]⟩,9⟩],[⟨⟨6,[0]⟩,0⟩],[⟨⟨5,[0]⟩,16⟩],[⟨⟨19,[9]⟩,20⟩],[⟨⟨19,[10]⟩,5⟩,⟨⟨19,[10]⟩,6⟩,⟨⟨19,[10]⟩,9⟩],[⟨⟨19,[11]⟩,16⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,16⟩,⟨⟨4,[0]⟩,17⟩,⟨⟨5,[0]⟩,4⟩,⟨⟨5,[0]⟩,10⟩,⟨⟨5,[0]⟩,11⟩,⟨⟨5,[0]⟩,12⟩,⟨⟨5,[0]⟩,13⟩,⟨⟨5,[0]⟩,14⟩,⟨⟨5,[0]⟩,15⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,10⟩,⟨⟨8,[]⟩,11⟩,⟨⟨8,[]⟩,12⟩,⟨⟨8,[]⟩,13⟩,⟨⟨8,[]⟩,14⟩,⟨⟨8,[]⟩,15⟩,⟨⟨8,[]⟩,17⟩,⟨⟨9,[9]⟩,20⟩,⟨⟨9,[10]⟩,5⟩,⟨⟨9,[10]⟩,6⟩,⟨⟨9,[10]⟩,9⟩,⟨⟨9,[11]⟩,16⟩,⟨⟨10,[9]⟩,18⟩,⟨⟨10,[10]⟩,19⟩,⟨⟨10,[11]⟩,20⟩,⟨⟨11,[9]⟩,2⟩,⟨⟨11,[10]⟩,3⟩,⟨⟨11,[11]⟩,4⟩,⟨⟨12,[9]⟩,7⟩,⟨⟨12,[10]⟩,8⟩,⟨⟨12,[11]⟩,2⟩,⟨⟨12,[11]⟩,3⟩,⟨⟨13,[1,11]⟩,18⟩,⟨⟨13,[2,11]⟩,19⟩,⟨⟨13,[3,9]⟩,20⟩,⟨⟨13,[3,10]⟩,5⟩,⟨⟨13,[3,10]⟩,6⟩,⟨⟨13,[3,10]⟩,9⟩,⟨⟨14,[4,3,10]⟩,16⟩,⟨⟨14,[5,3,10]⟩,16⟩,⟨⟨14,[6,1,11]⟩,20⟩,⟨⟨14,[7,2,11]⟩,5⟩,⟨⟨14,[7,2,11]⟩,6⟩,⟨⟨14,[7,2,11]⟩,9⟩,⟨⟨14,[8,3,9]⟩,16⟩,⟨⟨15,[4,3,10]⟩,5⟩,⟨⟨15,[5,3,10]⟩,6⟩,⟨⟨15,[6,1,11]⟩,7⟩,⟨⟨15,[7,2,11]⟩,8⟩,⟨⟨15,[8,3,9]⟩,9⟩,⟨⟨16,[6,1,11]⟩,5⟩,⟨⟨16,[6,1,11]⟩,6⟩,⟨⟨16,[6,1,11]⟩,9⟩,⟨⟨16,[7,2,11]⟩,5⟩,⟨⟨16,[7,2,11]⟩,6⟩,⟨⟨16,[7,2,11]⟩,9⟩,⟨⟨17,[6,1,11]⟩,10⟩,⟨⟨17,[6,1,11]⟩,11⟩,⟨⟨17,[6,1,11]⟩,12⟩,⟨⟨17,[7,2,11]⟩,13⟩,⟨⟨17,[7,2,11]⟩,14⟩,⟨⟨17,[7,2,11]⟩,15⟩,⟨⟨18,[6,1,11]⟩,3⟩,⟨⟨18,[7,2,11]⟩,3⟩,⟨⟨19,[9]⟩,3⟩,⟨⟨19,[10]⟩,3⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[19],[12],[13],[14],[15],[16],[17],[18],[20],[21],[22],[23],[21],[22],[23],[24],[25],[26],[26],[26],[27],[28],[29],[30],[33],[65,66],[5],[37],[38,39,40],[35],[36],[43],[44,45,46],[47],[41],[41],[42],[48],[49],[50],[51],[51],[51],[52],[53,56],[54,57],[31],[32],[55,58],[59],[60],[61],[62],[63],[64],[6],[7],[8],[9],[10],[11],[67],[68],[34],[65,66]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 12=true := by decide +kernel
theorem block48 : checkRange P V K states hints 48 12=true := by decide +kernel
theorem block60 : checkRange P V K states hints 60 9=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<69 := hi
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

open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22377596467690 := by decide
def t19 : Term := .var 0
def t15 : Term := .var 1
def t17 : Term := .var 2
def t6 : Term := .lam t15
def t3 : Term := .app t19 t19
def t16 : Term := .app t17 t19
def t2 : Term := .app t3 t6
def t14 : Term := .app t15 t16
def t1 : Term := .lam t2
def t13 : Term := .lam t14
def t12 : Term := .lam t13
def t10 : Term := .app t19 t12
def t9 : Term := .app t10 t19
def t8 : Term := .lam t9
def t0 : Term := .app t1 t8
def terms : Array Term := #[t0,t1,t2,t3,t19,t19,t6,t15,t8,t9,t10,t19,t12,t13,t14,t15,t16,t17,t19,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4785410423274
