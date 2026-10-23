/-
A symbolic collapse for F(X)=lambda y.y((y I)X), A=lambda x.x F(x).
Although the diagonal expands before it contracts, A A beta-reduces to
D=F(I). Every D applied to a rigid first operand forces that operand.
This excludes pending sources 4157--4159 without an evaluation cutoff.
-/
import Blc.SelfintRootLetEmbedding
namespace Blc.SelfintRootLetIdentityCollapse
open Term SelfintClass SelfintLowerBound SelfintWireCost SelfintFloor
open SelfintSourceCost SelfintLocalCost SelfintDispatchAudit SelfintWidenHoist SelfintControl
open SelfintFlatMinimum SelfintRootFlat SelfintSourceFront SelfintNeededHead
open SelfintLambdaSink SelfintNestedLets WeakHeadClock
open SelfintRootLetPowers (reader_betas)
set_option maxRecDepth 10000
set_option maxHeartbeats 3000000

def I : Term := .lam (.var 0)
def F (x : Term) : Term :=
  .lam (.app (.var 0) (.app (.app (.var 0) I) (shift 1 0 x)))
def A : Term := .lam (.app (.var 0) (F (.var 0)))
def D : Term := F I

theorem I_apply (x : Term) : Beta (.app I x) x := by
  simpa [I,contract,substDec] using Beta.beta (.var 0) x

theorem F_apply (x y : Term) : Beta (.app (F x) y)
    (.app y (.app (.app y I) x)) := by
  simpa [F,I,contract,substDec,substDec_shift] using
    Beta.beta (.app (.var 0) (.app (.app (.var 0) I) (shift 1 0 x))) y

theorem A_apply (x : Term) : Beta (.app A x) (.app x (F x)) := by
  simpa [A,F,I,contract,substDec,shift] using
    Beta.beta (.app (.var 0) (F (.var 0))) x

theorem F_I (x : Term) : Betas (.app (F x) I) x :=
  .head (F_apply _ _) (.head (I_apply _) (.head (.appL _ (I_apply _))
    (.head (I_apply _) (.refl _))))

theorem A_I : Betas (.app A I) D :=
  .head (A_apply _) (.head (I_apply _) (.refl _))

theorem D_I : Betas (.app D I) I := F_I I

theorem D_A : Betas (.app D A) D :=
  .head (F_apply _ _) (betas_trans (betas_appR A (betas_appL I A_I))
    (betas_trans (betas_appR A D_I) A_I))

theorem F_D (x : Term) : Betas (.app (F x) D) (.app D x) :=
  .head (F_apply _ _) (betas_trans (betas_appR D (betas_appL x D_I))
    (.head (.appR D (I_apply _)) (.refl _)))

theorem D_FD : Betas (.app D (F D)) D :=
  .head (F_apply _ _) (betas_trans (betas_appR (F D) (betas_appL I (F_I D)))
    (betas_trans (betas_appR (F D) D_I) (F_I D)))

theorem FA_A : Betas (.app (F A) A) D :=
  .head (F_apply _ _) (betas_trans (betas_appR A (betas_appL A A_I))
    (betas_trans (betas_appR A D_A) (.head (A_apply _) D_FD)))

theorem D_FA : Betas (.app D (F A)) D :=
  .head (F_apply _ _) (betas_trans (betas_appR (F A) (betas_appL I (F_I A)))
    (betas_trans (betas_appR (F A) A_I) (betas_trans (F_D A) D_A)))

theorem A_diagonal : Betas (.app A A) D :=
  .head (A_apply _) (.head (A_apply _) (.head (F_apply _ _)
    (betas_trans (betas_appR (F (F A)) (betas_appL A (F_I (F A))))
      (betas_trans (betas_appR (F (F A)) FA_A)
        (betas_trans (F_D (F A)) D_FA)))))

def diagonal : Term := .app (.lam (.app (.var 0) (.var 0))) A

theorem diagonal_reduces : Betas diagonal D :=
  .head (Beta.beta _ _) A_diagonal

theorem not_reader (v : Nat) (cs : List Term) :
    ¬ Reader (spine diagonal (.var v::cs)) := by
  intro hr
  have hd := reader_betas hr (betas_spine diagonal_reduces (.var v::cs))
  exact reader_not_rigid (hd.beta (SelfintSourceCost.spine_beta (F_apply I (.var v)) cs))
    (SelfintFlatPrefix.rigid_spine_of (.app _ (.var v)) cs)

def pending4157 : Term := spine diagonal [.var 1,.var 0,.var 0]
def pending4158 : Term := spine diagonal [.var 0,.var 1,.var 0]
def pending4159 : Term := spine diagonal [.var 0,.var 0,.var 1]

theorem pending_weights :
    weight 0 pending4157=45 ∧ weight 0 pending4158=45 ∧ weight 0 pending4159=45 := by decide

theorem pending4157_not_reader : ¬ Reader pending4157 := not_reader _ _
theorem pending4158_not_reader : ¬ Reader pending4158 := not_reader _ _
theorem pending4159_not_reader : ¬ Reader pending4159 := not_reader _ _

#print axioms A_diagonal
#print axioms not_reader
end Blc.SelfintRootLetIdentityCollapse
