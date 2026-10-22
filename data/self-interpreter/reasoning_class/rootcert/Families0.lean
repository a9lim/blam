import Grow
namespace Blc.Rootcert.Families0
open Term SelfintClass SelfintLowerBound SelfintStreamSpecializer SelfintSourceCost HandlerLet BodyLetGrow BodyLetSpecial
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000

def r110 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject110 : ¬ Reader r110 := by
 exact grow_reduct true [[1, 1], [1, 1], [1, 1, 1], [1, 1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 0)) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject110

def r111 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject111 : ¬ Reader r111 := by
 exact grow_reduct true [[1, 1], [1, 1], [1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject111

def r112 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject112 : ¬ Reader r112 := by
 exact grow_reduct true [[1, 1], [1, 1]] [(.var 0)] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject112

def r113 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject113 : ¬ Reader r113 := by
 exact grow_reduct true [[1, 1], [1, 1], [1, 1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject113

def r114 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject114 : ¬ Reader r114 := by
 exact grow_reduct true [[1, 1], [1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject114

def r116 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject116 : ¬ Reader r116 := by
 exact grow_reduct true [[1, 1]] [(.var 0)] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject116

def r117 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject117 : ¬ Reader r117 := by
 intro hr
 have he : betaSteps [[1, 1], [1, 1, 1], [1, 1, 1, 0, 1, 2], [1, 1]] (.app r117 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) [(.lam (.app (.app (.var 0) (.app (.var 1) (.var 1))) (.var 0))), (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject117

def r118 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject118 : ¬ Reader r118 := by
 exact grow_reduct true [[1, 1]] [(.var 0)] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject118

def r120 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject120 : ¬ Reader r120 := by
 exact grow_reduct true [[1, 1], [1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject120

def r121 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject121 : ¬ Reader r121 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r121 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) [(.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject121

def r122 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject122 : ¬ Reader r122 := by
 exact grow_reduct true [[1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject122

def r123 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject123 : ¬ Reader r123 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r123 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject123

def r124 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject124 : ¬ Reader r124 := by
 exact grow_reduct true [[1, 1], [1, 1, 1], [1, 1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))))) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject124

def r125 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject125 : ¬ Reader r125 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r125 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) [(.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject125

def r126 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject126 : ¬ Reader r126 := by
 exact grow_reduct true [[1, 1], [1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject126

def r128 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject128 : ¬ Reader r128 := by
 exact grow_reduct true [[1, 1]] [(.var 0)] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject128

def r129 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject129 : ¬ Reader r129 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r129 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.app (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject129

def r130 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject130 : ¬ Reader r130 := by
 exact grow_reduct true [[1, 1], [1, 1, 1, 1]] [(.var 0)] [] [] [(.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))))) (.var 0)) (.var 1))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject130

def r131 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) (.var 1))
theorem reject131 : ¬ Reader r131 := by
 intro hr
 have he : betaSteps [[1, 1]] (.app r131 Z) = some (spine (templateState (.app (.var 1) (.var 2)) (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0))))) [(.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))), (.lam (.lam (.app (.app (.var 0) (.app (.var 1) (.var 2))) (.var 0)))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))]) := by decide
 have hn := betas_preserve_nf (betaSteps_sound _ he) hr.zero_red zeroOut_normal
 exact template_no_nf _ _ _ ⟨_,hn,zeroOut_normal⟩
#print axioms reject131

def r132 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))) (.var 1))
theorem reject132 : ¬ Reader r132 := by
 exact grow_reduct true [[1, 1]] [(.var 0)] [] [] [(.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject132

def r157 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))
theorem reject157 : ¬ Reader r157 := by
 exact grow_reduct true [[1, 1], [1, 1], [1, 1, 1, 1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 0))), (.var 1), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject157

