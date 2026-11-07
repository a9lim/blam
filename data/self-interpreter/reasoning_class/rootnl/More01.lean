import Extras
import Grow
import Recursor
import Lark
import Owl
import Replicator
namespace Blc.HandlerLet.More01
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost
set_option maxRecDepth 10000
set_option maxHeartbeats 8000000

def r100 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))))) (.var 1))
theorem reject100 : ¬ Reader r100 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r100 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 0) (.app (.var 1) (.var 2))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 2)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject100

def r101 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))))) (.var 1))
theorem reject101 : ¬ Reader r101 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r101 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 2) (.var 0)) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.app (.var 2) (.var 0)) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject101

def r102 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))))) (.var 1))
theorem reject102 : ¬ Reader r102 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r102 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 0) (.var 2)) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 2)) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject102

def r103 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))))) (.var 1))
theorem reject103 : ¬ Reader r103 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r103 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 1) (.var 0)) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject103

def r104 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))) (.var 1))
theorem reject104 : ¬ Reader r104 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r104 Z) = some (spine (BodyLetSpecial.templateState (.app (.app (.var 0) (.var 1)) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject104

def r105 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))) (.var 1))
theorem reject105 : ¬ Reader r105 := by
  exact replay_loop true [[1, 1], [1, 1, 1], [1, 1, 1, 0, 2, 1], [1, 1, 1, 0, 2], [1, 1, 1, 0, 2], [1, 1], [1, 1, 1], [1, 1, 1, 0, 2], [1, 1, 1, 0, 2, 0, 2], [1, 1], [1, 1, 2, 0, 2], [1, 1, 2, 0, 2, 0, 2], [1, 1, 2, 0, 2, 0, 2, 0, 2], [1, 1, 1], [1, 1, 1, 0, 2], [1, 1, 1, 0, 2, 0, 2], [1, 1], [1, 1]] 0 3 (.app (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.lam (.app (.var 0) (.var 1)))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject105

def r106 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 1)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject106 : ¬ Reader r106 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1]] (.app r106 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) [(.lam (.var 1)), (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject106

def r107 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.lam (.app (.var 0) (.app (.var 1) (.lam (.var 1))))))) (.var 1))
theorem reject107 : ¬ Reader r107 := by
  exact replay_loop true [[1, 1], [1, 1, 1], [1, 1, 1, 0, 2], [1, 1, 1, 0, 2, 0, 2], [1, 1], [1, 1, 2, 0, 2], [1, 1, 2, 0, 2, 0, 2, 1], [1, 1, 2, 0, 2, 0, 2], [1, 1, 2, 0, 2, 0, 2], [1, 1, 1], [1, 1, 1, 0, 2, 1], [1, 1, 1, 0, 2], [1, 1, 1, 0, 2]] 3 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject107

def r108 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject108 : ¬ Reader r108 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1]] (.app r108 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.var 0)) [(.lam (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject108

def r109 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject109 : ¬ Reader r109 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r109 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.var 0)) [(.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject109

def r110 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject110 : ¬ Reader r110 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r110 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) [(.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject110

def r111 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject111 : ¬ Reader r111 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r111 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0)), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject111

def r112 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 1) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject112 : ¬ Reader r112 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r112 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.var 0) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject112

def r113 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 1) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject113 : ¬ Reader r113 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r113 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject113

def r114 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject114 : ¬ Reader r114 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r114 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0)))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject114

def r115 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 1) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject115 : ¬ Reader r115 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r115 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject115

def r116 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 1)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject116 : ¬ Reader r116 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r116 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject116

def r117 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject117 : ¬ Reader r117 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r117 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 0))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject117

def r118 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject118 : ¬ Reader r118 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1]] (.app r118 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject118

def r119 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject119 : ¬ Reader r119 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r119 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.var 0) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject119

