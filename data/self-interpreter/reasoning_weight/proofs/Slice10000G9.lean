import Flow
import Extras
import Recursor
import Lark
import Owl
import Strict
namespace Blc.HandlerLet.Slice10000G9
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 20000
set_option maxHeartbeats 4000000
def r434 : Term := (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 1)))) (.var 1))
theorem reject434 : ¬ Reader r434 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 3)) (.var 3))))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 3)) (.var 3)))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 2)) (.var 2)))))] [(.lam (.app (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1)))) (.var 1)) (.var 1))), (.var 0), (.var 0), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject434
def r435 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 1)) (.var 0))
theorem reject435 : ¬ Reader r435 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r435 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.var 0)) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject435
def r436 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))))) (.var 0)) (.var 1))
theorem reject436 : ¬ Reader r436 := by
 intro hr
 have he : betaSteps [[1, 1, 1]] (.app r436 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 1)) (.var 0)) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject436
def r437 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.var 1)) (.var 0))
theorem reject437 : ¬ Reader r437 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) [(.var 0)] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject437
def r438 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) (.var 0)) (.var 1))
theorem reject438 : ¬ Reader r438 := by
  exact replay_loop true [] 1 2 (.app (.app (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1)))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 1))))) [(.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject438
def r439 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.var 1))
theorem reject439 : ¬ Reader r439 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2)))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2)))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2)))) (.app (.var 0) (.var 0))))), (.app (.var 0) (.var 0))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject439
def r440 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.var 1))
theorem reject440 : ¬ Reader r440 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2)))) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2)))) (.var 0)))))), (.app (.var 0) (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject440
def r441 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.var 1))
theorem reject441 : ¬ Reader r441 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) [(.app (.var 0) (.var 0))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))), (.app (.var 0) (.var 0)), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2))))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject441
def r442 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.var 1))
theorem reject442 : ¬ Reader r442 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2)))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2)))) (.var 0)) (.var 0))), (.app (.var 0) (.var 0))] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject442
def r443 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.var 1))
theorem reject443 : ¬ Reader r443 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) [(.app (.var 0) (.var 0))] [(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2))))) (.var 0))), (.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject443
def r444 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))) (.var 1))
theorem reject444 : ¬ Reader r444 := by
  exact replay_loop true [] 2 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2)))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 2))))))) [(.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 1))))] [(.app (.var 0) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject444
def r445 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.var 1))
theorem reject445 : ¬ Reader r445 := by
  exact replay_loop true [] 2 2 (.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2))) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2))) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2))) (.app (.var 0) (.var 0))))), (.var 0), (.var 0)] [(.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject445
def r446 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 1) (.var 0)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.var 1))
theorem reject446 : ¬ Reader r446 := by
  exact replay_loop true [] 1 3 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2))) (.var 0))))) [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.lam (.app (.var 0) (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2))) (.var 0)))))), (.var 0), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject446
def r447 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.app (.var 0) (.var 1)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.var 1))
theorem reject447 : ¬ Reader r447 := by
  exact replay_loop true [] 6 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) [(.var 0), (.var 0)] [(.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))), (.var 0), (.var 0), (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2)))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject447
def r448 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.var 1))
theorem reject448 : ¬ Reader r448 := by
  exact replay_loop true [] 1 2 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.lam (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2))) (.var 0)) (.var 0)))) [(.lam (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2))) (.var 0)) (.var 0))), (.var 0), (.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject448
def r449 : Term := (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 0))))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) (.var 1))
theorem reject449 : ¬ Reader r449 := by
  exact replay_loop true [] 4 1 (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1)))) [(.var 0), (.var 0)] [(.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 2)))) (.var 0))), (.var 0), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject449
end Blc.HandlerLet.Slice10000G9
