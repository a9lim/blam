import Blc.SelfintResidual45.Atom9540213673786D0

set_option Elab.async false
namespace Blc.Floor45.Atom9540213673786
open Term SelfintLowerBound SelfintControl SelfintSharp Round3Floor38 MultiTypes
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000
def e9540213673786 : Term := (.app (.lam (.app (.app (.app (.var 0) (.var 0)) (.var 0)) (.lam (.lam (.var 0))))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))))
theorem wire_e9540213673786 : Closed e9540213673786 ∧ code e9540213673786 = 44724585762618 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.app (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))) (.var 0))))) (.lam (.lam (.app (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.app (.var 1) (.var 0))))))) (.app (.app (.var 1) (.lam (.lam (.app (.var 3) (.app (.var 1) (.var 0)))))) (.var 0))))) (.var 0)))))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def target : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9540213673786 : ¬ IsSelfInterpreter e9540213673786 := by
  apply MultiTypes.excluded graph env (z := 4) (t := endpoint) (u := target) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9540213673786 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := [[.left,.left],[.left,.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left],[.left,.left,.left,.right],[.left,.left,.left,.right,.under],[.left,.left,.left,.right,.under,.under,.right,.left],[.left,.left,.left],[.left,.left,.left],[.left,.left],[.left,.left,.right,.left],[.left,.left,.right],[.left,.left,.right,.right],[.left,.left,.right,.right,.under],[.left,.left,.right,.right,.under,.under,.right,.left],[.left,.left,.right,.right,.under,.under,.right]]) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (correct graph _ _ _).mpr (q92 env rfl rfl)
  · decide
#print axioms ex_e9540213673786
end Blc.Floor45.Atom9540213673786
