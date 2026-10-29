/-
Non-erasing outer spines.  A flat helper

  A = lambda a b. a R1 ... Rm, m >= 1,

cannot be turned into an interpreter by an application-only context when
R1 is b-headed.  Remaining operands are arbitrary flat trees.  Unlike
OuterRoute, this theorem excludes dead wrappers explicitly: erasing one
routed operand can expose a later one, invalidating the fixed-value proof.
-/
import Blc.SelfintRound8GlobalOuterRoute

namespace Blc.SelfintRound8GlobalOuterSpine
open Term SelfintLowerBound SelfintCapture SelfintFloor SelfintWireCost
  SelfintWiden SelfintRound6BoundGlobal SelfintRound6BoundNext SelfintSourceCost
  SelfintRound6BoundLiteral QuoteOrigins SelfintControl WeakHeadClock
open SelfintRootLetOrbit (count_fn count_spine_fn)
open SelfintRound8GlobalOuterRoute (fill)
open SelfintLetSink (spine_append)
open SelfintSourceFront (subst_spine)
open SelfintFlatMinimum (betas_spine)

set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

inductive Pure (A : Term) : Term → Prop where
  | atom : Pure A A
  | app {f a : Term} : Pure A f → Pure A a → Pure A (.app f a)

theorem Pure.generated {A t : Term} (h : Pure A t) :
    SelfintRound7GlobalLastHead.Generated A t := by
  induction h with
  | atom => exact .atom
  | app hf ha ihf iha => exact .app ihf iha

theorem Pure.closed {A t : Term} (hA : Closed A) (h : Pure A t) : Closed t :=
  h.generated.closed hA

theorem flat_two_template {A u v : Term} (hA : Closed A)
    (hu : Pure A u) (hv : Pure A v) (t : Term)
    (hl : lamCount t=0) (hs : FreeUnder 2 t) :
    Pure A (substDec 0 v (substDec 1 u t)) := by
  have huc := hu.closed hA
  induction t with
  | var n =>
      have hn : n=0 ∨ n=1 := by change n<2 at hs; omega
      rcases hn with rfl | rfl
      · simpa [substDec] using hv
      · simpa only [substDec,if_true,substDec_closed _ _ huc] using hu
  | lam b ih => simp [lamCount] at hl
  | app f a ihf iha =>
      have hh : lamCount f+lamCount a=0 := hl
      exact .app (ihf (by omega) hs.1) (iha (by omega) hs.2)

inductive State (D : Term) : Term → Prop where
  | atom : State D (SelfintRound7GlobalLastHead.helper D)
  | pending {u : Term} : Pure (SelfintRound7GlobalLastHead.helper D) u →
      State D (SelfintRound7GlobalLastHead.pendingHelper D u)
  | app {f a : Term} : State D f → Pure (SelfintRound7GlobalLastHead.helper D) a →
      State D (.app f a)

theorem Pure.state {D t : Term} (h : Pure (SelfintRound7GlobalLastHead.helper D) t) :
    State D t := by
  induction h with
  | atom => exact .atom
  | app hf ha ihf iha => exact .app ihf ha

theorem State.old {D t : Term} (h : State D t) : SelfintRound7GlobalLastHead.State D t := by
  induction h with
  | atom => exact .atom
  | pending hu => exact .pending hu.generated
  | app hf ha ihf => exact .app ihf ha.generated

theorem state_headStep {D t u : Term} (hD : FreeUnder 2 D) (hl : lamCount D=0)
    (ht : State D t) (hi : IsApp t) (hs : headStep t=some u) : State D u := by
  have hA : Closed (SelfintRound7GlobalLastHead.helper D) := hD
  induction ht generalizing u with
  | atom => exact hi.elim
  | pending => exact hi.elim
  | @app f a hf ha ih =>
      cases hf with
      | atom =>
          have hc := ha.closed hA
          simp only [SelfintRound7GlobalLastHead.helper,headStep,contract,substDec,
            shift_closed 1 0 hc,Option.some.injEq] at hs
          subst u
          exact .pending ha
      | pending hb =>
          simp only [SelfintRound7GlobalLastHead.pendingHelper,headStep,contract,
            Option.some.injEq] at hs
          subst u
          exact (flat_two_template hA hb ha D hl hD).state
      | app hg hb =>
          simp only [headStep,Option.map_eq_some_iff] at hs
          obtain ⟨v,hv,rfl⟩ := hs
          exact .app (ih trivial hv) ha

