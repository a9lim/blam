/-
The closed combinators L=lambda x y.y(x y) and A=lambda x.(x L)x
generate a weak-head invariant orbit. Every finite weak-head endpoint is
A, L, or F(X)=lambda y.y(X y), with X in the same orbit. Each endpoint
forces one of two rigid pending operands before the stream arrives.
This excludes the complete unbounded orbit, and in particular the final
pending sources 4289--4291, without deciding whether A A terminates.
-/
import Blc.SelfintRootLetEmbedding
namespace Blc.SelfintRootLetBinaryOrbit
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

def L : Term := .lam (.lam (.app (.var 0) (.app (.var 1) (.var 0))))
def A : Term := .lam (.app (.app (.var 0) L) (.var 0))
def F (x : Term) : Term := .lam (.app (.var 0) (.app (shift 1 0 x) (.var 0)))

theorem A_step (x : Term) : weakStep (.app A x)=some (.app (.app x L) x) := by
  simp [A,L,weakStep,contract,substDec]

theorem L_step (x : Term) : weakStep (.app L x)=some (F x) := by
  simp [L,F,weakStep,contract,substDec]

theorem F_step (x y : Term) : weakStep (.app (F x) y)=some (.app y (.app x y)) := by
  simp [F,weakStep,contract,substDec,substDec_shift]

inductive Orbit : Term → Prop where
  | a : Orbit A
  | l : Orbit L
  | closure {x : Term} : Orbit x → Orbit (F x)
  | app {f a : Term} : Orbit f → Orbit a → Orbit (.app f a)

theorem orbit_weak {t u : Term} (ht : Orbit t) (hs : weakStep t=some u) : Orbit u := by
  induction ht generalizing u with
  | a => simp [A,weakStep] at hs
  | l => simp [L,weakStep] at hs
  | closure hx ih => simp [F,weakStep] at hs
  | @app f a hf ha ihf iha =>
    cases hf with
    | a =>
      rw [A_step] at hs
      cases hs
      exact .app (.app ha .l) ha
    | l =>
      rw [L_step] at hs
      cases hs
      exact .closure ha
    | closure hx =>
      rw [F_step] at hs
      cases hs
      exact .app ha (.app hx ha)
    | app hg hb =>
      simp only [weakStep,Option.map_eq_some_iff] at hs
      obtain ⟨v,hv,rfl⟩ := hs
      exact .app (ihf hv) ha

theorem orbit_not_rigid {t : Term} (ht : Orbit t) (hr : Rigid t) : False := by
  induction ht with
  | a => cases hr
  | l => cases hr
  | closure hx ih => cases hr
  | app hf ha ihf iha => cases hr with | app _ h => exact ihf h

theorem orbit_endpoint {t : Term} {n : Nat} (ht : Orbit t) (hc : Count t n) :
    ∃ u, Betas t u ∧ Orbit u ∧ weakStep u=none := by
  induction hc with
  | stop hs => exact ⟨_,.refl _,ht,hs⟩
  | step hs hc ih =>
    obtain ⟨u,hu,hvu,hsu⟩ := ih (orbit_weak ht hs)
    exact ⟨u,.head (weakStep_beta hs) hu,hvu,hsu⟩

theorem terminal_not_reader {t : Term} (ht : Orbit t) (hs : weakStep t=none)
    (v w : Nat) (cs : List Term) : ¬ Reader (spine t (.var v::.var w::cs)) := by
  intro hr
  cases ht with
  | a =>
    have hr' := hr.beta (SelfintSourceCost.spine_beta (weakStep_beta (A_step (.var v))) (.var w::cs))
    exact reader_not_rigid hr'
      (SelfintFlatPrefix.rigid_spine_of (.app _ (.app _ (.var v))) (.var w::cs))
  | l =>
    have hr' := hr.beta (SelfintSourceCost.spine_beta (weakStep_beta (L_step (.var v))) (.var w::cs))
    have hr'' := hr'.beta (SelfintSourceCost.spine_beta (weakStep_beta (F_step (.var v) (.var w))) cs)
    exact reader_not_rigid hr''
      (SelfintFlatPrefix.rigid_spine_of (.app _ (.var w)) cs)
  | @closure x hx =>
    have hr' := hr.beta (SelfintSourceCost.spine_beta (weakStep_beta (F_step x (.var v))) (.var w::cs))
    exact reader_not_rigid hr'
      (SelfintFlatPrefix.rigid_spine_of (.app _ (.var v)) (.var w::cs))
  | app hf ha =>
    exact orbit_not_rigid (.app hf ha) (weakStep_none_rigid hs (fun h => h))

/-- Every finite application tree over the two combinators, including
    generated captured closures, fails with two rigid operands pending. -/
theorem orbit_not_reader {t : Term} (ht : Orbit t) (v w : Nat) (cs : List Term) :
    ¬ Reader (spine t (.var v::.var w::cs)) := by
  intro hr
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_fn n hcn
  obtain ⟨q,hq,hcq⟩ := count_spine_fn (.var v::.var w::cs) hcm
  obtain ⟨u,hu,hvu,hsu⟩ := orbit_endpoint ht hcq
  exact terminal_not_reader hvu hsu v w cs
    (reader_betas hr (betas_spine hu (.var v::.var w::cs)))

def diagonal : Term := .app (.lam (.app (.var 0) (.var 0))) A

theorem not_reader (v w : Nat) (cs : List Term) :
    ¬ Reader (spine diagonal (.var v::.var w::cs)) := by
  intro hr
  exact orbit_not_reader (.app .a .a) v w cs
    (hr.beta (SelfintSourceCost.spine_beta (Beta.beta (.app (.var 0) (.var 0)) A)
      (.var v::.var w::cs)))

def pending4289 : Term := spine diagonal [.var 1,.var 0,.var 0]
def pending4290 : Term := spine diagonal [.var 0,.var 1,.var 0]
def pending4291 : Term := spine diagonal [.var 0,.var 0,.var 1]

theorem pending_weights :
    weight 0 pending4289=45 ∧ weight 0 pending4290=45 ∧ weight 0 pending4291=45 := by decide

theorem pending4289_not_reader : ¬ Reader pending4289 := not_reader _ _ _
theorem pending4290_not_reader : ¬ Reader pending4290 := not_reader _ _ _
theorem pending4291_not_reader : ¬ Reader pending4291 := not_reader _ _ _

#print axioms orbit_not_reader
#print axioms not_reader
end Blc.SelfintRootLetBinaryOrbit