def r158 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))
theorem reject158 : ¬ Reader r158 := by
 exact grow_reduct true [[1, 1], [1, 1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject158

def r159 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))
theorem reject159 : ¬ Reader r159 := by
 exact grow_reduct true [[1, 1], [1, 1, 1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject159

def r160 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))
theorem reject160 : ¬ Reader r160 := by
 exact grow_reduct true [[1, 1]] [] [(.var 1)] [(.var 1)] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject160

def r161 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))
theorem reject161 : ¬ Reader r161 := by
 exact grow_reduct true [[1, 1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject161

def r162 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))
theorem reject162 : ¬ Reader r162 := by
 exact grow_reduct true [[1], [1], [1, 1, 1]] [] [(.app (.var 1) (.var 0))] [(.app (.var 1) (.var 0))] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 3) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 3) (.var 2))))) (.var 0))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 3) (.var 2)))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 3) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 3) (.var 2)))))) (.var 0))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject162

def r163 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))
theorem reject163 : ¬ Reader r163 := by
 exact grow_reduct true [[1], [1], [1, 1, 1]] [] [(.app (.var 0) (.var 1))] [(.app (.var 0) (.var 1))] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 3))))) (.var 0))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 3)))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 3)))))) (.var 0))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject163

def r164 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))))
theorem reject164 : ¬ Reader r164 := by
 exact grow_reduct true [[1], [1], [1, 1, 1, 1]] [] [(.var 1), (.var 0)] [(.var 1), (.var 0)] [(.lam (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)) (.var 2)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)) (.var 2))) (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)) (.var 2))))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject164

def r165 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))))
theorem reject165 : ¬ Reader r165 := by
 exact grow_reduct true [[1], [1], [1, 1, 1, 1]] [] [(.var 0), (.var 1)] [(.var 0), (.var 1)] [(.lam (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 3))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 3)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 3))) (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 3))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 3))))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject165

def r166 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))
theorem reject166 : ¬ Reader r166 := by
 exact grow_reduct true [[1], [1]] [] [(.app (.var 1) (.var 0))] [(.app (.var 1) (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 3) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 3) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 3) (.var 2))))) (.var 0))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject166

def r167 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))
theorem reject167 : ¬ Reader r167 := by
 exact grow_reduct true [[1], [1]] [] [(.app (.var 0) (.var 1))] [(.app (.var 0) (.var 1))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 3))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 3))))) (.var 0))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject167

def r168 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))))
theorem reject168 : ¬ Reader r168 := by
 exact grow_reduct true [[1], [1]] [] [(.var 1), (.var 0)] [(.var 1), (.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)) (.var 2)))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)) (.var 2)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject168

def r169 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))))
theorem reject169 : ¬ Reader r169 := by
 exact grow_reduct true [[1], [1]] [] [(.var 0), (.var 1)] [(.var 0), (.var 1)] [(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))), (.lam (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 3))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 3)))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 3)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject169

def r170 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))
theorem reject170 : ¬ Reader r170 := by
 exact grow_reduct true [[1], [1, 1]] [] [(.app (.var 1) (.var 0))] [(.app (.var 1) (.var 0))] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 3) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 3) (.var 2))))) (.var 0))), (.app (.var 1) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject170

def r171 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))
theorem reject171 : ¬ Reader r171 := by
 exact grow_reduct true [[1], [1, 1]] [] [(.app (.var 0) (.var 1))] [(.app (.var 0) (.var 1))] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 3))))) (.var 0))), (.app (.var 0) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject171

def r172 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))))
theorem reject172 : ¬ Reader r172 := by
 exact grow_reduct true [[1], [1, 1]] [] [(.var 1), (.var 0)] [(.var 1), (.var 0)] [(.lam (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)) (.var 2)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject172

def r173 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))))
theorem reject173 : ¬ Reader r173 := by
 exact grow_reduct true [[1], [1, 1]] [] [(.var 0), (.var 1)] [(.var 0), (.var 1)] [(.lam (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 3))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 3)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject173

def r174 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))
theorem reject174 : ¬ Reader r174 := by
 exact grow_reduct true [[1]] [] [(.app (.var 1) (.var 0))] [(.app (.var 1) (.var 0))] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject174

