import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4786747158390
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 24,.app 2 21,.app 3 9,.lam 4,.app 5 8,.app 6 7,.var 0,.var 0,.var 0,.lam 10,.lam 11,.lam 12,.app 13 16,.app 14 15,.var 1,.opaque,.app 17 20,.app 18 19,.var 2,.var 2,.var 1,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
def values : Array (List AClo) := #[[⟨16,[4,2,10]⟩,⟨16,[6,1,9]⟩],[⟨20,[4,2,10]⟩,⟨20,[6,1,9]⟩],[⟨8,[7]⟩],[⟨24,[]⟩],[⟨21,[]⟩],[⟨16,[3,0,8]⟩,⟨16,[5,0,8]⟩],[⟨15,[3,0,8]⟩,⟨15,[5,0,8]⟩],[⟨9,[]⟩],[⟨15,[4,2,10]⟩,⟨15,[6,1,9]⟩],[⟨19,[4,2,10]⟩,⟨19,[6,1,9]⟩],[⟨7,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨24,[]⟩,0⟩],[⟨⟨21,[]⟩,1⟩],[⟨⟨16,[3,0,8]⟩,0⟩],[⟨⟨16,[4,2,10]⟩,1⟩],[⟨⟨16,[5,0,8]⟩,0⟩],[⟨⟨16,[6,1,9]⟩,3⟩,⟨⟨16,[6,1,9]⟩,5⟩],[⟨⟨15,[3,0,8]⟩,3⟩],[⟨⟨15,[4,2,10]⟩,4⟩],[⟨⟨15,[5,0,8]⟩,5⟩],[⟨⟨15,[6,1,9]⟩,6⟩],[⟨⟨20,[4,2,10]⟩,7⟩],[⟨⟨20,[4,2,10]⟩,9⟩],[⟨⟨20,[6,1,9]⟩,7⟩],[⟨⟨20,[6,1,9]⟩,9⟩],[⟨⟨19,[4,2,10]⟩,11⟩],[⟨⟨19,[4,2,10]⟩,12⟩],[⟨⟨19,[6,1,9]⟩,13⟩],[⟨⟨19,[6,1,9]⟩,14⟩],[⟨⟨9,[]⟩,2⟩],[⟨⟨8,[7]⟩,2⟩],[⟨⟨7,[7]⟩,20⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,19⟩,⟨⟨4,[7]⟩,2⟩,⟨⟨5,[7]⟩,20⟩,⟨⟨6,[7]⟩,21⟩,⟨⟨7,[7]⟩,15⟩,⟨⟨7,[7]⟩,16⟩,⟨⟨7,[7]⟩,17⟩,⟨⟨7,[7]⟩,18⟩,⟨⟨8,[7]⟩,8⟩,⟨⟨8,[7]⟩,10⟩,⟨⟨9,[]⟩,8⟩,⟨⟨9,[]⟩,10⟩,⟨⟨9,[]⟩,15⟩,⟨⟨9,[]⟩,16⟩,⟨⟨9,[]⟩,17⟩,⟨⟨9,[]⟩,18⟩,⟨⟨9,[]⟩,21⟩,⟨⟨10,[8]⟩,4⟩,⟨⟨10,[8]⟩,6⟩,⟨⟨10,[9]⟩,11⟩,⟨⟨10,[9]⟩,12⟩,⟨⟨10,[9]⟩,13⟩,⟨⟨10,[9]⟩,14⟩,⟨⟨10,[10]⟩,20⟩,⟨⟨11,[0,8]⟩,1⟩,⟨⟨11,[0,8]⟩,3⟩,⟨⟨11,[0,8]⟩,5⟩,⟨⟨11,[1,9]⟩,7⟩,⟨⟨11,[1,9]⟩,9⟩,⟨⟨11,[2,10]⟩,2⟩,⟨⟨12,[3,0,8]⟩,0⟩,⟨⟨12,[4,2,10]⟩,1⟩,⟨⟨12,[5,0,8]⟩,0⟩,⟨⟨12,[6,1,9]⟩,3⟩,⟨⟨12,[6,1,9]⟩,5⟩,⟨⟨13,[3,0,8]⟩,3⟩,⟨⟨13,[4,2,10]⟩,4⟩,⟨⟨13,[5,0,8]⟩,5⟩,⟨⟨13,[6,1,9]⟩,6⟩,⟨⟨14,[3,0,8]⟩,7⟩,⟨⟨14,[4,2,10]⟩,8⟩,⟨⟨14,[5,0,8]⟩,9⟩,⟨⟨14,[6,1,9]⟩,10⟩,⟨⟨16,[4,2,10]⟩,7⟩,⟨⟨16,[4,2,10]⟩,9⟩,⟨⟨16,[6,1,9]⟩,7⟩,⟨⟨16,[6,1,9]⟩,9⟩,⟨⟨17,[4,2,10]⟩,11⟩,⟨⟨17,[4,2,10]⟩,12⟩,⟨⟨17,[6,1,9]⟩,13⟩,⟨⟨17,[6,1,9]⟩,14⟩,⟨⟨18,[4,2,10]⟩,15⟩,⟨⟨18,[4,2,10]⟩,16⟩,⟨⟨18,[6,1,9]⟩,17⟩,⟨⟨18,[6,1,9]⟩,18⟩,⟨⟨19,[4,2,10]⟩,17⟩,⟨⟨19,[4,2,10]⟩,18⟩,⟨⟨19,[6,1,9]⟩,17⟩,⟨⟨19,[6,1,9]⟩,18⟩,⟨⟨20,[4,2,10]⟩,10⟩,⟨⟨20,[6,1,9]⟩,10⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[19],[15],[16],[17],[18],[13],[14],[20],[21],[22],[23],[24],[25],[26],[27],[28,29],[30],[31],[30],[31],[32],[33],[35],[35],[36],[37],[34],[38],[39],[40],[41],[41],[42],[43],[44],[45],[46,48],[11],[47,49],[62,63],[50],[51],[52],[53],[54],[55],[56],[57],[7],[8],[58,60],[59,61],[9],[10],[58,60],[59,61],[12],[62,63]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 12=true := by decide +kernel
theorem block48 : checkRange P V K states hints 48 12=true := by decide +kernel
theorem block60 : checkRange P V K states hints 60 4=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<64 := hi
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
def e : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.var 1) (.var 0)) (.app (.app (.var 2) (.var 2)) (.var 1)))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22378933202806 := by decide
def t48 : Term := .var 0
def t51 : Term := .var 1
def t19 : Term := .var 2
def t43 : Term := .lam t48
def t50 : Term := .lam t51
def t5 : Term := .app t48 t48
def t42 : Term := .lam t43
def t52 : Term := .var 4
def t13 : Term := .app t51 t48
def t49 : Term := .lam t50
def t4 : Term := .app t5 t48
def t17 : Term := .app t19 t19
def t40 : Term := .app t48 t42
def t47 : Term := .app t48 t49
def t3 : Term := .lam t4
def t16 : Term := .app t17 t51
def t46 : Term := .app t47 t52
def t45 : Term := .lam t46
def t12 : Term := .app t13 t16
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
def terms : Array Term := #[t0,t1,t2,t3,t4,t5,t48,t48,t48,t9,t10,t11,t12,t13,t51,t48,t16,t17,t19,t19,t51,t42,t43,t48,t24,t25,t47,t48,t49,t50,t51,t31,t32,t47,t48,t49,t50,t51,t38,t39,t40,t48,t42,t43,t48,t45,t46,t47,t48,t49,t50,t51,t52]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4786747158390
