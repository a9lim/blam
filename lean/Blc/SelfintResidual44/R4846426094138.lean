import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4846426094138
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 8,.var 0,.app 9 19,.app 10 11,.var 0,.lam 12,.lam 13,.app 14 17,.app 15 16,.var 2,.var 0,.opaque,.opaque,.var 0]
def values : Array (List AClo) := #[[⟨5,[]⟩],[⟨8,[6]⟩],[⟨19,[3]⟩,⟨19,[4]⟩],[⟨16,[2,1,3]⟩,⟨16,[2,1,4]⟩],[⟨4,[0]⟩],[⟨8,[3]⟩,⟨8,[4]⟩],[⟨11,[3]⟩,⟨11,[4]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨5,[]⟩,0⟩],[⟨⟨17,[2,1,3]⟩,9⟩],[⟨⟨17,[2,1,4]⟩,9⟩],[⟨⟨16,[2,1,3]⟩,2⟩],[⟨⟨16,[2,1,4]⟩,3⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨8,[3]⟩,2⟩,⟨⟨8,[3]⟩,3⟩],[⟨⟨8,[4]⟩,0⟩],[⟨⟨8,[5]⟩,0⟩,⟨⟨8,[5]⟩,2⟩,⟨⟨8,[5]⟩,3⟩],[⟨⟨8,[6]⟩,11⟩,⟨⟨8,[6]⟩,12⟩],[⟨⟨19,[3]⟩,9⟩],[⟨⟨19,[4]⟩,9⟩],[⟨⟨11,[3]⟩,11⟩],[⟨⟨11,[4]⟩,12⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,6⟩,⟨⟨4,[0]⟩,4⟩,⟨⟨4,[0]⟩,5⟩,⟨⟨4,[0]⟩,7⟩,⟨⟨4,[0]⟩,8⟩,⟨⟨4,[0]⟩,13⟩,⟨⟨4,[0]⟩,14⟩,⟨⟨5,[]⟩,4⟩,⟨⟨5,[]⟩,5⟩,⟨⟨5,[]⟩,6⟩,⟨⟨5,[]⟩,7⟩,⟨⟨5,[]⟩,8⟩,⟨⟨5,[]⟩,13⟩,⟨⟨5,[]⟩,14⟩,⟨⟨6,[3]⟩,2⟩,⟨⟨6,[3]⟩,3⟩,⟨⟨6,[4]⟩,0⟩,⟨⟨6,[5]⟩,0⟩,⟨⟨6,[5]⟩,2⟩,⟨⟨6,[5]⟩,3⟩,⟨⟨6,[6]⟩,11⟩,⟨⟨6,[6]⟩,12⟩,⟨⟨7,[3]⟩,7⟩,⟨⟨7,[4]⟩,8⟩,⟨⟨7,[5]⟩,9⟩,⟨⟨7,[6]⟩,10⟩,⟨⟨8,[3]⟩,9⟩,⟨⟨8,[4]⟩,9⟩,⟨⟨9,[3]⟩,11⟩,⟨⟨9,[4]⟩,12⟩,⟨⟨10,[3]⟩,13⟩,⟨⟨10,[4]⟩,14⟩,⟨⟨11,[3]⟩,10⟩,⟨⟨11,[4]⟩,10⟩,⟨⟨12,[1,3]⟩,11⟩,⟨⟨12,[1,3]⟩,12⟩,⟨⟨12,[1,4]⟩,11⟩,⟨⟨12,[1,4]⟩,12⟩,⟨⟨13,[2,1,3]⟩,9⟩,⟨⟨13,[2,1,4]⟩,9⟩,⟨⟨14,[2,1,3]⟩,2⟩,⟨⟨14,[2,1,4]⟩,3⟩,⟨⟨15,[2,1,3]⟩,4⟩,⟨⟨15,[2,1,4]⟩,5⟩,⟨⟨16,[2,1,3]⟩,4⟩,⟨⟨16,[2,1,3]⟩,7⟩,⟨⟨16,[2,1,3]⟩,13⟩,⟨⟨16,[2,1,4]⟩,4⟩,⟨⟨16,[2,1,4]⟩,7⟩,⟨⟨16,[2,1,4]⟩,13⟩,⟨⟨19,[3]⟩,4⟩,⟨⟨19,[3]⟩,7⟩,⟨⟨19,[3]⟩,13⟩,⟨⟨19,[4]⟩,4⟩,⟨⟨19,[4]⟩,7⟩,⟨⟨19,[4]⟩,13⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[12],[10],[11],[13],[14],[15],[16],[17],[18],[19],[21,22],[20],[23],[24],[25],[25],[26],[27],[27],[27],[28],[28],[48,51],[7],[29,30],[35,36],[31],[32],[33],[34],[49,52],[9],[37,38],[39,40],[41],[41],[42],[42],[43],[44],[45],[46],[47,50],[5],[53,56],[54,57],[55,58],[53,56],[54,57],[55,58],[47,50],[48,51],[49,52],[4],[6],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 12=true := by decide +kernel
theorem block48 : checkRange P V K states hints 48 11=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<59 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 exact range_sound block48 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)

open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 2) (.var 0)) (.lam (.var 2)))))) (.var 0)))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438612138554 := by decide
def t19 : Term := .var 0
def t18 : Term := .var 2
def t2 : Term := .app t19 t19
def t17 : Term := .lam t18
def t1 : Term := .lam t2
def t14 : Term := .app t18 t19
def t13 : Term := .app t14 t17
def t12 : Term := .lam t13
def t11 : Term := .lam t12
def t9 : Term := .app t19 t11
def t8 : Term := .app t9 t19
def t6 : Term := .app t19 t8
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t2,t19,t19,t5,t6,t19,t8,t9,t19,t11,t12,t13,t14,t18,t19,t17,t18,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4846426094138
