/-
Where the closure barrier stops. With Δ = λx. x x and D(s) = s Δ I (s s) j,
D reduces to j on the zero stream, to N j on the length-one stream, and to N
on every longer one (`dual_zero`, `dual_one`, `dual_long`): once Δ is a
callback, a bare j on zero no longer forces a bare j on unary input. The
near-reader s I (s C_1) (D s) meets the zero law and every unary law from
length two but returns c U_0 (N j) at length one (`near_zero`, `near_long`,
`near_one`). The 10-bit factory λx. x c with K and the 13-bit H_1 with I
supply C_1 at the same price, 17 bits (`factory_selector_price`). `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based: the suffix N=0, c=1, j=2, r=3.
-/
import Blc.SelfintClosureBarrier
namespace Blc.SelfintBoundaryAlgebra
open Term SelfintRoleAlgebra SelfintClosureBarrier SelfintWireCost

set_option maxRecDepth 10000
set_option maxHeartbeats 1000000

def dup : Term := .lam (.app (.var 0) (.var 0))

def dual (s : Term) : Term :=
  .app (.app (.app (.app s dup) ident) (.app s s)) (.var 2)

theorem dup_apply (a : Term) : Betas (.app dup a) (.app a a) := by
  simpa only [dup, contract, substDec, ↓reduceIte] using
    (Betas.head (Beta.beta (.app (.var 0) (.var 0)) a) (.refl _))

theorem unary_dup (n : Nat) : Betas (.app (unary (n+1)) dup) (unary n) :=
  betas_trans (unary_callback n _)
    (betas_trans (betas_appL _ (dup_apply _))
      (betas_trans (betas_appL _ (false_apply _)) (ident_apply _)))

theorem zero_dup : Betas (.app zero dup) churchTrue :=
  betas_trans (zero_callback _)
    (betas_trans (betas_appL _ (dup_apply _)) (betas_of_spineReds (spine_true2 _ _)))

theorem dual_zero : Betas (dual zero) (.var 2) := by
  have hr := betas_appL (.var 2) (betas_appL (.app zero zero)
    (betas_appL ident zero_dup))
  exact betas_trans hr
    (betas_trans (betas_appL _ (betas_of_spineReds (spine_true2 _ _))) (ident_apply _))

theorem dual_one : Betas (dual (unary 1)) (.app suffix (.var 2)) := by
  have hr := betas_appL (.var 2) (betas_appL (.app (unary 1) (unary 1))
    (betas_appL ident (unary_dup 0)))
  have h0 : Betas (.app (unary 0) ident) constant :=
    SelfintClass.normalSteps_sound (by decide : SelfintClass.normalSteps 3
      (.app (unary 0) ident) = some constant)
  exact betas_trans hr
    (betas_trans (betas_appL _ (betas_appL _ h0))
      (betas_appL _ (constant_apply _)))

/-- The apparent j/N operand works at every unary length >=2, but fails at 1. -/
theorem dual_long (n : Nat) : Betas (dual (unary (n+2))) suffix := by
  have hr := betas_appL (.var 2) (betas_appL (.app (unary (n+2)) (unary (n+2)))
    (betas_appL ident (unary_dup (n+1))))
  have hi := betas_appL (.var 2) (betas_appL (.app (unary (n+2)) (unary (n+2)))
    (unary_ident n))
  have hs := betas_appL (.var 2) (ident_apply (.app (unary (n+2)) (unary (n+2))))
  have hd := betas_appL (.var 2) (betas_of_spineReds (skip_self (n+2) suffix))
  exact betas_trans hr (betas_trans hi (betas_trans hs (betas_trans hd (constant_apply _))))

def near (s : Term) : Term :=
  .app (.app (.app s ident) (.app s (cTower 1))) (dual s)

theorem near_zero : Betas (near zero) zeroTarget := by
  have hr := betas_appL (dual zero) (betas_appL (.app zero (cTower 1)) zero_ident)
  have he := betas_appL (dual zero) (zero_constant_apply (.app zero (cTower 1)))
  exact betas_trans hr (betas_trans he (betas_appR (.var 3) dual_zero))

theorem near_prefix (n : Nat) :
    Betas (near (unary (n+1)))
      (.app (.app cont (unary n)) (dual (unary (n+1)))) := by
  have hr := betas_appL (dual (unary (n+1)))
    (betas_appL (.app (unary (n+1)) (cTower 1)) (unary_ident n))
  have hi := betas_appL (dual (unary (n+1)))
    (ident_apply (.app (unary (n+1)) (cTower 1)))
  exact betas_trans hr (betas_trans hi (betas_appL _ (unary_tower_one n)))

theorem near_one : Betas (near (unary 1))
    (.app (.app cont (unary 0)) (.app suffix (.var 2))) :=
  betas_trans (near_prefix 0) (betas_appR _ dual_one)

theorem near_long (n : Nat) : Betas (near (unary (n+2)))
    (.app (.app cont (unary (n+1))) suffix) :=
  betas_trans (near_prefix (n+1)) (betas_appR _ (dual_long n))

theorem factory_true (m : Nat) :
    Betas (.app (factory m) churchTrue) (cTower (m+1)) :=
  betas_trans (factory_apply m _) (betas_of_spineReds (spine_true1 _))

/-- Flat factory plus K and the nested factory plus I have the same total
    price, in the operand frame [s,c]. -/
theorem factory_selector_price :
    wire (factory 0) + wire churchTrue = 17 ∧
    wire (factory 1) + wire ident = 17 := by decide

#print axioms dual_zero
#print axioms dual_one
#print axioms dual_long
#print axioms near_zero
#print axioms near_one
#print axioms near_long
#print axioms factory_selector_price
end Blc.SelfintBoundaryAlgebra
