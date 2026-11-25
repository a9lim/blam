import Blc.Selfint40Evidence.Indexed
import Blc.SelfintResidual45.RegularBase

set_option Elab.async false
namespace Blc.Floor45.RegProof
open Term SelfintRegularSoundness WeakHeadClock Certgen
def safe (get : Nat → Term) (code : Nat → Certgen.Code) (i : Nat) : Certgen.Code :=
  match code i with
  | .var j => if get i = .var j then .var j else .opaque
  | .lam b => if get i = .lam (get b) then .lam b else .opaque
  | .app f a => if get i = .app (get f) (get a) then .app f a else .opaque
  | .opaque => .opaque
def model (get : Nat → Term) (code : Nat → Certgen.Code) : Model (safe get code) where
  term := get
  var_eq := by intro p i h; unfold safe at h; split at h <;> (try split at h) <;> simp_all
  lam_eq := by intro p i h; unfold safe at h; split at h <;> (try split at h) <;> simp_all
  app_eq := by intro p f a h; unfold safe at h; split at h <;> (try split at h) <;> simp_all
def Span (f : Nat → Bool) (a b : Nat) := ∀ i, a ≤ i → i < b → f i = true
theorem merge {f a b c} (h : Span f a b) (j : Span f b c) : Span f a c := by
  intro i lo hi
  by_cases hh : i<b
  · exact h i lo hh
  · exact j i (by omega) hi
theorem block {f a n} (h : FloorIndex.rangeOK f a n = true) : Span f a (a+n) :=
  fun _ lo hi => FloorIndex.rangeOK_at h lo hi
def states (n : Nat) (get : Nat → AState) (i : Nat) := if i<n then get i else entry
theorem noClock {P V K} (m : Model P) (n : Nat) (get : Nat → AState) (hs : Nat → List Nat)
    (he : states n get 0 = entry)
    (h : Span (fun i => FloorIndex.check P V K (states n get) i (hs i)) 0 n)
    (hn : 0<n) (k : Nat) : ¬ Count (m.term 0) k := by
  apply FloorIndex.sound m _ he
  intro i
  by_cases hi : i<n
  · exact ⟨hs i,h i (by omega) hi⟩
  · refine ⟨hs 0,?_⟩
    have eq : states n get i = states n get 0 := by rw [he]; simp [states,hi]
    unfold FloorIndex.check
    rw [eq]
    exact h 0 (by omega) hn
end Blc.Floor45.RegProof
namespace Blc.Floor45.RegProof
open Term SelfintRegularSoundness Certgen
def aligned (get : Nat → Term) (code : Nat → Certgen.Code) (i : Nat) : Bool :=
  match code i with
  | .var j => decide (get i = .var j)
  | .lam b => decide (get i = .lam (get b))
  | .app f a => decide (get i = .app (get f) (get a))
  | .opaque => true
def alignedModel (get : Nat → Term) (code : Nat → Certgen.Code)
    (h : ∀ i, aligned get code i = true) : Model code where
  term := get
  var_eq := by intro p i hp; simpa [aligned,hp] using h p
  lam_eq := by intro p i hp; simpa [aligned,hp] using h p
  app_eq := by intro p f a hp; simpa [aligned,hp] using h p
end Blc.Floor45.RegProof