theorem state_count_lam {D t : Term} {n : Nat}
    (hD : FreeUnder 2 D) (hl : lamCount D=0) (ht : State D t) (hc : Count t n) :
    ∃ v, Betas t v ∧ State D v ∧ IsLam v := by
  induction hc with
  | @stop t hs =>
      have hclosed := SelfintRound8GlobalOuterRoute.State.closed hD ht.old
      have hlam : IsLam t := by
        by_cases ht : IsLam t
        · exact ht
        · exact (SelfintRootLetForcing.closed_not_rigid hclosed (weakStep_none_rigid hs ht)).elim
      exact ⟨t,.refl _,ht,hlam⟩
  | @step t u n hs hc ih =>
      have happ : IsApp t := by cases t <;> first | trivial | simp [weakStep] at hs
      obtain ⟨v,hv,hstate,hlam⟩ := ih
        (state_headStep hD hl ht happ (SelfintRound8GlobalOuterRoute.weak_head hs))
      exact ⟨v,.head (weakStep_beta hs) hv,hstate,hlam⟩

def body (R : Term) (Rs : List Term) : Term := spine (.var 1) (R::Rs)
def helper (R : Term) (Rs : List Term) : Term :=
  SelfintRound7GlobalLastHead.helper (body R Rs)
def pending (R : Term) (Rs : List Term) (u : Term) : Term :=
  .lam (spine (shift 1 0 u) ((R::Rs).map (substDec 1 (shift 1 0 u))))
def filled (R : Term) (Rs : List Term) (u v : Term) : List Term :=
  (R::Rs).map (fun r => fill r u v)

theorem pending_beta (R : Term) (Rs : List Term) (u v : Term) :
    Beta (.app (pending R Rs u) v) (spine u (filled R Rs u v)) := by
  simpa only [pending,filled,contract,subst_spine,substDec_shift,List.map_map,fill,
    Function.comp_def] using
    Beta.beta (spine (shift 1 0 u) ((R::Rs).map (substDec 1 (shift 1 0 u)))) v

theorem pending_step (R : Term) (Rs : List Term) (u v : Term) :
    weakStep (.app (pending R Rs u) v)=some (spine u (filled R Rs u v)) := by
  simp only [pending,weakStep,contract,subst_spine,substDec_shift,List.map_map,filled,fill,
    Function.comp_def]

theorem helper_beta (R : Term) (Rs : List Term) (u : Term) :
    Beta (.app (helper R Rs) u) (pending R Rs u) := by
  simpa only [helper,SelfintRound7GlobalLastHead.helper,body,pending,contract,
    substDec,subst_spine,if_true] using Beta.beta (.lam (body R Rs)) u

theorem helper_two (R : Term) (Rs : List Term) (u v : Term) :
    Betas (.app (.app (helper R Rs) u) v) (spine u (filled R Rs u v)) :=
  .head (.appL v (helper_beta R Rs u)) (.head (pending_beta R Rs u v) (.refl _))

theorem old_pending_eq {R u : Term} {Rs : List Term} (hu : Closed u) :
    SelfintRound7GlobalLastHead.pendingHelper (body R Rs) u = pending R Rs u := by
  simp only [SelfintRound7GlobalLastHead.pendingHelper,body,pending,subst_spine,substDec,
    if_true,shift_closed 1 0 hu]

theorem weak_spine {f g : Term} (h : weakStep f=some g) :
    ∀ cs, weakStep (spine f cs)=some (spine g cs)
  | [] => h
  | a::cs => weak_spine (weak_app h a) cs

theorem flat_one_template {A u : Term} (hA : Closed A) (hu : Pure A u)
    (B : Term) (hB : FreeUnder 1 B) (hb : lamCount B=0) : Pure A (contract B u) := by
  have h := flat_two_template hA (Pure.atom (A:=A)) hu B hb
    (freeUnder_mono (by omega) hB)
  simpa only [substDec_of_freeUnder B 1 A hB,contract] using h

theorem rigidAt_spine {c : Nat} {t : Term} (h : RigidAt c t) (as : List Term) :
    RigidAt c (spine t as) := by
  induction as generalizing t with
  | nil => exact h
  | cons a as ih => exact ih (.app a h)

