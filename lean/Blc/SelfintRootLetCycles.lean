/-
Two analytic self-embedding exclusions for closed reader handoffs.
Capture.A reproduces its own diagonal after exactly 11 weak-head steps,
with two additional pending operands. Double.A reproduces its diagonal
after one selected weak-head step and a finite algebraic simplification
inside the argument. The positive-head clock criterion, not an arbitrary
beta cycle or a fuel cutoff, proves divergence for every pending stack.

The concrete corollaries close 7584--7589, 9456--9461 and 4627--4629 in
 data/self-interpreter/reasoning_class/pending/X_REMAINING.tsv.
-/
import Blc.SelfintRootLetEmbedding
namespace Blc.SelfintRootLetCycles
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (keep keep_apply reader_betas)
open SelfintRootLetOrbit (count_fn count_spine_fn)
open SelfintRootLetEmbedding
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

namespace Capture
/-- lambda x.x(lambda y.(y(lambda z.y))x). -/
def A : Term := .lam (.app (.var 0) (.lam
  (.app (.app (.var 0) (.lam (.var 1))) (.var 1))))
def F (x : Term) : Term := .lam (.app (.app (.var 0) (.lam (.var 1))) (shift 1 0 x))

theorem embedding : Interleaved 11 (.app A A) (spine (.app A A) [F A,A]) :=
  weakRun_interleaved 11 _ _ (by decide)

theorem no_count (n : Nat) : ¬ Count (.app A A) n :=
  self_embedding_no_count embedding (by decide) n

def diagonal : Term := .app (.lam (.app (.var 0) (.var 0))) A

theorem not_reader (cs : List Term) : ¬ Reader (spine diagonal cs) := by
  intro hr
  exact no_reader_of_no_count (.app A A) no_count cs
    (hr.beta (SelfintSourceCost.spine_beta (Beta.beta (.app (.var 0) (.var 0)) A) cs))
end Capture

namespace Double

def I : Term := .lam (.var 0)
def F (x : Term) : Term := .lam (.app (.app (.var 0) I) (shift 1 0 x))
/-- lambda x.x(x(lambda y.(y I)x)). -/
def A : Term := .lam (.app (.var 0) (.app (.var 0)
  (.lam (.app (.app (.var 0) I) (.var 1)))))
def D : Term := F I

theorem F_apply (x y : Term) : Beta (.app (F x) y) (.app (.app y I) x) := by
  simpa [F,I,contract,substDec,substDec_shift] using
    Beta.beta (.app (.app (.var 0) I) (shift 1 0 x)) y

theorem I_apply (x : Term) : Beta (.app I x) x := Beta.beta _ _

theorem F_I (x : Term) : Betas (.app (F x) I) x :=
  .head (F_apply _ _) (.head (.appL x (I_apply I)) (.head (I_apply x) (.refl _)))

theorem A_apply (x : Term) : Beta (.app A x) (.app x (.app x (F x))) := by
  simpa [A,F,I,contract,substDec,shift] using
    Beta.beta (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) I) (.var 1))))) x

theorem A_step (x : Term) : weakStep (.app A x)=some (.app x (.app x (F x))) := by
  simp [A,F,I,weakStep,contract,substDec]

theorem A_I : Betas (.app A I) D :=
  .head (A_apply I) (.head (I_apply _) (.head (I_apply _) (.refl _)))

theorem D_A : Betas (.app D A) I :=
  .head (F_apply I A) (betas_trans (betas_appL I A_I) (F_I I))

theorem FA_A : Betas (.app (F A) A) I :=
  .head (F_apply A A) (betas_trans (betas_appL A A_I) D_A)

theorem FA_FFA : Betas (.app (F A) (F (F A))) I :=
  .head (F_apply _ _) (betas_trans (betas_appL A (F_I (F A))) FA_A)

theorem A_FA : Betas (.app A (F A)) A :=
  .head (A_apply _) (betas_trans (betas_appR (F A) FA_FFA) (F_I A))

/-- The selected head step is essential: the remaining reductions occur
    inside its argument and return to the identical root application. -/
theorem embedding : Interleaved 1 (.app A A) (spine (.app A A) []) :=
  .head (A_step A) (Interleaved.of_betas (betas_appR A A_FA))