def r175 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))
theorem reject175 : ¬ Reader r175 := by
 exact grow_reduct true [[1]] [] [(.app (.var 0) (.var 1))] [(.app (.var 0) (.var 1))] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject175

def r176 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))))
theorem reject176 : ¬ Reader r176 := by
 exact grow_reduct true [[1]] [] [(.var 1), (.var 0)] [(.var 1), (.var 0)] [(.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject176

def r177 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))))
theorem reject177 : ¬ Reader r177 := by
 exact grow_reduct true [[1]] [] [(.var 0), (.var 1)] [(.var 0), (.var 1)] [(.app (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject177

def r178 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))))
theorem reject178 : ¬ Reader r178 := by
 exact grow_reduct true [[1]] [] [(.app (.var 1) (.var 0))] [(.app (.var 1) (.var 0))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 2) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject178

def r179 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))))
theorem reject179 : ¬ Reader r179 := by
 exact grow_reduct true [[1]] [] [(.app (.var 0) (.var 1))] [(.app (.var 0) (.var 1))] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.app (.var 1) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject179

def r180 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))))
theorem reject180 : ¬ Reader r180 := by
 exact grow_reduct true [[1]] [] [(.var 1), (.var 0)] [(.var 1), (.var 0)] [(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject180

def r181 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))))
theorem reject181 : ¬ Reader r181 := by
 exact grow_reduct true [[1]] [] [(.var 0), (.var 1)] [(.var 0), (.var 1)] [(.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))), (.lam (.app (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject181

def r182 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject182 : ¬ Reader r182 := by
 exact grow_reduct true [[1], [1], [1, 1, 1]] [] [(.var 1)] [(.var 1)] [(.var 0), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 1))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject182

def r183 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject183 : ¬ Reader r183 := by
 exact grow_reduct true [[1], [1], [1, 1, 1, 1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject183

def r184 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject184 : ¬ Reader r184 := by
 exact grow_reduct true [[1], [1]] [] [(.var 1)] [(.var 1)] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject184

def r185 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject185 : ¬ Reader r185 := by
 exact grow_reduct true [[1], [1]] [] [(.var 1)] [(.var 1)] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.var 1))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject185

def r186 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject186 : ¬ Reader r186 := by
 exact grow_reduct true [[1], [1]] [] [(.var 1)] [(.var 1)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject186

def r187 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject187 : ¬ Reader r187 := by
 exact grow_reduct true [[1], [1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.var 0), (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject187

def r188 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject188 : ¬ Reader r188 := by
 exact grow_reduct true [[1], [1, 1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 0))), (.var 1), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject188

def r189 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject189 : ¬ Reader r189 := by
 exact grow_reduct true [[1], [1, 1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 0))), (.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject189

def r190 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject190 : ¬ Reader r190 := by
 exact grow_reduct true [[1], [1, 1]] [] [(.var 1)] [(.var 1)] [(.var 0), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 1)) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject190

def r191 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject191 : ¬ Reader r191 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject191

def r192 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject192 : ¬ Reader r192 := by
 exact grow_reduct true [[1], [1, 1], [1, 1, 1, 1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 0))), (.var 1), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject192

def r193 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject193 : ¬ Reader r193 := by
 exact grow_reduct true [[1], [1, 1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 0))), (.var 1), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject193

def r194 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject194 : ¬ Reader r194 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 3)))) (.var 0))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject194

def r195 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject195 : ¬ Reader r195 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.app (.var 0) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject195

def r196 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject196 : ¬ Reader r196 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject196

def r197 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 1))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject197 : ¬ Reader r197 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject197

def r198 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject198 : ¬ Reader r198 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject198

def r199 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject199 : ¬ Reader r199 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.app (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject199

def r200 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject200 : ¬ Reader r200 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject200

def r201 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject201 : ¬ Reader r201 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject201

def r202 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 1) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject202 : ¬ Reader r202 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject202

