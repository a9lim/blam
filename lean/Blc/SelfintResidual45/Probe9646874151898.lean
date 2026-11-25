import Blc.SelfintResidual45.Probe9646874151898D1

set_option Elab.async false
namespace Blc.Floor45.Probe9646874151898
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9646874151898 : Term := (.app (.lam (.app (.var 0) (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
theorem wire_e9646874151898 : Closed e9646874151898 ∧ code e9646874151898 = 44831246240730 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 1) (.app (.lam (.app (.app (.var 0) (.var 0)) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.var 0)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9646874151898 : ¬ IsSelfInterpreter e9646874151898 := by
  apply afterTyped Op4b638b5bed78.G (x := 1) (y := 3) (z := 2) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9646874151898 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left],[.left,.left,.left],[.left,.left,.right,.under,.under,.right,.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q248 (rho (n := 3) 1 3) rfl rfl)
  · decide
#print axioms ex_e9646874151898
end Blc.Floor45.Probe9646874151898