theorem no_count (n : Nat) : ¬ Count (.app A A) n :=
  self_embedding_no_count embedding (by decide) n

def diagonal : Term := .app (.lam (.app (.var 0) (.var 0))) A

theorem not_reader (cs : List Term) : ¬ Reader (spine diagonal cs) := by
  intro hr
  exact no_reader_of_no_count (.app A A) no_count cs
    (hr.beta (SelfintSourceCost.spine_beta (Beta.beta (.app (.var 0) (.var 0)) A) cs))
end Double

def I : Term := .lam (.var 0)
def Kc : Term := .lam (.var 1)

def pending7584 : Term := spine Capture.diagonal [I,.var 1,.var 0]
def pending7585 : Term := spine Capture.diagonal [I,.var 0,.var 1]
def pending7586 : Term := spine Capture.diagonal [.var 1,I,.var 0]
def pending7587 : Term := spine Capture.diagonal [.var 1,.var 0,I]
def pending7588 : Term := spine Capture.diagonal [.var 0,I,.var 1]
def pending7589 : Term := spine Capture.diagonal [.var 0,.var 1,I]
def pending9456 : Term := spine Capture.diagonal [.var 1,.var 0,Kc]
def pending9457 : Term := spine Capture.diagonal [.var 1,Kc,.var 0]
def pending9458 : Term := spine Capture.diagonal [.var 0,.var 1,Kc]
def pending9459 : Term := spine Capture.diagonal [.var 0,Kc,.var 1]
def pending9460 : Term := spine Capture.diagonal [Kc,.var 1,.var 0]
def pending9461 : Term := spine Capture.diagonal [Kc,.var 0,.var 1]
def pending4627 : Term := spine Double.diagonal [.var 1,.var 0,.var 0]
def pending4628 : Term := spine Double.diagonal [.var 0,.var 1,.var 0]
def pending4629 : Term := spine Double.diagonal [.var 0,.var 0,.var 1]

theorem pending_weights :
    weight 0 pending7584=44 ∧
    weight 0 pending7585=44 ∧
    weight 0 pending7586=44 ∧
    weight 0 pending7587=44 ∧
    weight 0 pending7588=44 ∧
    weight 0 pending7589=44 ∧
    weight 0 pending9456=45 ∧
    weight 0 pending9457=45 ∧
    weight 0 pending9458=45 ∧
    weight 0 pending9459=45 ∧
    weight 0 pending9460=45 ∧
    weight 0 pending9461=45 ∧
    weight 0 pending4627=45 ∧
    weight 0 pending4628=45 ∧
    weight 0 pending4629=45 := by decide

theorem pending7584_not_reader : ¬ Reader pending7584 := Capture.not_reader _
theorem pending7585_not_reader : ¬ Reader pending7585 := Capture.not_reader _
theorem pending7586_not_reader : ¬ Reader pending7586 := Capture.not_reader _
theorem pending7587_not_reader : ¬ Reader pending7587 := Capture.not_reader _
theorem pending7588_not_reader : ¬ Reader pending7588 := Capture.not_reader _
theorem pending7589_not_reader : ¬ Reader pending7589 := Capture.not_reader _
theorem pending9456_not_reader : ¬ Reader pending9456 := Capture.not_reader _
theorem pending9457_not_reader : ¬ Reader pending9457 := Capture.not_reader _
theorem pending9458_not_reader : ¬ Reader pending9458 := Capture.not_reader _
theorem pending9459_not_reader : ¬ Reader pending9459 := Capture.not_reader _
theorem pending9460_not_reader : ¬ Reader pending9460 := Capture.not_reader _
theorem pending9461_not_reader : ¬ Reader pending9461 := Capture.not_reader _
theorem pending4627_not_reader : ¬ Reader pending4627 := Double.not_reader _
theorem pending4628_not_reader : ¬ Reader pending4628 := Double.not_reader _
theorem pending4629_not_reader : ¬ Reader pending4629 := Double.not_reader _

#print axioms Capture.embedding
#print axioms Capture.not_reader
#print axioms Double.embedding
#print axioms Double.not_reader
end Blc.SelfintRootLetCycles
