/-
A flat head prefix cannot act as a reader function: if λs. T C1 … Ct is a
reader and T is lambda-free, T is literally s, whatever the pending operands
(`reader_flat_prefix`). Hence the body and argument of a minimum first body
redex are not both lambda-free (`minimum_not_flat_flat`). `docs/classical/self-interpreter/class-bound.md`.
All variables are 0-based; at the root of a reader c=0 and j=1, with probe
suffix N=2 and zero tag r=3; beneath the stream binder s=0, c=1, j=2.
-/
import Blc.SelfintRootFlat
namespace Blc.SelfintFlatPrefix
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintInert
open SelfintFlatSemantics SelfintFlatMinimum SelfintRootFlat SelfintControl

set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

def arity : Term → Nat
  | .app f _ => arity f + 1
  | _ => 0

theorem rigid_arity_beta {t u : Term} (h : Beta t u) (hr : Rigid t) : arity t = arity u := by
  induction h with
  | beta b a => cases hr with | app _ hh => cases hh
  | lam h ih => cases hr
  | appL a h ih =>
    cases hr with | app _ hh => exact congrArg (fun n => n+1) (ih hh)
  | appR f h ih => rfl

theorem rigid_arity_betas {t u : Term} (h : Betas t u) (hr : Rigid t) : arity t = arity u := by
  induction h with
  | refl => rfl
  | head hb hs ih => exact (rigid_arity_beta hb hr).trans (ih (rigid_beta hr hb))

theorem arity_spine (t : Term) (as : List Term) : arity (spine t as) = arity t + as.length := by
  induction as generalizing t with
  | nil => simp [spine]
  | cons a as ih => simp [spine,ih,arity]; omega

theorem rigid_spine_of {t : Term} (hr : Rigid t) (as : List Term) : Rigid (spine t as) := by
  induction as generalizing t with
  | nil => exact hr
  | cons a as ih => exact ih (.app a hr)

theorem rigidHead_spine {t : Term} {k : Nat} (hr : RigidHead k t) (as : List Term) :
    RigidHead k (spine t as) := by
  induction as generalizing t with
  | nil => exact hr
  | cons a as ih => exact ih (.app a hr)

theorem rigidHead_wrong_zero {t : Term} {k : Nat} (hr : RigidHead k t) (hk : k ≠ 3)
    (as : List Term) : ¬ BetaJoin (spine t as) zeroOut := by
  intro hj
  have hh := rigidHead_betas (join_normal hj zeroOut_normal) (rigidHead_spine hr as)
  exact hk (rigidHead_unique hh (RigidHead.app _ .var))

theorem rigidHead_wrong_one {t : Term} {k : Nat} (hr : RigidHead k t) (hk : k ≠ 0)
    (as : List Term) : ¬ BetaJoin (spine t as) varOut := by
  intro hj
  have hh := rigidHead_betas (join_normal hj varOut_normal) (rigidHead_spine hr as)
  exact hk (rigidHead_unique hh (RigidHead.app _ (RigidHead.app _ .var)))

theorem inert_app_no_zero {t : Term} (hr : Rigid t) (hn : NFt t)
    (happ : ∃ f a, t = .app f a) (hne : t ≠ zeroOut) (as : List Term) :
    ¬ BetaJoin (spine t as) zeroOut := by
  intro hj
  cases as with
  | nil =>
    have he := normalForm_betas_eq (fun _ h => nft_no_beta hn h) (join_normal hj zeroOut_normal)
    exact hne he.symm
  | cons a as =>
    have he := rigid_arity_betas (join_normal hj zeroOut_normal) (rigid_spine_of hr _)
    rw [arity_spine] at he
    obtain ⟨f,b,rfl⟩ := happ
    change arity f + 1 + (as.length+1) = 1 at he
    omega

