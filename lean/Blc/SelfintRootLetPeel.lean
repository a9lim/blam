/-
An unbounded advancing family for a captured two-argument constant.
F(X)=lambda y.y(K(K X))y satisfies F(X) F(Y) ->* X F(Y).
For A=lambda x.x F(x), each state A F^n(A) advances, with one
selected weak-head step, to A F^(n+1)(A). The weak-head clock therefore
cannot be finite, even though the literal term grows. This excludes the
three pending sources 9468--9470 for arbitrary remaining operands.
-/
import Blc.SelfintRootLetEmbedding
namespace Blc.SelfintRootLetPeel
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (keep keep_apply reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
open SelfintRootLetEmbedding
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

/-- F(X)=lambda y.y(K(K X))y. -/
def F (x : Term) : Term :=
  .lam (.app (.app (.var 0) (shift 1 0 (keep (keep x)))) (.var 0))
def A : Term := .lam (.app (.var 0) (F (.var 0)))

theorem F_apply (x y : Term) : Beta (.app (F x) y)
    (.app (.app y (keep (keep x))) y) := by
  simpa [F,contract,substDec,substDec_shift] using
    Beta.beta (.app (.app (.var 0) (shift 1 0 (keep (keep x)))) (.var 0)) y

theorem F_keep2 (x y : Term) : Betas (.app (F x) (keep (keep y))) y :=
  .head (F_apply _ _) (.head (.appL _ (keep_apply _ _))
    (.head (keep_apply _ _) (.refl _)))

/-- The left index is peeled, while the right F value survives intact. -/
theorem F_pair (x y : Term) : Betas (.app (F x) (F y)) (.app x (F y)) :=
  .head (F_apply _ _) (betas_appL _ (F_keep2 y x))

theorem keep_closed {x : Term} (hx : Closed x) : Closed (keep x) :=
  SelfintClassNext.shift_scope x 0 0 hx

theorem F_closed {x : Term} (hx : Closed x) : Closed (F x) :=
  ⟨⟨by decide,SelfintClassNext.shift_scope _ 0 0 (keep_closed (keep_closed hx))⟩,by decide⟩

theorem A_closed : Closed A := by decide

theorem A_step (x : Term) (hx : Closed x) :
    weakStep (.app A x)=some (.app x (F x)) := by
  simp [A,F,keep,weakStep,contract,substDec,shift,shift_closed _ _ hx]

def X : Nat → Term
  | 0 => A
  | n+1 => F (X n)

theorem X_closed (n : Nat) : Closed (X n) := by
  induction n with
  | zero => exact A_closed
  | succ n ih => exact F_closed ih

theorem peel (n : Nat) (y : Term) :
    Betas (.app (X n) (F y)) (.app A (F y)) := by
  induction n with
  | zero => exact .refl _
  | succ n ih => exact betas_trans (F_pair (X n) y) ih

theorem advance (n : Nat) :
    Interleaved 1 (.app A (X n)) (.app A (X (n+1))) :=
  .head (A_step _ (X_closed n)) (Interleaved.of_betas (peel n (X n)))

theorem no_count (m n : Nat) : ¬ Count (.app A (X n)) m :=
  advancing_no_count (fun n => .app A (X n))
    (fun n => ⟨1,[],by decide,advance n⟩) m n

def diagonal : Term := .app (.lam (.app (.var 0) (.var 0))) A

theorem not_reader (cs : List Term) : ¬ Reader (spine diagonal cs) := by
  intro hr
  exact no_reader_of_no_count (.app A A) (fun m => no_count m 0) cs
    (hr.beta (SelfintSourceCost.spine_beta (Beta.beta (.app (.var 0) (.var 0)) A) cs))

def pending9468 : Term := spine diagonal [.var 1,.var 0,.var 0]
def pending9469 : Term := spine diagonal [.var 0,.var 1,.var 0]
def pending9470 : Term := spine diagonal [.var 0,.var 0,.var 1]

theorem pending_weights :
    weight 0 pending9468=45 ∧ weight 0 pending9469=45 ∧ weight 0 pending9470=45 := by decide

theorem pending9468_not_reader : ¬ Reader pending9468 := not_reader _
theorem pending9469_not_reader : ¬ Reader pending9469 := not_reader _
theorem pending9470_not_reader : ¬ Reader pending9470 := not_reader _

#print axioms advance
#print axioms not_reader
end Blc.SelfintRootLetPeel
