import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4838286289846
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 24,.app 2 21,.app 3 9,.lam 4,.app 5 6,.var 0,.app 7 8,.var 0,.var 0,.lam 10,.lam 11,.lam 12,.app 13 20,.app 14 19,.app 15 18,.app 16 17,.var 2,.var 0,.var 2,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
def values : Array (List AClo) := #[[⟨21,[]⟩],[⟨18,[5,2,9]⟩],[⟨17,[3,0,8]⟩,⟨17,[4,1,7]⟩],[⟨24,[]⟩],[⟨19,[5,2,9]⟩],[⟨18,[3,0,8]⟩,⟨18,[4,1,7]⟩],[⟨9,[]⟩],[⟨17,[5,2,9]⟩],[⟨6,[6]⟩],[⟨8,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨24,[]⟩,0⟩],[⟨⟨21,[]⟩,1⟩],[⟨⟨20,[3,0,8]⟩,0⟩],[⟨⟨20,[4,1,7]⟩,5⟩],[⟨⟨20,[5,2,9]⟩,6⟩,⟨⟨20,[5,2,9]⟩,7⟩],[⟨⟨19,[3,0,8]⟩,3⟩],[⟨⟨19,[4,1,7]⟩,4⟩],[⟨⟨19,[5,2,9]⟩,5⟩],[⟨⟨18,[3,0,8]⟩,6⟩],[⟨⟨18,[4,1,7]⟩,7⟩],[⟨⟨18,[5,2,9]⟩,8⟩],[⟨⟨17,[3,0,8]⟩,9⟩],[⟨⟨17,[4,1,7]⟩,10⟩],[⟨⟨17,[5,2,9]⟩,11⟩],[⟨⟨9,[]⟩,2⟩],[⟨⟨6,[6]⟩,2⟩],[⟨⟨8,[6]⟩,12⟩],[⟨⟨8,[6]⟩,13⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,15⟩,⟨⟨4,[6]⟩,2⟩,⟨⟨5,[6]⟩,16⟩,⟨⟨6,[6]⟩,12⟩,⟨⟨6,[6]⟩,13⟩,⟨⟨7,[6]⟩,17⟩,⟨⟨7,[6]⟩,18⟩,⟨⟨8,[6]⟩,14⟩,⟨⟨9,[]⟩,14⟩,⟨⟨9,[]⟩,16⟩,⟨⟨9,[]⟩,17⟩,⟨⟨9,[]⟩,18⟩,⟨⟨10,[7]⟩,11⟩,⟨⟨10,[8]⟩,2⟩,⟨⟨10,[9]⟩,12⟩,⟨⟨10,[9]⟩,13⟩,⟨⟨11,[0,8]⟩,1⟩,⟨⟨11,[1,7]⟩,8⟩,⟨⟨11,[2,9]⟩,9⟩,⟨⟨11,[2,9]⟩,10⟩,⟨⟨12,[3,0,8]⟩,0⟩,⟨⟨12,[4,1,7]⟩,5⟩,⟨⟨12,[5,2,9]⟩,6⟩,⟨⟨12,[5,2,9]⟩,7⟩,⟨⟨13,[3,0,8]⟩,3⟩,⟨⟨13,[4,1,7]⟩,4⟩,⟨⟨13,[5,2,9]⟩,5⟩,⟨⟨14,[3,0,8]⟩,6⟩,⟨⟨14,[4,1,7]⟩,7⟩,⟨⟨14,[5,2,9]⟩,8⟩,⟨⟨15,[3,0,8]⟩,9⟩,⟨⟨15,[4,1,7]⟩,10⟩,⟨⟨15,[5,2,9]⟩,11⟩,⟨⟨16,[3,0,8]⟩,12⟩,⟨⟨16,[4,1,7]⟩,13⟩,⟨⟨16,[5,2,9]⟩,14⟩,⟨⟨17,[5,2,9]⟩,13⟩,⟨⟨18,[3,0,8]⟩,13⟩,⟨⟨18,[4,1,7]⟩,13⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[12],[8],[9],[13],[14],[11],[15],[16],[17],[18],[20],[19],[21],[22],[23],[24],[25],[26],[27],[28],[29],[29],[30],[31],[32],[33],[34],[35],[36],[37],[38],[6],[39],[10],[40,41],[7],[39]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 6=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<42 := hi
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

open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.lam (.app (.app (.app (.app (.var 2) (.var 0)) (.var 2)) (.var 1)) (.var 1))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22430472334262 := by decide
def t48 : Term := .var 0
def t51 : Term := .var 1
def t18 : Term := .var 2
def t43 : Term := .lam t48
def t50 : Term := .lam t51
def t6 : Term := .app t48 t48
def t42 : Term := .lam t43
def t52 : Term := .var 4
def t49 : Term := .lam t50
def t15 : Term := .app t18 t48
def t4 : Term := .app t48 t6
def t40 : Term := .app t48 t42
def t47 : Term := .app t48 t49
def t3 : Term := .lam t4
def t14 : Term := .app t15 t18
def t13 : Term := .app t14 t51
def t46 : Term := .app t47 t52
def t45 : Term := .lam t46
def t12 : Term := .app t13 t51
def t11 : Term := .lam t12
def t10 : Term := .lam t11
def t9 : Term := .lam t10
def t39 : Term := .app t40 t45
def t38 : Term := .lam t39
def t2 : Term := .app t3 t9
def t32 : Term := .app t47 t38
def t31 : Term := .lam t32
def t1 : Term := .app t2 t42
def t25 : Term := .app t47 t31
def t24 : Term := .lam t25
def t0 : Term := .app t1 t24
def terms : Array Term := #[t0,t1,t2,t3,t4,t48,t6,t48,t48,t9,t10,t11,t12,t13,t14,t15,t18,t48,t18,t51,t51,t42,t43,t48,t24,t25,t47,t48,t49,t50,t51,t31,t32,t47,t48,t49,t50,t51,t38,t39,t40,t48,t42,t43,t48,t45,t46,t47,t48,t49,t50,t51,t52]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4838286289846
