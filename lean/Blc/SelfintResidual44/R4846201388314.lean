import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4846201388314
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 9,.var 0,.lam 10,.lam 11,.app 12 13,.var 1,.app 14 17,.app 15 16,.var 2,.var 0,.opaque,.opaque,.var 0]
def values : Array (List AClo) := #[[⟨5,[]⟩],[⟨17,[2,9,6]⟩,⟨17,[4,10,6]⟩],[⟨19,[5]⟩],[⟨19,[6]⟩],[⟨19,[7]⟩],[⟨16,[2,9,6]⟩,⟨16,[4,10,6]⟩],[⟨4,[0]⟩],[⟨9,[6]⟩],[⟨13,[2,9,6]⟩,⟨13,[4,10,6]⟩],[⟨9,[5]⟩],[⟨9,[7]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨5,[]⟩,0⟩],[⟨⟨13,[1,8,5]⟩,2⟩,⟨⟨13,[1,8,5]⟩,4⟩],[⟨⟨13,[2,9,6]⟩,6⟩,⟨⟨13,[2,9,6]⟩,7⟩,⟨⟨13,[2,9,6]⟩,8⟩,⟨⟨13,[2,9,6]⟩,9⟩],[⟨⟨13,[3,8,7]⟩,0⟩],[⟨⟨13,[4,10,6]⟩,16⟩],[⟨⟨17,[2,9,6]⟩,2⟩],[⟨⟨17,[2,9,6]⟩,4⟩],[⟨⟨17,[4,10,6]⟩,2⟩],[⟨⟨17,[4,10,6]⟩,4⟩],[⟨⟨16,[2,9,6]⟩,6⟩],[⟨⟨16,[2,9,6]⟩,7⟩],[⟨⟨16,[4,10,6]⟩,8⟩],[⟨⟨16,[4,10,6]⟩,9⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨19,[5]⟩,6⟩,⟨⟨19,[5]⟩,7⟩,⟨⟨19,[5]⟩,8⟩,⟨⟨19,[5]⟩,9⟩],[⟨⟨19,[6]⟩,0⟩],[⟨⟨19,[7]⟩,16⟩],[⟨⟨9,[5]⟩,15⟩],[⟨⟨9,[6]⟩,16⟩],[⟨⟨9,[7]⟩,17⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,14⟩,⟨⟨4,[0]⟩,10⟩,⟨⟨4,[0]⟩,11⟩,⟨⟨4,[0]⟩,12⟩,⟨⟨4,[0]⟩,13⟩,⟨⟨4,[0]⟩,19⟩,⟨⟨5,[]⟩,10⟩,⟨⟨5,[]⟩,11⟩,⟨⟨5,[]⟩,12⟩,⟨⟨5,[]⟩,13⟩,⟨⟨5,[]⟩,14⟩,⟨⟨5,[]⟩,19⟩,⟨⟨6,[5]⟩,6⟩,⟨⟨6,[5]⟩,7⟩,⟨⟨6,[5]⟩,8⟩,⟨⟨6,[5]⟩,9⟩,⟨⟨6,[6]⟩,0⟩,⟨⟨6,[7]⟩,16⟩,⟨⟨7,[5]⟩,15⟩,⟨⟨7,[6]⟩,16⟩,⟨⟨7,[7]⟩,17⟩,⟨⟨8,[5]⟩,18⟩,⟨⟨8,[6]⟩,19⟩,⟨⟨8,[7]⟩,20⟩,⟨⟨9,[5]⟩,3⟩,⟨⟨9,[6]⟩,18⟩,⟨⟨9,[6]⟩,20⟩,⟨⟨9,[7]⟩,5⟩,⟨⟨10,[8,5]⟩,6⟩,⟨⟨10,[8,5]⟩,7⟩,⟨⟨10,[8,5]⟩,8⟩,⟨⟨10,[8,5]⟩,9⟩,⟨⟨10,[8,7]⟩,16⟩,⟨⟨10,[9,6]⟩,15⟩,⟨⟨10,[10,6]⟩,17⟩,⟨⟨11,[1,8,5]⟩,2⟩,⟨⟨11,[1,8,5]⟩,4⟩,⟨⟨11,[2,9,6]⟩,6⟩,⟨⟨11,[2,9,6]⟩,7⟩,⟨⟨11,[2,9,6]⟩,8⟩,⟨⟨11,[2,9,6]⟩,9⟩,⟨⟨11,[3,8,7]⟩,0⟩,⟨⟨11,[4,10,6]⟩,16⟩,⟨⟨12,[1,8,5]⟩,2⟩,⟨⟨12,[2,9,6]⟩,3⟩,⟨⟨12,[3,8,7]⟩,4⟩,⟨⟨12,[4,10,6]⟩,5⟩,⟨⟨13,[2,9,6]⟩,2⟩,⟨⟨13,[2,9,6]⟩,4⟩,⟨⟨13,[4,10,6]⟩,2⟩,⟨⟨13,[4,10,6]⟩,4⟩,⟨⟨14,[2,9,6]⟩,6⟩,⟨⟨14,[2,9,6]⟩,7⟩,⟨⟨14,[4,10,6]⟩,8⟩,⟨⟨14,[4,10,6]⟩,9⟩,⟨⟨15,[2,9,6]⟩,10⟩,⟨⟨15,[2,9,6]⟩,11⟩,⟨⟨15,[4,10,6]⟩,12⟩,⟨⟨15,[4,10,6]⟩,13⟩,⟨⟨16,[2,9,6]⟩,18⟩,⟨⟨16,[4,10,6]⟩,18⟩,⟨⟨19,[5]⟩,18⟩,⟨⟨19,[7]⟩,18⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[13],[9],[10],[11],[12],[14],[15],[16],[17],[18],[19],[20],[21],[21],[21],[21],[22],[23],[24],[25],[26],[62,63],[8],[29],[31,32,33,34],[36],[37],[35],[38],[39],[38],[39],[44],[40,41,42,43],[45],[46],[46],[47],[47],[47],[47],[48],[49],[50,52],[27],[51,53],[30],[54],[55],[56],[57],[58],[59],[60],[61],[4],[5],[6],[7],[64],[65],[62,63],[28]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 12=true := by decide +kernel
theorem block48 : checkRange P V K states hints 48 12=true := by decide +kernel
theorem block60 : checkRange P V K states hints 60 6=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<66 := hi
 by_cases h0 : i<12
 · exact range_sound block0 i (by omega) h0 hi
 by_cases h12 : i<24
 · exact range_sound block12 i (by omega) h12 hi
 by_cases h24 : i<36
 · exact range_sound block24 i (by omega) h24 hi
 by_cases h36 : i<48
 · exact range_sound block36 i (by omega) h36 hi
 by_cases h48 : i<60
 · exact range_sound block48 i (by omega) h48 hi
 exact range_sound block60 i (by omega) hh hi
theorem closed : ∀ s ∈ states, Good P V K states s := by
 intro s hs
 obtain ⟨i,hi,he⟩ := Array.mem_iff_getElem.mp hs
 simpa [he] using closedAt i hi
theorem root : entry ∈ states := Array.mem_of_getElem? (i := 0) (by decide)

open Blc Blc.Term Blc.Floor44 Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 0)) (.lam (.var 1))))))) (.var 0))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438387432730 := by decide
def t19 : Term := .var 0
def t18 : Term := .var 1
def t15 : Term := .var 2
def t17 : Term := .lam t18
def t2 : Term := .app t19 t19
def t1 : Term := .lam t2
def t14 : Term := .app t15 t19
def t13 : Term := .app t14 t17
def t11 : Term := .app t18 t13
def t10 : Term := .lam t11
def t9 : Term := .lam t10
def t7 : Term := .app t19 t9
def t6 : Term := .app t7 t19
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t2,t19,t19,t5,t6,t7,t19,t9,t10,t11,t18,t13,t14,t15,t19,t17,t18,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4846201388314
