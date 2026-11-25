import Blc.SelfintResidual44.H44Base
import Blc.SelfintResidual44.H44Clocks

set_option Elab.async false
namespace Blc.H44.Pump
open Term SelfintLowerBound SelfintControl WeakHeadClock
inductive M where
  | h | i | a (x : M) | b (x y : M) | ap (x y : M)
def ident : Term := .lam (.var 0)
def bt (x y : Term) : Term := .lam (.app (.app x (.app (.var 0) ident)) y)
def at_ (x : Term) : Term := .lam (.app x (bt x (.var 1)))
def headT : Term := .lam (.app (.var 0) (.lam (.app (.var 1) (bt (.var 2) (.var 1)))))
def den : M → Term
  | .h => headT | .i => ident | .a x => at_ (den x)
  | .b x y => bt (den x) (den y) | .ap f a => .app (den f) (den a)
theorem closed (x : M) : Closed (den x) := by
  induction x with
  | h => decide
  | i => decide
  | ap _ _ u v => exact ⟨u,v⟩
  | a x u =>
    simp [den, at_, bt, ident, Closed, FreeUnder, closed_freeUnder u 1, closed_freeUnder u 2]
  | b x y u v =>
    simp [den, bt, ident, Closed, FreeUnder, closed_freeUnder u 1, closed_freeUnder v 1]
def R (x y : M) := Betas (den x) (den y)
def W (x y : M) := weakStep (den x) = some (den y)
theorem rh (a : M) : W (.ap .h a) (.ap a (.a a)) := by
  simp [W, den, headT, bt, at_, ident, weakStep, contract, substDec, shift_closed _ _ (closed a)]
theorem ra (x a : M) : W (.ap (.a x) a) (.ap x (.b x a)) := by
  simp [W, den, at_, bt, ident, weakStep, contract, substDec, substDec_closed _ _ (closed x), shift_closed _ _ (closed a)]
theorem rb (x y a : M) : W (.ap (.b x y) a) (.ap (.ap x (.ap a .i)) y) := by
  simp [W, den, bt, ident, weakStep, contract, substDec, substDec_closed _ _ (closed x), substDec_closed _ _ (closed y)]
theorem ri (a : M) : W (.ap .i a) a := by simp [W,den,ident,weakStep,contract,substDec]
theorem wr {x y} (h : W x y) : R x y := .head (weakStep_beta h) (.refl _)
theorem refl (x) : R x x := .refl _
theorem tr {x y z} (p : R x y) (q : R y z) : R x z := betas_trans p q
theorem left (a) {x y} (h : R x y) : R (.ap x a) (.ap y a) := betas_appL _ h
theorem right (f) {x y} (h : R x y) : R (.ap f x) (.ap f y) := betas_appR _ h
def Adv (x y : M) := ∃ z, W x z ∧ R z y
theorem advR {x y} (p : Adv x y) : R x y := by
  obtain ⟨_,h,q⟩ := p; exact tr (wr h) q
theorem aw {x y} (h : W x y) : Adv x y := ⟨_,h,refl _⟩
theorem awb (x y a c) (hc : R (.ap a .i) c) : Adv (.ap (.b x y) a) (.ap (.ap x c) y) :=
  ⟨_,rb x y a,left _ (right _ hc)⟩
theorem cI : R (.ap .i .i) .i := wr (ri _)
theorem cH : R (.ap .h .i) (.a .i) := tr (wr (rh _)) (wr (ri _))
theorem cA : R (.ap (.a .i) .i) (.b .i .i) := tr (wr (ra _ _)) (wr (ri _))
theorem cB (y) : R (.ap (.b .i y) .i) y :=
  tr (wr (rb _ _ _)) (tr (left y (tr (wr (ri _)) cI)) (wr (ri _)))
theorem cF (q : R (.ap (.a .h) .i) .i) (y) : R (.ap (.b (.a .h) y) .i) y :=
  tr (wr (rb _ _ _)) (tr (left y (tr (right _ cI) q)) (wr (ri _)))
def Cl (x : M) (n : Nat) := Count (den x) n
theorem strict {f u a v n} (hf : R f u) (ha : Adv (.ap u a) v) (h : Cl (.ap f a) n) :
    ∃ m, m < n ∧ Cl v m := by
  obtain ⟨k,hk,hc⟩ := count_reduct n h (left a hf)
  obtain ⟨_,hw,hr⟩ := ha
  obtain ⟨l,hl,hc⟩ := head_decreases hc hw
  obtain ⟨m,hm,hc⟩ := count_reduct l hc hr
  exact ⟨m,by omega,hc⟩
theorem nonstrict {f a n} (h : Cl (.ap f a) n) : ∃ m, m ≤ n ∧ Cl f m :=
  Round3Floor38.count_app_left h
theorem result {f a u v z} (hf : R f u) (ha : Adv (.ap u a) v) (hv : R v z) :
    R (.ap f a) z := tr (left a hf) (tr (advR ha) hv)

/-- One application, one head advance, and its certified result. -/
syntax "pumpStep " ident term:max term:max term:max term:max term:max term:max
  term:max term:max term:max : command
macro_rules
  | `(pumpStep $id:ident $src $dst $f $a $u $v $p $q $r) =>
    `(theorem $id : R $src $dst := result (f := $f) (a := $a) (u := $u) (v := $v) $p $q $r)

macro "pumpApp " id:ident f:ident a:ident : command =>
  `(def $id : M := .ap $f $a)
macro "pumpA " id:ident x:ident : command =>
  `(def $id : M := .a $x)
macro "pumpB " id:ident x:ident y:ident : command =>
  `(def $id : M := .b $x $y)

end Blc.H44.Pump
