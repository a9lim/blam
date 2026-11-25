import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4823428687786
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 6,.lam 2,.app 3 4,.var 0,.lam 5,.var 1,.lam 7,.app 8 19,.app 9 18,.app 10 11,.var 0,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.var 0,.opaque]
def values : Array (List AClo) := #[[⟨6,[]⟩],[⟨11,[2]⟩],[⟨4,[0]⟩,⟨18,[2]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨6,[]⟩,0⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨19,[2]⟩,0⟩,⟨⟨19,[2]⟩,3⟩],[⟨⟨18,[2]⟩,3⟩],[⟨⟨11,[2]⟩,4⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,2⟩,⟨⟨4,[0]⟩,5⟩,⟨⟨5,[1,0]⟩,4⟩,⟨⟨6,[]⟩,2⟩,⟨⟨6,[]⟩,4⟩,⟨⟨7,[2]⟩,0⟩,⟨⟨7,[2]⟩,3⟩,⟨⟨8,[2]⟩,3⟩,⟨⟨9,[2]⟩,4⟩,⟨⟨10,[2]⟩,5⟩,⟨⟨18,[2]⟩,5⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[6],[5],[7],[8],[9],[10],[10],[11],[12],[4,13],[4,13]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 2=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<14 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 exact range_sound block12 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)

open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))) (.var 0)) (.var 0))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22415614732202 := by decide
def t19 : Term := .var 0
def t14 : Term := .var 1
def t16 : Term := .var 2
def t4 : Term := .lam t14
def t15 : Term := .app t16 t19
def t2 : Term := .app t19 t4
def t1 : Term := .lam t2
def t13 : Term := .app t14 t15
def t12 : Term := .lam t13
def t11 : Term := .lam t12
def t9 : Term := .app t19 t11
def t8 : Term := .app t9 t19
def t7 : Term := .app t8 t19
def t6 : Term := .lam t7
def t0 : Term := .app t1 t6
def terms : Array Term := #[t0,t1,t2,t19,t4,t14,t6,t7,t8,t9,t19,t11,t12,t13,t14,t15,t16,t19,t19,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4823428687786
