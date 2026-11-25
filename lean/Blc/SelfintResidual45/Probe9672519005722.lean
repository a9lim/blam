import Blc.SelfintResidual45.Probe9672519005722D1

set_option Elab.async false
namespace Blc.Floor45.Probe9672519005722
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9672519005722 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.var 0) (.var 0))))
theorem wire_e9672519005722 : Closed e9672519005722 ∧ code e9672519005722 = 44856891094554 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9672519005722 : ¬ IsSelfInterpreter e9672519005722 := by
  apply afterTyped Op92b307dc7f32.G (x := 1) (y := 0) (z := 0) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9672519005722 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q173 (rho (n := 3) 1 0) rfl rfl)
  · decide
#print axioms ex_e9672519005722
end Blc.Floor45.Probe9672519005722
