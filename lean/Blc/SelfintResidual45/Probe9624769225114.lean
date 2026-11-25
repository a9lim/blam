import Blc.SelfintResidual45.Probe9624769225114D4

set_option Elab.async false
namespace Blc.Floor45.Probe9624769225114
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9624769225114 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))) (.lam (.app (.var 0) (.app (.var 0) (.var 0)))))
theorem wire_e9624769225114 : Closed e9624769225114 ∧ code e9624769225114 = 44809141313946 := by decide

private def endpoint : Term := (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 2) (.app (.var 3) (.var 5))) (.app (.var 0) (.var 1)))))))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9624769225114 : ¬ IsSelfInterpreter e9624769225114 := by
  apply afterTyped Op1ca1a77265e6.G (x := 1) (y := 0) (z := 0) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9624769225114 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left],[.left,.left],[.left],[.left,.right,.under,.left],[.left,.right,.under],[.left,.right,.under,.right,.under]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q508 (rho (n := 3) 1 0) rfl rfl)
  · decide
#print axioms ex_e9624769225114
end Blc.Floor45.Probe9624769225114
