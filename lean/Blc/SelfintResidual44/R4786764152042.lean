import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4786764152042
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 7,.lam 2,.app 3 6,.app 4 5,.var 0,.opaque,.var 0,.lam 8,.lam 9,.app 10 19,.app 11 12,.var 0,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.opaque,.var 0]
def values : Array (List AClo) := #[[⟨7,[]⟩],[⟨5,[0]⟩,⟨12,[2,1]⟩],[⟨6,[0]⟩,⟨19,[2,1]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨7,[]⟩,0⟩],[⟨⟨12,[2,1]⟩,5⟩],[⟨⟨6,[0]⟩,0⟩],[⟨⟨5,[0]⟩,3⟩],[⟨⟨19,[2,1]⟩,0⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,3⟩,⟨⟨4,[0]⟩,4⟩,⟨⟨6,[0]⟩,2⟩,⟨⟨7,[]⟩,2⟩,⟨⟨7,[]⟩,4⟩,⟨⟨8,[1]⟩,3⟩,⟨⟨8,[1]⟩,5⟩,⟨⟨9,[2,1]⟩,0⟩,⟨⟨10,[2,1]⟩,5⟩,⟨⟨11,[2,1]⟩,2⟩,⟨⟨19,[2,1]⟩,2⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[7],[6],[9],[8],[10],[10],[11],[12],[5,13],[5,13]]
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
def e : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))) (.var 0)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22378950196458 := by decide
def t19 : Term := .var 0
def t17 : Term := .var 1
def t15 : Term := .var 3
def t3 : Term := .app t19 t19
def t16 : Term := .app t17 t19
def t2 : Term := .app t3 t19
def t1 : Term := .lam t2
def t14 : Term := .app t15 t16
def t13 : Term := .lam t14
def t12 : Term := .lam t13
def t10 : Term := .app t19 t12
def t9 : Term := .app t10 t19
def t8 : Term := .lam t9
def t7 : Term := .lam t8
def t0 : Term := .app t1 t7
def terms : Array Term := #[t0,t1,t2,t3,t19,t19,t19,t7,t8,t9,t10,t19,t12,t13,t14,t15,t16,t17,t19,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4786764152042