theorem fill_keeps_head {R X : Term} {c : Nat} (hR : RigidAt 0 R)
    (hX : RigidAt c X) (u : Term) : RigidAt c (fill R u X) := by
  induction hR with
  | var => simpa [fill,substDec] using hX
  | app a h ih => exact .app _ ih

theorem pure_keeps_head {R : Term} {Rs : List Term}
    (hD : FreeUnder 2 (body R Rs)) (hl : lamCount (body R Rs)=0)
    (hroute : RigidAt 0 R) :
    ∀ n, ∀ {E X : Term} {c : Nat} {rest : List Term},
      Pure (helper R Rs) E → RigidAt c X → rest≠[] →
      Count (spine E (X::rest)) n →
      ∃ v, Betas (spine E (X::rest)) v ∧ RigidAt c v := by
  intro n
  induction n using Nat.strongRecOn with
  | ind n ih =>
      intro E X c rest hE hX hrest hc
      obtain ⟨q,hq,hcq⟩ := count_spine_fn (X::rest) hc
      obtain ⟨v,hv,hs,hvlam⟩ := state_count_lam hD hl hE.state hcq
      have hp := betas_spine hv (X::rest)
      obtain ⟨k,hk,hck⟩ := count_reduct n hc hp
      cases hs with
      | atom =>
          cases rest with
          | nil => exact (hrest rfl).elim
          | cons Y Ys =>
              exact ⟨_,betas_trans hp (betas_spine (helper_two R Rs X Y) Ys),
                rigidAt_spine (rigidAt_spine hX (filled R Rs X Y)) Ys⟩
      | @pending u hu =>
          have hA : Closed (helper R Rs) := hD
          rw [old_pending_eq (R:=R) (Rs:=Rs) (hu.closed hA)] at hck hp
          have hstep := weak_spine (pending_step R Rs u X) rest
          obtain ⟨j,hj,hcj⟩ := head_decreases hck hstep
          have hrest' : Rs.map (fun r => fill r u X) ++ rest ≠ [] := by
            intro he
            have he' := List.append_eq_nil_iff.mp he
            exact hrest he'.2
          have hcj' : Count (spine u
              (fill R u X :: (Rs.map (fun r => fill r u X) ++ rest))) j := by
            simpa only [filled,List.map_cons,← spine_append,List.cons_append] using hcj
          obtain ⟨w,hw,hout⟩ := ih j (by omega) hu
            (fill_keeps_head hroute hX u) hrest' hcj'
          refine ⟨w,betas_trans hp (.head (weakStep_beta hstep) ?_),hout⟩
          simpa only [filled,List.map_cons,← spine_append,List.cons_append] using hw
      | app hf ha => exact hvlam.elim

/-- Exposing any rigid head before consuming the stream leaves that whole
quotation as a final operand; it cannot turn into the exact suffix. -/
theorem prestream_rigid_not_selfInterpreter {E v : Term}
    (hv : Betas (.app E (.var 0)) v) (hr : Rigid v) : ¬ IsSelfInterpreter E := by
  intro hi
  obtain ⟨w,hw,ho⟩ := hi.2 (.lam (.var 0)) (by decide)
  have he : w=idOutput := normalForm_betas_eq idOutput_normal ho
  subst w
  let Q := streamOf (blcCode (.lam (.var 0))) (.var 1)
  have hred := betas_preserve_nf (betas_appL Q hv) hw idOutput_normal
  obtain ⟨f,a,heq,hf,hQ⟩ := rigid_betas_shape hr hred
  simp only [idOutput,Term.app.injEq] at heq
  obtain ⟨_,rfl⟩ := heq
  obtain ⟨q,hq⟩ := quoteI_cell (.var 1)
  change Betas (streamOf (blcCode (.lam (.var 0))) (.var 1)) (.var 1) at hQ
  rw [hq] at hQ
  obtain ⟨z,hz,_⟩ := lam_betas_shape hQ
  cases hz

