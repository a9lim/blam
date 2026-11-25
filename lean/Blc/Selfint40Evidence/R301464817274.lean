import Blc.Selfint40Evidence.RegularBase
import Blc.Selfint40Evidence.Base

namespace Certgen.R301464817274
set_option maxRecDepth 30000
set_option maxHeartbeats 12000000
def code : Array Code := #[.app 1 21,.app 2 20,.app 3 8,.lam 4,.app 5 6,.var 0,.lam 7,.var 1,.lam 9,.app 10 13,.app 11 12,.var 0,.var 0,.lam 14,.lam 15,.app 16 17,.var 1,.app 18 19,.var 2,.var 0,.opaque,.lam 22,.app 23 28,.app 24 25,.var 0,.lam 26,.lam 27,.var 1,.lam 29,.app 30 35,.app 31 32,.var 0,.lam 33,.lam 34,.var 1,.lam 36,.app 37 42,.app 38 39,.var 0,.lam 40,.lam 41,.var 0,.lam 43,.app 44 49,.app 45 46,.var 0,.lam 47,.lam 48,.var 1,.opaque]
def values : Array (List AClo) := #[[⟨12,[10]⟩],[⟨17,[3,0,9]⟩],[⟨20,[]⟩],[⟨13,[10]⟩],[⟨8,[]⟩],[⟨12,[9]⟩],[⟨19,[2,1,9]⟩,⟨19,[3,0,9]⟩],[⟨12,[7]⟩,⟨12,[8]⟩],[⟨17,[2,1,9]⟩],[⟨6,[4]⟩],[⟨13,[9]⟩]]
def konts : Array (List Frame) := #[[],[⟨⟨21,[]⟩,0⟩],[⟨⟨20,[]⟩,1⟩],[⟨⟨12,[7]⟩,14⟩],[⟨⟨12,[8]⟩,15⟩],[⟨⟨12,[9]⟩,16⟩],[⟨⟨12,[10]⟩,17⟩],[⟨⟨17,[2,1,9]⟩,1⟩],[⟨⟨17,[3,0,9]⟩,2⟩],[⟨⟨19,[2,1,9]⟩,3⟩],[⟨⟨19,[2,1,9]⟩,4⟩],[⟨⟨19,[3,0,9]⟩,7⟩],[⟨⟨8,[]⟩,2⟩],[⟨⟨6,[4]⟩,2⟩],[⟨⟨13,[7]⟩,14⟩,⟨⟨13,[7]⟩,15⟩],[⟨⟨13,[8]⟩,1⟩],[⟨⟨13,[9]⟩,2⟩],[⟨⟨13,[10]⟩,2⟩]]
def states : Array AState := #[⟨⟨0,[]⟩,0⟩,⟨⟨1,[]⟩,1⟩,⟨⟨2,[]⟩,2⟩,⟨⟨3,[]⟩,12⟩,⟨⟨4,[4]⟩,2⟩,⟨⟨5,[4]⟩,13⟩,⟨⟨6,[4]⟩,5⟩,⟨⟨6,[4]⟩,9⟩,⟨⟨6,[4]⟩,10⟩,⟨⟨6,[4]⟩,11⟩,⟨⟨7,[5,4]⟩,16⟩,⟨⟨7,[6,4]⟩,3⟩,⟨⟨7,[6,4]⟩,4⟩,⟨⟨7,[6,4]⟩,7⟩,⟨⟨8,[]⟩,3⟩,⟨⟨8,[]⟩,4⟩,⟨⟨8,[]⟩,7⟩,⟨⟨8,[]⟩,13⟩,⟨⟨8,[]⟩,16⟩,⟨⟨9,[7]⟩,14⟩,⟨⟨9,[7]⟩,15⟩,⟨⟨9,[8]⟩,1⟩,⟨⟨9,[9]⟩,2⟩,⟨⟨9,[10]⟩,2⟩,⟨⟨10,[7]⟩,14⟩,⟨⟨10,[8]⟩,15⟩,⟨⟨10,[9]⟩,16⟩,⟨⟨10,[10]⟩,17⟩,⟨⟨11,[7]⟩,3⟩,⟨⟨11,[8]⟩,4⟩,⟨⟨11,[9]⟩,5⟩,⟨⟨11,[10]⟩,6⟩,⟨⟨12,[7]⟩,3⟩,⟨⟨12,[8]⟩,3⟩,⟨⟨12,[10]⟩,8⟩,⟨⟨13,[9]⟩,6⟩,⟨⟨13,[9]⟩,8⟩,⟨⟨14,[0,9]⟩,17⟩,⟨⟨14,[1,9]⟩,2⟩,⟨⟨15,[2,1,9]⟩,1⟩,⟨⟨15,[3,0,9]⟩,2⟩,⟨⟨16,[2,1,9]⟩,7⟩,⟨⟨16,[3,0,9]⟩,8⟩,⟨⟨17,[2,1,9]⟩,3⟩,⟨⟨17,[2,1,9]⟩,4⟩,⟨⟨17,[3,0,9]⟩,7⟩,⟨⟨18,[2,1,9]⟩,9⟩,⟨⟨18,[2,1,9]⟩,10⟩,⟨⟨18,[3,0,9]⟩,11⟩]
def hints : Array (List Nat) := #[[1],[2],[3],[4],[5],[17],[10],[11],[12],[13],[18],[14],[15],[16],[19],[20],[21],[22],[23],[24],[24],[25],[26],[27],[28],[29],[30],[31],[32,33],[44],[6],[35],[32,33],[43],[36],[37],[38],[40],[39],[41],[42],[45],[34],[46],[47],[48],[7],[8],[9]]
def P (i : Nat) := code[i]?.getD .opaque
def V (i : Nat) := values[i]?.getD []
def K (i : Nat) := konts[i]?.getD []
theorem block0 : checkRange P V K states hints 0 12=true := by decide
theorem block12 : checkRange P V K states hints 12 12=true := by decide
theorem block24 : checkRange P V K states hints 24 12=true := by decide
theorem block36 : checkRange P V K states hints 36 12=true := by decide
theorem block48 : checkRange P V K states hints 48 1=true := by decide
theorem closedAt (i : Nat) (hi : i<states.size) : Good P V K states states[i] := by
 have hh : i<49 := hi
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

