import Blc.SelfintResidual45.Probe9690032596622D1

set_option Elab.async false
namespace Blc.Floor45.Probe9690032596622
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9690032596622 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.var 2))))))
theorem wire_e9690032596622 : Closed e9690032596622 ∧ code e9690032596622 = 44874404685454 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.lam (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.var 2))))) (.lam (.lam (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.var 2)))))) (.app (.lam (.lam (.lam (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.var 2)))))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 1))) (.app (.var 0) (.var 0)))) (.lam (.var 2)))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9690032596622 : ¬ IsSelfInterpreter e9690032596622 := by
  apply afterTyped Op637762846354.G (x := 3) (y := 0) (z := 2) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9690032596622 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left],[.left],[.left],[.left,.left,.right]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q241 (rho (n := 3) 3 0) rfl)
  · decide
#print axioms ex_e9690032596622
end Blc.Floor45.Probe9690032596622
