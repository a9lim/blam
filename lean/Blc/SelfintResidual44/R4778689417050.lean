import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4778689417050
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 25,.app 2 22,.app 3 10,.lam 4,.app 5 9,.app 6 7,.var 0,.opaque,.opaque,.var 0,.lam 11,.lam 12,.lam 13,.app 14 21,.app 15 20,.app 16 17,.var 1,.opaque,.opaque,.opaque,.var 1,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque]
def values : Array (List AClo) := #[[⟨7,[3]⟩,⟨17,[2,1,0]⟩],[⟨9,[3]⟩,⟨20,[2,1,0]⟩],[⟨21,[2,1,0]⟩,⟨22,[]⟩],[⟨10,[]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨25,[]⟩,0⟩],[⟨⟨22,[]⟩,1⟩],[⟨⟨21,[2,1,0]⟩,1⟩],[⟨⟨20,[2,1,0]⟩,3⟩],[⟨⟨17,[2,1,0]⟩,4⟩],[⟨⟨10,[]⟩,2⟩],[⟨⟨9,[3]⟩,2⟩],[⟨⟨7,[3]⟩,7⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,6⟩,⟨⟨4,[3]⟩,2⟩,⟨⟨5,[3]⟩,7⟩,⟨⟨6,[3]⟩,8⟩,⟨⟨9,[3]⟩,5⟩,⟨⟨10,[]⟩,5⟩,⟨⟨10,[]⟩,8⟩,⟨⟨11,[0]⟩,4⟩,⟨⟨11,[0]⟩,7⟩,⟨⟨12,[1,0]⟩,2⟩,⟨⟨12,[1,0]⟩,3⟩,⟨⟨13,[2,1,0]⟩,1⟩,⟨⟨14,[2,1,0]⟩,3⟩,⟨⟨15,[2,1,0]⟩,4⟩,⟨⟨16,[2,1,0]⟩,5⟩,⟨⟨20,[2,1,0]⟩,5⟩]
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
def e : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.var 1)) (.var 0))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22370875461466 := by decide
def t49 : Term := .var 0
def t52 : Term := .var 1
def t44 : Term := .lam t49
def t18 : Term := .var 2
def t51 : Term := .lam t52
def t43 : Term := .lam t44
def t53 : Term := .var 4
def t50 : Term := .lam t51
def t5 : Term := .app t49 t44
def t17 : Term := .app t18 t49
def t41 : Term := .app t49 t43
def t48 : Term := .app t49 t50
def t4 : Term := .app t5 t49
def t15 : Term := .app t52 t17
def t3 : Term := .lam t4
def t14 : Term := .app t15 t52
def t47 : Term := .app t48 t53
def t46 : Term := .lam t47
def t13 : Term := .app t14 t49
def t12 : Term := .lam t13
def t11 : Term := .lam t12
def t10 : Term := .lam t11
def t40 : Term := .app t41 t46
def t39 : Term := .lam t40
def t2 : Term := .app t3 t10
def t33 : Term := .app t48 t39
def t32 : Term := .lam t33
def t1 : Term := .app t2 t43
def t26 : Term := .app t48 t32
def t25 : Term := .lam t26
def t0 : Term := .app t1 t25
def terms : Array Term := #[t0,t1,t2,t3,t4,t5,t49,t44,t49,t49,t10,t11,t12,t13,t14,t15,t52,t17,t18,t49,t52,t49,t43,t44,t49,t25,t26,t48,t49,t50,t51,t52,t32,t33,t48,t49,t50,t51,t52,t39,t40,t41,t49,t43,t44,t49,t46,t47,t48,t49,t50,t51,t52,t53]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] (call e (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (inputCount (k := 2) he (by decide) (by decide)) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4778689417050
