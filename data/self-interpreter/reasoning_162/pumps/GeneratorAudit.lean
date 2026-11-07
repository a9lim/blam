import Blc.Selfint162
import Blc.WeakHeadClock
namespace Blc.Round3Pumps.GeneratorAudit
open Term SelfintLowerBound SelfintControl
set_option maxRecDepth 8192
set_option maxHeartbeats 1000000
-- This test uses V=x, a five-bit member of the original search frame.
def b : Term := .app (.app (.app (.var 0) idT) (.var 3)) nextT162
def g : Term := .lam (.app (.lam (.lam (.lam b))) (.app (.var 0) (.var 0)))
-- Beta-apply four outer lambdas to instantiate the reader frame.
def inst (t s c p x : Term) : Term :=
  let t1 := contract (.lam (.lam (.lam t))) x
  let t2 := match t1 with | .lam q => contract q p | _ => .var 99
  let t3 := match t2 with | .lam q => contract q c | _ => .var 99
  match t3 with | .lam q => contract q s | _ => .var 99

def q : Term := .var 2
def c : Term := .var 1
def n : Term := inst nextT162 idT c (.app q q) q

theorem real_generator_head :
    spineSteps 6 (.app (.app (.app g q) c) idT) = some (.app q n) := by decide

theorem erroneous_unfold_head :
    spineSteps 2 (inst b idT c (.app q q) g) = some (.app g n) := by decide

def isLam : Term → Bool | .lam _ => true | _ => false

theorem wrong_head_is_abstraction :
    (spineSteps 2 (.app g n)).map isLam = some true := by decide

theorem correct_head_is_rigid :
    weakStep (.app q n) = none := by decide

def compareActual : Term := .lam (.lam
  (.app (.app (.var 0) (.app idT idT)) (.app idT idT)))
def compareExpected : Term := .lam (.lam
  (.app (.app (.var 0) idT) idT))

theorem comparison_beta_equal : Betas compareActual compareExpected := by
  have hi : Beta (.app idT idT) idT := .beta (.var 0) idT
  exact .head (.lam (.lam (.appL _ (.appR _ hi))))
    (.head (.lam (.lam (.appR _ hi))) (.refl _))

#print axioms comparison_beta_equal
#print axioms real_generator_head
#print axioms erroneous_unfold_head
#print axioms wrong_head_is_abstraction
end Blc.Round3Pumps.GeneratorAudit