theorem uconst_no_reader (as : List Term) : ¬ BetaJoin (spine uconst as) varOut := by
  intro hj
  cases as with
  | nil =>
    have h := SelfintSourceFront.lam_betas (join_normal hj varOut_normal) (by trivial : IsLam uconst)
    exact h
  | cons a as =>
    have hr : Betas (spine (.app uconst a) as) (spine (.var 2) as) :=
      betas_spine (.head (.beta _ _) (.refl _)) as
    exact rigidHead_wrong_one (.var : RigidHead 2 (.var 2)) (by decide) as
      (join_trans (join_symm (join_of_betas hr)) hj)

/-- Uniform in every pending operand shape, count, and source hole depth.
    Only the zero and shortest unary laws are needed for this exclusion. -/
theorem reader_flat_prefix {t : Term} {as : List Term}
    (hr : Reader (.lam (spine t as))) (hl : lamCount t = 0) : t = .var 0 := by
  have hs : FreeUnder 3 t := spine_scope t as 3 hr.scope
  obtain ⟨z,u,hz,hu,h⟩ := flat_algebra t hl hs 0
  have hz0 : Betas (.app (.lam (spine t as)) Z)
      (spine z (as.map (substDec 0 Z))) := by
    have hstep := Beta.beta (spine t as) Z
    rw [contract,SelfintSourceFront.subst_spine] at hstep
    exact .head hstep (betas_spine hz _)
  have hu0 : Betas (.app (.lam (spine t as)) S)
      (spine u (as.map (substDec 0 S))) := by
    have hstep := Beta.beta (spine t as) S
    rw [contract,SelfintSourceFront.subst_spine] at hstep
    exact .head hstep (betas_spine hu _)
  have hzj := join_trans (join_symm (join_of_betas hz0)) hr.zero
  have huj := join_trans (join_symm (join_of_betas hu0)) hr.one
  cases h with
  | stream => rfl
  | cont => exact (rigidHead_wrong_zero (.var : RigidHead 0 (.var 0)) (by decide) _ hzj).elim
  | hole => exact (rigidHead_wrong_zero (.var : RigidHead 1 (.var 1)) (by decide) _ hzj).elim
  | square => exact (uconst_no_reader _ huj).elim
  | rest a => exact (rigidHead_wrong_one (.var : RigidHead 2 (.var 2)) (by decide) _ huj).elim
  | restHole a =>
    exact (rigidHead_wrong_one (.app _ .var : RigidHead 2 (.app (.var 2) (.var 1)))
      (by decide) _ huj).elim
  | junk hzr hzn hzapp hne _ _ _ _ => exact (inert_app_no_zero hzr hzn hzapp hne _ hzj).elim

/-- A flat function body and flat argument cannot support a minimum
    reader's first redex. The entire pending spine is unrestricted. -/
theorem minimum_not_flat_flat {b a : Term} {as : List Term}
    (hm : MinimumReader (bodyReader b a as)) (hb : lamCount b = 0) (ha : lamCount a = 0) : False := by
  have hl : lamCount (contract b a) = 0 := by
    simp only [contract,lamCount_subst,hb,ha,Nat.mul_zero,Nat.add_zero]
  have hr := hm.laws.probes.beta (Beta.lam (SelfintSourceCost.spine_beta (Beta.beta b a) as))
  have he := reader_flat_prefix hr hl
  cases b with
  | var n =>
    by_cases hn : n = 0
    · subst n
      have he' : a = .var 0 := he
      subst a
      exact minimum_body_not_stream_argument hm
    · have hz : occ 0 (.var n) = 0 := by simp [occ,hn]
      have hneed := minimum_source_non_erasing (bodyContext as) (.var n) a
        ((bodyContext_fill (.var n) a as).symm ▸ hm)
      omega
  | lam b => simp [lamCount] at hb
  | app f x => cases he

#print axioms reader_flat_prefix
#print axioms minimum_not_flat_flat
end Blc.SelfintFlatPrefix
