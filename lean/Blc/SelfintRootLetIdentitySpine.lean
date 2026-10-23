/-
For F(X)=lambda y.(X y)(y I), A=lambda x.x F(x), and X_n=F^n(A),
every positive X_n sends I to I. Pair reduction peels the left tower and
adds I to the pending spine. Thus A X_n advances to A X_(n+1) with n
extra identity operands. A positive selected head step per advance rules
out every finite head clock, closing sources 4178--4180.
-/
import Blc.SelfintRootLetEmbedding
namespace Blc.SelfintRootLetIdentitySpine
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetEmbedding
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

def I : Term := .lam (.var 0)
def F (x : Term) : Term :=
  .lam (.app (.app (shift 1 0 x) (.var 0)) (.app (.var 0) I))
def A : Term := .lam (.app (.var 0) (F (.var 0)))
def D : Term := F I

theorem I_apply (x : Term) : Beta (.app I x) x := by
  simpa [I,contract,substDec] using Beta.beta (.var 0) x

theorem F_apply (x y : Term) : Beta (.app (F x) y)
    (.app (.app x y) (.app y I)) := by
  simpa [F,I,contract,substDec,substDec_shift] using
    Beta.beta (.app (.app (shift 1 0 x) (.var 0)) (.app (.var 0) I)) y

theorem A_step (x : Term) : weakStep (.app A x)=some (.app x (F x)) := by
  simp [A,F,I,weakStep,contract,substDec,shift]

theorem A_apply (x : Term) : Beta (.app A x) (.app x (F x)) :=
  weakStep_beta (A_step x)

theorem F_I (x : Term) : Betas (.app (F x) I) (.app (.app x I) I) :=
  .head (F_apply _ _) (.head (.appR _ (I_apply _)) (.refl _))

theorem A_I : Betas (.app A I) D :=
  .head (A_apply _) (.head (I_apply _) (.refl _))

theorem D_I : Betas (.app D I) I :=
  betas_trans (F_I I) (.head (.appL _ (I_apply _)) (.head (I_apply _) (.refl _)))

def X : Nat → Term
  | 0 => A
  | n+1 => F (X n)

theorem X_succ_I (n : Nat) : Betas (.app (X (n+1)) I) I := by
  induction n with
  | zero => exact betas_trans (F_I A) (betas_trans (betas_appL I A_I) D_I)
  | succ n ih =>
    exact betas_trans (F_I (X (n+1)))
      (betas_trans (betas_appL I ih) (.head (I_apply _) (.refl _)))

theorem F_pair (n m : Nat) : Betas (.app (X (n+1)) (X (m+1)))
    (.app (.app (X n) (X (m+1))) I) :=
  .head (F_apply _ _) (betas_appR _ (X_succ_I m))

def extras : Nat → List Term
  | 0 => []
  | n+1 => extras n ++ [I]

theorem peel (n m : Nat) : Betas (.app (X n) (X (m+1)))
    (spine (.app A (X (m+1))) (extras n)) := by
  induction n with
  | zero => exact .refl _
  | succ n ih =>
    simpa only [extras,spine_append_one] using
      betas_trans (F_pair n m) (betas_appL I ih)

theorem advance (n : Nat) : Interleaved 1 (.app A (X n))
    (spine (.app A (X (n+1))) (extras n)) :=
  .head (A_step _) (Interleaved.of_betas (peel n n))

theorem no_count (m n : Nat) : ¬ Count (.app A (X n)) m :=
  advancing_no_count (fun n => .app A (X n))
    (fun n => ⟨1,extras n,by decide,advance n⟩) m n

def diagonal : Term := .app (.lam (.app (.var 0) (.var 0))) A

theorem not_reader (cs : List Term) : ¬ Reader (spine diagonal cs) := by
  intro hr
  exact no_reader_of_no_count (.app A A) (fun m => no_count m 0) cs
    (hr.beta (SelfintSourceCost.spine_beta (Beta.beta (.app (.var 0) (.var 0)) A) cs))

def pending4178 : Term := spine diagonal [.var 1,.var 0,.var 0]
def pending4179 : Term := spine diagonal [.var 0,.var 1,.var 0]
def pending4180 : Term := spine diagonal [.var 0,.var 0,.var 1]

theorem pending_weights :
    weight 0 pending4178=45 ∧ weight 0 pending4179=45 ∧ weight 0 pending4180=45 := by decide

theorem pending4178_not_reader : ¬ Reader pending4178 := not_reader _
theorem pending4179_not_reader : ¬ Reader pending4179 := not_reader _
theorem pending4180_not_reader : ¬ Reader pending4180 := not_reader _

#print axioms advance
#print axioms not_reader
end Blc.SelfintRootLetIdentitySpine