def r120 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject120 : ¬ Reader r120 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r120 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))) (.var 0))) [(.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject120

def r121 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 1)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject121 : ¬ Reader r121 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r121 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.var 0)) [(.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject121

def r122 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) (.var 1))
theorem reject122 : ¬ Reader r122 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r122 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 2)) (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0))))) [(.var 0), (.lam (.lam (.app (.app (.var 0) (.lam (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject122

def r123 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 1))
theorem reject123 : ¬ Reader r123 := by
 exact BodyLetGrow.grow_reduct true [[1, 1], [1, 1, 1], [1, 1], [1, 1, 2, 0, 1, 1], [1, 1, 2, 0, 1], [1, 1, 1]] [(.var 0)] [] [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject123

def r124 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 1)))) (.var 2))))) (.var 1))
theorem reject124 : ¬ Reader r124 := by
  exact replay_loop true [[1, 1], [1, 1, 1], [1, 1, 1, 0, 1, 2], [1, 1, 1, 0, 1, 2, 0, 1, 2], [1, 1], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1, 2, 0, 1, 2, 0, 1, 2], [1, 1, 1, 2, 0, 1, 2, 0, 1, 2, 0, 1, 2], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1, 2], [1, 1, 1, 1, 0, 1, 2, 0, 1, 2]] 0 3 (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 2)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.var 1)) (.var 3)))) (.var 2)))) (.var 1)))) [(.var 0), (.var 0), (.var 0)] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject124

def r125 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))) (.var 1))
theorem reject125 : ¬ Reader r125 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r125 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.lam (.var 2))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject125

def r126 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))) (.var 1))
theorem reject126 : ¬ Reader r126 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r126 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.lam (.var 3))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject126

def r127 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))) (.var 1))
theorem reject127 : ¬ Reader r127 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r127 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.lam (.var 2))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.var 2)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject127

def r128 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))) (.var 1))
theorem reject128 : ¬ Reader r128 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r128 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.lam (.var 3))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.lam (.var 3)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject128

def r129 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.lam (.var 1))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject129 : ¬ Reader r129 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1, 1, 0, 1, 2], [1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1, 2], [1, 1, 1], [1, 1, 1, 1]] (.app r129 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 2)) (.app (.var 0) (.var 0))) [(.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))), (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject129

def r130 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject130 : ¬ Reader r130 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1, 1, 0, 1, 2], [1, 1]] (.app r130 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject130

def r131 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject131 : ¬ Reader r131 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r131 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject131

def r132 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.var 1)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject132 : ¬ Reader r132 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r132 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) [(.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject132

def r133 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject133 : ¬ Reader r133 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r133 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.var 1)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0))))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject133

def r134 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject134 : ¬ Reader r134 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r134 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0))))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject134

def r135 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject135 : ¬ Reader r135 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] (.app r135 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.var 1)) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject135

def r136 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.lam (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject136 : ¬ Reader r136 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1, 2], [1, 1, 1], [1, 1, 1, 1]] (.app r136 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 2)) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject136

def r137 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject137 : ¬ Reader r137 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r137 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.var 1)) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 3) (.var 1))) (.var 0)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject137

def r138 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.var 1))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject138 : ¬ Reader r138 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r138 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 2)) (.lam (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 3))) (.var 0)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject138

def r139 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0))))) (.var 1))
theorem reject139 : ¬ Reader r139 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r139 Z) = some (spine (BodyLetSpecial.templateState (.lam (.app (.var 3) (.var 2))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject139

def r140 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0))))) (.var 1))
theorem reject140 : ¬ Reader r140 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r140 Z) = some (spine (BodyLetSpecial.templateState (.lam (.app (.var 2) (.var 3))) (.app (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject140

def r141 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0))))) (.var 1))
theorem reject141 : ¬ Reader r141 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r141 Z) = some (spine (BodyLetSpecial.templateState (.lam (.app (.var 3) (.var 2))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 3) (.var 2)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject141

def r142 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0))))) (.var 1))
theorem reject142 : ¬ Reader r142 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r142 Z) = some (spine (BodyLetSpecial.templateState (.lam (.app (.var 2) (.var 3))) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.lam (.app (.var 2) (.var 3)))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject142

def r143 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.var 1))) (.var 0))))) (.var 1))
theorem reject143 : ¬ Reader r143 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1, 2, 0]] (.app r143 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 2) (.var 1)) (.lam (.lam (.app (.app (.var 0) (.app (.var 2) (.lam (.lam (.app (.app (.var 0) (.app (.var 4) (.var 1))) (.var 0)))))) (.var 0))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject143

def r144 : Term := (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 1)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject144 : ¬ Reader r144 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1, 2, 0], [1, 1, 1, 2, 0, 0, 1, 2]] (.app r144 Z) = some (spine (BodyLetSpecial.templateState (.app (.var 1) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 0) (.app (.var 3) (.var 3))) (.var 0)))) (.var 0))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject144

