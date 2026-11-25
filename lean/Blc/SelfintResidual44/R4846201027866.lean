import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4846201027866
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 17,.app 13 14,.var 1,.app 15 16,.var 2,.var 0,.opaque,.opaque,.var 0]
def values : Array (List AClo) := #[[⟨5,[]⟩],[⟨17,[2,7,4]⟩],[⟨19,[3]⟩,⟨19,[5]⟩],[⟨16,[2,7,4]⟩],[⟨4,[0]⟩],[⟨9,[4]⟩],[⟨14,[2,7,4]⟩],[⟨9,[3]⟩,⟨9,[5]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨5,[]⟩,0⟩],[⟨⟨17,[1,6,3]⟩,5⟩,⟨⟨17,[1,6,3]⟩,6⟩,⟨⟨17,[1,6,3]⟩,11⟩],[⟨⟨17,[1,6,5]⟩,5⟩,⟨⟨17,[1,6,5]⟩,6⟩,⟨⟨17,[1,6,5]⟩,11⟩],[⟨⟨17,[2,7,4]⟩,5⟩,⟨⟨17,[2,7,4]⟩,6⟩,⟨⟨17,[2,7,4]⟩,11⟩],[⟨⟨14,[1,6,3]⟩,2⟩],[⟨⟨14,[1,6,5]⟩,3⟩],[⟨⟨14,[2,7,4]⟩,4⟩],[⟨⟨16,[2,7,4]⟩,5⟩,⟨⟨16,[2,7,4]⟩,6⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨19,[3]⟩,5⟩,⟨⟨19,[3]⟩,6⟩],[⟨⟨19,[4]⟩,0⟩],[⟨⟨19,[5]⟩,11⟩],[⟨⟨9,[3]⟩,10⟩],[⟨⟨9,[4]⟩,11⟩],[⟨⟨9,[5]⟩,12⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,9⟩,⟨⟨4,[0]⟩,8⟩,⟨⟨4,[0]⟩,14⟩,⟨⟨5,[]⟩,8⟩,⟨⟨5,[]⟩,9⟩,⟨⟨5,[]⟩,14⟩,⟨⟨6,[3]⟩,5⟩,⟨⟨6,[3]⟩,6⟩,⟨⟨6,[4]⟩,0⟩,⟨⟨6,[5]⟩,11⟩,⟨⟨7,[3]⟩,10⟩,⟨⟨7,[4]⟩,11⟩,⟨⟨7,[5]⟩,12⟩,⟨⟨8,[3]⟩,13⟩,⟨⟨8,[4]⟩,14⟩,⟨⟨8,[5]⟩,15⟩,⟨⟨9,[3]⟩,7⟩,⟨⟨9,[4]⟩,13⟩,⟨⟨9,[4]⟩,15⟩,⟨⟨9,[5]⟩,7⟩,⟨⟨10,[6,3]⟩,4⟩,⟨⟨10,[6,5]⟩,4⟩,⟨⟨10,[7,4]⟩,10⟩,⟨⟨10,[7,4]⟩,12⟩,⟨⟨11,[1,6,3]⟩,5⟩,⟨⟨11,[1,6,3]⟩,6⟩,⟨⟨11,[1,6,3]⟩,11⟩,⟨⟨11,[1,6,5]⟩,5⟩,⟨⟨11,[1,6,5]⟩,6⟩,⟨⟨11,[1,6,5]⟩,11⟩,⟨⟨11,[2,7,4]⟩,5⟩,⟨⟨11,[2,7,4]⟩,6⟩,⟨⟨11,[2,7,4]⟩,11⟩,⟨⟨12,[1,6,3]⟩,2⟩,⟨⟨12,[1,6,5]⟩,3⟩,⟨⟨12,[2,7,4]⟩,4⟩,⟨⟨13,[1,6,3]⟩,5⟩,⟨⟨13,[1,6,5]⟩,6⟩,⟨⟨13,[2,7,4]⟩,7⟩,⟨⟨14,[2,7,4]⟩,5⟩,⟨⟨14,[2,7,4]⟩,6⟩,⟨⟨15,[2,7,4]⟩,8⟩,⟨⟨16,[2,7,4]⟩,13⟩,⟨⟨19,[3]⟩,13⟩,⟨⟨19,[5]⟩,13⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[7],[6],[8],[9,10],[11],[12],[13],[13],[14],[15],[16],[17],[18],[45],[5],[21],[23],[25],[26],[24],[27,28,29],[30,31,32],[33,34],[35],[36],[36],[36],[37],[37],[37],[38],[38],[38],[39],[40],[41],[42],[43],[19,22],[44],[44],[4],[46,47],[45],[20]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 12=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<48 := hi
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
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 1) (.app (.var 2) (.var 0))) (.lam (.var 1)))))) (.var 0))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438387072282 := by decide
def t19 : Term := .var 0
def t18 : Term := .var 1
def t15 : Term := .var 2
def t17 : Term := .lam t18
def t2 : Term := .app t19 t19
def t1 : Term := .lam t2
def t14 : Term := .app t15 t19
def t12 : Term := .app t18 t14
def t11 : Term := .app t12 t17
def t10 : Term := .lam t11
def t9 : Term := .lam t10
def t7 : Term := .app t19 t9
def t6 : Term := .app t7 t19
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t2,t19,t19,t5,t6,t7,t19,t9,t10,t11,t12,t18,t14,t15,t19,t17,t18,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4846201027866
