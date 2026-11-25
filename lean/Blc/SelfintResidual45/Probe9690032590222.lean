import Blc.SelfintResidual45.Probe9690032590222D1

set_option Elab.async false
namespace Blc.Floor45.Probe9690032590222
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9690032590222 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.var 2))))))
theorem wire_e9690032590222 : Closed e9690032590222 ∧ code e9690032590222 = 44874404679054 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.lam (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.var 2))))) (.lam (.lam (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.var 2)))))) (.lam (.lam (.app (.lam (.app (.app (.var 2) (.app (.var 0) (.var 0))) (.app (.var 0) (.var 1)))) (.lam (.var 2)))))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9690032590222 : ¬ IsSelfInterpreter e9690032590222 := by
  apply afterTyped Op637762846354.G (x := 3) (y := 0) (z := 2) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9690032590222 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left],[.left],[.left],[.left,.left,.right],[.left,.right]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q191 (rho (n := 3) 3 0) rfl)
  · decide
#print axioms ex_e9690032590222
end Blc.Floor45.Probe9690032590222
