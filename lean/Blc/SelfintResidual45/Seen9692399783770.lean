import Blc.SelfintResidual45.Observe

set_option Elab.async false
namespace Blc.Floor45.Seen9692399783770
open Term SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 16000
set_option maxHeartbeats 5000000
def e9692399783770 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.lam (.lam (.lam (.app (.app (.var 2) (.app (.var 2) (.var 0))) (.var 1)))))) (.var 0))))
theorem wire_e9692399783770 : Closed e9692399783770 ∧ code e9692399783770 = 44876771872602 := by decide

theorem ex_e9692399783770 : ¬ IsSelfInterpreter e9692399783770 := Observe.excluded (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (i := 781) (j := 3) (a := (.rigid 1 13)) (b := (.rigid 1 2)) (by decide) (by decide) (by decide) (by decide)
#print axioms ex_e9692399783770
end Blc.Floor45.Seen9692399783770
