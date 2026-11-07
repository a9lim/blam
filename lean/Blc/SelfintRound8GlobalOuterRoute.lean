/-
An outer-headed two-binder hand-off algebra.  The source helper is

  A[R] = lambda a b. a R[a,b], where R is headed by b,

with an arbitrary zero-live routed payload R.  The semantic obstruction is a
stream-independent first continuation operand, not a bound on the number
of lambdas manufactured by reduction.
-/
import Blc.SelfintRound7GlobalLastHead
import Blc.SelfintRootLetForcing
import Blc.SelfintRound7GlobalSharingBarrier

namespace Blc.SelfintRound8GlobalOuterRoute
open Term SelfintLowerBound SelfintCapture SelfintFloor SelfintWireCost
  SelfintWiden SelfintRound6BoundGlobal SelfintRound6BoundNext
  SelfintRound6BoundLiteral QuoteOrigins SelfintControl WeakHeadClock
open SelfintRound7GlobalLastHead (Generated State)
open SelfintRootLetOrbit (count_fn)

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def body (P : Term) : Term := .app (.var 1) P
def helper (P : Term) : Term := SelfintRound7GlobalLastHead.helper (body P)
def fill (P x y : Term) : Term := substDec 0 y (substDec 1 (shift 1 0 x) P)
def pending (P x : Term) : Term :=
  .lam (.app (shift 1 0 x) (substDec 1 (shift 1 0 x) P))

theorem helper_closed {P : Term} (hP : FreeUnder 2 P) : Closed (helper P) :=
  ⟨by decide,hP⟩

theorem helper_beta (P x : Term) : Beta (.app (helper P) x) (pending P x) := by
  simpa [helper,body,SelfintRound7GlobalLastHead.helper,pending,contract,substDec] using
    Beta.beta (.lam (body P)) x

theorem pending_beta (P x y : Term) :
    Beta (.app (pending P x) y) (.app x (fill P x y)) := by
  simpa only [pending,contract,substDec,substDec_shift,if_true,fill] using
    Beta.beta (.app (shift 1 0 x) (substDec 1 (shift 1 0 x) P)) y

theorem helper_two (P x y : Term) :
    Betas (.app (.app (helper P) x) y) (.app x (fill P x y)) :=
  .head (.appL y (helper_beta P x)) (.head (pending_beta P x y) (.refl _))

theorem weak_head {t u : Term} (h : weakStep t=some u) : headStep t=some u := by
  induction t generalizing u with
  | var n => simp [weakStep] at h
  | lam b ih => simp [weakStep] at h
  | app f a ihf iha =>
      cases f with
      | var n => simp [weakStep] at h
      | lam b => exact h
      | app f b =>
          simp only [weakStep,Option.map_eq_some_iff] at h
          obtain ⟨v,hv,rfl⟩ := h
          exact congrArg (Option.map (Term.app · a)) (ihf hv)

theorem State.closed {D t : Term} (hD : FreeUnder 2 D) (ht : State D t) : Closed t := by
  have hA : Closed (SelfintRound7GlobalLastHead.helper D) := hD
  induction ht with
  | atom => exact hD
  | dead hg => exact closed_freeUnder (hg.closed hA) 1
  | pending hg =>
      exact SelfintClass.subst_scope D _ 1 1 (by omega) hD
        (closed_freeUnder (hg.closed hA) 1)
  | app hf ha ih => exact ⟨ih,ha.closed hA⟩

theorem state_count_lam {D t : Term} {n : Nat}
    (hD : FreeUnder 2 D) (hl : live D=0) (ht : State D t) (hc : Count t n) :
    ∃ v, Betas t v ∧ State D v ∧ IsLam v := by
  induction hc with
  | @stop t hs =>
      have hclosed : Closed t := State.closed hD ht
      have hlam : IsLam t := by
        by_cases ht : IsLam t
        · exact ht
        · exact (SelfintRootLetForcing.closed_not_rigid hclosed
            (weakStep_none_rigid hs ht)).elim
      exact ⟨t,.refl _,ht,hlam⟩
  | @step t u n hs hc ih =>
      have happ : IsApp t := by cases t <;> first | trivial | simp [weakStep] at hs
      obtain ⟨v,hv,hstate,hlam⟩ := ih
        (SelfintRound7GlobalLastHead.state_headStep hD hl ht happ (weak_head hs))
      exact ⟨v,.head (weakStep_beta hs) hv,hstate,hlam⟩

