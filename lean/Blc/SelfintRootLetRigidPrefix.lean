/-
Hereditary head forcing excludes open pre-stream computations as well as
closed ones. If every source lambda heads its body with its own binder,
then every finite weak-head endpoint is either already rigid or forces a
rigid first pending operand. Captures of c or j are allowed, and neither
the source size nor later pending operands are restricted.

This removes entire structural subfamilies of the pending x-headed cells.
It is not a claim that those cells universally meet the forcing premise.
-/
import Blc.SelfintRootLetForcing
namespace Blc.SelfintRootLetRigidPrefix
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
open SelfintRootLetForcing
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

theorem rigidHead_contract_rigid {b a : Term} (hb : RigidHead 0 b) (ha : Rigid a) :
    Rigid (contract b a) := by
  induction hb with
  | var => exact ha
  | app v hf ih => exact .app _ ih

/-- A forcing prefix cannot move past a rigid pending operand to inspect
    the later stream. Free variables in the prefix are unrestricted. -/
theorem forcing_not_reader_after_rigid {t a : Term} (ht : Forcing t) (ha : Rigid a)
    (cs : List Term) : ¬ Reader (spine t (a::cs)) := by
  intro hr
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_fn n hcn
  obtain ⟨q,hq,hcq⟩ := count_spine_fn (a::cs) hcm
  obtain ⟨u,hu,hs⟩ := count_endpoint hcq
  have hforce := forcing_betas hu ht
  have hr' := reader_betas hr (betas_spine hu (a::cs))
  cases u with
  | var v =>
    exact reader_not_rigid hr' (SelfintFlatPrefix.rigid_spine_of (.var v) (a::cs))
  | app f x =>
    exact reader_not_rigid hr'
      (SelfintFlatPrefix.rigid_spine_of (weakStep_none_rigid hs (fun h => h)) (a::cs))
  | lam b =>
    cases hforce with
    | lam hb hh =>
      exact reader_not_rigid (hr'.beta (SelfintSourceCost.spine_beta (Beta.beta b a) cs))
        (SelfintFlatPrefix.rigid_spine_of (rigidHead_contract_rigid hh ha) cs)

/-- An x-headed root let whose component lambdas all force their own
    binders cannot be a reader when its first pending operand is rigid. -/
theorem root_let_not_reader {b a c : Term} (hb : Forcing b) (hh : RigidHead 0 b)
    (ha : Forcing a) (hc : Rigid c) (cs : List Term) :
    ¬ Reader (spine (.app (.lam b) a) (c::cs)) :=
  forcing_not_reader_after_rigid (.app (.lam hb hh) ha) hc cs

/-- Any beta simplification into a forcing prefix supplies the same
    exclusion; no non-expansion or minimality hypothesis is needed. -/
theorem reduces_forcing_not_reader {t u a : Term} (h : Betas t u)
    (hu : Forcing u) (ha : Rigid a) (cs : List Term) :
    ¬ Reader (spine t (a::cs)) := by
  intro hr
  exact forcing_not_reader_after_rigid hu ha cs (reader_betas hr (betas_spine h (a::cs)))

/-- Free occurrences outside every lambda. Such an occurrence cannot
    disappear into a lambda through a head-forcing contraction. -/
def shallowOcc (j : Nat) : Term → Nat
  | .var n => if n=j then 1 else 0
  | .lam _ => 0
  | .app f a => shallowOcc j f + shallowOcc j a

theorem shallow_contract_le {b : Term} (hb : RigidHead 0 b) (a : Term) (j : Nat) :
    shallowOcc j a ≤ shallowOcc j (contract b a) := by
  induction hb with
  | var => exact Nat.le_refl _
  | app v hf ih => exact Nat.le_trans ih (Nat.le_add_right _ _)

theorem forcing_beta_shallow {t u : Term} (hb : Beta t u) (ht : Forcing t) (j : Nat) :
    shallowOcc j t ≤ shallowOcc j u := by
  induction hb with
  | beta b a =>
    cases ht with
    | app hf ha => cases hf with
      | lam hbody hh => simpa only [shallowOcc,Nat.zero_add] using shallow_contract_le hh a j
  | lam hb ih => exact Nat.le_refl _
  | appL a hb ih => cases ht with | app hf ha => exact Nat.add_le_add_right (ih hf) _
  | appR f hb ih => cases ht with | app hf ha => exact Nat.add_le_add_left (ih ha) _

theorem forcing_betas_shallow {t u : Term} (hb : Betas t u) (ht : Forcing t) (j : Nat) :
    shallowOcc j t ≤ shallowOcc j u := by
  induction hb with
  | refl => exact Nat.le_refl _
  | head hs hr ih =>
    exact Nat.le_trans (forcing_beta_shallow hs ht j) (ih (forcing_beta hs ht))

theorem occ_eq_shallow_of_depth_zero (t : Term) (j : Nat) (hd : occDepth j t=0) :
    occ j t=shallowOcc j t := by
  induction t with
  | var n => rfl
  | lam b ih => simp only [occDepth] at hd; change occ (j+1) b=0; omega
  | app f a ihf iha =>
    simp only [occDepth] at hd
    simp only [occ,shallowOcc,ihf (by omega),iha (by omega)]

/-- A shallow free leaf in a hereditary forcer survives outside lambdas
    in every reduct. Thus the term cannot expose the lambda a reader needs. -/
theorem forcing_not_reader_shallow {t : Term} (ht : Forcing t) (j : Nat)
    (hj : 0<shallowOcc j t) : ¬ Reader t := by
  intro hr
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_fn n hcn
  obtain ⟨u,hu,hs⟩ := count_endpoint hcm
  have hle := forcing_betas_shallow hu ht j
  have hr' := reader_betas hr hu
  cases u with
  | var v => exact reader_not_rigid hr' (.var v)
  | app f a => exact reader_not_rigid hr' (weakStep_none_rigid hs (fun h => h))
  | lam b => change shallowOcc j t≤0 at hle; omega

/-- In particular, the entire hereditary-forcing depth-zero family is
    excluded, even when no pending operand is syntactically rigid. -/
theorem forcing_depth_zero_not_reader {t : Term} (ht : Forcing t) (hd : depth t=0) :
    ¬ Reader t := by
  intro hr
  have hj := reader_j hr
  have he := occ_eq_shallow_of_depth_zero t 1 hd
  exact forcing_not_reader_shallow ht 1 (by omega) hr

#print axioms forcing_not_reader_after_rigid
#print axioms root_let_not_reader
#print axioms forcing_depth_zero_not_reader
end Blc.SelfintRootLetRigidPrefix
