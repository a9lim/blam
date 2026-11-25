import Blc.SelfintResidual45.Atom9692449588186D0

set_option Elab.async false
namespace Blc.Floor45.Atom9692449588186
open Term SelfintLowerBound SelfintControl SelfintSharp Round3Floor38 MultiTypes
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000
def e9692449588186 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))) (.var 0))))
theorem wire_e9692449588186 : Closed e9692449588186 ∧ code e9692449588186 = 44876821677018 := by decide

private def endpoint : Term := (.app (.app (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1)))))))) (.var 0)))) (.var 1)) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.var 1)))) (.var 4))))))))))
private def target : Term := (.app (.app (.var 1) (.lam (.lam (.var 0)))) (.var 0))
theorem ex_e9692449588186 : ¬ IsSelfInterpreter e9692449588186 := by
  apply MultiTypes.excluded graph env (z := 1) (t := endpoint) (u := target) (c := (.var 1)) (m := (.lam (.var 0))) (r := (.var 0)) (aa := []) (by decide)
  · exact replay_sound (t := call e9692449588186 (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · exact replay_sound (t := want (.var 1) (.lam (.var 0)) (.var 0) []) (ps := []) (by decide)
  · decide
  · exact (correct graph _ _ _).mpr (q83 env rfl rfl)
  · decide
#print axioms ex_e9692449588186
end Blc.Floor45.Atom9692449588186