/-- A rigid prefix, with its first operand fixed and arbitrary further
operands.  Once exposed it cannot lose that first operand. -/
inductive Prefix (c : Nat) (b : Term) : Term → Prop where
  | base : Prefix c b (.app (.var c) b)
  | app {t : Term} (a : Term) : Prefix c b t → Prefix c b (.app t a)

theorem Prefix.rigid {c b t} (h : Prefix c b t) : Rigid t := by
  induction h with
  | base => exact .app _ (.var _)
  | app a h ih => exact .app a ih

theorem Prefix.arity_pos {c b t} (h : Prefix c b t) : 0 < SelfintFlatPrefix.arity t := by
  induction h with
  | base => simp [SelfintFlatPrefix.arity]
  | app a h ih => simp only [SelfintFlatPrefix.arity]; omega

theorem Prefix.first {c b t q r} (h : Prefix c b t)
    (hr : Betas t (.app (.app (.var c) q) r)) : Betas b q := by
  induction h with
  | base =>
      obtain ⟨f,a,he,hf,ha⟩ := rigid_betas_shape (.var c) hr
      cases he
      have heq := normalForm_betas_eq (show NormalForm (.var c) from by intro u h; cases h) hf
      cases heq
  | @app t a hp ih =>
      obtain ⟨f,a',he,hf,ha⟩ := rigid_betas_shape hp.rigid hr
      cases he
      cases hp with
      | base =>
          obtain ⟨f,b',he,hf,hb⟩ := rigid_betas_shape (.var c) hf
          cases he
          exact hb
      | app x hh =>
          obtain ⟨f,b',he,hf,hb⟩ := rigid_betas_shape hh.rigid hf
          cases he
          have hpos := hh.arity_pos
          have heq := SelfintFlatPrefix.rigid_arity_betas hf hh.rigid
          simp only [SelfintFlatPrefix.arity] at heq
          omega

theorem Prefix.rigidAt {c b t} (h : Prefix c b t) : RigidAt c t := by
  induction h with
  | base => exact .app _ .var
  | app a h ih => exact .app a ih

theorem fill_keeps_prefix {R X b : Term} {c : Nat} (hR : RigidAt 0 R)
    (hX : Prefix c b X) (u : Term) : Prefix c b (fill R u X) := by
  induction hR with
  | var => simpa [fill,substDec] using hX
  | app a h ih => exact .app _ ih

theorem fill_prefix {R P : Term} (h : Prefix 0 P R) (u : Term) (c : Nat) :
    Prefix c (fill P u (.var c)) (fill R u (.var c)) := by
  induction h with
  | base => simpa [fill,substDec] using
      (Prefix.base (c:=c) (b:=fill P u (.var c)))
  | app a h ih => exact .app _ ih

theorem pending_step (P x y : Term) :
    weakStep (.app (pending P x) y) = some (.app x (fill P x y)) := by
  simp only [pending,weakStep,contract,substDec,substDec_shift,fill]

theorem old_pending_eq {P u : Term} (hu : Closed u) :
    SelfintRound7GlobalLastHead.pendingHelper (body P) u = pending P u := by
  simp only [SelfintRound7GlobalLastHead.pendingHelper,body,pending,substDec,
    shift_closed 1 0 hu]
  rfl

