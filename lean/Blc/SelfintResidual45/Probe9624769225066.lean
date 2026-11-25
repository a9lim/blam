import Blc.SelfintResidual45.Probe9624769225066D1

set_option Elab.async false
namespace Blc.Floor45.Probe9624769225066
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9624769225066 : Term := (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.app (.var 0) (.var 1))))))))) (.lam (.app (.app (.var 0) (.var 0)) (.var 0))))
theorem wire_e9624769225066 : Closed e9624769225066 ∧ code e9624769225066 = 44809141313898 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.var 0)) (.var 0))) (.lam (.app (.var 2) (.app (.var 0) (.var 1)))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9624769225066 : ¬ IsSelfInterpreter e9624769225066 := by
  apply afterTyped Op42b062149732.G (x := 1) (y := 0) (z := 0) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9624769225066 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q176 (rho (n := 3) 1 0) rfl rfl)
  · decide
#print axioms ex_e9624769225066
end Blc.Floor45.Probe9624769225066
