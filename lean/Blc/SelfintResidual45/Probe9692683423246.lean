import Blc.SelfintResidual45.Probe9692683423246D2

set_option Elab.async false
namespace Blc.Floor45.Probe9692683423246
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9692683423246 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2)))))))))))
theorem wire_e9692683423246 : Closed e9692683423246 ∧ code e9692683423246 = 44877055512078 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 2) (.app (.var 1) (.lam (.lam (.var 2))))))))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9692683423246 : ¬ IsSelfInterpreter e9692683423246 := by
  apply afterTyped Op8d74bc6e4e13.G (x := 0) (y := 4) (z := 0) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9692683423246 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q387 (rho (n := 4) 0 4) rfl rfl)
  · decide
#print axioms ex_e9692683423246
end Blc.Floor45.Probe9692683423246
