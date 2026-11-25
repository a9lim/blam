import Blc.SelfintResidual45.Probe9673902246874D1

set_option Elab.async false
namespace Blc.Floor45.Probe9673902246874
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9673902246874 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.var 1))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))
theorem wire_e9673902246874 : Closed e9673902246874 ∧ code e9673902246874 = 44858274335706 := by decide

private def endpoint : Term := (.app (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))) (.lam (.lam (.app (.var 1) (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))) (.lam (.lam (.app (.var 0) (.lam (.lam (.app (.var 1) (.app (.app (.var 2) (.var 1)) (.var 0))))))))) (.var 1)) (.var 0)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 6))))))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.lam (.var 0))))) (.var 0))
theorem ex_e9673902246874 : ¬ IsSelfInterpreter e9673902246874 := by
  apply afterTyped Opbfabf9ad3f19.G (x := 0) (y := 2) (z := 1) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.lam (.var 0)))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9673902246874 (.var 1) (.lam (.lam (.var 0))) (.var 0) []) (ps := [[.left,.left],[.left,.left]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.lam (.var 0))) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q272 (rho (n := 3) 0 2) rfl rfl)
  · decide
#print axioms ex_e9673902246874
end Blc.Floor45.Probe9673902246874
