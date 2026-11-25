import Blc.SelfintResidual45.Probe9692869718982D1

set_option Elab.async false
namespace Blc.Floor45.Probe9692869718982
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9692869718982 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))))
theorem wire_e9692869718982 : Closed e9692869718982 ∧ code e9692869718982 = 44877241807814 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.var 1) (.app (.var 2) (.lam (.var 1)))))))))) (.lam (.var 1))))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9692869718982 : ¬ IsSelfInterpreter e9692869718982 := by
  apply afterTyped Op4110659a734a.G (x := 0) (y := 0) (z := 2) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9692869718982 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q265 (rho (n := 3) 0 0) rfl rfl)
  · decide
#print axioms ex_e9692869718982
end Blc.Floor45.Probe9692869718982
