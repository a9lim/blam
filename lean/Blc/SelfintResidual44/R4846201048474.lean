import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4846201048474
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 17,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 16,.app 13 14,.var 2,.lam 15,.var 1,.opaque,.app 18 19,.var 0,.opaque]
def values : Array (List AClo) := #[[⟨5,[]⟩],[⟨17,[4]⟩,⟨17,[6]⟩],[⟨19,[4]⟩],[⟨9,[4]⟩],[⟨14,[1,7,5]⟩,⟨14,[1,8,5]⟩],[⟨4,[0]⟩],[⟨9,[5]⟩],[⟨19,[6]⟩],[⟨9,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨5,[]⟩,0⟩],[⟨⟨16,[1,7,5]⟩,2⟩,⟨⟨16,[1,7,5]⟩,3⟩],[⟨⟨16,[1,8,5]⟩,10⟩],[⟨⟨14,[1,7,5]⟩,2⟩],[⟨⟨14,[1,8,5]⟩,3⟩],[⟨⟨19,[4]⟩,9⟩],[⟨⟨19,[6]⟩,9⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨17,[4]⟩,2⟩,⟨⟨17,[4]⟩,3⟩],[⟨⟨17,[5]⟩,0⟩],[⟨⟨17,[6]⟩,10⟩],[⟨⟨9,[4]⟩,9⟩],[⟨⟨9,[5]⟩,10⟩],[⟨⟨9,[6]⟩,11⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,8⟩,⟨⟨4,[0]⟩,4⟩,⟨⟨4,[0]⟩,5⟩,⟨⟨4,[0]⟩,13⟩,⟨⟨5,[]⟩,4⟩,⟨⟨5,[]⟩,5⟩,⟨⟨5,[]⟩,8⟩,⟨⟨5,[]⟩,13⟩,⟨⟨6,[4]⟩,2⟩,⟨⟨6,[4]⟩,3⟩,⟨⟨6,[5]⟩,0⟩,⟨⟨6,[6]⟩,10⟩,⟨⟨7,[4]⟩,9⟩,⟨⟨7,[5]⟩,10⟩,⟨⟨7,[6]⟩,11⟩,⟨⟨8,[4]⟩,12⟩,⟨⟨8,[5]⟩,13⟩,⟨⟨8,[6]⟩,14⟩,⟨⟨9,[5]⟩,7⟩,⟨⟨9,[5]⟩,14⟩,⟨⟨10,[7,5]⟩,9⟩,⟨⟨10,[8,5]⟩,11⟩,⟨⟨11,[1,7,5]⟩,2⟩,⟨⟨11,[1,7,5]⟩,3⟩,⟨⟨11,[1,8,5]⟩,10⟩,⟨⟨12,[1,7,5]⟩,2⟩,⟨⟨12,[1,8,5]⟩,3⟩,⟨⟨13,[1,7,5]⟩,4⟩,⟨⟨13,[1,8,5]⟩,5⟩,⟨⟨14,[1,7,5]⟩,6⟩,⟨⟨14,[1,7,5]⟩,12⟩,⟨⟨14,[1,8,5]⟩,6⟩,⟨⟨14,[1,8,5]⟩,12⟩,⟨⟨15,[2,1,7,5]⟩,9⟩,⟨⟨15,[2,1,8,5]⟩,9⟩,⟨⟨15,[3,1,7,5]⟩,9⟩,⟨⟨15,[3,1,8,5]⟩,9⟩,⟨⟨17,[4]⟩,9⟩,⟨⟨17,[6]⟩,9⟩,⟨⟨18,[4]⟩,6⟩,⟨⟨18,[6]⟩,7⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[9],[7],[8],[10],[11],[12],[13],[14],[15],[15],[16],[17],[18],[19],[20],[33,35],[6],[22],[23],[24],[25,26],[27],[28],[28],[29],[30],[31],[4],[5],[36],[38],[37],[39],[40,41],[40,41],[40,41],[40,41],[42],[43],[32,34],[21]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 8=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<44 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 exact range_sound block36 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)

open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.lam (.var 1))) (.var 1))))) (.app (.var 0) (.var 0)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438387092890 := by decide
def t19 : Term := .var 0
def t16 : Term := .var 1
def t13 : Term := .var 2
def t14 : Term := .lam t16
def t17 : Term := .app t19 t19
def t1 : Term := .lam t17
def t12 : Term := .app t13 t14
def t11 : Term := .app t12 t16
def t10 : Term := .lam t11
def t9 : Term := .lam t10
def t7 : Term := .app t19 t9
def t6 : Term := .app t7 t17
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t17,t19,t19,t5,t6,t7,t19,t9,t10,t11,t12,t13,t14,t16,t16,t17,t19,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4846201048474
