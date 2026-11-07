/-
The next source lambda in a two-leading-helper, two-pending reader.
A redex in any component consumes the only available fourth lambda and
reduces to the excluded three-lambda slice, regardless of beta expansion.
The remaining escape is therefore a normal lambda subtree, not another
hidden component redex. A captured-head example below shows why the
three-valued no-lambda endpoint conclusion cannot extend unchanged.
-/
import Blc.SelfintRound6ReaderBinary
namespace Blc.SelfintRound6ReaderFourth
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
open SelfintRootLetForcing (count_endpoint)
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

theorem beta_has_lambda {t u : Term} (h : Beta t u) : 1≤lamCount t := by
  induction h with
  | beta b a => simp only [lamCount]; omega
  | lam h ih => simp only [lamCount]; omega
  | appL a h ih => simp only [lamCount]; omega
  | appR f h ih => simp only [lamCount]; omega

/-- The sole abstraction cannot survive its own contraction, and its
    lambda-free argument cannot duplicate further abstractions. -/
theorem one_lambda_beta_flat {t u : Term} (hb : Beta t u) (hl : lamCount t≤1) :
    lamCount u=0 := by
  induction hb with
  | beta b a =>
    have hz : lamCount b=0 ∧ lamCount a=0 := by simp only [lamCount] at hl; omega
    simp [contract,lamCount_subst,hz.1,hz.2]
  | @lam b b' hb ih =>
    have hp := beta_has_lambda hb
    simp only [lamCount] at hl; omega
  | @appL f f' a hb ih =>
    have hp := beta_has_lambda hb
    have hf : lamCount f≤1 := by simp only [lamCount] at hl; omega
    have hh := ih hf
    simp only [lamCount] at hl ⊢; omega
  | @appR f a a' hb ih =>
    have hp := beta_has_lambda hb
    have ha : lamCount a≤1 := by simp only [lamCount] at hl; omega
    have hh := ih ha
    simp only [lamCount] at hl ⊢; omega

theorem flat_depth_zero (t : Term) (hl : lamCount t=0) (j : Nat) : occDepth j t=0 := by
  induction t with
  | var n => rfl
  | lam b ih => simp [lamCount] at hl
  | app f a ihf iha =>
    have hh : lamCount f+lamCount a=0 := hl
    simp only [occDepth,ihf (by omega),iha (by omega),Nat.zero_add]

/-- Replacing a redex by a lambda-free reduct cannot introduce the first
    hidden occurrence of an ambient variable, even inside a context. -/
theorem flat_reduct_context_depth (C : Context) {t u : Term}
    (hb : Beta t u) (hu : lamCount u=0) (j : Nat)
    (hd : occDepth j (C.fill t)=0) : occDepth j (C.fill u)=0 := by
  induction C generalizing j with
  | hole => exact flat_depth_zero u hu j
  | lam C ih =>
    have hz : occDepth (j+1) (C.fill t)=0 ∧ occ (j+1) (C.fill t)=0 := by
      change occDepth (j+1) (C.fill t)+occ (j+1) (C.fill t)=0 at hd
      omega
    have ho := SelfintCapture.occ_beta_zero (beta_fill C hb) (j+1) hz.2
    change occDepth (j+1) (C.fill u)+occ (j+1) (C.fill u)=0
    rw [ih (j+1) hz.1,ho]
  | appL C a ih =>
    have hz : occDepth j (C.fill t)=0 ∧ occDepth j a=0 := by
      change occDepth j (C.fill t)+occDepth j a=0 at hd; omega
    change occDepth j (C.fill u)+occDepth j a=0
    rw [ih j hz.1,hz.2]
  | appR f C ih =>
    have hz : occDepth j f=0 ∧ occDepth j (C.fill t)=0 := by
      change occDepth j f+occDepth j (C.fill t)=0 at hd; omega
    change occDepth j f+occDepth j (C.fill u)=0
    rw [hz.1,ih j hz.2]

def root (b a c d : Term) : Term := spine (.app (.lam b) (.lam (.lam a))) [c,d]

/-- A fourth lambda spent on a component redex leaves the exact excluded
    three-lambda shape. No source-wire decrease is needed. -/
theorem fourth_redex_not_reader (C : Context) {t u b a c d : Term}
    (hb : Beta t u) (hl : lamCount (C.fill t)≤4)
    (hc : 3≤ctxRestLambdas C) (hd : depth (C.fill t)=0)
    (he : C.fill u=root b a c d) : ¬ Reader (C.fill t) := by
  have hcount := lambdas_fill C t
  have hp := beta_has_lambda hb
  have hu := one_lambda_beta_flat hb (by omega)
  have hsmall : lamCount (C.fill u)≤3 := by
    rw [lambdas_fill C u,hu]; omega
  have hdepth := flat_reduct_context_depth C hb hu 1 hd
  intro hr
  have hr' := hr.beta (beta_fill C hb)
  rw [he] at hr' hsmall hdepth
  exact SelfintRound6ReaderBinary.three_lambda_two_pending_not_reader hsmall hdepth hr'

