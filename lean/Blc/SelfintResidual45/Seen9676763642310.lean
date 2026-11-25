import Blc.SelfintResidual45.Observe

set_option Elab.async false
namespace Blc.Floor45.Seen9676763642310
open Term SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 16000
set_option maxHeartbeats 5000000
def e9676763642310 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.app (.var 1) (.lam (.var 1))))))))))
theorem wire_e9676763642310 : Closed e9676763642310 ∧ code e9676763642310 = 44861135731142 := by decide

theorem ex_e9676763642310 : ¬ IsSelfInterpreter e9676763642310 := Observe.excluded (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (i := 351) (j := 3) (a := (.rigid 1 9)) (b := (.rigid 1 2)) (by decide) (by decide) (by decide) (by decide)
#print axioms ex_e9676763642310
end Blc.Floor45.Seen9676763642310
