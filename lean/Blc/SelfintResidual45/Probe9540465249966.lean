import Blc.SelfintResidual45.Probe9540465249966D1

set_option Elab.async false
namespace Blc.Floor45.Probe9540465249966
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9540465249966 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))))))
theorem wire_e9540465249966 : Closed e9540465249966 ∧ code e9540465249966 = 44724837338798 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))))) (.var 0)) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2)))))))))) (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.app (.var 1) (.var 0))) (.var 0)) (.var 2))))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9540465249966 : ¬ IsSelfInterpreter e9540465249966 := by
  apply afterTyped Op42b062149732.G (x := 1) (y := 0) (z := 0) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9540465249966 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left,.left,.left],[.left,.left,.left],[.left,.left,.left,.under,.left,.left,.right],[.left,.left],[.left,.left,.left,.left],[.left,.left,.left],[.left,.left,.left,.under,.left,.left,.right],[.left,.left],[.left,.left,.left,.left],[.left,.left,.left],[.left,.left,.left,.under,.left,.left,.right]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q217 (rho (n := 3) 1 0) rfl rfl)
  · decide
#print axioms ex_e9540465249966
end Blc.Floor45.Probe9540465249966
