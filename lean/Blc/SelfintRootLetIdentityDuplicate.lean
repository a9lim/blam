/-
For F(X)=lambda y.(y I)(X y), A=lambda x.x F(x), and X_n=F^n(A),
every X_n I reduces to D=F(I). Since D q reduces to q I q, pair
reduction peels the left tower while retaining a duplicate as an extra
operand. The resulting unbounded advance excludes every finite head
clock and closes pending sources 4166--4168.
-/
import Blc.SelfintRootLetEmbedding
namespace Blc.SelfintRootLetIdentityDuplicate
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetEmbedding
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

def I : Term := .lam (.var 0)
def F (x : Term) : Term :=
  .lam (.app (.app (.var 0) I) (.app (shift 1 0 x) (.var 0)))
def A : Term := .lam (.app (.var 0) (F (.var 0)))
def D : Term := F I

theorem I_apply (x : Term) : Beta (.app I x) x := by
  simpa [I,contract,substDec] using Beta.beta (.var 0) x

theorem F_apply (x y : Term) : Beta (.app (F x) y)
    (.app (.app y I) (.app x y)) := by
  simpa [F,I,contract,substDec,substDec_shift] using
    Beta.beta (.app (.app (.var 0) I) (.app (shift 1 0 x) (.var 0))) y

theorem A_step (x : Term) : weakStep (.app A x)=some (.app x (F x)) := by
  simp [A,F,I,weakStep,contract,substDec,shift]

theorem A_apply (x : Term) : Beta (.app A x) (.app x (F x)) :=
  weakStep_beta (A_step x)

theorem F_I (x : Term) : Betas (.app (F x) I) (.app x I) :=
  .head (F_apply _ _) (.head (.appL _ (I_apply _)) (.head (I_apply _) (.refl _)))

theorem A_I : Betas (.app A I) D :=
  .head (A_apply _) (.head (I_apply _) (.refl _))

theorem D_apply (q : Term) : Betas (.app D q) (spine q [I,q]) :=
  .head (F_apply _ _) (.head (.appR _ (I_apply _)) (.refl _))

def X : Nat → Term
  | 0 => A
  | n+1 => F (X n)

theorem X_I (n : Nat) : Betas (.app (X n) I) D := by
  induction n with
  | zero => exact A_I
  | succ n ih => exact betas_trans (F_I (X n)) ih

theorem F_pair (n m : Nat) : Betas (.app (X (n+1)) (X (m+1)))
    (spine (.app (X n) (X (m+1))) [I,.app (X n) (X (m+1))]) :=
  .head (F_apply _ _)
    (betas_trans (betas_appL _ (X_I (m+1))) (D_apply _))

def extras (m : Nat) : Nat → List Term
  | 0 => []
  | n+1 => extras m n ++ [I,.app (X n) (X (m+1))]

theorem peel (n m : Nat) : Betas (.app (X n) (X (m+1)))
    (spine (.app A (X (m+1))) (extras m n)) := by
  induction n with
  | zero => exact .refl _
  | succ n ih =>
    simpa only [extras,SelfintLetSink.spine_append] using
      betas_trans (F_pair n m) (betas_spine ih [I,.app (X n) (X (m+1))])

theorem advance (n : Nat) : Interleaved 1 (.app A (X n))
    (spine (.app A (X (n+1))) (extras n n)) :=
  .head (A_step _) (Interleaved.of_betas (peel n n))

theorem no_count (m n : Nat) : ¬ Count (.app A (X n)) m :=
  advancing_no_count (fun n => .app A (X n))
    (fun n => ⟨1,extras n n,by decide,advance n⟩) m n

def diagonal : Term := .app (.lam (.app (.var 0) (.var 0))) A

theorem not_reader (cs : List Term) : ¬ Reader (spine diagonal cs) := by
  intro hr
  exact no_reader_of_no_count (.app A A) (fun m => no_count m 0) cs
    (hr.beta (SelfintSourceCost.spine_beta (Beta.beta (.app (.var 0) (.var 0)) A) cs))

def pending4166 : Term := spine diagonal [.var 1,.var 0,.var 0]
def pending4167 : Term := spine diagonal [.var 0,.var 1,.var 0]
def pending4168 : Term := spine diagonal [.var 0,.var 0,.var 1]

theorem pending_weights :
    weight 0 pending4166=45 ∧ weight 0 pending4167=45 ∧ weight 0 pending4168=45 := by decide

theorem pending4166_not_reader : ¬ Reader pending4166 := not_reader _
theorem pending4167_not_reader : ¬ Reader pending4167 := not_reader _
theorem pending4168_not_reader : ¬ Reader pending4168 := not_reader _

#print axioms advance
#print axioms not_reader
end Blc.SelfintRootLetIdentityDuplicate
