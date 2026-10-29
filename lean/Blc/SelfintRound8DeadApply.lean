/-
A closed normal two-lambda helper with three leaves cannot become an exact
interpreter by applying it to its own constant thunk. The nonlinear outer
binder is the only resource premise beyond the symbolic source counts.
-/
import Blc.SelfintRound8GlobalOffPrefix

namespace Blc.SelfintRound8DeadApply
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintCapture
  SelfintClass SelfintWiden SelfintRound6BoundNext QuoteOrigins

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def deadApply (A : Term) : Term := .app A (.lam A)
def binary (D : Term) : Term := .lam (.lam D)

/-- Losing the rigid continuation on any finite beta path is fatal. -/
theorem omitted_continuation {E t : Term} {k : Nat}
    (hs : headSteps k (idCall E)=some t) (hz : occ 0 t=0) : ¬ IsSelfInterpreter E := by
  intro hi
  have hr := betas_preserve_nf (headSteps_beta_star hs)
    (interpreter_idCall_betas hi) idOutput_normal
  have hh := SelfintFloor.occ_betas_zero hr 0 hz
  simp [idOutput,occ] at hh

theorem wrong_first {E u v : Term} {k : Nat}
    (hs : headSteps k (idCall E)=some (.app (.app (.var 0) u) v))
    (hn : NFt u) (hne : u≠.lam (.lam (.var 0))) : ¬ IsSelfInterpreter E := by
  intro hi
  have hr := betas_preserve_nf (headSteps_beta_star hs)
    (interpreter_idCall_betas hi) idOutput_normal
  have he := normalForm_betas_eq (SelfintClassNext.nft_normal hn) (two_args_first u v hr)
  exact hne he.symm

private def stream : Term := streamOf (blcCode (.lam (.var 0))) (.var 1)

private theorem case_aab : ¬ IsSelfInterpreter
    (deadApply (binary (.app (.app (.var 1) (.var 1)) (.var 0)))) := by
  apply wrong_first (u:=.var 0) (v:=stream) (k:=5)
  · decide
  · trivial
  · decide

private theorem case_a_ab : ¬ IsSelfInterpreter
    (deadApply (binary (.app (.var 1) (.app (.var 1) (.var 0))))) := by
  apply omitted_continuation (k:=3)
    (t:=.app (binary (.app (.var 1) (.app (.var 1) (.var 0)))) stream)
  · decide
  · decide

private theorem case_aba : ¬ IsSelfInterpreter
    (deadApply (binary (.app (.app (.var 1) (.var 0)) (.var 1)))) := by
  apply omitted_continuation (k:=3)
    (t:=.app (deadApply (binary (.app (.app (.var 1) (.var 0)) (.var 1)))) stream)
  · decide
  · decide

private theorem case_a_ba : ¬ IsSelfInterpreter
    (deadApply (binary (.app (.var 1) (.app (.var 0) (.var 1))))) := by
  apply omitted_continuation (k:=3)
    (t:=.app (binary (.app (.var 1) (.app (.var 0) (.var 1)))) stream)
  · decide
  · decide

private theorem case_baa : ¬ IsSelfInterpreter
    (deadApply (binary (.app (.app (.var 0) (.var 1)) (.var 1)))) := by
  intro hi
  obtain ⟨s,hs,hn,hshape⟩ := landing_shape
    (deadApply (binary (.app (.app (.var 0) (.var 1)) (.var 1)))) 2 3 (by decide)
  obtain ⟨a,b,c,rfl⟩ := headShape_three hshape
  exact no_three_args a b c (interpreter_landing hi hs hn)

private theorem case_b_aa : ¬ IsSelfInterpreter
    (deadApply (binary (.app (.var 0) (.app (.var 1) (.var 1))))) := by
  let A := binary (.app (.var 0) (.app (.var 1) (.var 1)))
  have hs : headSteps 2 (idCall (deadApply A)) =
      some (.app (.app (.var 0) (.app (.lam A) (.lam A))) stream) := by decide
  intro hi
  have hr := betas_preserve_nf (headSteps_beta_star hs)
    (interpreter_idCall_betas hi) idOutput_normal
  have hf := two_args_first _ _ hr
  have ha : Betas (.app (.lam A) (.lam A)) A := by
    exact .head (show Beta (.app (.lam A) (.lam A)) A from by
      simpa [A,binary,contract,substDec,shift] using Beta.beta A (.lam A)) (.refl _)
  have hn : NormalForm A := SelfintClassNext.nft_normal (by decide)
  have he := betas_preserve_nf hf ha hn
  have heq := normalForm_betas_eq (SelfintClassNext.nft_normal (by decide)) he
  have hne : A≠.lam (.lam (.var 0)) := by decide
  exact hne heq