def r145 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) (.var 1))
theorem reject145 : ¬ Reader r145 := by
  exact replay_loop true [[1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] 13 2 (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.var 0))))) [] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject145

def r146 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.var 0))
theorem reject146 : ¬ Reader r146 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 0)) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject146

def r147 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.var 1))
theorem reject147 : ¬ Reader r147 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject147

def r148 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.var 0))
theorem reject148 : ¬ Reader r148 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject148

def r149 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.var 1))
theorem reject149 : ¬ Reader r149 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject149

def r150 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.var 0))
theorem reject150 : ¬ Reader r150 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.var 0)] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject150

def r151 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.var 1))
theorem reject151 : ¬ Reader r151 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.var 0)] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject151

def r152 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.var 0))
theorem reject152 : ¬ Reader r152 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject152

def r153 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.var 1))
theorem reject153 : ¬ Reader r153 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject153

def r154 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1)) (.var 0))
theorem reject154 : ¬ Reader r154 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject154

def r155 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 0)) (.var 1))
theorem reject155 : ¬ Reader r155 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject155

def r156 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0))
theorem reject156 : ¬ Reader r156 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject156

def r157 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1))
theorem reject157 : ¬ Reader r157 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] 12 2 (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject157

def r158 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1))))))) (.var 0)) (.var 1))
theorem reject158 : ¬ Reader r158 := by
  exact replay_absent true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2, 0, 0]] 9 1 (by decide) (by decide)
#print axioms reject158

def r159 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0))
theorem reject159 : ¬ Reader r159 := by
 intro hr
 have he : betaSteps [[1, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0], [1, 1, 1]] (.app r159 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 0)) (.lam (.var 0))) [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject159

def r160 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 1)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1))
theorem reject160 : ¬ Reader r160 := by
 intro hr
 have he : betaSteps [[1, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0], [1, 1, 1]] (.app r160 Z) = some (spine (BodyLetSpecial.templateState (.lam (.var 0)) (.lam (.var 0))) [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact BodyLetSpecial.template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject160

def r161 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject161 : ¬ Reader r161 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1]] 0 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject161

def r162 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject162 : ¬ Reader r162 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1]] 0 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.var 1)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject162

def r163 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject163 : ¬ Reader r163 := by
  exact replay_absent true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 2, 0, 0], [1, 1, 1, 1, 1]] 8 1 (by decide) (by decide)
#print axioms reject163

def r164 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject164 : ¬ Reader r164 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] 0 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject164

def r165 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject165 : ¬ Reader r165 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 1], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1, 2, 0, 2], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]] 0 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject165

def r166 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject166 : ¬ Reader r166 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 2, 0], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 2, 0, 2, 2], [1, 1, 1, 2, 0, 2, 2], [1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] 0 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject166

def r167 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.app (.var 1) (.app (.var 1) (.lam (.var 1)))))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject167 : ¬ Reader r167 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 2, 0], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1, 2, 0, 2], [1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 2, 0, 2, 1], [1, 1, 1, 2, 0, 2, 2], [1, 1, 1, 2, 0, 2, 2], [1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] 0 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))))] [(.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))), (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject167

def r168 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject168 : ¬ Reader r168 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] 0 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject168

def r169 : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.app (.var 1) (.lam (.var 1)))) (.var 1))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject169 : ¬ Reader r169 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 2, 0, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 1], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1, 2, 0, 1, 2], [1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] 0 1 (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.app (.var 0) (.var 0)))))) [(.lam (.app (.var 0) (.var 0)))] [(.lam (.app (.var 0) (.var 0))), (.lam (.app (.var 0) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject169

def r170 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
theorem reject170 : ¬ Reader r170 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.var 1) (.var 1)) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject170

def r171 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
theorem reject171 : ¬ Reader r171 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.var 0) (.var 0)) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject171

