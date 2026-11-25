import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4845195705430
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 25,.app 2 22,.app 3 7,.lam 4,.app 5 6,.var 0,.var 0,.lam 8,.lam 9,.app 10 11,.var 1,.lam 12,.app 13 21,.app 14 20,.app 15 16,.var 0,.app 17 18,.var 2,.lam 19,.var 0,.var 0,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
def values : Array (List AClo) := #[[⟨20,[0,10,5]⟩,⟨20,[1,8,7]⟩],[⟨16,[2,9,6]⟩],[⟨11,[8,7]⟩],[⟨11,[10,5]⟩],[⟨7,[]⟩],[⟨18,[2,9,6]⟩],[⟨6,[4]⟩],[⟨11,[9,6]⟩],[⟨25,[]⟩],[⟨22,[]⟩],[⟨16,[0,10,5]⟩,⟨16,[1,8,7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨25,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨21,[0,10,5]⟩,3⟩,⟨⟨21,[0,10,5]⟩,4⟩],[⟨⟨21,[1,8,7]⟩,8⟩],[⟨⟨21,[2,9,6]⟩,0⟩],[⟨⟨20,[0,10,5]⟩,3⟩],[⟨⟨20,[1,8,7]⟩,4⟩],[⟨⟨20,[2,9,6]⟩,5⟩],[⟨⟨16,[0,10,5]⟩,6⟩],[⟨⟨16,[1,8,7]⟩,7⟩],[⟨⟨16,[2,9,6]⟩,8⟩],[⟨⟨18,[2,9,6]⟩,9⟩],[⟨⟨18,[2,9,6]⟩,10⟩],[⟨⟨7,[]⟩,2⟩],[⟨⟨6,[4]⟩,2⟩],[⟨⟨11,[8,7]⟩,0⟩],[⟨⟨11,[9,6]⟩,1⟩],[⟨⟨11,[10,5]⟩,6⟩,⟨⟨11,[10,5]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,14⟩,⟨⟨4,[4]⟩,2⟩,⟨⟨5,[4]⟩,15⟩,⟨⟨6,[4]⟩,12⟩,⟨⟨6,[4]⟩,13⟩,⟨⟨6,[4]⟩,17⟩,⟨⟨7,[]⟩,12⟩,⟨⟨7,[]⟩,13⟩,⟨⟨7,[]⟩,15⟩,⟨⟨7,[]⟩,17⟩,⟨⟨8,[5]⟩,9⟩,⟨⟨8,[5]⟩,10⟩,⟨⟨8,[6]⟩,2⟩,⟨⟨8,[7]⟩,1⟩,⟨⟨9,[8,7]⟩,0⟩,⟨⟨9,[9,6]⟩,1⟩,⟨⟨9,[10,5]⟩,6⟩,⟨⟨9,[10,5]⟩,7⟩,⟨⟨10,[8,7]⟩,16⟩,⟨⟨10,[9,6]⟩,17⟩,⟨⟨10,[10,5]⟩,18⟩,⟨⟨11,[8,7]⟩,11⟩,⟨⟨11,[9,6]⟩,16⟩,⟨⟨11,[10,5]⟩,6⟩,⟨⟨11,[10,5]⟩,7⟩,⟨⟨12,[0,10,5]⟩,3⟩,⟨⟨12,[0,10,5]⟩,4⟩,⟨⟨12,[1,8,7]⟩,8⟩,⟨⟨12,[2,9,6]⟩,0⟩,⟨⟨13,[0,10,5]⟩,3⟩,⟨⟨13,[1,8,7]⟩,4⟩,⟨⟨13,[2,9,6]⟩,5⟩,⟨⟨14,[0,10,5]⟩,6⟩,⟨⟨14,[1,8,7]⟩,7⟩,⟨⟨14,[2,9,6]⟩,8⟩,⟨⟨15,[0,10,5]⟩,9⟩,⟨⟨15,[1,8,7]⟩,10⟩,⟨⟨15,[2,9,6]⟩,11⟩,⟨⟨16,[2,9,6]⟩,9⟩,⟨⟨16,[2,9,6]⟩,10⟩,⟨⟨17,[2,9,6]⟩,12⟩,⟨⟨17,[2,9,6]⟩,13⟩,⟨⟨18,[2,9,6]⟩,18⟩,⟨⟨19,[3,2,9,6]⟩,6⟩,⟨⟨19,[3,2,9,6]⟩,7⟩,⟨⟨20,[0,10,5]⟩,9⟩,⟨⟨20,[1,8,7]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[11],[9],[10],[12],[13],[14],[15],[16],[19],[20],[18],[17],[21],[22],[23],[23],[25],[8],[45],[30],[31],[28],[29],[32],[32],[33],[34],[35],[36],[37],[38],[39],[40],[48,49],[42],[24],[43],[44],[6],[7],[46,47],[26],[27],[48,49],[41]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 12=true := by decide +kernel
theorem block48 : checkRange P V K states hints 48 2=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<50 := hi
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
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.app (.var 0) (.app (.var 2) (.lam (.var 0)))) (.var 0)) (.var 1)))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22437381749846 := by decide
def t49 : Term := .var 0
def t52 : Term := .var 1
def t17 : Term := .var 2
def t44 : Term := .lam t49
def t51 : Term := .lam t52
def t4 : Term := .app t49 t49
def t43 : Term := .lam t44
def t53 : Term := .var 4
def t50 : Term := .lam t51
def t3 : Term := .lam t4
def t16 : Term := .app t17 t44
def t41 : Term := .app t49 t43
def t48 : Term := .app t49 t50
def t14 : Term := .app t49 t16
def t13 : Term := .app t14 t49
def t47 : Term := .app t48 t53
def t46 : Term := .lam t47
def t12 : Term := .app t13 t52
def t11 : Term := .lam t12
def t9 : Term := .app t52 t11
def t8 : Term := .lam t9
def t40 : Term := .app t41 t46
def t7 : Term := .lam t8
def t39 : Term := .lam t40
def t2 : Term := .app t3 t7
def t33 : Term := .app t48 t39
def t32 : Term := .lam t33
def t1 : Term := .app t2 t43
def t26 : Term := .app t48 t32
def t25 : Term := .lam t26
def t0 : Term := .app t1 t25
def terms : Array Term := #[t0,t1,t2,t3,t4,t49,t49,t7,t8,t9,t52,t11,t12,t13,t14,t49,t16,t17,t44,t49,t49,t52,t43,t44,t49,t25,t26,t48,t49,t50,t51,t52,t32,t33,t48,t49,t50,t51,t52,t39,t40,t41,t49,t43,t44,t49,t46,t47,t48,t49,t50,t51,t52,t53]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4845195705430
