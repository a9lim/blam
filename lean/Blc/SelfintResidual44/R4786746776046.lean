import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4786746776046
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 24,.app 2 21,.app 3 9,.lam 4,.app 5 8,.app 6 7,.var 0,.opaque,.var 0,.lam 10,.lam 11,.lam 12,.app 13 18,.app 14 17,.app 15 16,.var 1,.opaque,.var 1,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
def values : Array (List AClo) := #[[⟨8,[2]⟩,⟨17,[1,0,3]⟩],[⟨18,[1,0,3]⟩,⟨21,[]⟩],[⟨9,[]⟩],[⟨7,[2]⟩,⟨16,[1,0,3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨24,[]⟩,0⟩],[⟨⟨21,[]⟩,1⟩],[⟨⟨18,[1,0,3]⟩,1⟩],[⟨⟨17,[1,0,3]⟩,3⟩],[⟨⟨16,[1,0,3]⟩,4⟩],[⟨⟨9,[]⟩,2⟩],[⟨⟨8,[2]⟩,2⟩],[⟨⟨7,[2]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,6⟩,⟨⟨4,[2]⟩,2⟩,⟨⟨5,[2]⟩,7⟩,⟨⟨6,[2]⟩,8⟩,⟨⟨8,[2]⟩,5⟩,⟨⟨9,[]⟩,5⟩,⟨⟨9,[]⟩,8⟩,⟨⟨10,[3]⟩,4⟩,⟨⟨10,[3]⟩,7⟩,⟨⟨11,[0,3]⟩,2⟩,⟨⟨11,[0,3]⟩,3⟩,⟨⟨12,[1,0,3]⟩,1⟩,⟨⟨13,[1,0,3]⟩,3⟩,⟨⟨14,[1,0,3]⟩,4⟩,⟨⟨15,[1,0,3]⟩,5⟩,⟨⟨17,[1,0,3]⟩,5⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[6],[9],[8],[10],[11],[13],[12],[14],[14],[15],[16],[17],[7,18],[7,18]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 7=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<19 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 exact range_sound block12 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)

open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 2) (.var 2)))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22378932820462 := by decide
def t48 : Term := .var 0
def t51 : Term := .var 1
def t20 : Term := .var 2
def t43 : Term := .lam t48
def t50 : Term := .lam t51
def t5 : Term := .app t48 t48
def t42 : Term := .lam t43
def t52 : Term := .var 4
def t14 : Term := .app t51 t48
def t49 : Term := .lam t50
def t4 : Term := .app t5 t48
def t18 : Term := .app t20 t20
def t40 : Term := .app t48 t42
def t47 : Term := .app t48 t49
def t3 : Term := .lam t4
def t13 : Term := .app t14 t51
def t46 : Term := .app t47 t52
def t45 : Term := .lam t46
def t12 : Term := .app t13 t18
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
def terms : Array Term := #[t0,t1,t2,t3,t4,t5,t48,t48,t48,t9,t10,t11,t12,t13,t14,t51,t48,t51,t18,t20,t20,t42,t43,t48,t24,t25,t47,t48,t49,t50,t51,t31,t32,t47,t48,t49,t50,t51,t38,t39,t40,t48,t42,t43,t48,t45,t46,t47,t48,t49,t50,t51,t52]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4786746776046
