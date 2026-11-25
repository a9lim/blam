import Blc.SelfintResidual45.Probe9692726283182D4

set_option Elab.async false
namespace Blc.Floor45.Probe9692726283182
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9692726283182 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))))
theorem wire_e9692726283182 : Closed e9692726283182 ∧ code e9692726283182 = 44877098372014 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.lam (.app (.lam (.app (.lam (.app (.var 0) (.lam (.app (.var 1) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2))))))) (.lam (.lam (.app (.var 1) (.app (.app (.var 1) (.var 0)) (.var 2)))))))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9692726283182 : ¬ IsSelfInterpreter e9692726283182 := by
  apply afterTyped Ope9b1a410bea0.G (x := 1) (y := 5) (z := 4) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9692726283182 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left],[.left,.left],[.left,.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q722 (rho (n := 5) 1 5) rfl rfl)
  · decide
#print axioms ex_e9692726283182
end Blc.Floor45.Probe9692726283182
