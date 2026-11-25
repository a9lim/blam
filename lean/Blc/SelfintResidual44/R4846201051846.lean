import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4846201051846
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 18,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 17,.app 13 14,.var 2,.app 15 16,.var 0,.opaque,.opaque,.lam 19,.var 1]
def values : Array (List AClo) := #[[⟨5,[]⟩],[⟨18,[3]⟩,⟨18,[5]⟩],[⟨16,[1,6,4]⟩],[⟨14,[1,6,4]⟩],[⟨4,[0]⟩],[⟨9,[4]⟩],[⟨9,[3]⟩,⟨9,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨5,[]⟩,0⟩],[⟨⟨17,[1,6,4]⟩,2⟩,⟨⟨17,[1,6,4]⟩,7⟩],[⟨⟨14,[1,6,4]⟩,2⟩],[⟨⟨16,[1,6,4]⟩,9⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨18,[3]⟩,2⟩],[⟨⟨18,[4]⟩,0⟩],[⟨⟨18,[5]⟩,7⟩],[⟨⟨9,[3]⟩,6⟩],[⟨⟨9,[4]⟩,7⟩],[⟨⟨9,[5]⟩,8⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,5⟩,⟨⟨4,[0]⟩,3⟩,⟨⟨4,[0]⟩,10⟩,⟨⟨5,[]⟩,3⟩,⟨⟨5,[]⟩,5⟩,⟨⟨5,[]⟩,10⟩,⟨⟨6,[3]⟩,2⟩,⟨⟨6,[4]⟩,0⟩,⟨⟨6,[5]⟩,7⟩,⟨⟨7,[3]⟩,6⟩,⟨⟨7,[4]⟩,7⟩,⟨⟨7,[5]⟩,8⟩,⟨⟨8,[3]⟩,9⟩,⟨⟨8,[4]⟩,10⟩,⟨⟨8,[5]⟩,11⟩,⟨⟨9,[4]⟩,9⟩,⟨⟨9,[4]⟩,11⟩,⟨⟨10,[6,4]⟩,6⟩,⟨⟨10,[6,4]⟩,8⟩,⟨⟨11,[1,6,4]⟩,2⟩,⟨⟨11,[1,6,4]⟩,7⟩,⟨⟨12,[1,6,4]⟩,2⟩,⟨⟨13,[1,6,4]⟩,3⟩,⟨⟨14,[1,6,4]⟩,9⟩,⟨⟨15,[1,6,4]⟩,4⟩,⟨⟨18,[3]⟩,4⟩,⟨⟨18,[5]⟩,4⟩,⟨⟨19,[2,3]⟩,9⟩,⟨⟨19,[2,5]⟩,9⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[7],[6],[8],[9],[10],[11],[12],[13],[14],[15],[16],[17],[26],[5],[19],[20],[21],[22],[23],[24],[24],[25],[4],[27],[28,29],[30],[31],[26],[18]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 8=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<32 := hi
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
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.var 1))))) (.lam (.var 1)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438387096262 := by decide
def t16 : Term := .var 0
def t19 : Term := .var 1
def t13 : Term := .var 2
def t18 : Term := .lam t19
def t14 : Term := .app t16 t16
def t1 : Term := .lam t14
def t12 : Term := .app t13 t14
def t11 : Term := .app t12 t19
def t10 : Term := .lam t11
def t9 : Term := .lam t10
def t7 : Term := .app t16 t9
def t6 : Term := .app t7 t18
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t14,t16,t16,t5,t6,t7,t16,t9,t10,t11,t12,t13,t14,t16,t16,t19,t18,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4846201051846
