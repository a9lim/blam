import Blc.SelfintResidual44.Reg

set_option Elab.async false
namespace Certgen.R4846199894874
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 5,.lam 2,.app 3 4,.var 0,.var 0,.lam 6,.app 7 19,.app 8 9,.var 0,.lam 10,.lam 11,.lam 12,.app 13 18,.app 14 15,.var 3,.app 16 17,.var 0,.var 0,.opaque,.var 0]
def values : Array (List AClo) := #[[⟨5,[]⟩],[⟨19,[6]⟩],[⟨19,[4]⟩,⟨19,[5]⟩],[⟨15,[2,1,7,4]⟩,⟨15,[2,1,7,5]⟩],[⟨17,[2,1,7,4]⟩,⟨17,[2,1,7,5]⟩],[⟨4,[0]⟩],[⟨9,[4]⟩,⟨9,[5]⟩],[⟨9,[6]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨5,[]⟩,0⟩],[⟨⟨18,[2,1,7,4]⟩,0⟩,⟨⟨18,[2,1,7,4]⟩,13⟩],[⟨⟨18,[2,1,7,5]⟩,0⟩,⟨⟨18,[2,1,7,5]⟩,13⟩],[⟨⟨15,[2,1,7,4]⟩,2⟩],[⟨⟨15,[2,1,7,5]⟩,3⟩],[⟨⟨17,[2,1,7,4]⟩,13⟩],[⟨⟨17,[2,1,7,5]⟩,13⟩],[⟨⟨4,[0]⟩,0⟩],[⟨⟨19,[3]⟩,2⟩,⟨⟨19,[3]⟩,3⟩],[⟨⟨19,[4]⟩,13⟩],[⟨⟨19,[5]⟩,0⟩],[⟨⟨19,[6]⟩,10⟩,⟨⟨19,[6]⟩,11⟩],[⟨⟨9,[3]⟩,9⟩],[⟨⟨9,[4]⟩,10⟩],[⟨⟨9,[5]⟩,11⟩],[⟨⟨9,[6]⟩,12⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[0]⟩,0⟩,⟨⟨3,[0]⟩,8⟩,⟨⟨4,[0]⟩,4⟩,⟨⟨4,[0]⟩,5⟩,⟨⟨4,[0]⟩,6⟩,⟨⟨4,[0]⟩,7⟩,⟨⟨4,[0]⟩,14⟩,⟨⟨4,[0]⟩,15⟩,⟨⟨5,[]⟩,4⟩,⟨⟨5,[]⟩,5⟩,⟨⟨5,[]⟩,6⟩,⟨⟨5,[]⟩,7⟩,⟨⟨5,[]⟩,8⟩,⟨⟨5,[]⟩,14⟩,⟨⟨5,[]⟩,15⟩,⟨⟨6,[3]⟩,2⟩,⟨⟨6,[3]⟩,3⟩,⟨⟨6,[4]⟩,13⟩,⟨⟨6,[5]⟩,0⟩,⟨⟨6,[6]⟩,10⟩,⟨⟨6,[6]⟩,11⟩,⟨⟨7,[3]⟩,9⟩,⟨⟨7,[4]⟩,10⟩,⟨⟨7,[5]⟩,11⟩,⟨⟨7,[6]⟩,12⟩,⟨⟨8,[3]⟩,13⟩,⟨⟨8,[4]⟩,14⟩,⟨⟨8,[5]⟩,15⟩,⟨⟨8,[6]⟩,16⟩,⟨⟨9,[4]⟩,16⟩,⟨⟨9,[5]⟩,16⟩,⟨⟨10,[7,4]⟩,12⟩,⟨⟨10,[7,5]⟩,12⟩,⟨⟨11,[1,7,4]⟩,10⟩,⟨⟨11,[1,7,4]⟩,11⟩,⟨⟨11,[1,7,5]⟩,10⟩,⟨⟨11,[1,7,5]⟩,11⟩,⟨⟨12,[2,1,7,4]⟩,0⟩,⟨⟨12,[2,1,7,4]⟩,13⟩,⟨⟨12,[2,1,7,5]⟩,0⟩,⟨⟨12,[2,1,7,5]⟩,13⟩,⟨⟨13,[2,1,7,4]⟩,2⟩,⟨⟨13,[2,1,7,5]⟩,3⟩,⟨⟨14,[2,1,7,4]⟩,4⟩,⟨⟨14,[2,1,7,5]⟩,5⟩,⟨⟨15,[2,1,7,4]⟩,13⟩,⟨⟨15,[2,1,7,5]⟩,13⟩,⟨⟨16,[2,1,7,4]⟩,6⟩,⟨⟨16,[2,1,7,5]⟩,7⟩,⟨⟨17,[2,1,7,4]⟩,4⟩,⟨⟨17,[2,1,7,4]⟩,6⟩,⟨⟨17,[2,1,7,4]⟩,7⟩,⟨⟨17,[2,1,7,4]⟩,14⟩,⟨⟨17,[2,1,7,5]⟩,4⟩,⟨⟨17,[2,1,7,5]⟩,6⟩,⟨⟨17,[2,1,7,5]⟩,7⟩,⟨⟨17,[2,1,7,5]⟩,14⟩,⟨⟨19,[4]⟩,4⟩,⟨⟨19,[4]⟩,6⟩,⟨⟨19,[4]⟩,7⟩,⟨⟨19,[4]⟩,14⟩,⟨⟨19,[5]⟩,4⟩,⟨⟨19,[5]⟩,6⟩,⟨⟨19,[5]⟩,7⟩,⟨⟨19,[5]⟩,14⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[14],[10],[11],[12],[13],[15],[16],[17],[18],[19],[19],[20],[21],[22],[23],[23],[24],[25],[26],[26],[27],[28],[29],[30],[47,48],[54,58],[9],[31,32],[33],[34],[35,36],[37,38],[40],[39],[42],[41],[43],[43],[44],[44],[45],[46],[51,55],[5],[49],[50],[60,64],[61,65],[59,63],[60,64],[61,65],[62,66],[59,63],[60,64],[61,65],[62,66],[51,55],[52,56],[53,57],[54,58],[4],[6],[7],[8]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide +kernel
theorem block12 : checkRange P V K states hints 12 12=true := by decide +kernel
theorem block24 : checkRange P V K states hints 24 12=true := by decide +kernel
theorem block36 : checkRange P V K states hints 36 12=true := by decide +kernel
theorem block48 : checkRange P V K states hints 48 12=true := by decide +kernel
theorem block60 : checkRange P V K states hints 60 7=true := by decide +kernel
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<67 := hi
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
def e : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 3) (.app (.var 0) (.var 0))) (.var 1)))))) (.var 0))))
theorem wire_e : Closed e ∧ Blc.Floor44.code e = 22438385939290 := by decide
def t19 : Term := .var 0
def t18 : Term := .var 1
def t14 : Term := .var 3
def t15 : Term := .app t19 t19
def t1 : Term := .lam t15
def t13 : Term := .app t14 t15
def t12 : Term := .app t13 t18
def t11 : Term := .lam t12
def t10 : Term := .lam t11
def t9 : Term := .lam t10
def t7 : Term := .app t19 t9
def t6 : Term := .app t7 t19
def t5 : Term := .lam t6
def t0 : Term := .app t1 t5
def terms : Array Term := #[t0,t1,t15,t19,t19,t5,t6,t7,t19,t9,t10,t11,t12,t13,t14,t15,t19,t19,t18,t19]
def model : Model P := regModel (cs := code) (ts := terms) (by decide)
theorem excluded : ¬ IsSelfInterpreter e := by
  intro he
  have hp : replay [] e = some (model.term 0) := by decide
  obtain ⟨n,h⟩ := clocks_replay (rawCount he) hp
  exact regular_no_clock model closed root n h
#print axioms excluded
end Certgen.R4846199894874
