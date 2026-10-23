/-
A hereditary head-forcing invariant. Every lambda in a forcing term has
its own bound variable as the rigid head of its body. This property is
preserved by arbitrary beta reduction and substitution. If a closed
forcing computation reaches weak-head normal form, that value therefore
forces its first operand. It cannot be a reader with a rigid operand
pending before the stream, irrespective of source size or runtime.

The concrete application closes pending sources 4247--4249. Its diagonal
need not be classified as terminating or diverging for this exclusion.
-/
import Blc.SelfintRootLetEmbedding
namespace Blc.SelfintRootLetForcing
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

inductive Forcing : Term → Prop where
  | var (n : Nat) : Forcing (.var n)
  | app {f a : Term} : Forcing f → Forcing a → Forcing (.app f a)
  | lam {b : Term} : Forcing b → RigidHead 0 b → Forcing (.lam b)

theorem rigidHead_shift_below {t : Term} {k : Nat} (h : RigidHead k t)
    (d c : Nat) (hc : k<c) : RigidHead k (shift d c t) := by
  induction h with
  | var => simpa [shift,show ¬ k≥c from by omega] using (RigidHead.var (j:=k))
  | app a h ih => exact .app _ ih

theorem rigidHead_subst_below {t : Term} {k : Nat} (h : RigidHead k t)
    (j : Nat) (s : Term) (hj : k<j) : RigidHead k (substDec j s t) := by
  induction h with
  | var =>
    simpa [substDec,show k≠j from by omega,show ¬ k>j from by omega]
      using (RigidHead.var (j:=k))
  | app a h ih => exact .app _ ih

theorem forcing_shift {t : Term} (ht : Forcing t) (d c : Nat) :
    Forcing (shift d c t) := by
  induction ht generalizing c with
  | var n => simp only [shift]; split <;> exact .var _
  | app hf ha ihf iha => exact .app (ihf c) (iha c)
  | lam hb hh ih => exact .lam (ih (c+1)) (rigidHead_shift_below hh d (c+1) (by omega))

theorem forcing_subst {t s : Term} (ht : Forcing t) (hs : Forcing s) (j : Nat) :
    Forcing (substDec j s t) := by
  induction ht generalizing j s with
  | var n =>
    simp only [substDec]
    split
    · exact hs
    · split <;> exact .var _
  | app hf ha ihf iha => exact .app (ihf hs j) (iha hs j)
  | lam hb hh ih =>
    exact .lam (ih (forcing_shift hs 1 0) (j+1))
      (rigidHead_subst_below hh (j+1) _ (by omega))

theorem forcing_beta {t u : Term} (hb : Beta t u) (ht : Forcing t) : Forcing u := by
  induction hb with
  | beta b a =>
    cases ht with
    | app hf ha => cases hf with | lam hb hh => exact forcing_subst hb ha 0
  | lam hb ih =>
    cases ht with | lam ht hh => exact .lam (ih ht) (rigidHead_beta hb hh)
  | appL a hb ih => cases ht with | app hf ha => exact .app (ih hf) ha
  | appR f hb ih => cases ht with | app hf ha => exact .app hf (ih ha)

theorem forcing_betas {t u : Term} (hb : Betas t u) (ht : Forcing t) : Forcing u := by
  induction hb with
  | refl => exact ht
  | head hb hr ih => exact ih (forcing_beta hb ht)

theorem count_endpoint {t : Term} {n : Nat} (hc : Count t n) :
    ∃ u, Betas t u ∧ weakStep u=none := by
  induction hc with
  | stop hs => exact ⟨_,.refl _,hs⟩
  | step hs hc ih =>
    obtain ⟨u,hu,hsu⟩ := ih
    exact ⟨u,.head (weakStep_beta hs) hu,hsu⟩

theorem closed_not_rigid {t : Term} (hc : Closed t) (hr : Rigid t) : False := by
  induction hr with
  | var n => exact Nat.not_lt_zero n hc
  | app a hf ih => exact ih hc.1

theorem count_closed_lam {t : Term} {n : Nat} (hc : Closed t) (hn : Count t n) :
    ∃ b, Betas t (.lam b) := by
  obtain ⟨u,hu,hs⟩ := count_endpoint hn
  have hcu : Closed u := SelfintClass.betas_scope hu 0 hc
  cases u with
  | lam b => exact ⟨b,hu⟩
  | var k => exact (closed_not_rigid hcu (.var k)).elim
  | app f a =>
    exact (closed_not_rigid hcu (weakStep_none_rigid hs (fun h => h))).elim

theorem rigidHead_contract_var {t : Term} (ht : RigidHead 0 t) (v : Nat) :
    Rigid (contract t (.var v)) := by
  induction ht with
  | var => exact .var _
  | app a hf ih => exact .app _ ih

/-- Every closed hereditary forcer fails when a rigid operand precedes
    the stream. No termination or bounded execution premise is required. -/
theorem forcing_not_reader {t : Term} (ht : Forcing t) (hc : Closed t)
    (v : Nat) (cs : List Term) : ¬ Reader (spine t (.var v::cs)) := by
  intro hr
  obtain ⟨n,hcn⟩ := hasNormalForm_count ⟨zeroOut,hr.zero_red,zeroOut_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_fn n hcn
  obtain ⟨q,hq,hcq⟩ := count_spine_fn (.var v::cs) hcm
  obtain ⟨b,hb⟩ := count_closed_lam hc hcq
  have hforce := forcing_betas hb ht
  cases hforce with
  | lam hbody hhead =>
    have hr' := reader_betas hr (betas_spine hb (.var v::cs))
    exact reader_not_rigid (hr'.beta (SelfintSourceCost.spine_beta (Beta.beta b (.var v)) cs))
      (SelfintFlatPrefix.rigid_spine_of (rigidHead_contract_var hhead v) cs)

def I : Term := .lam (.var 0)
def A : Term := .lam (.app (.app (.var 0) I)
  (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))
def diagonal : Term := .app (.lam (.app (.var 0) (.var 0))) A

theorem diagonal_forcing : Forcing diagonal := by
  repeat constructor

theorem diagonal_closed : Closed diagonal := by decide

theorem not_reader (v : Nat) (cs : List Term) :
    ¬ Reader (spine diagonal (.var v::cs)) :=
  forcing_not_reader diagonal_forcing diagonal_closed v cs

def pending4247 : Term := spine diagonal [.var 1,.var 0,.var 0]
def pending4248 : Term := spine diagonal [.var 0,.var 1,.var 0]
def pending4249 : Term := spine diagonal [.var 0,.var 0,.var 1]

theorem pending_weights :
    weight 0 pending4247=45 ∧ weight 0 pending4248=45 ∧ weight 0 pending4249=45 := by decide

theorem pending4247_not_reader : ¬ Reader pending4247 := not_reader _ _
theorem pending4248_not_reader : ¬ Reader pending4248 := not_reader _ _
theorem pending4249_not_reader : ¬ Reader pending4249 := not_reader _ _

#print axioms forcing_not_reader
#print axioms not_reader
end Blc.SelfintRootLetForcing
