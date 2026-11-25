import Blc.SelfintResidual45.Probe9553299311534D1

set_option Elab.async false
namespace Blc.Floor45.Probe9553299311534
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9553299311534 : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.app (.var 0) (.var 0)))) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2)))))))
theorem wire_e9553299311534 : Closed e9553299311534 ∧ code e9553299311534 = 44737671400366 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.var 0))))))) (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.lam (.lam (.app (.var 0) (.lam (.app (.app (.var 1) (.var 0)) (.var 2))))))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9553299311534 : ¬ IsSelfInterpreter e9553299311534 := by
  apply afterTyped Op8ac318f5209b.G (x := 1) (y := 0) (z := 0) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9553299311534 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left,.left],[.left,.left,.right]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q217 (rho (n := 3) 1 0) rfl rfl)
  · decide
#print axioms ex_e9553299311534
end Blc.Floor45.Probe9553299311534
