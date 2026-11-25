import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4778693955386
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 8,.lam 2,.app 3 7,.app 4 5,.var 0,.lam 6,.var 0,.var 0,.lam 9,.lam 10,.app 11 14,.app 12 13,.var 0,.var 1,.lam 15,.app 16 17,.var 2,.app 18 19,.var 1,.var 0]
def values : Array (List AClo) := #[[⟨8,[]⟩],[⟨13,[4,3]⟩,⟨19,[1,4,3]⟩],[⟨17,[1,4,3]⟩],[⟨5,[0]⟩,⟨13,[4,3]⟩,⟨19,[1,4,3]⟩],[⟨7,[0]⟩,⟨14,[4,3]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨8,[]⟩,0⟩],[⟨⟨14,[4,3]⟩,0⟩],[⟨⟨13,[4,3]⟩,2⟩],[⟨⟨17,[1,4,3]⟩,2⟩],[⟨⟨19,[1,4,3]⟩,2⟩],[⟨⟨7,[0]⟩,0⟩],[⟨⟨5,[0]⟩,6⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,6⟩,⟨⟨4,[0]⟩,7⟩,⟨⟨5,[0]⟩,4⟩,⟨⟨6,[2,0]⟩,2⟩,⟨⟨7,[0]⟩,3⟩,⟨⟨7,[0]⟩,5⟩,⟨⟨8,[]⟩,3⟩,⟨⟨8,[]⟩,5⟩,⟨⟨8,[]⟩,7⟩,⟨⟨9,[3]⟩,2⟩,⟨⟨9,[3]⟩,6⟩,⟨⟨10,[4,3]⟩,0⟩,⟨⟨11,[4,3]⟩,2⟩,⟨⟨12,[4,3]⟩,3⟩,⟨⟨13,[4,3]⟩,4⟩,⟨⟨14,[4,3]⟩,3⟩,⟨⟨14,[4,3]⟩,5⟩,⟨⟨15,[1,4,3]⟩,2⟩,⟨⟨16,[1,4,3]⟩,4⟩,⟨⟨17,[1,4,3]⟩,2⟩,⟨⟨18,[1,4,3]⟩,5⟩,⟨⟨19,[1,4,3]⟩,4⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[11],[6],[22],[9],[10],[12],[12],[13],[14],[14],[15],[16],[7,18],[5,17,24],[20],[20],[21],[5,17,24],[23],[8,19],[17,24]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 1=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<25 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 exact range_sound block24 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)

open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22370879999802 := by decide
def t19 : Term := .var 0
def t18 : Term := .var 1
def t5 : Term := .lam t19
def t16 : Term := .var 2
def t11 : Term := .app t19 t18
def t17 : Term := .app t18 t19
def t3 : Term := .app t19 t5
def t2 : Term := .app t3 t19
def t15 : Term := .app t16 t17
def t1 : Term := .lam t2
def t14 : Term := .lam t15
def t10 : Term := .app t11 t14
def t9 : Term := .lam t10
def t8 : Term := .lam t9
def t0 : Term := .app t1 t8
def terms : Array Term := #[t0,t1,t2,t3,t19,t5,t19,t19,t8,t9,t10,t11,t19,t18,t14,t15,t16,t17,t18,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4778693955386
