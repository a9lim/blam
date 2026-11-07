/-
An unbounded head algebra for a binary helper whose body is headed by
its second argument. The helper body may contain arbitrarily many dead
lambdas, applications and occurrences of either argument. The algebra
also permits arbitrary vacuous abstractions around generated terms.

Every first head abstraction is the helper itself, a vacuous wrapper,
or a partially applied helper which immediately exposes the public
continuation. None can be an exact self-interpreter. This covers the
literal prefix lambda a b.D; interspersed dead prefix binders are not
silently stripped, and are outside this theorem.
-/
import Blc.SelfintRound6BoundNext
import Blc.SelfintOrigins
import Blc.SelfintFloorEmerge

namespace Blc.SelfintRound7GlobalLastHead
open Term SelfintLowerBound SelfintCapture SelfintFloor SelfintWireCost
  SelfintWiden SelfintRound6BoundGlobal SelfintRound6BoundNext
  SelfintRound6BoundLiteral QuoteOrigins

def helper (D : Term) : Term := .lam (.lam D)
def pendingHelper (D u : Term) : Term := .lam (substDec 1 u D)

/-- The closed application algebra of one constant and the constant-function
constructor. Dead abstractions are retained as operational syntax. -/
inductive Generated (A : Term) : Term → Prop where
  | atom : Generated A A
  | app {f a : Term} : Generated A f → Generated A a → Generated A (.app f a)
  | dead {t : Term} : Generated A t → Generated A (.lam t)

theorem Generated.closed {A t : Term} (ha : Closed A) (h : Generated A t) :
    Closed t := by
  induction h with
  | atom => exact ha
  | app _ _ ihf iha => exact ⟨ihf,iha⟩
  | dead _ ih => exact closed_freeUnder ih 1

/-- Filling all free slots of a zero-live template with generated values
stays in the algebra. The generalized cut accounts for arbitrary dead
abstractions inside the template. -/
theorem zero_two_template {A u v : Term} (hA : Closed A)
    (hu : Generated A u) (hv : Generated A v) (t : Term) (j : Nat)
    (hl : live t = 0) (hs : FreeUnder (j+2) t)
    (hz : ∀ i, i<j → occ i t = 0) :
    Generated A (substDec j v (substDec (j+1) u t)) := by
  have huc := hu.closed hA
  have hvc := hv.closed hA
  induction t generalizing j with
  | var n =>
      have hn : j ≤ n := by
        by_cases h : j ≤ n
        · exact h
        · have hh := hz n (by omega)
          simp [occ] at hh
      change n < j+2 at hs
      have hn' : n=j ∨ n=j+1 := by omega
      rcases hn' with rfl | rfl
      · simpa [substDec,show ¬ n=n+1 by omega,show ¬ n>n+1 by omega] using hv
      · simpa only [substDec,if_true,substDec_closed _ _ huc] using hu
  | app f a ihf iha =>
      have hfl : live f = 0 := by change live f+live a=0 at hl; omega
      have hal : live a = 0 := by change live f+live a=0 at hl; omega
      exact .app (ihf j hfl hs.1 (fun i hi => by have := hz i hi; change occ i f+occ i a=0 at this; omega))
        (iha j hal hs.2 (fun i hi => by have := hz i hi; change occ i f+occ i a=0 at this; omega))
  | lam b ih =>
      have hbl : live b=0 := by simp only [live] at hl; omega
      have hb0 : occ 0 b=0 := by
        by_cases hh : occ 0 b=0
        · exact hh
        · have hp : 0<occ 0 b := by omega
          simp only [live,if_pos hp] at hl
          omega
      have hbz : ∀ i, i<j+1 → occ i b=0 := by
        intro i hi
        cases i with
        | zero => exact hb0
        | succ i => exact hz i (by omega)
      have hh := ih (j+1) hbl hs hbz
      simpa only [substDec,shift_closed 1 0 huc,shift_closed 1 0 hvc] using Generated.dead hh

theorem zero_one_template {A u : Term} (hA : Closed A)
    (hu : Generated A u) (B : Term) (hl : live B=0) (hs : FreeUnder 1 B) :
    Generated A (contract B u) := by
  have hh := zero_two_template hA (Generated.atom (A:=A)) hu B 0 hl
    (freeUnder_mono (by omega) hs) (by intro i hi; omega)
  simpa only [Nat.zero_add,substDec_of_freeUnder B 1 A hs,contract] using hh

/-- Partial helpers occur only on the active function spine. Pending
operands remain generated closed values. -/
inductive State (D : Term) : Term → Prop where
  | atom : State D (helper D)
  | dead {t : Term} : Generated (helper D) t → State D (.lam t)
  | pending {u : Term} : Generated (helper D) u → State D (pendingHelper D u)
  | app {f a : Term} : State D f → Generated (helper D) a → State D (.app f a)

theorem Generated.state {D t : Term} (h : Generated (helper D) t) : State D t := by
  induction h with
  | atom => exact .atom
  | dead ht _ => exact .dead ht
  | app _ ha ihf _ => exact .app ihf ha

theorem state_headStep {D t u : Term} (hD : FreeUnder 2 D) (hl : live D=0)
    (ht : State D t) (hi : IsApp t) (hs : headStep t=some u) : State D u := by
  have hA : Closed (helper D) := hD
  induction ht generalizing u with
  | atom => exact hi.elim
  | dead => exact hi.elim
  | pending => exact hi.elim
  | @app f a hf ha ih =>
      cases hf with
      | atom =>
          have hc := ha.closed hA
          simp only [helper,headStep,contract,substDec,shift_closed 1 0 hc,
            Option.some.injEq] at hs
          subst u
          exact .pending ha
      | dead hb =>
          simp only [headStep,contract,substDec_closed _ _ (hb.closed hA),Option.some.injEq] at hs
          subst u
          exact hb.state
      | pending hb =>
          simp only [pendingHelper,headStep,contract,Option.some.injEq] at hs
          subst u
          exact (zero_two_template hA hb ha D 0 hl hD (by intro i hi; omega)).state
      | app hg hb =>
          simp only [headStep,Option.map_eq_some_iff] at hs
          obtain ⟨v,hv,rfl⟩ := hs
          exact .app (ih trivial hv) ha