/-- In the complete four-lambda slice with exactly two pending operands,
    all four components are beta-normal. The only surviving fourth-lambda
    placement is a normal helper subtree. -/
theorem four_lambda_components_normal {b a c d : Term}
    (hr : Reader (root b a c d)) (hl : lamCount (root b a c d)≤4)
    (hd : depth (root b a c d)=0) :
    NormalForm b ∧ NormalForm a ∧ NormalForm c ∧ NormalForm d := by
  refine ⟨?_,?_,?_,?_⟩
  · intro u hb
    exact fourth_redex_not_reader
      (.appL (.appL (.appL (.lam .hole) (.lam (.lam a))) c) d)
      hb hl (by simp only [ctxRestLambdas,lamCount]; omega) hd rfl hr
  · intro u ha
    exact fourth_redex_not_reader
      (.appL (.appL (.appR (.lam b) (.lam (.lam .hole))) c) d)
      ha hl (by simp only [ctxRestLambdas,lamCount]; omega) hd rfl hr
  · intro u hcu
    exact fourth_redex_not_reader
      (.appL (.appR (.app (.lam b) (.lam (.lam a))) .hole) d)
      hcu hl (by simp only [ctxRestLambdas,lamCount]; omega) hd rfl hr
  · intro u hdu
    exact fourth_redex_not_reader
      (.appR (.app (.app (.lam b) (.lam (.lam a))) c) .hole)
      hdu hl (by simp only [ctxRestLambdas,lamCount]; omega) hd rfl hr

/-- A variable-arity use of a delayed argument. -/
def repeatApp : Nat → Term → Term → Term
  | 0, f, _ => f
  | n+1, f, x => .app (repeatApp n f x) x

theorem repeatApp_subst (n : Nat) (f x s : Term) (j : Nat) :
    substDec j s (repeatApp n f x)=
      repeatApp n (substDec j s f) (substDec j s x) := by
  induction n with
  | zero => rfl
  | succ n ih => simp [repeatApp,substDec,ih]

theorem repeatApp_rigidHead {f : Term} {k : Nat} (hf : RigidHead k f)
    (n : Nat) (x : Term) : RigidHead k (repeatApp n f x) := by
  induction n with
  | zero => exact hf
  | succ n ih => exact .app x ih

/-- This normal lambda captures both outer parameters, and may use its own
    argument arbitrarily often. -/
def capture (n : Nat) (x y : Term) : Term :=
  .lam (.app (shift 1 0 x) (repeatApp n (shift 1 0 y) (.var 0)))

theorem capture_subst (n : Nat) (x y s : Term) (j : Nat) :
    substDec j s (capture n x y)=
      capture n (substDec j s x) (substDec j s y) := by
  simp only [capture,substDec,repeatApp_subst]
  rw [← shift_substDec_lt x s j 0 (by omega),
    ← shift_substDec_lt y s j 0 (by omega)]
  simp

theorem capture_beta (n : Nat) (x y z : Term) :
    Beta (.app (capture n x y) z) (.app x (repeatApp n y z)) := by
  simpa only [capture,contract,substDec,repeatApp_subst,substDec_shift,if_true] using
    Beta.beta (.app (shift 1 0 x) (repeatApp n (shift 1 0 y) (.var 0))) z

def helper (n : Nat) : Term :=
  .lam (.lam (.app (.var 1) (capture n (.var 1) (.var 0))))

def helperPartial (n : Nat) (x : Term) : Term :=
  .lam (.app (shift 1 0 x) (capture n (shift 1 0 x) (.var 0)))

theorem helper_beta (n : Nat) (x : Term) :
    Beta (.app (helper n) x) (helperPartial n x) := by
  simpa [helper,helperPartial,contract,substDec,capture_subst] using
    Beta.beta (.lam (.app (.var 1) (capture n (.var 1) (.var 0)))) x

theorem helperPartial_beta (n : Nat) (x y : Term) :
    Beta (.app (helperPartial n x) y) (.app x (capture n x y)) := by
  simpa [helperPartial,contract,substDec,capture_subst,substDec_shift] using
    Beta.beta (.app (shift 1 0 x) (capture n (shift 1 0 x) (.var 0))) y

theorem helper_two (n : Nat) (x y : Term) :
    Betas (.app (.app (helper n) x) y) (.app x (capture n x y)) :=
  .head (.appL y (helper_beta n x)) (.head (helperPartial_beta n x y) (.refl _))

def diagonal (n : Nat) (c d : Term) : Term :=
  root (.app (.var 0) (.var 0))
    (.app (.var 1) (capture n (.var 1) (.var 0))) c d

def payload (n : Nat) (c d : Term) : Term :=
  repeatApp n c (capture n (capture n (helper n) c) d)

/-- The extra normal lambda really defeats the previous two-rigid
    no-lambda endpoint invariant: the residual still has a helper prefix. -/
