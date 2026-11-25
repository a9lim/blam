import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4846166424902
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 18,.app 8 17,.app 9 10,.var 0,.lam 11,.lam 12,.app 13 14,.var 1,.app 15 16,.var 2,.var 0,.var 0,.opaque,.opaque]
def values : Array (List AClo) := #[[⟨5,[]⟩],[⟨14,[4,2,6]⟩],[⟨10,[5]⟩,⟨10,[7]⟩],[⟨18,[5]⟩,⟨18,[7]⟩],[⟨17,[5]⟩,⟨17,[7]⟩],[⟨16,[4,2,6]⟩],[⟨4,[0]⟩],[⟨10,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨5,[]⟩,0⟩],[⟨⟨14,[3,1,5]⟩,2⟩,⟨⟨14,[3,1,5]⟩,3⟩,⟨⟨14,[3,1,5]⟩,11⟩],[⟨⟨14,[3,1,7]⟩,2⟩,⟨⟨14,[3,1,7]⟩,3⟩,⟨⟨14,[3,1,7]⟩,11⟩],[⟨⟨14,[4,2,6]⟩,7⟩,⟨⟨14,[4,2,6]⟩,9⟩],[⟨⟨16,[4,2,6]⟩,2⟩,⟨⟨16,[4,2,6]⟩,3⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨18,[5]⟩,2⟩,⟨⟨18,[5]⟩,3⟩],[⟨⟨18,[6]⟩,0⟩],[⟨⟨18,[7]⟩,11⟩],[⟨⟨17,[5]⟩,7⟩],[⟨⟨17,[6]⟩,8⟩],[⟨⟨17,[7]⟩,9⟩],[⟨⟨10,[5]⟩,10⟩],[⟨⟨10,[6]⟩,11⟩],[⟨⟨10,[7]⟩,12⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,6⟩,⟨⟨4,[0]⟩,5⟩,⟨⟨4,[0]⟩,14⟩,⟨⟨5,[]⟩,5⟩,⟨⟨5,[]⟩,6⟩,⟨⟨5,[]⟩,14⟩,⟨⟨6,[5]⟩,2⟩,⟨⟨6,[5]⟩,3⟩,⟨⟨6,[6]⟩,0⟩,⟨⟨6,[7]⟩,11⟩,⟨⟨7,[5]⟩,7⟩,⟨⟨7,[6]⟩,8⟩,⟨⟨7,[7]⟩,9⟩,⟨⟨8,[5]⟩,10⟩,⟨⟨8,[6]⟩,11⟩,⟨⟨8,[7]⟩,12⟩,⟨⟨9,[5]⟩,13⟩,⟨⟨9,[6]⟩,14⟩,⟨⟨9,[7]⟩,15⟩,⟨⟨10,[5]⟩,4⟩,⟨⟨10,[6]⟩,13⟩,⟨⟨10,[6]⟩,15⟩,⟨⟨10,[7]⟩,4⟩,⟨⟨11,[1,5]⟩,7⟩,⟨⟨11,[1,5]⟩,9⟩,⟨⟨11,[1,7]⟩,7⟩,⟨⟨11,[1,7]⟩,9⟩,⟨⟨11,[2,6]⟩,10⟩,⟨⟨11,[2,6]⟩,12⟩,⟨⟨12,[3,1,5]⟩,2⟩,⟨⟨12,[3,1,5]⟩,3⟩,⟨⟨12,[3,1,5]⟩,11⟩,⟨⟨12,[3,1,7]⟩,2⟩,⟨⟨12,[3,1,7]⟩,3⟩,⟨⟨12,[3,1,7]⟩,11⟩,⟨⟨12,[4,2,6]⟩,7⟩,⟨⟨12,[4,2,6]⟩,9⟩,⟨⟨13,[3,1,5]⟩,2⟩,⟨⟨13,[3,1,7]⟩,3⟩,⟨⟨13,[4,2,6]⟩,4⟩,⟨⟨14,[4,2,6]⟩,2⟩,⟨⟨14,[4,2,6]⟩,3⟩,⟨⟨15,[4,2,6]⟩,5⟩,⟨⟨16,[4,2,6]⟩,13⟩,⟨⟨17,[5]⟩,13⟩,⟨⟨17,[7]⟩,13⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[7],[6],[8],[9,10],[11],[12],[13],[13],[14],[15],[16],[17],[18],[19],[20],[21],[46],[5],[24],[26,27],[30],[31],[28,29],[32,33],[34],[35,36],[37],[38],[39],[40],[40],[40],[41],[41],[41],[42],[42],[43],[44],[22,25],[45],[45],[4],[47,48],[46],[23]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 12=true := by decide +kernel
theorem block48 : checkRange P V K states hints 48 1=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<49 := hi
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
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)) (.lam (.var 1)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438352469318 := by decide
def t17 : Term := .var 0
def t19 : Term := .var 1
def t15 : Term := .var 2
def t18 : Term := .lam t19
def t2 : Term := .app t17 t17
def t1 : Term := .lam t2
def t14 : Term := .app t15 t17
def t12 : Term := .app t19 t14
def t11 : Term := .lam t12
def t10 : Term := .lam t11
def t8 : Term := .app t17 t10
def t7 : Term := .app t8 t17
def t6 : Term := .app t7 t18
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t2,t17,t17,t5,t6,t7,t8,t17,t10,t11,t12,t19,t14,t15,t17,t17,t18,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4846166424902
