import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4845195964814
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 24,.app 2 21,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.lam 12,.app 13 19,.app 14 15,.var 2,.app 16 17,.var 0,.lam 18,.var 1,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
def values : Array (List AClo) := #[[⟨15,[1,8,7]⟩],[⟨17,[0,9,6]⟩,⟨17,[2,9,6]⟩],[⟨11,[8,7]⟩],[⟨17,[1,8,7]⟩],[⟨7,[]⟩],[⟨15,[0,9,6]⟩,⟨15,[2,9,6]⟩],[⟨6,[4]⟩],[⟨11,[9,6]⟩],[⟨24,[]⟩],[⟨21,[]⟩],[⟨19,[0,9,6]⟩,⟨19,[2,9,6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨24,[]⟩,0⟩],[⟨⟨21,[]⟩,1⟩],[⟨⟨19,[0,9,6]⟩,4⟩],[⟨⟨19,[1,8,7]⟩,16⟩],[⟨⟨19,[2,9,6]⟩,0⟩],[⟨⟨15,[0,9,6]⟩,3⟩],[⟨⟨15,[1,8,7]⟩,4⟩],[⟨⟨15,[2,9,6]⟩,5⟩],[⟨⟨17,[0,9,6]⟩,16⟩],[⟨⟨17,[1,8,7]⟩,9⟩],[⟨⟨17,[2,9,6]⟩,16⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[4]⟩,2⟩],[⟨⟨11,[8,7]⟩,0⟩],[⟨⟨11,[9,6]⟩,1⟩],[⟨⟨11,[10,5]⟩,0⟩,⟨⟨11,[10,5]⟩,4⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,12⟩,⟨⟨4,[4]⟩,2⟩,⟨⟨5,[4]⟩,13⟩,⟨⟨6,[4]⟩,6⟩,⟨⟨6,[4]⟩,8⟩,⟨⟨6,[4]⟩,15⟩,⟨⟨7,[]⟩,6⟩,⟨⟨7,[]⟩,8⟩,⟨⟨7,[]⟩,13⟩,⟨⟨7,[]⟩,15⟩,⟨⟨8,[5]⟩,3⟩,⟨⟨8,[5]⟩,5⟩,⟨⟨8,[6]⟩,2⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨9,[8,7]⟩,0⟩,⟨⟨9,[9,6]⟩,1⟩,⟨⟨9,[10,5]⟩,0⟩,⟨⟨9,[10,5]⟩,4⟩,⟨⟨10,[8,7]⟩,14⟩,⟨⟨10,[9,6]⟩,15⟩,⟨⟨10,[10,5]⟩,16⟩,⟨⟨11,[8,7]⟩,9⟩,⟨⟨11,[8,7]⟩,11⟩,⟨⟨11,[9,6]⟩,7⟩,⟨⟨11,[9,6]⟩,14⟩,⟨⟨12,[0,9,6]⟩,4⟩,⟨⟨12,[1,8,7]⟩,16⟩,⟨⟨12,[2,9,6]⟩,0⟩,⟨⟨13,[0,9,6]⟩,3⟩,⟨⟨13,[1,8,7]⟩,4⟩,⟨⟨13,[2,9,6]⟩,5⟩,⟨⟨14,[0,9,6]⟩,6⟩,⟨⟨14,[1,8,7]⟩,7⟩,⟨⟨14,[2,9,6]⟩,8⟩,⟨⟨15,[0,9,6]⟩,16⟩,⟨⟨15,[1,8,7]⟩,9⟩,⟨⟨15,[2,9,6]⟩,16⟩,⟨⟨16,[0,9,6]⟩,9⟩,⟨⟨16,[1,8,7]⟩,10⟩,⟨⟨16,[2,9,6]⟩,11⟩,⟨⟨17,[0,9,6]⟩,10⟩,⟨⟨17,[2,9,6]⟩,10⟩,⟨⟨18,[3,0,9,6]⟩,9⟩,⟨⟨18,[3,2,9,6]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[11],[9],[10],[12],[13],[14],[15],[16],[20],[19],[18],[17],[21],[22],[23],[23],[27],[8],[37,39],[29],[29],[28],[30],[31],[32],[33],[34],[35],[36],[6],[26],[7],[40],[41],[42],[38],[43,44],[25],[45],[46],[38],[24]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 11=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<47 := hi
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
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 2) (.app (.var 0) (.lam (.var 1)))) (.lam (.var 2))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22437382009230 := by decide
def t48 : Term := .var 0
def t51 : Term := .var 1
def t20 : Term := .var 2
def t43 : Term := .lam t48
def t50 : Term := .lam t51
def t4 : Term := .app t48 t48
def t19 : Term := .lam t20
def t42 : Term := .lam t43
def t52 : Term := .var 4
def t49 : Term := .lam t50
def t3 : Term := .lam t4
def t15 : Term := .app t48 t50
def t40 : Term := .app t48 t42
def t47 : Term := .app t48 t49
def t13 : Term := .app t20 t15
def t46 : Term := .app t47 t52
def t45 : Term := .lam t46
def t12 : Term := .app t13 t19
def t11 : Term := .lam t12
def t9 : Term := .app t51 t11
def t8 : Term := .lam t9
def t39 : Term := .app t40 t45
def t7 : Term := .lam t8
def t38 : Term := .lam t39
def t2 : Term := .app t3 t7
def t32 : Term := .app t47 t38
def t31 : Term := .lam t32
def t1 : Term := .app t2 t42
def t25 : Term := .app t47 t31
def t24 : Term := .lam t25
def t0 : Term := .app t1 t24
def terms : Array Term := #[t0,t1,t2,t3,t4,t48,t48,t7,t8,t9,t51,t11,t12,t13,t20,t15,t48,t50,t51,t19,t20,t42,t43,t48,t24,t25,t47,t48,t49,t50,t51,t31,t32,t47,t48,t49,t50,t51,t38,t39,t40,t48,t42,t43,t48,t45,t46,t47,t48,t49,t50,t51,t52]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4845195964814
