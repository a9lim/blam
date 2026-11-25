import Blc.SelfintResidual45.Observe

set_option Elab.async false
namespace Blc.Floor45.Seen9692869758774
open Term SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 16000
set_option maxHeartbeats 5000000
def e9692869758774 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))))
theorem wire_e9692869758774 : Closed e9692869758774 ∧ code e9692869758774 = 44877241847606 := by decide

theorem ex_e9692869758774 : ¬ IsSelfInterpreter e9692869758774 := Observe.excluded (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (i := 97) (j := 3) (a := .lambda) (b := (.rigid 1 2)) (by decide) (by decide) (by decide) (by decide)
#print axioms ex_e9692869758774
end Blc.Floor45.Seen9692869758774
