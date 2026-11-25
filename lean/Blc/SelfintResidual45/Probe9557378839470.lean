import Blc.SelfintResidual45.Probe9557378839470D1

set_option Elab.async false
namespace Blc.Floor45.Probe9557378839470
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9557378839470 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.var 0))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))) (.var 2))))))
theorem wire_e9557378839470 : Closed e9557378839470 ∧ code e9557378839470 = 44741750928302 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))) (.lam (.var 0))))) (.lam (.lam (.lam (.app (.app (.app (.var 1) (.var 1)) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9557378839470 : ¬ IsSelfInterpreter e9557378839470 := by
  apply afterTyped Op1ca1a77265e6.G (x := 1) (y := 0) (z := 0) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9557378839470 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left,.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q192 (rho (n := 3) 1 0) rfl rfl)
  · decide
#print axioms ex_e9557378839470
end Blc.Floor45.Probe9557378839470