/-- If a generated function receives a continuation which already has a
first operand, no further computation can replace that operand by
stream-dependent code.  Dead wrappers may erase the continuation instead.
The induction is on the actual finite weak-head clock, not evaluator fuel. -/
theorem generated_keeps_prefix {P : Term} (hP : FreeUnder 2 P) (hl : live P=0)
    (hroute : RigidAt 0 P) :
    ∀ n, ∀ {E X S b : Term} {c : Nat}, Generated (helper P) E →
      Prefix c b X → occ c S=0 → Count (.app (.app E X) S) n →
      ∃ v, Betas (.app (.app E X) S) v ∧ (Prefix c b v ∨ occ c v=0) := by
  intro n
  induction n using Nat.strongRecOn with
  | ind n ih =>
      intro E X S b c hE hX hS hc
      have hD : FreeUnder 2 (body P) := ⟨by decide,hP⟩
      have hL : live (body P)=0 := by simp [body,live,hl]
      have hA := helper_closed hP
      obtain ⟨m,hm,hcm⟩ := count_fn n hc
      obtain ⟨q,hq,hcq⟩ := count_fn m hcm
      obtain ⟨v,hv,hs,hvlam⟩ := state_count_lam hD hL hE.state hcq
      have hp := betas_appL S (betas_appL X hv)
      obtain ⟨k,hk,hck⟩ := count_reduct n hc hp
      cases hs with
      | atom =>
          exact ⟨_,betas_trans hp (helper_two P X S),.inl (.app _ hX)⟩
      | @dead t ht =>
          have htc := ht.closed hA
          have hs' : Betas (.app (.app (.lam t) X) S) (.app t S) := by
            simpa only [contract,substDec_closed _ _ htc] using
              Betas.head (Beta.appL S (Beta.beta t X)) (Betas.refl _)
          have ht0 := occ_of_freeUnder t 0 c htc (by omega)
          exact ⟨_,betas_trans hp hs',.inr (by simp only [occ,ht0,hS,Nat.zero_add])⟩
      | @pending u hu =>
          have heq := old_pending_eq (P:=P) (hu.closed hA)
          rw [heq] at hck hp
          have hstep := weak_app (pending_step P u X) S
          obtain ⟨j,hj,hcj⟩ := head_decreases hck hstep
          obtain ⟨w,hw,hout⟩ := ih j (by omega) hu (fill_keeps_prefix hroute hX u) hS hcj
          exact ⟨w,betas_trans hp (.head (weakStep_beta hstep) hw),hout⟩
      | app hf ha => exact hvlam.elim

/-- The first decoded value of a pending helper is independent of the
input stream.  The statement quantifies over every closed normal program. -/
theorem pending_first_value {P R u M : Term}
    (hP : FreeUnder 2 R) (hl : live R=0) (hroute : Prefix 0 P R)
    (hu : Generated (helper R) u)
    (hi : IsSelfInterpreter (pending R u)) (hM : Closed M) (hn : NFt M) :
    Betas (fill P u (.var 0)) (.lam M) := by
  let S := streamOf (blcCode M) (.var 1)
  let target : Term := .app (.app (.var 0) (.lam M)) (.var 1)
  have ht : NormalForm target := SelfintClassNext.nft_normal
    ⟨(fun h => h),⟨(fun h => h),trivial,hn⟩,trivial⟩
  have hrun : Betas (.app (.app (pending R u) (.var 0)) S) target :=
    SelfintClass.join_normal (hi.2 M hM) ht
  have hstart := Betas.head (Beta.appL S (pending_beta R u (.var 0))) (Betas.refl _)
  have hafter := betas_preserve_nf hstart hrun ht
  obtain ⟨n,hc⟩ := hasNormalForm_count ⟨target,hafter,ht⟩
  have hS : occ 0 S=0 := by rw [occ_stream_var]; decide
  obtain ⟨v,hv,hout⟩ := generated_keeps_prefix hP hl hroute.rigidAt n hu (fill_prefix hroute u 0) hS hc
  have hend := betas_preserve_nf hv hafter ht
  rcases hout with hp | hz
  · exact hp.first hend
  · have hz' := occ_betas_zero hend 0 hz
    simp [target,occ] at hz'

