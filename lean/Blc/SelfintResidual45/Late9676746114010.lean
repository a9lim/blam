import Blc.SelfintResidual45.ExtraBase

set_option Elab.async false
namespace Blc.Floor45.Late9676746114010
open Term SelfintSingleObject SelfintSharp SelfintLowerBound SelfintControl Round3Floor38
set_option maxRecDepth 30000
set_option maxHeartbeats 6000000
def e9676746114010 : Term := (.app (.lam (.app (.var 0) (.app (.var 0) (.var 0)))) (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))) (.var 0))))
theorem wire_e9676746114010 : Closed e9676746114010 ∧ code e9676746114010 = 44861118202842 := by decide

private def endpoint : Term := (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))) (.var 0))) (.lam (.app (.lam (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))) (.var 0))) (.lam (.lam (.app (.lam (.app (.app (.var 0) (.lam (.lam (.app (.var 2) (.lam (.app (.var 2) (.var 1))))))) (.var 0))) (.lam (.app (.var 4) (.var 1)))))))))) (.var 1)))))))
private def goalTerm : Term := (.var 0)
theorem ex_e9676746114010 : ¬ IsSelfInterpreter e9676746114010 := by
  intro he
  have hp := replay_sound (t := call e9676746114010 (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) (u := endpoint) (ps := [[.left,.left],[.left,.left],[.left,.left,.left,.left],[.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.right,.under],[.left,.left,.left,.left,.left,.right,.under,.under],[.left,.left,.left,.left,.left,.right,.under,.under,.under,.right,.under],[.left,.left,.left,.left,.left,.right,.under,.under,.under,.right,.under],[.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left,.left],[.left,.left,.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left,.left,.right,.under,.under,.right,.under],[.left,.left,.left,.left],[.left,.left,.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left],[.left,.left,.left,.right,.under,.under,.right,.under],[.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left],[.left,.left,.left],[.left,.left,.left,.left],[.left,.left,.left],[.left,.left],[.left,.left,.right,.under,.under,.right,.under],[.left,.left],[.left,.left,.left],[.left,.left],[.left,.left],[.left,.left,.left],[.left,.left],[.left],[.left,.right,.under,.under,.right,.under],[.left],[.left,.left],[.left],[.left],[.left,.left],[.left],[]]) (by decide)
  have hq := replay_sound (t := want (.lam (.lam (.var 0))) (.lam (.var 0)) (.var 0) []) (u := goalTerm) (ps := [[.left],[]]) (by decide)
  have hu : NFt goalTerm := by decide
  have hr := expected he (by decide) hp hq hu
  exact (by decide : ¬ occ 0 goalTerm = 0) (SelfintKnot.occ_betas_zero hr 0 (by decide))
#print axioms ex_e9676746114010
end Blc.Floor45.Late9676746114010
