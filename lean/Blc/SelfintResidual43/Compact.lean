import Blc.Selfint40Evidence.Indexed
import Blc.SelfintResidual43.Extra

set_option Elab.async false
namespace Blc.Floor43.Compact
open Term Certgen SelfintRegularSoundness WeakHeadClock
def item (a : Array Term) (i : Nat) := a[i]?.getD (.var 0)
def aligns (code : Array Code) (a : Array Term) (i : Nat) : Bool := match codeAt code i with
 | .opaque => true
 | .var j => decide (item a i = .var j)
 | .lam b => decide (item a i = .lam (item a b))
 | .app f x => decide (item a i = .app (item a f) (item a x))
def aligned (code : Array Code) (a : Array Term) := (List.range code.size).all (aligns code a)
def model (code : Array Code) (a : Array Term) (h : aligned code a = true) : Model (codeAt code) := by
  have every (p : Nat) : aligns code a p = true := by
    by_cases hp : p < code.size
    · exact List.all_eq_true.mp h p (List.mem_range.mpr hp)
    · have hz : code[p]? = none := Array.getElem?_eq_none (by omega)
      simp [aligns,codeAt,hz]
  exact { term := item a
          var_eq := by intro p j hj; simpa [aligns,hj] using every p
          lam_eq := by intro p j hj; simpa [aligns,hj] using every p
          app_eq := by intro p f b hj; simpa [aligns,hj] using every p }
def getV (a : Array (List AClo)) (i : Nat) := a[i]?.getD []
def getK (a : Array (List Frame)) (i : Nat) := a[i]?.getD []
def getS (a : Array AState) (i : Nat) := a[i]?.getD entry
def getH (a : Array (List Nat)) (i : Nat) := a[i]?.getD []
def test (code : Array Code) (v : Array (List AClo)) (k : Array (List Frame))
  (s : Array AState) (h : Array (List Nat)) (i : Nat) :=
    FloorIndex.check (codeAt code) (getV v) (getK k) (getS s) i (getH h i)
theorem noClock {code v k s h} (term : Array Term) (ha : aligned code term = true)
    (hi : getS s 0 = entry) (hn : 0 < s.size)
    (hc : ∀ i, i < s.size → test code v k s h i = true) (n : Nat) :
    ¬ Count (item term 0) n := by
  apply FloorIndex.sound (model code term ha) (getS s) hi
  intro i
  by_cases hx : i < s.size
  · exact ⟨getH h i,hc i hx⟩
  · refine ⟨getH h 0, ?_⟩
    have hz : s[i]? = none := Array.getElem?_eq_none (by omega)
    have he : getS s i = getS s 0 := by rw [hi]; simp [getS,hz]
    unfold FloorIndex.check
    rw [he]
    exact hc 0 hn
end Blc.Floor43.Compact