def r203 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject203 : ¬ Reader r203 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject203

def r204 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject204 : ¬ Reader r204 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.app (.var 0) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject204

def r205 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 1))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject205 : ¬ Reader r205 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 0)), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject205

def r206 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject206 : ¬ Reader r206 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject206

def r207 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 1)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject207 : ¬ Reader r207 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject207

def r208 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject208 : ¬ Reader r208 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject208

def r209 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0)) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))
theorem reject209 : ¬ Reader r209 := by
 exact grow_reduct true [[1]] [] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject209

def r210 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2))))
theorem reject210 : ¬ Reader r210 := by
 exact grow_reduct true [[1], [1], [1, 1, 1]] [(.var 0)] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))) (.var 3)))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))) (.var 3))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))) (.var 3))))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject210

def r211 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2))))
theorem reject211 : ¬ Reader r211 := by
 exact grow_reduct true [[1], [1]] [(.var 0)] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2))), (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))) (.var 3)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))) (.var 3)))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject211

def r212 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2))))
theorem reject212 : ¬ Reader r212 := by
 exact grow_reduct true [[1], [1, 1]] [(.var 0)] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))) (.var 3))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 3)))) (.var 3)))) (.var 0)) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject212

def r213 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2))))
theorem reject213 : ¬ Reader r213 := by
 exact grow_reduct true [[1]] [(.var 0)] [(.var 1)] [(.var 1)] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject213

def r214 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2))))
theorem reject214 : ¬ Reader r214 := by
 exact grow_reduct true [[1]] [(.var 0)] [(.var 1)] [(.var 1)] [(.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))) (.var 2))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject214