theorem state_first_lam {D t u : Term} (hD : FreeUnder 2 D) (hl : live D=0)
    (ht : State D t) (k : Nat) (hs : headSteps k t=some u) (hu : IsLam u) :
    ∃ v, Betas t v ∧ State D v ∧ IsLam v := by
  induction k generalizing t with
  | zero =>
      simp only [headSteps,Option.some.injEq] at hs
      subst u
      exact ⟨t,.refl _,ht,hu⟩
  | succ k ih =>
      by_cases hh : IsLam t
      · exact ⟨t,.refl _,ht,hh⟩
      · have ha : IsApp t := by cases ht <;> first | trivial | exact (hh trivial).elim
        simp only [headSteps,Option.bind_eq_some_iff] at hs
        obtain ⟨v,hv,hrest⟩ := hs
        obtain ⟨w,hw,hstate,hlam⟩ := ih (state_headStep hD hl ht ha hv) hrest
        exact ⟨w,.head (beta_of_headStep (headStep_sound hv)) hw,hstate,hlam⟩

theorem selfInterpreter_head_lam {E : Term} (hE : IsSelfInterpreter E) :
    ∃ k v, headSteps k E=some v ∧ IsLam v := by
  apply Classical.byContradiction
  intro hn
  have hh : ∀ k v, headSteps k E=some v → ¬ IsLam v := by
    intro k v hk hv
    exact hn ⟨k,v,hk,hv⟩
  obtain ⟨k,v,hv,hl⟩ := selfInterpreter_stream_consumed hE
  obtain ⟨w,_,rfl⟩ := headSteps_app_of_noLam k E (.var 0) v hh hv
  exact hl

theorem rigidAt_same_subst {b : Term} (h : RigidAt 0 b) :
    Rigid (substDec 0 (.var 0) b) := by
  induction h with
  | var => exact .var 0
  | app a h ih => exact .app _ ih

/-- An abstraction which immediately exposes its own parameter as the
rigid head leaves the stream cell pending, so cannot interpret even I. -/
theorem own_head_not_selfInterpreter {b : Term} (hh : RigidAt 0 b) :
    ¬ IsSelfInterpreter (.lam b) := by
  intro hE
  obtain ⟨w,hw,ho⟩ := hE.2 (.lam (.var 0)) (by decide)
  have he : w=idOutput := normalForm_betas_eq idOutput_normal ho
  subst w
  let Q := streamOf (blcCode (.lam (.var 0))) (.var 1)
  have hstart : Betas (.app (.app (.lam b) (.var 0)) Q)
      (.app (substDec 0 (.var 0) b) Q) :=
    .head (.appL Q (.beta b (.var 0))) (.refl _)
  have hred := betas_preserve_nf hstart hw idOutput_normal
  obtain ⟨f,a,heq,_,hQ⟩ := rigid_betas_shape (rigidAt_same_subst hh) hred
  simp only [idOutput,Term.app.injEq] at heq
  obtain ⟨_,rfl⟩ := heq
  obtain ⟨q,hq⟩ := quoteI_cell (.var 1)
  change Betas (streamOf (blcCode (.lam (.var 0))) (.var 1)) (.var 1) at hQ
  rw [hq] at hQ
  obtain ⟨z,hz,_⟩ := lam_betas_shape hQ
  cases hz

/-- No term in this unbounded algebra is an exact interpreter. No
normalization-length, source-size, dead-lambda or occurrence bound is used. -/
theorem generated_not_selfInterpreter {D E : Term} (hD : FreeUnder 2 D)
    (hl : live D=0) (hh : RigidAt 0 D) (hG : Generated (helper D) E) :
    ¬ IsSelfInterpreter E := by
  intro hE
  obtain ⟨k,v,hv,hlam⟩ := selfInterpreter_head_lam hE
  obtain ⟨w,hw,hstate,hwl⟩ := state_first_lam hD hl hG.state k hv hlam
  have hi := selfInterpreter_betas hw hE
  cases hstate with
  | atom =>
      have hlow := selfInterpreter_three_live hi
      simp only [helper,live,hl] at hlow
      split at hlow <;> split at hlow <;> omega
  | dead ht =>
      have hc := ht.closed (show Closed (helper D) from hD)
      have hzero := occ_of_freeUnder _ 0 0 hc (by omega)
      have hp := one_lambda_public_occ hi
      omega
  | pending hu =>
      exact own_head_not_selfInterpreter (rigidAt_subst hh 1 _ (by omega)) hi
  | app => exact hwl

/-- The original single-sharing-redex form, with an arbitrary zero-live
body. Normality of that body is unnecessary for this exclusion. -/
theorem sharing_not_selfInterpreter (B D : Term) (hB : FreeUnder 1 B)
    (hb : live B=0) (hD : FreeUnder 2 D) (hd : live D=0) (hh : RigidAt 0 D) :
    ¬ IsSelfInterpreter (.app (.lam B) (helper D)) := by
  intro hE
  have hG := zero_one_template (show Closed (helper D) from hD)
    (Generated.atom (A:=helper D)) B hb hB
  exact generated_not_selfInterpreter hD hd hh hG (descend_interpreter hE)

#print axioms generated_not_selfInterpreter
#print axioms sharing_not_selfInterpreter
end Blc.SelfintRound7GlobalLastHead
