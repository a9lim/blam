import Blc.SelfintResidual45.Observe

set_option Elab.async false
namespace Blc.Floor45.Seen9573541187382
open Term SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 16000
set_option maxHeartbeats 5000000
def e9573541187382 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.var 1) (.lam (.app (.app (.var 0) (.lam (.var 3))) (.app (.var 0) (.var 1))))))))
theorem wire_e9573541187382 : Closed e9573541187382 ∧ code e9573541187382 = 44757913276214 := by decide

theorem ex_e9573541187382 : ¬ IsSelfInterpreter e9573541187382 := Observe.excluded (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (i := 70) (j := 3) (a := .lambda) (b := (.rigid 1 2)) (by decide) (by decide) (by decide) (by decide)
#print axioms ex_e9573541187382
end Blc.Floor45.Seen9573541187382