def r172 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 1)) (.var 0))
theorem reject172 : ¬ Reader r172 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.var 1) (.var 1)) [(.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject172

def r173 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 0) (.var 0)))))))) (.var 0)) (.var 1))
theorem reject173 : ¬ Reader r173 := by
 exact RootcertLark.reject [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 0], [1, 1, 1, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0, 1], [1, 1, 1, 1, 0], [1, 1, 1, 1, 0], [1, 1, 1], [1, 1]] (.app (.var 0) (.var 0)) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject173

def r174 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject174 : ¬ Reader r174 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] [(.lam (.var 0))] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0)))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))) (.var 0)) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject174

def r175 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject175 : ¬ Reader r175 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1]] [(.lam (.var 0))] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0)))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))))) (.var 0)) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject175

def r176 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject176 : ¬ Reader r176 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1]] [(.lam (.var 0))] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0)))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject176

def r177 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject177 : ¬ Reader r177 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1]] [(.lam (.var 0))] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0)))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject177

def r178 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject178 : ¬ Reader r178 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.lam (.var 0))] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject178

def r179 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject179 : ¬ Reader r179 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.lam (.var 0))] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject179

def r180 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject180 : ¬ Reader r180 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1, 1]] [(.lam (.var 0))] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0)))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject180

def r181 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject181 : ¬ Reader r181 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1], [1, 1, 1, 1]] [(.lam (.var 0))] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.lam (.var 0)))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject181

def r182 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 1)) (.var 0))
theorem reject182 : ¬ Reader r182 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.lam (.var 0))] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject182

def r183 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0))))))) (.var 0)) (.var 1))
theorem reject183 : ¬ Reader r183 := by
 exact BodyLetGrow.grow_reduct true [[1, 1, 1]] [(.lam (.var 0))] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.var 0)))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject183

def r184 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 1)) (.var 0))
theorem reject184 : ¬ Reader r184 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] 11 3 (.app (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject184

def r185 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.var 0)) (.var 1))
theorem reject185 : ¬ Reader r185 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1]] 11 3 (.app (.app (.lam (.var 0)) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0)))))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject185

def r186 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject186 : ¬ Reader r186 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] 14 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject186

def r187 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.lam (.var 0)))) (.lam (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject187 : ¬ Reader r187 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] 14 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject187

def r188 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject188 : ¬ Reader r188 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject188

def r189 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject189 : ¬ Reader r189 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 2, 0], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1]] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject189

def r190 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject190 : ¬ Reader r190 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject190

def r191 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.app (.var 0) (.lam (.var 0)))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject191 : ¬ Reader r191 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] 9 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject191

def r192 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject192 : ¬ Reader r192 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] 14 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject192

def r193 : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1)))))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject193 : ¬ Reader r193 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] 14 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject193

def r194 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 1)) (.var 0))
theorem reject194 : ¬ Reader r194 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 1]] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject194

def r195 : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.lam (.app (.var 0) (.lam (.var 1)))))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.var 0)))) (.var 0)) (.var 1))
theorem reject195 : ¬ Reader r195 := by
  exact replay_loop true [[1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 2, 0], [1, 1, 1, 1, 1, 1]] 8 1 (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))) [] [(.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide) (by decide) (by decide)
#print axioms reject195

def r196 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject196 : ¬ Reader r196 := by
  exact replay_absent true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1]] 13 1 (by decide) (by decide)
#print axioms reject196

def r197 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject197 : ¬ Reader r197 := by
  exact replay_absent true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1], [1, 1, 1]] 11 1 (by decide) (by decide)
#print axioms reject197

def r198 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.var 1)) (.var 0))
theorem reject198 : ¬ Reader r198 := by
  exact replay_absent true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1]] 14 1 (by decide) (by decide)
#print axioms reject198

def r199 : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.app (.var 0) (.var 0))))) (.var 0)) (.var 1))
theorem reject199 : ¬ Reader r199 := by
  exact replay_absent true [[1, 1, 1], [1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1]] 12 1 (by decide) (by decide)
#print axioms reject199
end Blc.HandlerLet.More01
