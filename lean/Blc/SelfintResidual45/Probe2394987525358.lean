import Blc.SelfintResidual45.Probe2394987525358D1

set_option Elab.async false
namespace Blc.Floor45.Probe2394987525358
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e2394987525358 : Term := (.lam (.app (.lam (.app (.app (.var 0) (.var 1)) (.var 0))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))))))
theorem wire_e2394987525358 : Closed e2394987525358 ∧ code e2394987525358 = 37579359614190 := by decide

private def endpoint : Term := (.app (.app (.lam (.lam (.var 1))) (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))) (.lam (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 2)))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.app (.var 1) (.var 4)))))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 3))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e2394987525358 : ¬ IsSelfInterpreter e2394987525358 := by
  apply afterTyped Op8ac318f5209b.G (x := 1) (y := 0) (z := 0) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e2394987525358 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left],[.left],[.left,.left],[.left],[.left],[.left,.under,.right,.under,.right,.right,.under,.left],[.left,.under,.right,.under,.right,.right,.under,.right],[],[],[.left],[.left,.left],[.left,.left,.left],[.left,.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q233 (rho (n := 3) 1 0) rfl rfl)
  · decide
#print axioms ex_e2394987525358
end Blc.Floor45.Probe2394987525358