theorem pending_not_selfInterpreter {P R u : Term}
    (hP : FreeUnder 2 R) (hl : live R=0) (hroute : Prefix 0 P R)
    (hu : Generated (helper R) u) :
    ¬ IsSelfInterpreter (pending R u) := by
  intro hi
  have hI := pending_first_value hP hl hroute hu hi
    (show Closed (.lam (.var 0)) from by decide) (show NFt (.lam (.var 0)) from by decide)
  have hK := pending_first_value hP hl hroute hu hi
    (show Closed (.lam (.lam (.var 1))) from by decide)
    (show NFt (.lam (.lam (.var 1))) from by decide)
  have heq := normalForm_unique hI hK
    (SelfintClassNext.nft_normal (by decide)) (SelfintClassNext.nft_normal (by decide))
  cases heq

/-- No term generated by A[R], application, and arbitrary dead wrappers
is a self-interpreter.  P may have arbitrary size, duplication and dead
lambdas.  No normalization or source-size bound is assumed. -/
theorem generated_not_selfInterpreter {P R E : Term}
    (hP : FreeUnder 2 R) (hl : live R=0) (hroute : Prefix 0 P R)
    (hE : Generated (helper R) E) :
    ¬ IsSelfInterpreter E := by
  intro hi
  have hD : FreeUnder 2 (body R) := ⟨by decide,hP⟩
  have hL : live (body R)=0 := by simp [body,live,hl]
  obtain ⟨k,v,hv,hlam⟩ := SelfintRound7GlobalLastHead.selfInterpreter_head_lam hi
  obtain ⟨w,hw,hs,hwl⟩ := SelfintRound7GlobalLastHead.state_first_lam hD hL hE.state k hv hlam
  have hi' := selfInterpreter_betas hw hi
  cases hs with
  | atom =>
      have hlow := selfInterpreter_three_live hi'
      simp only [SelfintRound7GlobalLastHead.helper,live,hL] at hlow
      split at hlow <;> split at hlow <;> omega
  | dead ht =>
      have hc := ht.closed (helper_closed hP)
      have hzero := occ_of_freeUnder _ 0 0 hc (by omega)
      have hp := one_lambda_public_occ hi'
      omega
  | pending hu =>
      rw [old_pending_eq (P:=R) (hu.closed (helper_closed hP))] at hi'
      exact pending_not_selfInterpreter hP hl hroute hu hi'
  | app => exact hwl.elim

/-- An arbitrary zero-live sharing body cannot make the hand-off helper
into an interpreter, regardless of the sharing multiplicity. -/
theorem sharing_not_selfInterpreter (B P R : Term)
    (hB : FreeUnder 1 B) (hb : live B=0) (hP : FreeUnder 2 R) (hp : live R=0)
    (hroute : Prefix 0 P R) :
    ¬ IsSelfInterpreter (.app (.lam B) (helper R)) := by
  intro hi
  have hg := SelfintRound7GlobalLastHead.zero_one_template (helper_closed hP)
    (Generated.atom (A:=helper R)) B hb hB
  exact generated_not_selfInterpreter hP hp hroute hg (descend_interpreter hi)

theorem rigidAt_prefix {c : Nat} {R : Term} (h : RigidAt c R) :
    R = .var c ∨ ∃ P, Prefix c P R := by
  induction h with
  | var => exact .inl rfl
  | app a h ih =>
      rcases ih with rfl | ⟨P,hp⟩
      · exact .inr ⟨a,.base⟩
      · exact .inr ⟨P,.app a hp⟩

theorem generated_affine {A E : Term} (hA : Closed A) (ha : nonlinear A=0)
    (hE : Generated A E) : nonlinear E=0 := by
  induction hE with
  | atom => exact ha
  | app hf hg ihf ihg => simp only [nonlinear,ihf,ihg,Nat.zero_add]
  | @dead t ht ih =>
      have hzero := occ_of_freeUnder t 0 0 (ht.closed hA) (by omega)
      simp [nonlinear,ih,hzero]

