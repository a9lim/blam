/-
The other captured head in a normal three-lambda helper.

For every applicative payload p[u,v,z], put

  G[p] = λu v. u (λz. v p[u,v,z]).

The diagonal root let (λx.xx) G[p] c d reaches a c-headed term before
its stream arrives. Thus a rigid c excludes the reader laws for every
payload and every later argument. All such sources have exactly four
source lambdas and normal components, and the canonical c,j instance has
weight 32+price(p). No source bound, enumeration, or bounded reduction
claim occurs in the proof.
-/
import Blc.SelfintRound7ReaderRoute

namespace Blc.SelfintRound7ReaderMiddle
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (reader_betas)
open SelfintRound7ReaderRoute (Payload realize realize_subst price payload_source)
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

def capture (p : Payload) (x y : Term) : Term :=
  .lam (.app (shift 1 0 y) (realize p (shift 1 0 x) (shift 1 0 y) (.var 0)))

theorem capture_subst (p : Payload) (x y s : Term) (j : Nat) :
    substDec j s (capture p x y)=
      capture p (substDec j s x) (substDec j s y) := by
  simp only [capture,substDec,realize_subst]
  rw [← shift_substDec_lt x s j 0 (by omega),
    ← shift_substDec_lt y s j 0 (by omega)]
  simp

theorem capture_beta (p : Payload) (x y z : Term) :
    Beta (.app (capture p x y) z) (.app y (realize p x y z)) := by
  simpa only [capture,contract,substDec,realize_subst,substDec_shift,if_true] using
    Beta.beta (.app (shift 1 0 y)
      (realize p (shift 1 0 x) (shift 1 0 y) (.var 0))) z

def helper (p : Payload) : Term :=
  .lam (.lam (.app (.var 1) (capture p (.var 1) (.var 0))))

def helperPartial (p : Payload) (x : Term) : Term :=
  .lam (.app (shift 1 0 x) (capture p (shift 1 0 x) (.var 0)))

theorem helper_beta (p : Payload) (x : Term) :
    Beta (.app (helper p) x) (helperPartial p x) := by
  simpa [helper,helperPartial,contract,substDec,capture_subst] using
    Beta.beta (.lam (.app (.var 1) (capture p (.var 1) (.var 0)))) x

theorem helperPartial_beta (p : Payload) (x y : Term) :
    Beta (.app (helperPartial p x) y) (.app x (capture p x y)) := by
  simpa [helperPartial,contract,substDec,capture_subst,substDec_shift] using
    Beta.beta (.app (shift 1 0 x) (capture p (shift 1 0 x) (.var 0))) y

theorem helper_two (p : Payload) (x y : Term) :
    Betas (.app (.app (helper p) x) y) (.app x (capture p x y)) :=
  .head (.appL y (helper_beta p x)) (.head (helperPartial_beta p x y) (.refl _))

def diagonal (p : Payload) (c d : Term) : Term :=
  SelfintRound6ReaderFourth.root (.app (.var 0) (.var 0))
    (.app (.var 1) (capture p (.var 1) (.var 0))) c d

def residual (p : Payload) (c d : Term) : Term :=
  realize p (helper p) c (capture p (capture p (helper p) c) d)

/-- The second captured head returns the first pending operand directly;
    the payload remains entirely below that head. -/
theorem diagonal_reduces (p : Payload) (c d : Term) :
    Betas (diagonal p c d) (.app c (residual p c d)) := by
  have h0 : Beta (diagonal p c d)
      (.app (.app (.app (helper p) (helper p)) c) d) := by
    exact .appL d (.appL c (by
      simpa [helper,contract,substDec] using
        Beta.beta (.app (.var 0) (.var 0)) (helper p)))
  refine .head h0 (betas_trans (betas_app (helper_two p (helper p) c) (.refl d)) ?_)
  exact betas_trans (helper_two p (capture p (helper p) c) d)
    (.head (capture_beta p (helper p) c (capture p (capture p (helper p) c) d))
      (.refl _))

/-- A lock on the first pending operand is enough; the second operand
    and every later argument are unrestricted. -/
theorem diagonal_locked (p : Payload) {heads : Nat → Prop} (c d : Term)
    (hc : SelfintRound7ReaderRoute.Locked heads c) :
    SelfintRound7ReaderRoute.Locked heads (diagonal p c d) :=
  SelfintRound7ReaderRoute.locked_before_betas
    (SelfintRound7ReaderRoute.locked_app hc _) (diagonal_reduces p c d)

theorem diagonal_not_reader (p : Payload) (c d : Term) (hc : Rigid c)
    (cs : List Term) : ¬ Reader (spine (diagonal p c d) cs) := by
  intro hr
  have hr' := reader_betas hr (betas_spine (diagonal_reduces p c d) cs)
  exact reader_not_rigid hr' (SelfintFlatPrefix.rigid_spine_of (.app _ hc) cs)

theorem helper_normal (p : Payload) : NormalForm (helper p) := by
  apply SelfintClassNext.nft_normal
  have hn := SelfintRootFlat.flat_nf _ (payload_source p).1
  simpa [helper,capture,shift,NFt,IsLam] using hn

theorem diagonal_source (p : Payload) :
    lamCount (diagonal p (.var 0) (.var 1))=4 ∧
    depth (diagonal p (.var 0) (.var 1))=0 ∧
    occ 1 (diagonal p (.var 0) (.var 1))=1 ∧
    cost (diagonal p (.var 0) (.var 1))=32+price p := by
  have hl := (payload_source p).1
  have hp := (payload_source p).2.2
  have ho := occ_of_freeUnder _ 3 4 (payload_source p).2.1 (by omega)
  have hd := occDepth_zero ho
  simp [diagonal,SelfintRound6ReaderFourth.root,capture,spine,shift,
    lamCount,depth,occDepth,occ,cost,holeCost,hl,ho,hd,hp]
  omega

#print axioms diagonal_reduces
#print axioms diagonal_locked
#print axioms diagonal_not_reader
#print axioms diagonal_source
end Blc.SelfintRound7ReaderMiddle
