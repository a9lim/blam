/-
The normal binary-prefix helper with three leaves and one dead lambda.
The source shapes are derived symbolically. Six fixed terminating probes,
one previously proved routed family, and an unbounded two-step clock
descent exclude the resulting cases. No bounded failure is used.
-/
import Blc.SelfintRound8PrefixDeadShapes
import Blc.WeakHeadClock

namespace Blc.SelfintRound8PrefixDead
open Term SelfintLowerBound SelfintFloor SelfintWireCost SelfintCapture
  SelfintClass SelfintClassNext SelfintWiden SelfintRound6BoundNext
  SelfintRound6BoundLiteral QuoteOrigins SelfintControl WeakHeadClock
open SelfintRound8PrefixDeadShapes

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def helper (D : Term) : Term := .lam (.lam D)
def self (D : Term) : Term := .app (helper D) (helper D)
def diagonal : Term := .lam (.app (.var 0) (.var 0))

private def stream : Term := streamOf (blcCode (.lam (.var 0))) (.var 1)

private theorem fixed_normal_probe {E t : Term} {k : Nat}
    (hs : normalSteps k (idCall E) = some t) (hn : NFt t)
    (hne : t ≠ idOutput) : ¬ IsSelfInterpreter E := by
  intro hi
  have hr := betas_preserve_nf (normalSteps_sound hs)
    (interpreter_idCall_betas hi) idOutput_normal
  exact hne (normalForm_betas_eq (nft_normal hn) hr).symm

private theorem case_d1 : ¬ IsSelfInterpreter (self d1) := by
  apply fixed_normal_probe (k:=7)
    (t:=.app (.app (.var 0) (.lam (.var 1))) stream)
  · decide
  · decide
  · decide

private theorem case_d2 : ¬ IsSelfInterpreter (self d2) := by
  apply fixed_normal_probe (k:=5)
    (t:=.app (.app (.var 0) (.lam (.var 1))) stream)
  · decide
  · decide
  · decide

private theorem case_d3 : ¬ IsSelfInterpreter (self d3) := by
  apply fixed_normal_probe (k:=4)
    (t:=.app (.app (.app (.var 0) (.lam (helper d3))) (.lam (.var 1))) stream)
  · decide
  · decide
  · decide

private theorem case_d5 : ¬ IsSelfInterpreter (self d5) := by
  apply fixed_normal_probe (k:=6)
    (t:=.lam (.app (.var 1) (.lam (.app (.var 2) (.var 1)))))
  · decide
  · decide
  · decide

private theorem case_d6 : ¬ IsSelfInterpreter (self d6) := by
  apply fixed_normal_probe (k:=5) (t:=.app (.var 0) (helper d6))
  · decide
  · decide
  · decide

private theorem case_d7 : ¬ IsSelfInterpreter (self d7) := by
  apply fixed_normal_probe (k:=7) (t:=.var 0)
  · decide
  · trivial
  · decide

def suspended : Term := .lam (.app (self d4) (.lam (.var 1)))

theorem loop_first (C S : Term) :
    weakStep (.app (.app (self d4) C) S) =
      some (.app (.app suspended C) S) := by
  simp [self,helper,d4,suspended,weakStep,contract,substDec,shift]

theorem loop_second (C S : Term) :
    weakStep (.app (.app suspended C) S) =
      some (.app (.app (self d4) (.lam (shift 1 0 C))) S) := by
  simp [suspended,self,helper,d4,weakStep,contract,substDec]

/-- The continuation is wrapped forever. Every putative finite weak-head
clock loses two ticks and returns to the same family with arbitrary C. -/
theorem loop_no_clock (n : Nat) (C S : Term) :
    ¬ Count (.app (.app (self d4) C) S) n := by
  induction n using Nat.strongRecOn generalizing C S with
  | ind n ih =>
      intro hc
      obtain ⟨m,hm,hcm⟩ := head_decreases hc (loop_first C S)
      obtain ⟨k,hk,hck⟩ := head_decreases hcm (loop_second C S)
      exact ih k (by omega) (.lam (shift 1 0 C)) S hck

theorem case_d4 : ¬ IsSelfInterpreter (self d4) := by
  intro hi
  obtain ⟨n,hn⟩ := hasNormalForm_count
    ⟨idOutput,interpreter_idCall_betas hi,idOutput_normal⟩
  exact loop_no_clock n (.var 0) stream hn

