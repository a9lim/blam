import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4778693955194
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 8,.lam 2,.app 3 7,.app 4 5,.var 0,.opaque,.opaque,.var 0,.lam 9,.lam 10,.app 11 14,.app 12 13,.var 0,.opaque,.lam 15,.app 16 17,.var 1,.opaque,.opaque,.opaque]
def values : Array (List AClo) := #[[⟨8,[]⟩],[⟨13,[3,2]⟩,⟨17,[1,3,2]⟩],[⟨5,[0]⟩,⟨13,[3,2]⟩,⟨17,[1,3,2]⟩],[⟨7,[0]⟩,⟨14,[3,2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨8,[]⟩,0⟩],[⟨⟨14,[3,2]⟩,0⟩],[⟨⟨13,[3,2]⟩,2⟩],[⟨⟨17,[1,3,2]⟩,2⟩],[⟨⟨7,[0]⟩,0⟩],[⟨⟨5,[0]⟩,5⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,5⟩,⟨⟨4,[0]⟩,6⟩,⟨⟨7,[0]⟩,3⟩,⟨⟨7,[0]⟩,4⟩,⟨⟨8,[]⟩,3⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,6⟩,⟨⟨9,[2]⟩,2⟩,⟨⟨9,[2]⟩,5⟩,⟨⟨10,[3,2]⟩,0⟩,⟨⟨11,[3,2]⟩,2⟩,⟨⟨12,[3,2]⟩,3⟩,⟨⟨14,[3,2]⟩,3⟩,⟨⟨14,[3,2]⟩,4⟩,⟨⟨15,[1,3,2]⟩,2⟩,⟨⟨16,[1,3,2]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[9],[7],[8],[10],[10],[11],[12],[12],[13],[14],[5,15],[17],[17],[18],[6,16]]
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
def e : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22370879999610 := by decide
def t19 : Term := .var 0
def t16 : Term := .var 1
def t5 : Term := .lam t19
def t18 : Term := .var 2
def t11 : Term := .app t19 t16
def t3 : Term := .app t19 t5
def t17 : Term := .app t18 t19
def t2 : Term := .app t3 t19
def t15 : Term := .app t16 t17
def t1 : Term := .lam t2
def t14 : Term := .lam t15
def t10 : Term := .app t11 t14
def t9 : Term := .lam t10
def t8 : Term := .lam t9
def t0 : Term := .app t1 t8
def terms : Array Term := #[t0,t1,t2,t3,t19,t5,t19,t19,t8,t9,t10,t11,t19,t16,t14,t15,t16,t17,t18,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4778693955194
