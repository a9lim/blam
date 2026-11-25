import Blc.SelfintResidual45.Observe

set_option Elab.async false
namespace Blc.Floor45.Seen9573529844166
open Term SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 16000
set_option maxHeartbeats 5000000
def e9573529844166 : Term := (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.app (.var 0) (.var 1)) (.lam (.app (.var 2) (.app (.var 1) (.lam (.var 1)))))))))
theorem wire_e9573529844166 : Closed e9573529844166 ∧ code e9573529844166 = 44757901932998 := by decide

theorem ex_e9573529844166 : ¬ IsSelfInterpreter e9573529844166 := Observe.excluded (c := (.var 1)) (m := (.lam (.lam (.var 1)))) (r := (.lam (.app (.var 0) (.var 0)))) (aa := [(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0)))),(.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.var 0))))]) (i := 1779) (j := 7) (a := (.rigid 1 7)) (b := (.rigid 1 6)) (by decide) (by decide) (by decide) (by decide)
#print axioms ex_e9573529844166
end Blc.Floor45.Seen9573529844166