open Blc Blc.Floor40 Blc.Term Blc.SelfintRegularSoundness Blc.WeakHeadClock Blc.SelfintSharp
def terms : Array Term := #[(.app (.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))))),(.app (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))) (.var 1)),(.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))))),(.lam (.app (.var 0) (.lam (.var 1)))),(.app (.var 0) (.lam (.var 1))),(.var 0),(.lam (.var 1)),(.var 1),(.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))))),(.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0)))))),(.app (.var 0) (.var 0)),(.var 0),(.var 0),(.lam (.lam (.app (.var 1) (.app (.var 2) (.var 0))))),(.lam (.app (.var 1) (.app (.var 2) (.var 0)))),(.app (.var 1) (.app (.var 2) (.var 0))),(.var 1),(.app (.var 2) (.var 0)),(.var 2),(.var 0),(.var 1),(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))),(.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))))),(.app (.var 0) (.lam (.lam (.var 1)))),(.var 0),(.lam (.lam (.var 1))),(.lam (.var 1)),(.var 1),(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))),(.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))))),(.app (.var 0) (.lam (.lam (.var 1)))),(.var 0),(.lam (.lam (.var 1))),(.lam (.var 1)),(.var 1),(.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))),(.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))),(.app (.var 0) (.lam (.lam (.var 0)))),(.var 0),(.lam (.lam (.var 0))),(.lam (.var 0)),(.var 0),(.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))),(.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)),(.app (.var 0) (.lam (.lam (.var 1)))),(.var 0),(.lam (.lam (.var 1))),(.lam (.var 1)),(.var 1),(.var 4)]
def termAt (p : Nat) : Term := terms[p]?.getD (.var 0)
def aligns (p : Nat) : Bool := match P p with
 | .opaque => true
 | .var i => decide (termAt p = Term.var i)
 | .lam b => decide (termAt p = Term.lam (termAt b))
 | .app f a => decide (termAt p = Term.app (termAt f) (termAt a))
theorem valid : (List.range code.size).all aligns = true := by decide
theorem every (p : Nat) : aligns p = true := by
 by_cases hp : p < code.size
 · exact List.all_eq_true.mp valid p (List.mem_range.mpr hp)
 · have hz : code[p]? = none := Array.getElem?_eq_none (by omega)
   simp [aligns,P,hz]
def model : Model P where
 term := termAt
 var_eq := by intro p i h; simpa [aligns,h] using every p
 lam_eq := by intro p b h; simpa [aligns,h] using every p
 app_eq := by intro p f a h; simpa [aligns,h] using every p
theorem excluded : ¬ IsSelfInterpreter e301464817274 := by
 intro he
 have hp : replay [] (call e301464817274 (.var 1) (.lam (.var 0)) (.var 0) []) = some (model.term 0) := by decide
 obtain ⟨h,hh⟩ := clocks_replay (inputCount (k := 0) he (by decide) (by decide)) hp
 exact regular_no_clock model closed root h hh
#print axioms excluded
end Certgen.R301464817274
