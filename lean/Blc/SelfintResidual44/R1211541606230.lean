import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R1211541606230
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 25,.app 2 22,.lam 3,.app 4 8,.lam 5,.app 6 7,.var 0,.var 0,.lam 9,.app 10 21,.app 11 20,.app 12 13,.var 0,.lam 14,.lam 15,.app 16 17,.var 1,.app 18 19,.var 2,.var 0,.var 0,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
def values : Array (List AClo) := #[[⟨13,[6,4]⟩,⟨13,[7,4]⟩],[⟨17,[2,0,8,4]⟩],[⟨20,[6,4]⟩,⟨20,[7,4]⟩],[⟨21,[6,4]⟩,⟨21,[7,4]⟩],[⟨22,[]⟩],[⟨8,[4]⟩],[⟨13,[8,4]⟩],[⟨19,[2,0,8,4]⟩],[⟨7,[5,4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨25,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨20,[6,4]⟩,15⟩],[⟨⟨20,[7,4]⟩,16⟩],[⟨⟨20,[8,4]⟩,17⟩],[⟨⟨13,[6,4]⟩,3⟩],[⟨⟨13,[7,4]⟩,4⟩],[⟨⟨13,[8,4]⟩,5⟩],[⟨⟨17,[2,0,8,4]⟩,15⟩,⟨⟨17,[2,0,8,4]⟩,16⟩],[⟨⟨17,[3,1,6,4]⟩,5⟩,⟨⟨17,[3,1,6,4]⟩,10⟩,⟨⟨17,[3,1,6,4]⟩,11⟩],[⟨⟨17,[3,1,7,4]⟩,5⟩,⟨⟨17,[3,1,7,4]⟩,10⟩,⟨⟨17,[3,1,7,4]⟩,11⟩],[⟨⟨19,[2,0,8,4]⟩,10⟩,⟨⟨19,[2,0,8,4]⟩,11⟩],[⟨⟨8,[4]⟩,1⟩],[⟨⟨7,[5,4]⟩,1⟩],[⟨⟨21,[6,4]⟩,5⟩],[⟨⟨21,[7,4]⟩,10⟩,⟨⟨21,[7,4]⟩,11⟩],[⟨⟨21,[8,4]⟩,1⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[4]⟩,1⟩,⟨⟨4,[4]⟩,13⟩,⟨⟨5,[5,4]⟩,1⟩,⟨⟨6,[5,4]⟩,14⟩,⟨⟨7,[5,4]⟩,8⟩,⟨⟨7,[5,4]⟩,12⟩,⟨⟨8,[4]⟩,8⟩,⟨⟨8,[4]⟩,12⟩,⟨⟨8,[4]⟩,14⟩,⟨⟨9,[6,4]⟩,5⟩,⟨⟨9,[7,4]⟩,10⟩,⟨⟨9,[7,4]⟩,11⟩,⟨⟨9,[8,4]⟩,1⟩,⟨⟨10,[6,4]⟩,15⟩,⟨⟨10,[7,4]⟩,16⟩,⟨⟨10,[8,4]⟩,17⟩,⟨⟨11,[6,4]⟩,3⟩,⟨⟨11,[7,4]⟩,4⟩,⟨⟨11,[8,4]⟩,5⟩,⟨⟨12,[6,4]⟩,6⟩,⟨⟨12,[7,4]⟩,7⟩,⟨⟨12,[8,4]⟩,8⟩,⟨⟨13,[6,4]⟩,9⟩,⟨⟨13,[7,4]⟩,9⟩,⟨⟨13,[8,4]⟩,6⟩,⟨⟨13,[8,4]⟩,7⟩,⟨⟨14,[0,8,4]⟩,3⟩,⟨⟨14,[0,8,4]⟩,4⟩,⟨⟨14,[1,6,4]⟩,15⟩,⟨⟨14,[1,6,4]⟩,16⟩,⟨⟨14,[1,7,4]⟩,15⟩,⟨⟨14,[1,7,4]⟩,16⟩,⟨⟨15,[2,0,8,4]⟩,15⟩,⟨⟨15,[2,0,8,4]⟩,16⟩,⟨⟨15,[3,1,6,4]⟩,5⟩,⟨⟨15,[3,1,6,4]⟩,10⟩,⟨⟨15,[3,1,6,4]⟩,11⟩,⟨⟨15,[3,1,7,4]⟩,5⟩,⟨⟨15,[3,1,7,4]⟩,10⟩,⟨⟨15,[3,1,7,4]⟩,11⟩,⟨⟨16,[2,0,8,4]⟩,9⟩,⟨⟨16,[3,1,6,4]⟩,10⟩,⟨⟨16,[3,1,7,4]⟩,11⟩,⟨⟨17,[2,0,8,4]⟩,10⟩,⟨⟨17,[2,0,8,4]⟩,11⟩,⟨⟨18,[2,0,8,4]⟩,12⟩,⟨⟨19,[2,0,8,4]⟩,7⟩,⟨⟨20,[6,4]⟩,7⟩,⟨⟨20,[7,4]⟩,7⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[11],[9],[10],[12],[13,14],[15],[16],[17],[17],[18],[19],[20],[21],[22],[23],[24],[27],[49],[7],[31,32],[33,34],[29],[30],[35],[36],[37],[38,39],[40],[41,42],[43],[43],[44],[44],[44],[45],[45],[45],[25,26],[46],[47],[48],[48],[8],[50,51],[28],[49]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 12=true := by decide +kernel
theorem block48 : checkRange P V K states hints 48 4=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<52 := hi
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
def e : Term := (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)) (.var 1)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 18803727650646 := by decide
def t49 : Term := .var 0
def t52 : Term := .var 1
def t18 : Term := .var 2
def t44 : Term := .lam t49
def t51 : Term := .lam t52
def t5 : Term := .app t49 t49
def t43 : Term := .lam t44
def t53 : Term := .var 4
def t50 : Term := .lam t51
def t4 : Term := .lam t5
def t17 : Term := .app t18 t49
def t41 : Term := .app t49 t43
def t48 : Term := .app t49 t50
def t15 : Term := .app t52 t17
def t14 : Term := .lam t15
def t13 : Term := .lam t14
def t47 : Term := .app t48 t53
def t11 : Term := .app t49 t13
def t46 : Term := .lam t47
def t10 : Term := .app t11 t49
def t9 : Term := .app t10 t52
def t8 : Term := .lam t9
def t40 : Term := .app t41 t46
def t39 : Term := .lam t40
def t3 : Term := .app t4 t8
def t2 : Term := .lam t3
def t33 : Term := .app t48 t39
def t32 : Term := .lam t33
def t1 : Term := .app t2 t43
def t26 : Term := .app t48 t32
def t25 : Term := .lam t26
def t0 : Term := .app t1 t25
def terms : Array Term := #[t0,t1,t2,t3,t4,t5,t49,t49,t8,t9,t10,t11,t49,t13,t14,t15,t52,t17,t18,t49,t49,t52,t43,t44,t49,t25,t26,t48,t49,t50,t51,t52,t32,t33,t48,t49,t50,t51,t52,t39,t40,t41,t49,t43,t44,t49,t46,t47,t48,t49,t50,t51,t52,t53]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R1211541606230
