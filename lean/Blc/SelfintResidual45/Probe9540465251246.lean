import Blc.SelfintResidual45.Probe9540465251246D2

set_option Elab.async false
namespace Blc.Floor45.Probe9540465251246
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9540465251246 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))))))
theorem wire_e9540465251246 : Closed e9540465251246 ∧ code e9540465251246 = 44724837340078 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))))) (.var 0))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2))))))) (.lam (.lam (.lam (.app (.app (.app (.var 0) (.var 0)) (.app (.var 1) (.var 0))) (.var 2)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9540465251246 : ¬ IsSelfInterpreter e9540465251246 := by
  apply afterTyped Op64d01e7a837a.G (x := 0) (y := 4) (z := 2) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9540465251246 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left,.left,.left],[.left,.left,.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q287 (rho (n := 4) 0 4) rfl rfl)
  · decide
#print axioms ex_e9540465251246
end Blc.Floor45.Probe9540465251246
