import Blc.SelfintResidual45.Probe9690032682638D1

set_option Elab.async false
namespace Blc.Floor45.Probe9690032682638
open Term SelfintLowerBound SelfintControl SelfintSharp SelfintFiniteChain Round3Floor38
set_option maxRecDepth 24000
set_option maxHeartbeats 4000000

def e9690032682638 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 2))))))
theorem wire_e9690032682638 : Closed e9690032682638 ∧ code e9690032682638 = 44874404771470 := by decide

private def endpoint : Term := (.lam (.app (.lam (.app (.app (.lam (.lam (.app (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 2))))) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.lam (.lam (.app (.lam (.app (.app (.var 2) (.var 0)) (.app (.app (.var 0) (.var 1)) (.var 0)))) (.lam (.var 2))))))))
private def goalTerm : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9690032682638 : ¬ IsSelfInterpreter e9690032682638 := by
  apply afterTyped Op3f588a48d7fb.G (x := 0) (y := 2) (z := 2) (t := endpoint) (u := goalTerm) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9690032682638 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left],[.left],[.left,.left,.under,.left],[.left,.left,.under],[.left],[.left,.left,.under,.left],[.left,.left,.under,.right,.left,.right,.left],[.left],[.left,.right,.left],[.left,.right],[.left],[],[.left,.under,.left],[.left,.under],[],[.left,.under,.left],[.left,.under,.right,.left,.right,.left],[],[.right,.left],[.right],[]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (q194 (rho (n := 3) 0 2))
  · decide
#print axioms ex_e9690032682638
end Blc.Floor45.Probe9690032682638