/-- Symbolic six-way classification, independent of the wire budget. -/
theorem flat_binary_deadApply_not_selfInterpreter (D : Term)
    (hl : lamCount D=0) (hc : FreeUnder 2 D) (hv : leafCount D=3)
    (ha : occ 1 D=2) (hb : occ 0 D=1) : ¬ IsSelfInterpreter (deadApply (binary D)) := by
  rcases three_leaf_enum D hl hc hv ha hb with rfl | rfl | rfl | rfl | rfl | rfl
  · exact case_aab
  · exact case_a_ab
  · exact case_aba
  · exact case_a_ba
  · exact case_baa
  · exact case_b_aa

/-- A nonlinear three-leaf two-lambda helper cannot bootstrap from its
own dead wrapper. The helper's internal capture is forced by the putative
interpreter, so no separation premise is needed. -/
theorem normal_three_leaf_deadApply_not_selfInterpreter (b : Term)
    (hc : FreeUnder 1 b) (hn : NFt b) (hl : lamCount b=1)
    (hv : leafCount b=3) (ho : 2≤occ 0 b) :
    ¬ IsSelfInterpreter (deadApply (.lam b)) := by
  intro hi
  have hA : Closed (.lam b) := hc
  have hcap : ¬ Separated 0 (.lam b) := by
    intro hs
    exact selfinterpreter_not_separated _ hi
      ⟨hs, SelfintRound6BoundGlobal.closed_separated_all _ hA hs 1,
        by intro _ i h; omega⟩
  have hLive : live (.lam b)=2 := by
    have hh := live_le_lamCount (.lam b)
    have hlo : 2≤live (.lam b) := by
      by_cases h : 2≤live (.lam b)
      · exact h
      · exact (hcap (one_live_separated _ (by omega))).elim
    simp only [lamCount,hl] at hh
    omega
  cases b with
  | var n => simp [lamCount] at hl
  | lam D =>
      have hd : lamCount D=0 := by simp only [lamCount] at hl; omega
      change leafCount D=3 at hv
      have hsum := lamfree_leafCount_eq D hd hc
      have hDz := lamfree_live D hd
      have hp : 0<occ 0 D := by
        simp only [live,hDz] at hLive
        split at hLive <;> split at hLive <;> omega
      exact flat_binary_deadApply_not_selfInterpreter D hd hc hv
        (by change 2≤occ 1 D at ho; omega) (by change 2≤occ 1 D at ho; omega) hi
  | app f a =>
      have hcap' : ¬ Separated 1 (.app f a) := fun hs => hcap ⟨hs,by intro _ i h; omega⟩
      cases f with
      | var n =>
          have hn0 : n=0 := by have hh : n<1 := hc.1; omega
          subst n
          have hi' := descend_interpreter hi
          change IsSelfInterpreter (.app (.lam (.lam (.app (.var 0) a)))
            (substDec 0 (.lam (.lam (.app (.var 0) a))) a)) at hi'
          have hi'' := descend_interpreter hi'
          have hiA : IsSelfInterpreter (.lam (.app (.var 0) a)) := by
            simpa only [contract,substDec_closed 0 _ hA] using hi''
          have hh := selfInterpreter_three_live hiA
          omega
      | lam d => exact (hn.1 trivial).elim
      | app g x =>
          have hg := leafCount_pos g
          have hx := leafCount_pos x
          have ha := leafCount_pos a
          simp only [leafCount] at hv
          exact (hcap' ⟨⟨one_leaf_separated g 1 (by omega),
            one_leaf_separated x 1 (by omega)⟩,one_leaf_separated a 1 (by omega)⟩).elim

/-- A nonlinear helper with two live lambdas and one dead lambda. Its
dead source syntax is computationally active: self-application produces K.
Thus the two-total-lambda hypothesis cannot be replaced by an argument
that simply ignores dead source abstractions. -/
def nonlinearDeadHelper : Term :=
  .lam (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))

theorem nonlinearDeadHelper_resources : Closed nonlinearDeadHelper ∧
    NFt nonlinearDeadHelper ∧ live nonlinearDeadHelper=2 ∧
    lamCount nonlinearDeadHelper=3 ∧ leafCount nonlinearDeadHelper=3 ∧
    nonlinear nonlinearDeadHelper=1 := by decide

theorem nonlinearDeadHelper_self_to_K :
    Betas (.app nonlinearDeadHelper nonlinearDeadHelper) (.lam (.lam (.var 1))) := by
  exact headSteps_beta_star (n:=5) (by decide)

#print axioms normal_three_leaf_deadApply_not_selfInterpreter
#print axioms nonlinearDeadHelper_self_to_K
end Blc.SelfintRound8DeadApply
