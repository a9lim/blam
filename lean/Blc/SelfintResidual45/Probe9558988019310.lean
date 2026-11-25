import Blc.SelfintResidual45.Probe9558988019310D1

set_option Elab.async false
namespace Blc.Floor45.Probe9558988019310
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9558988019310 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 1))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))))))
theorem wire_e9558988019310 : Closed e9558988019310 ∧ code e9558988019310 = 44743360108142 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 0) (.app (.var 3) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))))))))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 0) (.var 2))))))) (.app (.app (.var 1) (.lam (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 0)) (.var 1)) (.app (.var 0) (.var 2)))))))) (.var 1))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9558988019310 : ¬ IsSelfInterpreter e9558988019310 := by
  apply afterTyped Op8e7c855a107a.G (x := 0) (y := 3) (z := 1) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9558988019310 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left,.left],[.left,.left],[.left],[.left,.left,.left],[.left,.left],[.left,.left,.under,.left,.left],[.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q213 (rho (n := 3) 0 3) rfl rfl)
  · decide
#print axioms ex_e9558988019310
end Blc.Floor45.Probe9558988019310