def r215 : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject215 : ¬ Reader r215 := by
 exact grow_reduct true [[1, 1], [1, 1], [1, 1, 1]] [] [] [] [(.var 1), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject215

def r216 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject216 : ¬ Reader r216 := by
 exact grow_reduct true [[1, 1], [1, 1]] [] [] [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject216

def r217 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject217 : ¬ Reader r217 := by
 exact grow_reduct true [[1, 1], [1, 1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 2))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject217

def r218 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject218 : ¬ Reader r218 := by
 exact grow_reduct true [[1, 1], [1, 1]] [] [] [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject218

def r219 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject219 : ¬ Reader r219 := by
 exact grow_reduct true [[1, 1], [1, 1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 2)) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject219

def r220 : Term := (.app (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject220 : ¬ Reader r220 := by
 exact grow_reduct true [[1, 1], [1, 1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject220

def r221 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject221 : ¬ Reader r221 := by
 exact grow_reduct true [[1, 1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject221

def r222 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject222 : ¬ Reader r222 := by
 exact grow_reduct true [[1, 1], [1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject222

def r223 : Term := (.app (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject223 : ¬ Reader r223 := by
 exact grow_reduct true [[1, 1], [1, 1, 1]] [] [] [] [(.var 1), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 0))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject223

def r224 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject224 : ¬ Reader r224 := by
 exact grow_reduct true [[1, 1], [1, 1, 1, 1]] [] [] [] [(.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject224

def r225 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject225 : ¬ Reader r225 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject225

def r226 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject226 : ¬ Reader r226 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject226

def r227 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject227 : ¬ Reader r227 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject227

def r228 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject228 : ¬ Reader r228 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject228

def r229 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject229 : ¬ Reader r229 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject229

def r230 : Term := (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject230 : ¬ Reader r230 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject230

def r231 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject231 : ¬ Reader r231 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject231

def r232 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject232 : ¬ Reader r232 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject232

def r233 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject233 : ¬ Reader r233 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject233

def r234 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject234 : ¬ Reader r234 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject234

def r235 : Term := (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject235 : ¬ Reader r235 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject235

def r236 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject236 : ¬ Reader r236 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject236

def r237 : Term := (.app (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))
theorem reject237 : ¬ Reader r237 := by
 exact grow_reduct true [[1, 1]] [] [] [] [(.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject237

def r238 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject238 : ¬ Reader r238 := by
 exact grow_reduct true [[1], [1], [1, 1, 1]] [] [(.var 0)] [(.var 0)] [(.var 1), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 2)) (.var 0))), (.var 0), (.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 2))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject238

def r239 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject239 : ¬ Reader r239 := by
 exact grow_reduct true [[1], [1]] [] [(.var 0)] [(.var 0)] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.app (.var 2) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject239

def r240 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject240 : ¬ Reader r240 := by
 exact grow_reduct true [[1], [1]] [] [(.var 0)] [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.var 1)), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.var 2))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject240

def r241 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject241 : ¬ Reader r241 := by
 exact grow_reduct true [[1], [1]] [] [(.var 0)] [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 2)) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject241

def r242 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject242 : ¬ Reader r242 := by
 exact grow_reduct true [[1], [1], [1, 1, 1, 1]] [] [(.var 0)] [(.var 0)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))))) (.var 2)) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject242

def r243 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject243 : ¬ Reader r243 := by
 exact grow_reduct true [[1], [1]] [] [(.var 0)] [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 2)) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject243

def r244 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject244 : ¬ Reader r244 := by
 exact grow_reduct true [[1], [1, 1]] [] [(.var 0)] [(.var 0)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject244

def r245 : Term := (.app (.lam (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject245 : ¬ Reader r245 := by
 exact grow_reduct true [[1], [1, 1]] [] [(.var 0)] [(.var 0)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject245

def r246 : Term := (.app (.lam (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject246 : ¬ Reader r246 := by
 exact grow_reduct true [[1], [1, 1]] [] [(.var 0)] [(.var 0)] [(.var 1), (.lam (.app (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 2)) (.var 0))), (.var 0), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject246

def r247 : Term := (.app (.lam (.app (.app (.app (.var 0) (.app (.var 0) (.var 0))) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject247 : ¬ Reader r247 := by
 exact grow_reduct true [[1], [1, 1, 1]] [] [(.var 0)] [(.var 0)] [(.lam (.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 2)))) (.var 0))), (.var 0), (.var 1), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject247

def r248 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject248 : ¬ Reader r248 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.app (.var 1) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject248

def r249 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 0))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject249 : ¬ Reader r249 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject249

def r250 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 0) (.var 2))))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject250 : ¬ Reader r250 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject250

def r251 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject251 : ¬ Reader r251 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject251

def r252 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject252 : ¬ Reader r252 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.app (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject252

def r253 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 0)) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject253 : ¬ Reader r253 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.app (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject253

def r254 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject254 : ¬ Reader r254 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.var 1), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject254

def r255 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 2) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject255 : ¬ Reader r255 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject255

def r256 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.app (.var 0) (.var 2)))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject256 : ¬ Reader r256 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject256

def r257 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject257 : ¬ Reader r257 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1)))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject257

def r258 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.var 2))) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject258 : ¬ Reader r258 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.app (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))) (.var 1)), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject258

def r259 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 0)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject259 : ¬ Reader r259 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.var 1), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject259

def r260 : Term := (.app (.lam (.app (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 2)) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))))
theorem reject260 : ¬ Reader r260 := by
 exact grow_reduct true [[1]] [] [(.var 0)] [(.var 0)] [(.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.var 1), (.lam (.app (.app (.var 0) (.lam (.app (.var 1) (.var 0)))) (.var 1))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject260

def r261 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject261 : ¬ Reader r261 := by
 exact grow_reduct true [[1], [1], [1, 1]] [] [] [] [(.app (.var 1) (.var 0)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 2) (.var 1))) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 2) (.var 1)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject261

