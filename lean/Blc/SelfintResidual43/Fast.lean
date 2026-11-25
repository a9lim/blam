import Blc.SelfintResidual43.Compact

set_option Elab.async false
namespace Blc.Floor43.Fast
open Term Certgen SelfintRegularSoundness WeakHeadClock
def aligns (p : Nat → Code) (t : Nat → Term) (i : Nat) : Bool := match p i with
 | .opaque => true
 | .var j => decide (t i = .var j)
 | .lam b => decide (t i = .lam (t b))
 | .app f x => decide (t i = .app (t f) (t x))
def model {p : Nat → Code} (t : Nat → Term) (h : ∀ i, aligns p t i = true) : Model p where
 term := t
 var_eq := by intro i j hp; simpa [aligns,hp] using h i
 lam_eq := by intro i j hp; simpa [aligns,hp] using h i
 app_eq := by intro i f x hp; simpa [aligns,hp] using h i
theorem noClock {p v k st} {hh : Nat → List Nat} {n : Nat} (t : Nat → Term) (ha : ∀ i, aligns p t i=true)
    (hi : st 0 = entry) (hn : 0 < n) (he : ∀ i, n ≤ i → st i=entry)
    (hc : ∀ i, i < n → FloorIndex.check p v k st i (hh i)=true) (clock : Nat) :
    ¬ Count (t 0) clock := by
  apply FloorIndex.sound (model t ha) st hi
  intro i
  by_cases hx : i < n
  · exact ⟨hh i,hc i hx⟩
  · refine ⟨hh 0, ?_⟩
    unfold FloorIndex.check
    rw [he i (by omega),←hi]
    exact hc 0 hn
end Blc.Floor43.Fast
