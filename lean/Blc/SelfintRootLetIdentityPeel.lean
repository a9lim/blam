/-
For F(X)=lambda y.((y I)X)y and A=lambda x.x F(x), put X_n=F^n(A).
Every X_n I reduces to D=F(I), D X_n reduces to X_n, and therefore
X_(n+1) X_(m+1) reduces to X_n X_(m+1). Each A X_n advances with a
selected head step to A X_(n+1), excluding finite head clocks. This is
an unbounded family proof for pending sources 4187--4189.
-/
import Blc.SelfintRootLetEmbedding
namespace Blc.SelfintRootLetIdentityPeel
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetEmbedding
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

def I : Term := .lam (.var 0)
def F (x : Term) : Term :=
  .lam (.app (.app (.app (.var 0) I) (shift 1 0 x)) (.var 0))
def A : Term := .lam (.app (.var 0) (F (.var 0)))
def D : Term := F I

theorem I_apply (x : Term) : Beta (.app I x) x := by
  simpa [I,contract,substDec] using Beta.beta (.var 0) x

theorem F_apply (x y : Term) : Beta (.app (F x) y)
    (.app (.app (.app y I) x) y) := by
  simpa [F,I,contract,substDec,substDec_shift] using
    Beta.beta (.app (.app (.app (.var 0) I) (shift 1 0 x)) (.var 0)) y

theorem A_step (x : Term) : weakStep (.app A x)=some (.app x (F x)) := by
  simp [A,F,I,weakStep,contract,substDec,shift]

theorem A_apply (x : Term) : Beta (.app A x) (.app x (F x)) :=
  weakStep_beta (A_step x)

theorem F_I (x : Term) : Betas (.app (F x) I) (.app x I) :=
  .head (F_apply _ _) (.head (.appL _ (.appL _ (I_apply _)))
    (.head (.appL _ (I_apply _)) (.refl _)))

theorem A_I : Betas (.app A I) D :=
  .head (A_apply _) (.head (I_apply _) (.refl _))

theorem D_I : Betas (.app D I) I :=
  betas_trans (F_I I) (.head (I_apply _) (.refl _))

def X : Nat → Term
  | 0 => A
  | n+1 => F (X n)

theorem X_I (n : Nat) : Betas (.app (X n) I) D := by
  induction n with
  | zero => exact A_I
  | succ n ih => exact betas_trans (F_I (X n)) ih

theorem D_X (n : Nat) : Betas (.app D (X n)) (X n) :=
  .head (F_apply _ _) (betas_trans (betas_appL (X n) (betas_appL I (X_I n)))
    (betas_trans (betas_appL (X n) D_I) (.head (I_apply _) (.refl _))))

theorem F_pair (n m : Nat) :
    Betas (.app (X (n+1)) (X (m+1))) (.app (X n) (X (m+1))) :=
  .head (F_apply _ _)
    (betas_trans (betas_appL (X (m+1)) (betas_appL (X n) (X_I (m+1))))
      (betas_appL (X (m+1)) (D_X n)))

theorem peel (n m : Nat) :
    Betas (.app (X n) (X (m+1))) (.app A (X (m+1))) := by
  induction n with
  | zero => exact .refl _
  | succ n ih => exact betas_trans (F_pair n m) ih

theorem advance (n : Nat) :
    Interleaved 1 (.app A (X n)) (.app A (X (n+1))) :=
  .head (A_step _) (Interleaved.of_betas (peel n n))

theorem no_count (m n : Nat) : ¬ Count (.app A (X n)) m :=
  advancing_no_count (fun n => .app A (X n))
    (fun n => ⟨1,[],by decide,advance n⟩) m n

def diagonal : Term := .app (.lam (.app (.var 0) (.var 0))) A

theorem not_reader (cs : List Term) : ¬ Reader (spine diagonal cs) := by
  intro hr
  exact no_reader_of_no_count (.app A A) (fun m => no_count m 0) cs
    (hr.beta (SelfintSourceCost.spine_beta (Beta.beta (.app (.var 0) (.var 0)) A) cs))

def pending4187 : Term := spine diagonal [.var 1,.var 0,.var 0]
def pending4188 : Term := spine diagonal [.var 0,.var 1,.var 0]
def pending4189 : Term := spine diagonal [.var 0,.var 0,.var 1]

theorem pending_weights :
    weight 0 pending4187=45 ∧ weight 0 pending4188=45 ∧ weight 0 pending4189=45 := by decide

theorem pending4187_not_reader : ¬ Reader pending4187 := not_reader _
theorem pending4188_not_reader : ¬ Reader pending4188 := not_reader _
theorem pending4189_not_reader : ¬ Reader pending4189 := not_reader _

#print axioms advance
#print axioms not_reader
end Blc.SelfintRootLetIdentityPeel
