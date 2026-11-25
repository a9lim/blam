import Blc.SelfintFiniteChain
import Blc.SelfintWireCost

namespace Blc.SelfintFiniteChain
open Term SelfintLowerBound

private theorem eval_shift (G : Algebra n) (t : Term) (d c : Nat) (e e' : Env n)
    (h : ∀ i, e' (bumped d c i) = e i) : eval G e' (shift d c t) = eval G e t := by
  induction t generalizing c e e' with
  | var i =>
    by_cases h' : c ≤ i <;> simpa [eval,shift,bumped,h'] using h i
  | app f a hf ha => simp only [eval,shift,hf _ _ _ h,ha _ _ _ h]
  | lam b ih =>
    change pick G _ = pick G _
    congr 1
    funext x
    apply ih
    intro i
    cases i with
    | zero => rfl
    | succ i =>
      by_cases hi : c ≤ i
      · simpa [bumped,push,hi,show c+1 ≤ i+1 by omega,show i+1+d=i+d+1 by omega] using h i
      · simpa [bumped,push,hi,show ¬ c+1 ≤ i+1 by omega] using h i

/-- Evaluate a substitution by giving its argument one grade in the environment.
This equality also applies under lambdas and to open arguments. -/
theorem eval_subst (G : Algebra n) (t s : Term) (j : Nat) (e : Env n) :
    eval G (cutEnv e j) s = e j →
    eval G (cutEnv e j) (substDec j s t) = eval G e t := by
  induction t generalizing j e s with
  | var i =>
    intro hs
    by_cases hj : i = j
    · subst i; simpa [eval,substDec] using hs
    · by_cases hi : i > j
      · simp [eval,substDec,hj,hi,cutEnv,show ¬ i-1<j by omega,show i-1+1=i by omega]
      · simp [eval,substDec,hj,hi,cutEnv,show i<j by omega]
  | app f a hf ha =>
    intro hs
    simp only [eval,substDec,hf _ _ _ hs,ha _ _ _ hs]
  | lam b ih =>
    intro hs
    change pick G _ = pick G _
    congr 1
    funext x
    rw [← cutEnv_push]
    apply ih
    rw [cutEnv_push]
    exact (eval_shift G s 1 0 _ (push x _) (by intro i; simp [bumped,push])).trans hs

theorem eval_contract (G : Algebra n) (e : Env n) (b a : Term) :
    eval G e (contract b a) = eval G (push (eval G e a) e) b := by
  have h : cutEnv (push (eval G e a) e) 0 = e := by funext i; simp [cutEnv,push]
  simpa only [contract,h] using eval_subst G b a 0 (push (eval G e a) e) (by rw [h]; rfl)

/-- At a source redex, a table certificate only needs the grade of the operand
and the operator body's grade in the extended environment. Both can be shared
among different wires with the same component or the same operand grade. -/
theorem necessary_redex (G : Algebra n) {b a m : Term} {c r s : Fin (n+1)}
    (hm : Closed m) (hn : NFt (.app (.app (.var 1) (.lam m)) (.var 0)))
    (hs : Typed G (rho c r) (streamOf (blcCode m) (.var 0)) s)
    (he : IsSelfInterpreter (.app (.lam b) a)) :
    eval G (rho c r) (.app (.app (.var 1) (.lam m)) (.var 0)) ≤
      G.ap (G.ap (eval G (push (eval G (rho c r) a) (rho c r)) b) c) s :=
  necessary G hm hn hs (SelfintWireCost.selfInterpreter_beta he (.beta b a)) (eval_contract G _ b a)

#print axioms necessary_redex
end Blc.SelfintFiniteChain
