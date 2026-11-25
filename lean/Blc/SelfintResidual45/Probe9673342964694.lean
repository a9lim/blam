import Blc.SelfintResidual45.Probe9673342964694D1

set_option Elab.async false
namespace Blc.Floor45.Probe9673342964694
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9673342964694 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))))))
theorem wire_e9673342964694 : Closed e9673342964694 ∧ code e9673342964694 = 44857715053526 := by decide

private def endpoint : Term := (.app (.lam (.app (.app (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))))) (.lam (.var 0))) (.var 0)) (.app (.app (.lam (.lam (.lam (.app (.app (.app (.var 2) (.var 0)) (.app (.var 2) (.var 0))) (.var 1))))) (.lam (.var 0))) (.var 0))) (.var 2))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 7))))))))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.lam (.var 1))))) (.var 0))
theorem ex_e9673342964694 : ¬ IsSelfInterpreter e9673342964694 := by
  apply afterTyped Op9cd4b4db71e4.G (x := 0) (y := 0) (z := 1) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.lam (.var 1)))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9673342964694 (.var 1) (.lam (.lam (.var 1))) (.var 0) []) (ps := [[.left,.left],[.left,.left],[.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.lam (.var 1))) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q194 (rho (n := 3) 0 0) rfl rfl)
  · decide
#print axioms ex_e9673342964694
end Blc.Floor45.Probe9673342964694