def r262 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject262 : ¬ Reader r262 := by
 exact grow_reduct true [[1], [1], [1, 1]] [] [] [] [(.app (.var 0) (.var 1)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 2))) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 2)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject262

def r263 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject263 : ¬ Reader r263 := by
 exact grow_reduct true [[1], [1], [1, 1]] [] [] [] [(.var 1), (.var 0), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 1)) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 1))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject263

def r264 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject264 : ¬ Reader r264 := by
 exact grow_reduct true [[1], [1], [1, 1]] [] [] [] [(.var 0), (.var 1), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 2)) (.var 0))), (.lam (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 2))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject264

def r265 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.var 2))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject265 : ¬ Reader r265 := by
 exact grow_reduct true [[1], [1], [1, 1, 1]] [] [] [] [(.var 1), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 0))), (.var 0), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2))) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject265

def r266 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 1) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject266 : ¬ Reader r266 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.var 1) (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 2) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject266

def r267 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.app (.var 0) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject267 : ¬ Reader r267 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 2) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject267

def r268 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 1)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject268 : ¬ Reader r268 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.app (.var 1) (.var 0)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.app (.var 2) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject268

def r269 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 2) (.var 0)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject269 : ¬ Reader r269 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.var 0) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject269

def r270 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.app (.var 0) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject270 : ¬ Reader r270 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.var 0) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 2)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject270

def r271 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 2)) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject271 : ¬ Reader r271 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.app (.var 0) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.app (.var 1) (.var 2)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject271

def r272 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 2) (.var 1)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject272 : ¬ Reader r272 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 0))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 2) (.var 1)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject272

def r273 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.var 0) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject273 : ¬ Reader r273 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 0) (.var 1))), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.app (.var 1) (.var 2)))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject273

def r274 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 2)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject274 : ¬ Reader r274 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.var 0)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 2)) (.var 1))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject274

def r275 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject275 : ¬ Reader r275 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)) (.var 1)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)) (.var 2))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject275

def r276 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 2) (.var 0)) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject276 : ¬ Reader r276 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject276

def r277 : Term := (.app (.lam (.app (.var 0) (.app (.app (.var 0) (.var 0)) (.app (.app (.var 1) (.var 0)) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject277 : ¬ Reader r277 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)), (.lam (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject277

def r278 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject278 : ¬ Reader r278 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.var 1), (.app (.var 0) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject278

def r279 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.app (.var 0) (.var 1))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject279 : ¬ Reader r279 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.var 1), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 0)), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject279

def r280 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 2) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject280 : ¬ Reader r280 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.var 0), (.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject280

def r281 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject281 : ¬ Reader r281 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.var 0), (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 1)), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.var 2))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject281

def r282 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 1))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject282 : ¬ Reader r282 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.var 1) (.var 0)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 2) (.var 1))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject282

def r283 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 2))) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject283 : ¬ Reader r283 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.var 0) (.var 1)), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 1) (.var 2))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject283

def r284 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 2)) (.var 1)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject284 : ¬ Reader r284 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.var 1), (.var 0), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 2)) (.var 1)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject284

def r285 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.app (.var 0) (.var 0)) (.var 1)) (.var 2)) (.var 0)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject285 : ¬ Reader r285 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.var 0), (.var 1), (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))), (.lam (.app (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 1)) (.var 2)) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject285

def r286 : Term := (.app (.lam (.app (.var 0) (.app (.app (.app (.var 0) (.var 0)) (.app (.var 2) (.var 0))) (.var 1)))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))
theorem reject286 : ¬ Reader r286 := by
 exact grow_reduct true [[1], [1]] [] [] [] [(.app (.var 1) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))), (.var 0), (.lam (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0)))))) (.app (.var 2) (.lam (.app (.var 0) (.lam (.app (.var 1) (.var 0))))))) (.var 1)) (.var 0))), (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4)))] (by decide)
#print axioms reject286
end Blc.Rootcert.Families0