/-- Complete b-headed hand-off family, including R=b.  In the zero-operand
case the helper is the affine eta-expanded identity; every generated term
stays affine.  The positive-arity arm uses the first-value obstruction. -/
theorem generated_route_not_selfInterpreter {R E : Term}
    (hR : FreeUnder 2 R) (hl : live R=0) (hh : RigidAt 0 R)
    (hE : Generated (helper R) E) : ¬ IsSelfInterpreter E := by
  rcases rigidAt_prefix hh with rfl | ⟨P,hp⟩
  · intro hi
    have hz := generated_affine (helper_closed hR)
      (show nonlinear (helper (.var 0))=0 from by decide) hE
    have hp := selfInterpreter_two_nonlinear hi
    omega
  · exact generated_not_selfInterpreter hR hl hp hE

theorem sharing_route_not_selfInterpreter (B R : Term)
    (hB : FreeUnder 1 B) (hb : live B=0) (hR : FreeUnder 2 R) (hr : live R=0)
    (hh : RigidAt 0 R) : ¬ IsSelfInterpreter (.app (.lam B) (helper R)) := by
  intro hi
  have hg := SelfintRound7GlobalLastHead.zero_one_template (helper_closed hR)
    (Generated.atom (A:=helper R)) B hb hB
  exact generated_route_not_selfInterpreter hR hr hh hg (descend_interpreter hi)

/-- Every helper in the unbounded-live-growth counterexample lies in this
excluded algebra.  Arbitrarily large normal output therefore does not
make any application context over these helpers an interpreter. -/
theorem growth_generated_not_selfInterpreter (n : Nat) {E : Term}
    (hE : Generated (SelfintRound7GlobalSharingBarrier.helper n) E) :
    ¬ IsSelfInterpreter E := by
  apply generated_route_not_selfInterpreter
    (R:=SelfintRound7GlobalSharingBarrier.apps (n+1) (.var 0) (.var 1))
  · exact SelfintRound7GlobalSharingBarrier.apps_scope _ (by decide) (by decide)
  · simp [SelfintRound7GlobalSharingBarrier.apps_live,live]
  · generalize n+1=k
    induction k with
    | zero => exact .var
    | succ k ih => exact .app _ ih
  · exact hE

theorem growth_source_not_selfInterpreter (n : Nat) :
    ¬ IsSelfInterpreter (SelfintRound7GlobalSharingBarrier.source n) := by
  intro hi
  have hred := descend_interpreter hi
  exact growth_generated_not_selfInterpreter n (.app .atom .atom) hred

/-- The first-value invariant does not extend to an arbitrary extra
outer operand.  A=λa b.a(b a)b and E=A(λ_.A) satisfy E→*A, while a
pending-helper execution has the stream-dependent first operand s c.
This is an invariant counterexample, not an interpreter. -/
def multiHelper : Term :=
  .lam (.lam (.app (.app (.var 1) (.app (.var 0) (.var 1))) (.var 0)))
def multiPending : Term := .app multiHelper (.lam multiHelper)

theorem multi_pending_generated : Generated multiHelper multiPending :=
  .app .atom (.dead .atom)

theorem multi_pending_collapses : Betas multiPending multiHelper :=
  SelfintClass.headSteps_beta_star (by decide : headSteps 3 multiPending = some multiHelper)

theorem multi_pending_public :
    Betas (.app (.app multiPending (.var 0)) (.var 1))
      (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)) :=
  SelfintClass.headSteps_beta_star (by decide : headSteps 5
    (.app (.app multiPending (.var 0)) (.var 1)) =
      some (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 1)))

theorem multi_pending_not_selfInterpreter : ¬ IsSelfInterpreter multiPending := by
  intro hi
  have hlow := selfInterpreter_three_live (selfInterpreter_betas multi_pending_collapses hi)
  have hhigh : live multiHelper=2 := by decide
  omega

#print axioms generated_keeps_prefix
#print axioms pending_first_value
#print axioms generated_not_selfInterpreter
#print axioms sharing_route_not_selfInterpreter
#print axioms growth_generated_not_selfInterpreter

end Blc.SelfintRound8GlobalOuterRoute
