import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Late9692683226358
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000
def e9692683226358 : Term := (.app (.lam (.app (.var 0) (.var 0))) (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))))
theorem wire_e9692683226358 : Closed e9692683226358 ∧ code e9692683226358 = 44877055315190 := by decide

private def endpoint : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.lam (.app (.var 0) (.app (.var 0) (.lam (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 0))))))))))))) (.lam (.app (.var 0) (.app (.var 0) (.lam (.app (.lam (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 2) (.var 1)))))))))) (.lam (.app (.var 0) (.app (.var 0) (.app (.var 1) (.app (.var 1) (.lam (.var 0)))))))))))))))))
private def goalTerm : Term := (.var 0)
theorem ex_e9692683226358 : ¬ IsSelfInterpreter e9692683226358 := by
  intro he
  have hp := replay_sound (t := call e9692683226358 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) (u := endpoint) (ps := [[.left,.left],[.left,.left],[.left,.left],[.left,.left],[.left],[.left,.right,.under,.right,.right],[.left,.right,.under,.right,.right,.under],[.left,.right,.under,.right,.right,.under,.under,.right,.under,.right,.right],[.left,.right,.under,.right,.right,.under,.under,.right,.under,.right,.right,.right,.right],[.left],[.left],[.left],[],[.right,.under,.right,.right,.left],[.right,.under,.right,.right],[.right,.under,.right,.right,.right,.under,.right,.right]]) (by decide)
  have hq := replay_sound (t := want (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) (u := goalTerm) (ps := [[.left],[]]) (by decide)
  have hu : NFt goalTerm := by decide
  have hr := expected he (by decide) hp hq hu
  exact (by decide : ¬ occ 0 goalTerm = 0) (SelfintKnot.occ_betas_zero hr 0 (by decide))
#print axioms ex_e9692683226358
end Blc.Floor45.Late9692683226358