private theorem case_d8 : ¬ IsSelfInterpreter (self d8) := by
  apply SelfintRound8GlobalOuterRoute.generated_route_not_selfInterpreter
    (R:=.app (.var 0) (.lam (.var 2)))
  · decide
  · decide
  · exact .app _ .var
  · exact .app .atom .atom

theorem outer_three_leaf_not_selfInterpreter (D : Term)
    (hf : FreeUnder 2 D) (hn : NFt D) (hl : lamCount D=1)
    (hz : live D=0) (hv : leafCount D=3) (ho : occ 1 D=2)
    (hr : RigidAt 1 D) : ¬ IsSelfInterpreter (self D) := by
  rcases outer_dead_three_leaf_forms D hf hn hl hz hv ho hr with
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact case_d1
  · exact case_d2
  · exact case_d3
  · exact case_d4
  · exact case_d5
  · exact case_d6
  · exact case_d7
  · exact case_d8

private theorem dead_middle_not_selfInterpreter {D : Term}
    (hz : occ 0 D=0) : ¬ IsSelfInterpreter (self D) := by
  intro hi
  have ho := one_lambda_public_occ (descend_interpreter hi)
  change 1 ≤ occ 0 (substDec 1 (shift 1 0 (helper D)) D) at ho
  rw [occ_substDec_lt D (shift 1 0 (helper D)) 0 1 (by omega),hz,
    occ_shift_eq (helper D) 0] at ho
  omega

private theorem dead_final_not_selfInterpreter {u : Term}
    (hz : occ 0 u=0) : ¬ IsSelfInterpreter (self (.lam u)) := by
  intro hi
  have ho := (literal_public_occ (descend_interpreter hi)).1
  change 1 ≤ occ 0 (substDec 2 (shift 1 0 (shift 1 0 (helper (.lam u)))) u) at ho
  rw [occ_substDec_lt u _ 0 2 (by omega),hz] at ho
  have hh : occ 0 (shift 1 0 (shift 1 0 (helper (.lam u))))=0 := occ_shift_eq _ 0
  rw [hh] at ho
  omega

private theorem normal_nonlam_rigid (t : Term) (hn : NFt t)
    (hl : ¬ IsLam t) : Rigid t := by
  induction t with
  | var n => exact .var n
  | lam b ih => exact (hl trivial).elim
  | app f a ihf iha => exact .app a (ihf hn.2.1 hn.1)

/-- The binary-prefix branch of the one-dead-lambda resource boundary.
No index or wire budget is needed once these source counts are known. -/
theorem prefix_three_leaf_diagonal_not_selfInterpreter (D : Term)
    (hf : FreeUnder 2 D) (hn : NFt D) (hl : lamCount D=1)
    (hLive : live (.lam (.lam D))=2) (hv : leafCount D=3)
    (ho : occ 1 D=2) :
    ¬ IsSelfInterpreter (.app diagonal (.lam (.lam D))) := by
  intro hi
  have hi' : IsSelfInterpreter (self D) := descend_interpreter hi
  by_cases hb : occ 0 D=0
  · exact dead_middle_not_selfInterpreter hb hi'
  · have hp : 0<occ 0 D := by omega
    have hz : live D=0 := by
      simp only [live,occ,ho,if_pos (show 0<2 by omega),if_pos hp] at hLive
      omega
    cases D with
    | var n => simp [leafCount] at hv
    | lam u =>
        have hu : occ 0 u=0 := by
          by_cases hu : occ 0 u=0
          · exact hu
          · have hup : 0<occ 0 u := by omega
            simp only [live,if_pos hup] at hz
            omega
        exact dead_final_not_selfInterpreter hu hi'
    | app f a =>
        have hrig : Rigid (.app f a) := by
          exact normal_nonlam_rigid _ hn (fun h=>h)
        obtain ⟨n,as,he⟩ := SelfintSourceFront.rigid_spine hrig
        have hscope : n<2 := SelfintSourceCost.spine_scope (.var n) as 2 (he ▸ hf)
        have hroute : RigidAt n (.app f a) := by
          rw [he]
          exact SelfintRound8GlobalOuterSpine.rigidAt_spine .var as
        have hcases : n=0 ∨ n=1 := by omega
        rcases hcases with rfl | rfl
        · exact SelfintRound7GlobalLastHead.generated_not_selfInterpreter hf hz hroute
            (.app .atom .atom) hi'
        · exact outer_three_leaf_not_selfInterpreter _ hf hn hl hz hv ho hroute hi'

#print axioms loop_no_clock
#print axioms prefix_three_leaf_diagonal_not_selfInterpreter
end Blc.SelfintRound8PrefixDead
