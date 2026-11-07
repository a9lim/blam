/-
A repair to one step of the handwritten K-dispatch argument in
data/self-interpreter/reasoning_class/jn/NOTES.md. Beneath the stream binder
the only one-hole operand of price at most 2 is j itself (`tiny_j_operand`),
and no j-headed spine joins the zero output, whatever its arguments
(`j_head_fails_zero`), so that branch's conclusion stands. Nothing here
certifies that argument's finite inventories. `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based; at the root of a reader c=0 and j=1, with probe
suffix N=2 and zero tag r=3; beneath the stream binder s=0, c=1, j=2.
-/
import Blc.SelfintSourceCost
namespace Blc.SelfintDispatchAudit
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintSourceCost

/-- Operand price below the stream binder, with its one source j priced
    at zero and four extra bits per further binder above j. -/
def operandPrice (t : Term) : Nat := holeCost 2 t + 4 * occDepth 2 t

theorem nohole_cost (t : Term) (j : Nat) (h : occ j t = 0) : 2 ≤ holeCost j t := by
  cases t with
  | var n => by_cases hn : n = j <;> simp [holeCost, occ, hn] at h ⊢
  | lam b => simp only [holeCost]; omega
  | app f a => simp only [holeCost]; omega

/-- The exceptional zero-price operand is j itself, not s. -/
theorem tiny_j_operand (t : Term) (hj : occ 2 t = 1) (hw : operandPrice t ≤ 2) :
    t = .var 2 := by
  cases t with
  | var n => simp only [occ] at hj; split at hj <;> simp_all
  | lam b =>
    simp only [occ] at hj
    simp only [operandPrice, holeCost, occDepth, hj] at hw
    omega
  | app f a =>
    simp only [occ] at hj
    have hcases : occ 2 f = 0 ∨ occ 2 a = 0 := by omega
    simp only [operandPrice, holeCost, occDepth] at hw
    rcases hcases with hf | ha
    · have hh := nohole_cost f 2 hf; omega
    · have hh := nohole_cost a 2 ha; omega

inductive RigidHead (j : Nat) : Term → Prop where
  | var : RigidHead j (.var j)
  | app {f : Term} (a : Term) : RigidHead j f → RigidHead j (.app f a)

theorem rigidHead_beta {j : Nat} {t u : Term} (h : Beta t u) :
    RigidHead j t → RigidHead j u := by
  induction h with
  | beta b a => intro ht; cases ht with | app _ hf => cases hf
  | lam h ih => intro ht; cases ht
  | appL a h ih => intro ht; cases ht with | app _ hf => exact .app a (ih hf)
  | appR f h ih => intro ht; cases ht with | app _ hf => exact .app _ hf

theorem rigidHead_betas {j : Nat} {t u : Term} (h : Betas t u)
    (ht : RigidHead j t) : RigidHead j u := by
  induction h with
  | refl => exact ht
  | head hb hs ih => exact ih (rigidHead_beta hb ht)

theorem spine_rigidHead (j : Nat) (as : List Term) :
    RigidHead j (spine (.var j) as) := by
  have aux : ∀ t, RigidHead j t → RigidHead j (spine t as) := by
    intro t ht
    induction as generalizing t with
    | nil => exact ht
    | cons a as ih => exact ih _ (.app a ht)
  exact aux _ .var

/-- Hence the corrected A2=j case still fails the zero branch. -/
theorem j_head_fails_zero (as : List Term) :
    ¬ BetaJoin (spine (.var 1) as) zeroOut := by
  intro h
  have hr := join_normal h zeroOut_normal
  have hh := rigidHead_betas hr (spine_rigidHead 1 as)
  change RigidHead 1 (.app (.var 3) (.var 1)) at hh
  cases hh with | app _ hf => cases hf

#print axioms tiny_j_operand
#print axioms j_head_fails_zero
end Blc.SelfintDispatchAudit
