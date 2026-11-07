import Moves
import Blc.SelfintClosureBarrier
namespace Blc.Pending
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintWidenHoist SelfintFlatMinimum
open SelfintLambdaSink SelfintNestedLets SelfintControl RootLow
open SelfintSourceFront SelfintNeededHead SelfintDispatchAudit SelfintRootFlat
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

theorem pushed_laws (b a : Term) (bs cs : List Term)
    (hr : ReaderLaws (pulledSpine b a bs cs)) : ReaderLaws (pushedSpine b a bs cs) := by
  apply laws_join hr
  · exact spine_scope_replace cs 2 hr.scope
      (push_scope b a bs 2 (spine_scope _ cs 2 hr.scope))
  · exact join_spine (push_join b a bs) cs

/-- Zero-capture operands can be moved beneath the let without losing
three-coordinate minimality, in contrast to stream-lambda exposure. -/
theorem closed_push_minimum (b a : Term) (bs cs : List Term)
    (hm : Minimum3 (pulledSpine b a bs cs))
    (hf : spineFree 0 bs+3*spineOcc 1 bs=0) :
    Minimum3 (pushedSpine b a bs cs) := by
  have hl:=pushed_laws b a bs cs hm.laws
  have hj : occ 1 (pushedSpine b a bs cs)=1 := (pull_holes b a bs cs 1).trans hm.oneHole
  have hp:=RootLow.pull_price b a bs cs 0
  simp only [Nat.zero_add] at hp
  have hd:=pull_depth b a bs cs 1
  have hL:=pull_lambdas b a bs cs
  have ho : OrderLE (pushedSpine b a bs cs) (pulledSpine b a bs cs) := by
    right
    constructor
    · change weight 0 (spine (push b a bs) cs)=weight 0 (spine (spine (.app (.lam b) a) bs) cs)
      omega
    · right;exact ⟨hL,by omega⟩
  exact (transport hm hl hj ho).1

/-- Into-A specialization is not a lambda-calculus identity, even for
nonlinear two-use bodies, one source j and tiny pending operands. -/
def K : Term := .lam (.lam (.var 1))
def I : Term := .lam (.var 0)
def xx : Term := .app (.var 0) (.var 0)
def badOld : Term := spine (.app (.lam xx) K) [I,.var 1]
def badNew : Term := spine (.app (.lam xx) (.app K I)) [.var 1]

theorem into_A_counterexample : ¬ BetaJoin badOld badNew := by
  have ho : Betas badOld (.lam (.var 2)) := headSteps_beta_star (by decide :
    headSteps 4 badOld=some (.lam (.var 2)))
  have hn : Betas badNew (.var 1) := headSteps_beta_star (by decide :
    headSteps 4 badNew=some (.var 1))
  intro h
  have hj := join_trans (join_symm (show BetaJoin badOld (.lam (.var 2)) from ⟨_,ho,.refl _⟩))
    (join_trans h (show BetaJoin badNew (.var 1) from ⟨_,hn,.refl _⟩))
  have he := SelfintClosureBarrier.normal_join_eq (by decide) (by decide) hj
  cases he

theorem counterexample_prices :
    weight 0 badOld=25 ∧ weight 0 badNew=25 ∧ occ 1 badOld=1 ∧ occ 1 badNew=1 := by decide

#print axioms closed_push_minimum
#print axioms into_A_counterexample
#print axioms counterexample_prices
end Blc.Pending
