import Blc.SelfintResidual45.Observe

set_option Elab.async false
namespace Blc.Floor45.Seen9573530892686
open Term SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 16000
set_option maxHeartbeats 5000000
def e9573530892686 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 1) (.var 0)) (.lam (.app (.var 2) (.app (.var 0) (.lam (.var 2)))))))))
theorem wire_e9573530892686 : Closed e9573530892686 ∧ code e9573530892686 = 44757902981518 := by decide

theorem ex_e9573530892686 : ¬ IsSelfInterpreter e9573530892686 := Observe.excluded (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (i := 330) (j := 3) (a := .lambda) (b := (.rigid 1 2)) (by decide) (by decide) (by decide) (by decide)
#print axioms ex_e9573530892686
end Blc.Floor45.Seen9573530892686