/-- With at least one additional outer operand, the first rigid public
continuation is forced before the stream arrives.  A bare R1=b is allowed. -/
theorem pending_many_not_selfInterpreter {R u : Term} {Rs : List Term}
    (hD : FreeUnder 2 (body R Rs)) (hl : lamCount (body R Rs)=0)
    (hroute : RigidAt 0 R) (hRs : Rs≠[]) (hu : Pure (helper R Rs) u) :
    ¬ IsSelfInterpreter (pending R Rs u) := by
  intro hi
  have hrun := SelfintClass.join_normal
    (hi.2 (.lam (.var 0)) (by decide)) idOutput_normal
  obtain ⟨n,hc⟩ := hasNormalForm_count ⟨_,hrun,idOutput_normal⟩
  obtain ⟨m,hm,hcm⟩ := count_fn n hc
  have hstart := Betas.head (pending_beta R Rs u (.var 0)) (Betas.refl _)
  obtain ⟨j,hj,hcj⟩ := count_reduct m hcm hstart
  have hrest : Rs.map (fun r => fill r u (.var 0)) ≠ [] := by
    cases Rs with
    | nil => exact (hRs rfl).elim
    | cons a as => simp
  have hcj' : Count (spine u (fill R u (.var 0)::Rs.map (fun r => fill r u (.var 0)))) j :=
    hcj
  obtain ⟨v,hv,hh⟩ := pure_keeps_head hD hl hroute j hu
    (fill_keeps_head hroute (RigidAt.var (j:=0)) u) hrest hcj'
  have hr : Rigid v := by
    clear hv
    induction hh with
    | var => exact .var _
    | app a h ih => exact .app a ih
  exact prestream_rigid_not_selfInterpreter (betas_trans hstart hv) hr hi

/-- All b-headed first operands, including bare b, are covered in the pure
flat algebra.  For one outer operand use OuterRoute; for multiple outer
operands the continuation is forced before the stream can be consumed. -/
theorem pure_route_not_selfInterpreter {R E : Term} {Rs : List Term}
    (hD : FreeUnder 2 (body R Rs)) (hl : lamCount (body R Rs)=0)
    (hroute : RigidAt 0 R) (hE : Pure (helper R Rs) E) : ¬ IsSelfInterpreter E := by
  by_cases hRs : Rs=[]
  · subst Rs
    have hR : FreeUnder 2 R := hD.2
    have hL : lamCount R=0 := by simpa [body,spine,lamCount] using hl
    exact SelfintRound8GlobalOuterRoute.generated_route_not_selfInterpreter hR
      (lamfree_live R hL) hroute hE.generated
  · intro hi
    have hrun := SelfintClass.join_normal
      (hi.2 (.lam (.var 0)) (by decide)) idOutput_normal
    obtain ⟨n,hc⟩ := hasNormalForm_count ⟨_,hrun,idOutput_normal⟩
    obtain ⟨m,hm,hcm⟩ := count_fn n hc
    obtain ⟨q,hq,hcq⟩ := count_fn m hcm
    obtain ⟨w,hw,hs,hwl⟩ := state_count_lam hD hl hE.state hcq
    have hi' := selfInterpreter_betas hw hi
    cases hs with
    | atom =>
        have hlow := selfInterpreter_three_live hi'
        have hcount := live_le_lamCount (SelfintRound7GlobalLastHead.helper (body R Rs))
        have hcc : lamCount (SelfintRound7GlobalLastHead.helper (body R Rs))=2 := by
          simp only [SelfintRound7GlobalLastHead.helper,lamCount,hl]
        rw [hcc] at hcount
        omega
    | pending hu =>
        have hA : Closed (helper R Rs) := hD
        rw [old_pending_eq (R:=R) (Rs:=Rs) (hu.closed hA)] at hi'
        exact pending_many_not_selfInterpreter hD hl hroute hRs hu hi'
    | app => exact hwl.elim

theorem sharing_route_not_selfInterpreter (B R : Term) (Rs : List Term)
    (hB : FreeUnder 1 B) (hb : lamCount B=0)
    (hD : FreeUnder 2 (body R Rs)) (hl : lamCount (body R Rs)=0)
    (hroute : RigidAt 0 R) :
    ¬ IsSelfInterpreter (.app (.lam B) (helper R Rs)) := by
  intro hi
  have hA : Closed (helper R Rs) := hD
  exact pure_route_not_selfInterpreter hD hl hroute
    (flat_one_template hA .atom B hB hb) (descend_interpreter hi)

#print axioms pure_keeps_head
#print axioms prestream_rigid_not_selfInterpreter
#print axioms sharing_route_not_selfInterpreter
#print axioms pure_route_not_selfInterpreter

end Blc.SelfintRound8GlobalOuterSpine