theorem diagonal_reduces (n : Nat) (c d : Term) :
    Betas (diagonal n c d) (.app (helper n) (payload n c d)) := by
  have h0 : Beta (diagonal n c d)
      (.app (.app (.app (helper n) (helper n)) c) d) := by
    exact .appL d (.appL c (by
      simpa [helper,contract,substDec] using
        Beta.beta (.app (.var 0) (.var 0)) (helper n)))
  refine .head h0 (betas_trans (betas_app (helper_two n (helper n) c) (.refl d)) ?_)
  exact betas_trans (helper_two n (capture n (helper n) c) d)
    (.head (capture_beta n (helper n) c (capture n (capture n (helper n) c) d))
      (.refl _))

theorem diagonal_lambda_endpoint (n : Nat) (c d : Term) :
    Betas (diagonal n c d) (helperPartial n (payload n c d)) :=
  betas_trans (diagonal_reduces n c d)
    (.head (helper_beta n (payload n c d)) (.refl _))

theorem rigidHead_scope {t : Term} {k m : Nat} (ht : RigidHead k t)
    (hs : FreeUnder m t) : k<m := by
  induction ht with
  | var => exact hs
  | app a hf ih => exact ih hs.1

/-- The captured head remains the first pending operand even after the
    stream arrives. It therefore cannot expose the fresh suffix in the
    reader's zero law. The bound is independent of argument multiplicity. -/
theorem diagonal_not_reader (n : Nat) (c d : Term) (hc : Rigid c) :
    ¬ Reader (diagonal n c d) := by
  intro hr
  obtain ⟨k,hk⟩ := SelfintFlatSemantics.rigidHead_exists hc
  have hs : FreeUnder 2 c := hr.scope.1.2
  have hlt := rigidHead_scope hk hs
  have hzero := betas_trans (betas_app (diagonal_reduces n c d) (.refl Z))
    (helper_two n (payload n c d) Z)
  have hend := betas_preserve_nf hzero hr.zero_red zeroOut_normal
  have hhead : RigidHead k (.app (payload n c d) (capture n (payload n c d) Z)) :=
    .app _ (repeatApp_rigidHead hk _ _)
  have hfinal := rigidHead_betas hend hhead
  have he := SelfintFlatSemantics.rigidHead_unique hfinal
    (show RigidHead 3 zeroOut from .app _ .var)
  omega

theorem repeatApp_lambdas (n : Nat) (f x : Term) :
    lamCount (repeatApp n f x)=lamCount f+n*lamCount x := by
  induction n with
  | zero => simp [repeatApp]
  | succ n ih => simp [repeatApp,lamCount,ih,Nat.succ_mul]; omega

theorem repeatApp_occ (n : Nat) (f x : Term) (j : Nat) :
    occ j (repeatApp n f x)=occ j f+n*occ j x := by
  induction n with
  | zero => simp [repeatApp]
  | succ n ih => simp [repeatApp,occ,ih,Nat.succ_mul]; omega

theorem repeatApp_depth (n : Nat) (f x : Term) (j : Nat) :
    occDepth j (repeatApp n f x)=occDepth j f+n*occDepth j x := by
  induction n with
  | zero => simp [repeatApp]
  | succ n ih => simp [repeatApp,occDepth,ih,Nat.succ_mul]; omega

theorem repeatApp_holeCost (n : Nat) (f x : Term) (j : Nat) :
    holeCost j (repeatApp n f x)=holeCost j f+n*(2+holeCost j x) := by
  induction n with
  | zero => simp [repeatApp]
  | succ n ih => simp [repeatApp,holeCost,ih,Nat.succ_mul]; omega

theorem diagonal_source (n : Nat) :
    lamCount (diagonal n (.var 0) (.var 1))=4 ∧
    depth (diagonal n (.var 0) (.var 1))=0 ∧
    occ 1 (diagonal n (.var 0) (.var 1))=1 ∧
    cost (diagonal n (.var 0) (.var 1))=36+4*n := by
  simp [diagonal,root,capture,spine,shift,lamCount,repeatApp_lambdas,
    depth,occDepth,repeatApp_depth,occ,repeatApp_occ,cost,holeCost,repeatApp_holeCost]
  omega

/-- This 40-weight source lies inside the remaining h=2 budget; the
    lambda-headed endpoint is not evidence of reader validity. -/
theorem weight40_escape :
    cost (diagonal 1 (.var 0) (.var 1))=40 ∧
    depth (diagonal 1 (.var 0) (.var 1))=0 ∧
    lamCount (diagonal 1 (.var 0) (.var 1))=4 ∧
    (∃ b, Betas (diagonal 1 (.var 0) (.var 1)) (.lam b)) ∧
    ¬ Reader (diagonal 1 (.var 0) (.var 1)) := by
  refine ⟨by decide,by decide,by decide,?_,diagonal_not_reader _ _ _ (.var _)⟩
  exact ⟨_,diagonal_lambda_endpoint _ _ _⟩

#print axioms four_lambda_components_normal
#print axioms diagonal_not_reader
#print axioms diagonal_source
#print axioms weight40_escape

end Blc.SelfintRound6ReaderFourth
